library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

--! Testbench for verification of filter_major

--! The testbench passes a sample image to the filter and checks the
--! correctness of the resulting filtered image.
entity filter_major_tb is
generic(
    IMAGE_WIDTH         : INTEGER range 3 to 2047 := 20;  --! width of a the input image in pixels
    IMAGE_HEIGHT        : INTEGER range 3 to 2047 := 10;  --! height of a the input image in pixels
    ADDR_WIDTH          : POSITIVE := 6;  --! Address width for the line_buffer components
    DATA_WIDTH          : POSITIVE := 1;  --! Data width for the line_buffer components
    PIXEL_COUNT         : POSITIVE := 4;  --! Threshold for the number of pixels with value '1' in the 3x3 pixel matrix of the noise filter.
    PIXEL_OFFSET_WIDTH  : POSITIVE := 1;
    PIXEL_OFFSET_LINE   : POSITIVE := 1
);

end entity filter_major_tb;

architecture IMP of filter_major_tb is

  component filter_major is
    generic (
        IMAGE_WIDTH  : INTEGER range 3 to 2047;
        IMAGE_HEIGHT : INTEGER range 3 to 2047;
        ADDR_WIDTH   : POSITIVE;
        DATA_WIDTH   : POSITIVE;
        PIXEL_COUNT  : POSITIVE
    );
    Port (
        clk         : in  STD_LOGIC;
        rstn        : in  STD_LOGIC;
        data_in     : in  STD_LOGIC;
        data_rdy    : in  STD_LOGIC;
        result      : out STD_LOGIC;
        result_rdy  : out STD_LOGIC
    );
    end component;

    signal clk          : STD_LOGIC := '1';
    signal rstn         : STD_LOGIC;
    signal data_rdy     : STD_LOGIC;
    signal data_in      : STD_LOGIC;
    signal result       : STD_LOGIC;
    signal result_rdy   : STD_LOGIC;


    signal write_count_x : integer range 0 to IMAGE_WIDTH-1;
    signal write_count_y : integer range 0 to IMAGE_HEIGHT-1;

    signal tb_frame_done    : std_logic;
    signal save_output      : std_logic;
    type image_t is array(natural range <>) of STD_LOGIC_VECTOR(0 to IMAGE_WIDTH-1);
    signal image_out : image_t(0 to IMAGE_HEIGHT-1) := (others => (others => 'U'));

    -- test data, simulates the output of classify
    constant test_image : image_t(0 to IMAGE_HEIGHT-1) := (
        "10000000000000000000", --0
        "10000000100000000000", --1
        "11000000110000000000", --2
        "00000000100000000000", --3
        "00000000000000000000", --4
        "00000001111000000000", --5
        "00000001001000000000", --6
        "00000001111000000000", --7
        "11000000000000000001", --8
        "11000000000000000111"  --9
    );

    -- reference data, 'U' means this pixel is not set due to the line and pixel lost of the filter
    constant reference_image : image_t(0 to IMAGE_HEIGHT-1) := (
        "UUUUUUUUUUUUUUUUUUUU", --0
        "U1000000000000000000", --1
        "00000000110000000000", --2
        "00000000000000000000", --3
        "00000000110000000000", --4
        "00000000110000000000", --5
        "00000001111000000000", --6
        "00000000110000000000", --7
        "1100000000000000001U", --8
        "UUUUUUUUUUUUUUUUUUUU"  --9
    );




begin

    filter_major_inst : filter_major
    generic map (
        IMAGE_WIDTH  => IMAGE_WIDTH ,
        IMAGE_HEIGHT => IMAGE_HEIGHT,
        ADDR_WIDTH   => ADDR_WIDTH  ,
        DATA_WIDTH   => DATA_WIDTH  ,
        PIXEL_COUNT  => PIXEL_COUNT
    )
    Port map(
            clk         => clk,
            rstn        => rstn,
            data_in     => data_in,
            data_rdy    => data_rdy,
            result      => result,
            result_rdy  => result_rdy
        );

    STIMULI : process
    begin
        save_output <= '0';
        rstn        <= '0';
        data_in     <= '0';
        data_rdy    <= '0';

        wait for 100 ns;
        rstn        <= '1';

        wait until rising_edge(clk);

        data_rdy    <= '1';
        for y in 0 to IMAGE_HEIGHT-1 loop
             for x in 0 to IMAGE_WIDTH-1 loop
                data_in <= test_image(y)(x);
                wait until rising_edge(clk);
                data_rdy <= '0';
                wait until rising_edge(clk);
                wait until rising_edge(clk);
                data_rdy <= '1';
                --simulate a pause of result ready
                if x = 10 AND y = 3 then
                    data_rdy <= '0';
                    wait until rising_edge(clk);
                    data_rdy <= '1';
                end if;
            end loop;
        end loop;

        data_rdy    <= '0';
        wait for 100 ns;
        wait for 1 us;

	assert tb_frame_done = '1'
        report "Component did not generate the expected number of outputs!"
        severity failure;

        --same input, check reset behavior
        --result should remain the same!
        rstn        <= '0';
        data_in     <= '0';
        data_rdy    <= '0';

        wait for 100 ns;
        rstn    <= '1';

        wait until rising_edge(clk);

        data_rdy    <= '1';
        for y in 0 to IMAGE_HEIGHT-1 loop
             for x in 0 to IMAGE_WIDTH-1 loop
                data_in <= test_image(y)(x);
                wait until rising_edge(clk);
            end loop;
        end loop;

        data_rdy    <= '0';
        wait for 200 ns;
        save_output <= '1';
        wait for 100 ns;

	assert tb_frame_done = '1'
        report "Component did not generate the expected number of outputs!"
        severity failure;

        wait;
    end process;

    SAVE : process(rstn, clk)
    begin
        if rstn = '0' then
            write_count_x <= PIXEL_OFFSET_WIDTH;
            write_count_y <= PIXEL_OFFSET_LINE;
            image_out <= (others => (others => 'U'));
            tb_frame_done <= '0';
        elsif rising_edge(clk) then
            if result_rdy = '1' then
                image_out(write_count_y)(write_count_x) <= result;
                assert write_count_y <= IMAGE_HEIGHT-2 report "Too many ouput pixels, expecting 8 lines, received "
                & integer'image(write_count_y) & " lines! " severity failure;
                if write_count_x < IMAGE_WIDTH-1 then
                    write_count_x <= write_count_x + 1;
                else
                    write_count_x <= 0;
                    write_count_y <= write_count_y + 1;
                end if;
            end if;
            if write_count_x = IMAGE_WIDTH-1 AND write_count_y = IMAGE_HEIGHT-2 then
                    tb_frame_done <= '1';
            end if;
        end if;

    end process;

    CHECK : process(tb_frame_done)
    begin
        if(tb_frame_done = '1') then
            for y in 0 to IMAGE_HEIGHT-1 loop
                for x in 0 to IMAGE_WIDTH-1 loop
                    assert image_out(y)(x) = reference_image(y)(x)
                    report "image output not correct at: y=" & integer'image(y)
                    & ", x=" & integer'image(x)
                    severity failure;
                end loop;
            end loop;
            report "output check is finished." severity note;
        end if;
    end process;

    CLKGEN : process(clk)
    begin
        clk <= not clk after 10 ns;
    end process;


end architecture IMP;

