library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.numeric_std.unsigned;

entity div16_8_8 is
	generic(
		A_WIDTH			: POSITIVE := 17;
		B_WIDTH			: POSITIVE := 8;
		RESULT_WIDTH	: POSITIVE := 9
	);
	port (
		clk        : in  STD_LOGIC;
		en         : in  STD_LOGIC;
		rstn       : in  STD_LOGIC;
		a          : in  STD_LOGIC_VECTOR( A_WIDTH-1 downto 0);
		b          : in  STD_LOGIC_VECTOR( B_WIDTH-1 downto 0);
		result     : out STD_LOGIC_VECTOR( RESULT_WIDTH-1 downto 0)	
	);
end entity div16_8_8;

architecture rtl of div16_8_8 is

    type unsigned_8_array  is array(natural range <>) of UNSIGNED( 7 downto 0);
	type unsigned_16_array is array(natural range <>) of UNSIGNED(15 downto 0);

	signal r_remainder 		: unsigned_16_array(1 to 9);
	signal r_shifted_b 		: unsigned_16_array(1 to 9);
	signal r_result    		: unsigned_8_array (1 to 9);
	signal r_result_signed 	: SIGNED(8 downto 0);
	signal r_sign      		: STD_LOGIC_VECTOR(1 to 9);
	signal r_en		     	: STD_LOGIC_VECTOR(1 to 9);
	
------------------------------------------------------------------------------------------
  
FUNCTION is_positive (in_zahl : IN SIGNED) RETURN std_logic IS		-- Check the input a 

	BEGIN
		IF in_zahl > 0 THEN -- Check the input a positive or negative
			RETURN '1';
		ELSE
			RETURN '0';
		END IF;
	END;
		
------------------------------------------------------------------------------------------
	
FUNCTION right_shift_0 (in_vector : IN STD_LOGIC_VECTOR) RETURN std_logic_vector IS	
        variable result : std_logic_vector(1 to 9);
	BEGIN
        for i in 1 to 8 loop
            result(i+1) := in_vector(i);
        end loop;
        result(1) := '0'; -- Shift '1' in s_sign vector (positive result)
        RETURN result;
	END;
		
------------------------------------------------------------------------------------------
	
FUNCTION right_shift_1 (in_vector : IN STD_LOGIC_VECTOR) RETURN std_logic_vector IS	
        variable result : std_logic_vector(1 to 9);
	BEGIN
        for i in 1 to 8 loop
            result(i+1) := in_vector(i);
        end loop;
        result(1) := '1'; -- Shift '1' in s_sign vector (negative result)
        RETURN result;
	END;
		
-------------------------------------------------------------------------------------------

FUNCTION right_shift_0_for_b (in_unsigned : IN UNSIGNED) RETURN unsigned IS	
        variable result : unsigned(15 downto 0);
	BEGIN
        for i in 14 downto 0 loop
            result(i) := in_unsigned(i+1);
        end loop;
        result(15) := '0'; -- Shift '0' in r_shifted_b 
        RETURN result;
	END;
		
------------------------------------------------------------------------------------------

begin

	process(clk, rstn, en)
		variable v_result 	: UNSIGNED( 8 downto 1);
        variable a_signed 	: SIGNED(16 downto 0);
        variable a_unsigned : UNSIGNED(15 downto 0);
 
	begin
		if rstn = '0' then
	
	        -- STUDENT CODE HERE
	        -- Initialize the result register
            r_result <= (others=>(others=>'0'));
            r_result_signed <= (others=>'0');
            -- Use lower 8 digits to append zero to divisor
            r_en <= (others=>'0');
            -- STUDENT CODE until HERE
		elsif rising_edge(clk) then
		
    		-- STUDENT CODE HERE
            if en = '1' then
                -- Push the dividend in r_remainder, 
                -- if dividend is positive, no change,
                -- store the sign '0' in r_sign
                if is_positive(signed(a)) = '1' then
                    a_unsigned := unsigned(a(15 downto 0));
                    r_remainder(1) <= a_unsigned;
                    r_sign <= right_shift_0(r_sign);
                -- If divided is negative, changes to absolute for calculation,   
                -- finally perform the result to negative,
                -- store the sign '1' in r_sign
                elsif is_positive(signed(a)) = '0' then
                    a_signed := abs(signed(a));
                    r_remainder(1) <= unsigned(a_signed(15 downto 0));
                    r_sign <= right_shift_1(r_sign);
                end if; 
                -- Push the divisor in r_shifted_b, 
                -- append zeros to divisor to apply shift and subtract algorithm
                r_shifted_b(1) <= unsigned(b & r_en(1 to 8));
                
                -- after one clock the highest digit becomes '1'
                r_en(9) <= '1';
              
                -- Pipeline structure
                -- The highest digit of r_en controls pipeline, not to execute before the transmission of signal
                if r_en(9) = '1' then
                    for i in 2 to RESULT_WIDTH loop
                        -- The first comparison result is not needed (must be 0),
                        -- direct to the second comparsion
                        v_result := r_result(i-1);
                        -- If divided small than divisor,
                        -- then implement with shift registers,
                        -- this digit of the register of result set '0'  
                        if r_remainder(i-1) < r_shifted_b(i-1) then
                            r_remainder(i) <= r_remainder(i-1);
                            r_shifted_b(i) <= right_shift_0_for_b(r_shifted_b(i-1));
                            v_result := shift_left(v_result,1);
                            r_result(i) <= v_result;
                        -- Until divided large than divisor,
                        -- then implement the subtraction,
                        -- this digit of the register of result set '1' 
                        elsif r_remainder(i-1) >= r_shifted_b(i-1) then
                            r_remainder(i) <= r_remainder(i-1) - r_shifted_b(i-1);
                            r_shifted_b(i) <= right_shift_0_for_b(r_shifted_b(i-1));
                            v_result := shift_left(v_result,1) + 1;
                            r_result(i) <= v_result;
                        end if;
                    end loop;

                
                    -- The last implementation only set the bit of r_result,
                    -- but not shift register anymore  
                    -- Divided small than divisor,
                    -- this digit of the register of result set '0'  
                    if r_remainder(RESULT_WIDTH) < r_shifted_b(RESULT_WIDTH) then
                        v_result := r_result(RESULT_WIDTH);
                        v_result := shift_left(v_result,1);
                    -- Divided large than divisor,
                    -- this digit of the register of result set '1' 
                    elsif r_remainder(RESULT_WIDTH) >= r_shifted_b(RESULT_WIDTH) then
                        v_result := r_result(RESULT_WIDTH);
                        v_result := shift_left(v_result,1) + 1;
                    end if;
                end if;
                            
                -- After each clock give a result with sign,
                -- the result is correct after each 9 implementations
                -- If the result should be positive
                if r_sign(9) = '0' then
                    -- the binary representation is its true value
                    r_result_signed <= signed(r_sign(9) & v_result); 
                -- If the result should be negative,
                -- and the temporary result is also 0,
                -- it will appear that conversion beyond the bit limit,
                -- it should be artificial corrected 
                elsif r_sign(9) = '1' and v_result = 0 then
                    r_result_signed <= signed('0' & v_result);
                -- Else the other situation with a normal negative result
                elsif r_sign(9) = '1' and v_result /= 0 then
                    -- Calculate the complement representation 
                    r_result_signed <= signed(r_sign(9) & (not v_result + 1));
                end if;
            end if;
			-- STUDENT CODE until HERE
		end if;
	end process;
	
	result <= STD_LOGIC_VECTOR(r_result_signed);

end architecture rtl;
