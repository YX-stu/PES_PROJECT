library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi_filter_dma_v1_00_a;
use axi_filter_dma_v1_00_a.all;

--! This component implements noise filtering for a 1 bit black/white image.

--! Two image lines are buffered internally in order to have the values of all
--! pixels in an 3x3 pixel matrix available for filtering.
entity filter_major is
    generic (
        IMAGE_WIDTH  : integer range 3 to 2047 := 640; --! width of a the input image in pixels
        IMAGE_HEIGHT : integer range 3 to 2047 := 480; --! height of a the input image in pixels
        ADDR_WIDTH   : positive := 11;   --! Address width for the line_buffer subcomponent
        DATA_WIDTH   : positive := 1;    --! Data width for the line_buffer subcomponent
        PIXEL_COUNT  : positive := 4     --! Threashold for the number of pixels with value '1' in the 3x3 pixel matrix of the noise filter.
    );
  Port (
        clk         : in  std_logic;    --! Clock input
        rstn        : in  std_logic;    --! Negated asynchronous reset
        data_in     : in  std_logic;  --! 1 bit black or white input pixel
        data_rdy    : in  std_logic;  --! Input bit indicating if the input data (#data_in) is ready to be processed
        result      : out std_logic;  --! Output pixel
        result_rdy  : out std_logic --! Indicates whether the output (#result) represents a valid pixel
    );
end filter_major;

--! rtl implementation of filter_major
architecture rtl of filter_major is

    component line_buffer is
    Generic (
        LINE_LENGTH : positive;
        ADDR_WIDTH  : positive;
        DATA_WIDTH  : positive
    );
    Port (
        clk             : in std_logic;
        rstn            : in std_logic;
        data_in         : in std_logic;
        data_rdy        : in std_logic;
        result          : out std_logic;
        result_rdy      : out std_logic
    );
    end component;

    -- STUDENT CODE HERE
	
	--define a function, so that it can calculate the sum as output of several inputs 
	--for a return value, the format is variable
    function sum (x: std_logic; y: std_logic; z: std_logic) return integer is 
        variable result : integer :=0;
    begin
        if (x='1') then
            result:=result + 1;
        end if;
        if (y='1') then
            result:=result + 1;
        end if;
        if (z='1') then
            result:=result + 1;
        end if;
        return result;
    end function sum;
    
	--decleration of signals which are used for two linebuffers
    signal line_buffer_1_result :std_logic;
    signal line_buffer_1_rdy :std_logic;
    signal line_buffer_2_result :std_logic;
    signal line_buffer_2_rdy :std_logic;
	--decleration of a signal for counting the iteration times 
    signal count :integer;
	--decleration of signals used for being delayed
    signal line_buffer_1_result_delay :std_logic;
    signal data_in_delay :std_logic;
    signal data_in_delay_delay :std_logic;
	--decleration of signals which represent different columns in Matrix
    signal sum_von_2:integer;
    signal sum_von_3:integer;
	
    -- STUDENT CODE until HERE
begin

    -- STUDENT CODE HERE
	
	--Instantiation of linebuffer
    line_buffer_1: line_buffer
    generic map (
        LINE_LENGTH => IMAGE_WIDTH,   
        ADDR_WIDTH  => ADDR_WIDTH,   
        DATA_WIDTH  => DATA_WIDTH    
    )
    port map (
        clk            => clk,
        rstn           => rstn,
        data_in        => data_in,        
        data_rdy       => data_rdy,
        result         => line_buffer_1_result,
        result_rdy     => line_buffer_1_rdy
    ); 
    
	--Instantiation of linebuffer
    line_buffer_2: line_buffer
    generic map (
        LINE_LENGTH => IMAGE_WIDTH,   
        ADDR_WIDTH  => ADDR_WIDTH,   
        DATA_WIDTH  => DATA_WIDTH    
    )
    port map (
        clk            => clk,
        rstn           => rstn,
		--connect two linebuffers, make result from lb1 as input for lb2
        data_in        => line_buffer_1_result,        
        data_rdy       => line_buffer_1_rdy,
        result         => line_buffer_2_result,
        result_rdy     => line_buffer_2_rdy
    );
    
    process(clk,rstn)
	--decleration variable for storing the amount of "1" of first column in matrix
    variable sum_von_1:integer:=0;
	--decleration variable for storing the amount of "1" in matrix
    variable sum_von_all:integer:=0;
    begin
		--define an asynchrone reset 
        if (rstn='0') then
            result <= '0';
            result_rdy <= '0';
            sum_von_1:= 0;
            sum_von_all:= 0;
            count <= 0;
        elsif (rising_edge(clk)) then
            result_rdy <= '0';
			--make the output of the lb1 one clock delay
            line_buffer_1_result_delay <= line_buffer_1_result;
			--make the original input data one clock delay
            data_in_delay <= data_in;
			--make the original input data two clock delay
            data_in_delay_delay <= data_in_delay;
            
			--only when the output of lb2 is ready, then calculate the amount of "1" in matrix
            if (line_buffer_2_rdy = '1')then
				--calculate amount of "1" in the right column 
                sum_von_1 := sum(data_in_delay_delay, line_buffer_1_result_delay, line_buffer_2_result);
				--pass the value from right column to the middle column 
                sum_von_2 <= sum_von_1;
				--pass the value from middle column to the left column
                sum_von_3 <= sum_von_2;
					--a matrix has three columns 
                    if count < 2 then
                        count <= count+1;
                    else 
					--calculate the sum of amount of "1" in matrix
                    sum_von_all:= sum_von_1+sum_von_2+sum_von_3;
						--calculate the output of the filter, indicate if the amount of "1" more than 4
                        if sum_von_all >= PIXEL_COUNT then
                            result<='1';
                        else
                            result<='0';
                        end if;
                        result_rdy <= '1';
                    end if;
            end if;
        end if;
    end process;
    -- STUDENT CODE until HERE

end rtl;