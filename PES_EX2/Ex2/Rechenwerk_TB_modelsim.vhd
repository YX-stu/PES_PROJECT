---------------------------------------------------------------------------------------------
--							
-- Dateiname:	processor_testbench.vhd
--
-- Inhalt: 	Testbench zu processor_struct.vhd
--
---------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE std.textio.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.std_logic_textio.ALL;

---------------------------------------------------------------------------------------------

ENTITY Rechenwerk_TB IS
END Rechenwerk_TB;

---------------------------------------------------------------------------------------------

ARCHITECTURE behavior OF Rechenwerk_TB IS

-- STUDENT CODE HERE

signal clk   			: std_logic := '1';						-- clock
signal rst 			    : std_logic := '1';						-- Reset, high active
signal mux_sel_sig 		: std_logic;						-- control signal of Mux above Register R1
signal R1_en 			: std_logic;				    	-- R1 enable-Signal
signal R2_en 			: std_logic;						-- R2 enable-Signal		
signal instruction_en 	: std_logic;						-- ALU enable-Signal
signal mux_R2_data_in 	: std_logic_vector(3 downto 0); 			-- Input 1 of Mux and R2
signal status_out 		: std_logic_vector(2 downto 0);			-- output Status register
signal alu_res 			: std_logic_vector(3 downto 0);    		-- output ALU 
signal alu_res_rdy 		: std_logic;							-- ouput ALU enable-Signal

-- Array type definition
type stimulus_array is array(0 to 8)of std_logic_vector(7 downto 0);         
-- Pre-defined program for main task wiout pragram.txt 
signal pre_defined_program : stimulus_array := ("10001100","10011000","00000000","10010100","00010000","00010000","10001100","10011000","10100010"); 
-- create a shared variable as flag for the jump instruction in opcode interpreter 
shared variable jump : integer := 0;
-- STUDENT CODE until HERE
signal instruction 	: std_logic_vector(3 DOWNTO 0);  	-- control signals for the ALU

-- check if read-file works
signal is_read_ok : file_open_status;
-- check if write-file works
signal is_write_ok : file_open_status;
-- STUDENT CODE HERE
---------------------------------------------------------------------------------------------
-- component for data_path_struct
COMPONENT data_path_struct IS
	
	PORT(
		clk   			: in std_logic;						    	-- clock
		rst 			: in std_logic;						    	-- Reset, high active
		mux_sel_sig 	: in std_logic;								-- control signal of Mux above Register R1
		R1_en 			: in std_logic;				    			-- R1 enable-Signal
		R2_en 			: in std_logic;								-- R2 enable-Signal
		instruction 	: in std_logic_vector(3 downto 0);  		-- control signals for the ALU
		instruction_en 	: in std_logic;								-- ALU enable-Signal
		mux_R2_data_in 	: in std_logic_vector(3 downto 0); 			-- Input 1 of Mux and R2
		status_out 		: out std_logic_vector(2 downto 0);			-- output Status register
		alu_res 		: out std_logic_vector(3 downto 0);    		-- output ALU 
		alu_res_rdy 	: out std_logic);							-- ouput ALU enable-Signal
		
END COMPONENT;
---------------------------------------------------------------------------------------------
-- STUDENT CODE until HERE
	
BEGIN

-- STUDENT CODE HERE
---------------------------------------------------------------------------------------------
	-- clock signal generation
	clk <= not clk after 5 ns;
	-- high-active restet generation
	rst <= '0' after 100 ns;
---------------------------------------------------------------------------------------------
	-- instance port map 
	data_path_struct_instance : data_path_struct						
		PORT MAP(
				clk 		    => clk, 					
				rst 		    => rst,					
		      	mux_sel_sig 	=> mux_sel_sig,		
				R1_en 			=> R1_en,
			   	R2_en 			=> R2_en,						
		      	instruction		=> instruction,
				instruction_en  => instruction_en,
				mux_R2_data_in  => mux_R2_data_in,
				status_out      => status_out,
				alu_res         => alu_res,
				alu_res_rdy     => alu_res_rdy);
---------------------------------------------------------------------------------------------
    -- opcode interpreter
--    address : process(rst, clk)
--        -- address the array of 8-bits instruction (pre-defined-program) 
--        variable program_counter : integer := -1;
--    begin
--		 if rst = '0' and rising_edge(clk) then
--		    -- load the opcode and operand
--		    if program_counter < 8 then
--                program_counter := program_counter + 1;
--                instruction <= pre_defined_program(program_counter)(7 downto 4);
--                mux_R2_data_in <= pre_defined_program(program_counter)(3 downto 0);
--            -- if there is a jump instruction, jump to the Specified address 
--            elsif jump = 1 then
--                program_counter := conv_integer(mux_R2_data_in);
--                instruction <= pre_defined_program(program_counter)(7 downto 4);
--                mux_R2_data_in <= pre_defined_program(program_counter)(3 downto 0);               
--                jump := 0;
--            -- realize the cycle
--            else 
--                program_counter := 0;
--                instruction <= pre_defined_program(program_counter)(7 downto 4);
--                mux_R2_data_in <= pre_defined_program(program_counter)(3 downto 0);
--            end if;
--         end if;
        
--    end process;
    
