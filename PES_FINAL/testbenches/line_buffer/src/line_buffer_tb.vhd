library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--! This testbench can be used to test the line_buffer component.

--! The line_buffer is filled with the pixels of a test image.
--! The testbench checks if the correct pixels appear on the line_buffer output
--! at the right time.
entity line_buffer_tb is
generic(
    LINE_LENGTH     : POSITIVE := 20; --! Length of the lines in the test image
    NUMBER_OF_LINES : POSITIVE := 10; --! Number of lines in the test image
    ADDR_WIDTH      : POSITIVE := 6; --! Address width for the ram_dp component
    DATA_WIDTH      : POSITIVE := 1 --! Data width for the ram_dp subcomponent
);

end entity line_buffer_tb;

architecture IMP of line_buffer_tb is

  Component line_buffer is
    Generic (
        LINE_LENGTH : POSITIVE;
        ADDR_WIDTH  : POSITIVE;
        DATA_WIDTH  : POSITIVE
    );
    Port (
        clk             : in STD_LOGIC;
        rstn            : in STD_LOGIC;
        data_in         : in STD_LOGIC;
        data_rdy        : in STD_LOGIC;
        result          : out STD_LOGIC;
        result_rdy      : out STD_LOGIC
    );
    end Component;

    signal clk          : STD_LOGIC := '1';
    signal rstn         : STD_LOGIC;
    signal data_rdy     : STD_LOGIC;
    signal data_in      : STD_LOGIC;
    signal result       : STD_LOGIC;
    signal result_rdy   : STD_LOGIC;


    signal count_x : integer range 0 to LINE_LENGTH-1;
    signal count_y : integer range 0 to NUMBER_OF_LINES-1;
    signal first_line_complete  : std_logic;
    signal result_rdy_tb        : std_logic;

    signal input_counter : integer := 0;
    signal output_counter : integer := 0;

    type image_t is array(natural range <>) of STD_LOGIC_VECTOR(0 to LINE_LENGTH-1);

    -- test data, simulates the output of classify
    constant test_image : image_t(0 to NUMBER_OF_LINES-1) := (
        "10000000000000000000",
        "10000000100000000000",
        "10000011111000000000",
        "00000001110000000000",
        "00000000000000000000",
        "00000001111000000000",
        "00000001001000000000",
        "00000001111000000000",
        "00000011111110000000",
        "00000000000000000000"
    );


begin

    line_buffer_inst : line_buffer
    Generic map (
        LINE_LENGTH => LINE_LENGTH,
        ADDR_WIDTH  => ADDR_WIDTH,
        DATA_WIDTH  => DATA_WIDTH
    )
    Port map(
        clk         => clk,
        rstn        => rstn,
        data_in     => data_in,
        data_rdy    => data_rdy,
        result      => result,
        result_rdy  => result_rdy
    );

    result_rdy_tb <= first_line_complete AND data_rdy AFTER 20 ns;

    STIMULI : process
    begin

        rstn        <= '0';
        data_in     <= '0';
        data_rdy    <= '0';

        first_line_complete <= '0';

        wait for 100 ns;
        rstn        <= '1';
	input_counter <= 0;
        wait until rising_edge(clk);

        data_rdy    <= '1';

        for y in 0 to NUMBER_OF_LINES-1 loop
            for x in 0 to LINE_LENGTH-1 loop
                data_in <= test_image(y)(x);
                wait until rising_edge(clk);
		input_counter <= input_counter + 1;
                --test case
                if x = 5 then --test data_ready
                    data_rdy            <= '0';
                    wait until rising_edge(clk);
                    wait until rising_edge(clk);
                    data_rdy            <= '1';
                end if;
            end loop;
            first_line_complete <= '1';
        end loop;
        data_rdy    <= '0';
        wait for 1 us;

	assert input_counter = (output_counter + LINE_LENGTH - 1) 
	report "Line buffer did not output the expected number of pixels! "
        severity failure;

        --set up stimuli for a second time to check the reset behavior
        rstn        <= '0';
        data_in     <= '0';
        data_rdy    <= '0';


        first_line_complete <= '0';

        wait for 100 ns;
        rstn        <= '1';
	input_counter <= 0;
        wait until rising_edge(clk);

        data_rdy    <= '1';

        for y in 0 to NUMBER_OF_LINES-1 loop
            for x in 0 to LINE_LENGTH-1 loop
                data_in <= test_image(y)(x);
                wait until rising_edge(clk);
		input_counter <= input_counter + 1;
                --test case
                if y = 3 AND x = 5 then --test data_ready
                    data_rdy            <= '0';
                    wait until rising_edge(clk);
                    wait until rising_edge(clk);
                    data_rdy            <= '1';
                end if;
            end loop;
            first_line_complete <= '1';
        end loop;
        data_rdy    <= '0';
        wait for 1 us;

        wait;
    end process;

    Check : process(rstn, clk)
    begin
        if rstn = '0' then
            count_x <= 0;
            count_y <= 0;
	    output_counter <= 1;
        elsif rising_edge(clk) then

            if result_rdy = '1' then

                assert (test_image(count_y)(count_x) = result) report "Result not correct, expected: "
                & "pixel at position y = " & integer'image(count_y)
                & ", x = " & integer'image(count_x)
                & " as result"
                severity failure;

		if input_counter < (output_counter + LINE_LENGTH) then
			report "Line buffer output is " & integer'image(output_counter + LINE_LENGTH - input_counter) & " cycles to early!"
                	severity failure;
		end if;

		if input_counter > (output_counter + LINE_LENGTH) then
			report "Line buffer output is " & integer'image(input_counter - (output_counter + LINE_LENGTH)) & " cycles to late!"
                	severity failure;
		end if;

		output_counter <= output_counter + 1; 

                if count_x < LINE_LENGTH-1 then
                    count_x <= count_x + 1;
                else
                    count_x <= 0;
                    count_y <= count_y + 1;
                end if;

            end if;
        end if;

    end process;

    CLKGEN : process(clk)
    begin
        clk <= not clk after 10 ns;
    end process;

end architecture IMP;