--    interpreter : process(instruction, mux_R2_data_in, rst)
--    -- instruction interpretation to arrange enable signal
--    begin
--        -- The assignment of the same signal needs to be arranged in the same process,
--        -- otherwise an error will occur (input enable will be X uncertain, no output)
--        if rst = '1' then
--            mux_sel_sig     <= '0';			-- control signal of Mux above Register R1 init
--            R1_en 		    <= '0';		    -- R1 enable-Signal init
--            R2_en 		    <= '0';			-- R2 enable-Signal	init	
--            instruction_en 	<= '0';         -- ALU enable-Signal init
--        else 
--            case instruction is
--                when "0000" => -- Addition
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1';
--                when "0001" => -- Subtraktion
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1';                    
--                when "0010" => -- OR-Funktion
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1'; 
--                when "0011" => -- AND-Funktion
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1'; 
--                when "0100" => -- XOR-Funktion
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1'; 
--                when "0101" => -- NOT-Funktion
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1'; 
--                when "0110" => -- Shift right(Division durch 2)
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1'; 
--                when "0111" => -- Shift left (Multiplikation mit 2)
--                    mux_sel_sig <= '0';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '1'; 
--                when "1000" => -- Load Register 1 with new data
--                    mux_sel_sig <= '1';
--                    R1_en <= '1'; R2_en <= '0';
--                    instruction_en <= '0'; 
--                when "1001" => -- Load Register 2 with new data
--                    mux_sel_sig <= '0';
--                    R1_en <= '0'; R2_en <= '1';
--                    instruction_en <= '0'; 
--                when "1010" => -- Jump Instruction
--                    mux_sel_sig <= '0';
--                    R1_en <= '0'; R2_en <= '0';
--                    instruction_en <= '0'; 
--                    jump := 1;                              
--                when OTHERS => NULL; 																														
--            end case;
--        end if;
--    end process;
---------------------------------------------------------------------------------------------
-- STUDENT CODE until HERE

	PROCESS (rst, clk)
   
    -- define the read-file and write-file
    file infile : text;
	file outfile : text;
	
	variable f_status: FILE_OPEN_STATUS;
	variable value: bit_vector(7 downto 0);
	variable value_std: std_logic_vector(7 downto 0) := X"00";
	variable inbuf : LINE; -- buffer between the program and file
	variable outbuf : LINE; -- buffer between the program and file
   
   begin	
		if (rst = '1') then
			-- STUDENT CODE HERE        
            -- open and read the pre-defined-program file 
            file_open(f_status, infile, "program.txt", read_mode);
            is_read_ok <= f_status;	
			-- STUDENT CODE until HERE
			-- open or create a result file for the ouput values
			file_open(f_status, outfile, "result.txt", write_mode);
			is_write_ok <= f_status;				
		elsif rising_edge(clk) then
			-- STUDENT CODE HERE
			-- STUDENT CODE until HERE
			
			-- if the file not be end, then read it's content(8-bits instruction)
			if endfile(infile) /= true then
				readline(infile, inbuf);
				read(inbuf, value);
				value_std := to_stdlogicvector(value);
			end if;
			-- read the opcode
			instruction <= value_std(7 downto 4);
		
			-- STUDENT CODE HERE
			-- read the operand
            mux_R2_data_in <= value_std(3 downto 0);
        -- write the result in the result file
        elsif falling_edge(clk) then
            -- write the value of alu_res_rdy
            write(outbuf, string'("alu_res_rdy: "));
            write(outbuf, alu_res_rdy);
            -- write the value of status_out(Decimal)
            write(outbuf, string'(" status of alu: "));
            write(outbuf, status_out);
            write(outbuf, string'("/"));
            write(outbuf, conv_integer(status_out));
            -- write the value of alu_res(Decimal)
            write(outbuf, string'(" expected output: "));
            write(outbuf, alu_res);
            write(outbuf, string'("/"));
            write(outbuf, conv_integer(alu_res));
            -- write the outbuf in outfile
            writeline(outfile, outbuf);
            
            -- when the 8-bits instruction already end
            if endfile(infile) = true then
                write(outbuf, string'("simulation end"));
                writeline(outfile, outbuf);
                -- close the read-file and write-file
                file_close(outfile);
                file_close(infile);
            end if;
			-- STUDENT CODE until HERE
		end if;
   end process;
---------------------------------------------------------------------------------------------
-- STUDENT CODE HERE
-- opcode interpreter as same as the main task
    interpreter : process(instruction, mux_R2_data_in, rst)
     -- instruction interpretation to arrange enable signal
    begin
        -- The assignment of the same signal needs to be arranged in the same process,
        -- otherwise an error will occur (input enable will be X uncertain, no output)
        if rst = '1' then
            mux_sel_sig     <= '0';			-- control signal of Mux above Register R1 init
            R1_en 		    <= '0';		    -- R1 enable-Signal init
            R2_en 		    <= '0';			-- R2 enable-Signal	init	
            instruction_en 	<= '0';         -- ALU enable-Signal init
        else 
            case instruction is
                when "0000" => -- Addition
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1';
                when "0001" => -- Subtraktion
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1';                    
                when "0010" => -- OR-Funktion
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1'; 
                when "0011" => -- AND-Funktion
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1'; 
                when "0100" => -- XOR-Funktion
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1'; 
                when "0101" => -- NOT-Funktion
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1'; 
                when "0110" => -- Shift right(Division durch 2)
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1'; 
                when "0111" => -- Shift left (Multiplikation mit 2)
                    mux_sel_sig <= '0';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '1'; 
                when "1000" => -- Load Register 1 with new data
                    mux_sel_sig <= '1';
                    R1_en <= '1'; R2_en <= '0';
                    instruction_en <= '0'; 
                when "1001" => -- Load Register 2 with new data
                    mux_sel_sig <= '0';
                    R1_en <= '0'; R2_en <= '1';
                    instruction_en <= '0'; 
                when "1010" => -- Jump Instruction
                    mux_sel_sig <= '0';
                    R1_en <= '0'; R2_en <= '0';
                    instruction_en <= '0'; 
                    jump := 1;                              
                when OTHERS => NULL; 																														
            end case;
        end if;
    end process;
-- STUDENT CODE until HERE

---------------------------------------------------------------------------------------------

END behavior;
