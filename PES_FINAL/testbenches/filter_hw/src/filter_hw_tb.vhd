library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.debug_types.all;

use std.textio.all;

--! A testbench to verify the whole filter_hw component.

--! The testbench reads the input image from the "Beispiel1_VECTOR_Bare.ppm" file and passes it to the filter chain.
--! The resulting features are printed to the console output.
entity filter_hw_tb IS
    generic(
        IMAGE_WIDTH                             : integer range 3 to 2047 := 640;    --! width of a the input image in pixels
        IMAGE_HEIGHT                            : integer range 3 to 2047 := 480;    --! height of a the input image in pixels
        LINE_BUFFER_ADDR_WIDTH                  : positive := 11;    --! Bitwidth 3*IMAGE_WIDTH
        LINE_BUFFER_DATA_WIDTH                  : positive := 1;    --! Bitwidth LINE_BUFFER
        FILTER_MAJOR_PIXEL_COUNT                : positive := 4;  --! Pixel count for the converter_filter subcomponent
        REGION_DETECT_ROW_LENGTH_WIDTH          : positive := 10;    --! Bitwidth IMAGE_WIDTH
        REGION_DETECT_ROW_NUMBER_WIDTH          : positive := 9;    --! Bitwidth IMAGE_HEIGHT
        REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH   : positive :=11;    --! Bitwidth FEATURE_BRAM_ADDR. Determines the size of the feature BRAM
        REGION_DETECT_PIXEL_OFFSET              : integer range 0 to 10 :=2;--! 2*Numer of filter_major modules in the respective pipeline
        REGION_DETECT_LINE_OFFSET               : integer range 0 to 10 :=2;    --! 2*Numer of filter_major modules in the respective pipeline
        C_SLV_DWIDTH                            : integer              := 32
    );
end filter_hw_tb;

architecture behavior of filter_hw_tb is

    component filter_hw
    generic(
        IMAGE_WIDTH                             : integer range 3 to 2047;
        IMAGE_HEIGHT                            : integer range 3 to 2047;
        LINE_BUFFER_ADDR_WIDTH                  : positive;  --Bitbreite 3*IMAGE_WIDTH
        LINE_BUFFER_DATA_WIDTH                  : positive; --Bitbreite LINE_BUFFER
        FILTER_MAJOR_PIXEL_COUNT                : positive;  --Filterkoeffizient
        REGION_DETECT_ROW_LENGTH_WIDTH          : positive;  --Bitbreite IMAGE_WIDTH
        REGION_DETECT_ROW_NUMBER_WIDTH          : positive; --Bitbreite IMAGE_HEIGHT
        REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH   : positive; --Bitbreite FEATURE_BRAM_ADDR, bestimmt Anzahl Speicherzellen
        REGION_DETECT_PIXEL_OFFSET              : integer range 0 to 10;--2*Anzahl filter_major Module in der jeweiligen Pipeline
        REGION_DETECT_LINE_OFFSET               : integer range 0 to 10;    --2*Anzahl filter_major Module in der jeweiligen Pipeline
        C_SLV_DWIDTH                            : integer
    );
    port(
        clk                         : in STD_LOGIC;
        en                          : in STD_LOGIC;
        rstn                        : in STD_LOGIC;

        data_rdy                    : in STD_LOGIC;
        r                           : in STD_LOGIC_VECTOR(7 downto 0);
        g                           : in STD_LOGIC_VECTOR(7 downto 0);
        b                           : in STD_LOGIC_VECTOR(7 downto 0);
        h_min_1                     : in STD_LOGIC_VECTOR(8 downto 0);
        h_max_1                     : in STD_LOGIC_VECTOR(8 downto 0);
        h_min_2                     : in STD_LOGIC_VECTOR(8 downto 0);
        h_max_2                     : in STD_LOGIC_VECTOR(8 downto 0);
        s_min_1                     : in STD_LOGIC_VECTOR(7 downto 0);
        s_max_1                     : in STD_LOGIC_VECTOR(7 downto 0);
        s_min_2                     : in STD_LOGIC_VECTOR(7 downto 0);
        s_max_2                     : in STD_LOGIC_VECTOR(7 downto 0);
        feature_bram_readout_2      : in STD_logic;
        feature_bram_raddr_2        : in STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        feature_bram_readout_1      : in STD_logic;
        feature_bram_raddr_1        : in STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        feature_bram_left_border_1  : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
        feature_bram_right_border_1 : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
        feature_bram_upper_border_1 : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
        feature_bram_lower_border_1 : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
        feature_bram_valid_1        : out STD_LOGIC;
        feature_bram_count_1        : out STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        feature_bram_left_border_2  : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
        feature_bram_right_border_2 : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
        feature_bram_upper_border_2 : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
        feature_bram_lower_border_2 : out STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
        feature_bram_valid_2        : out STD_LOGIC;
        feature_bram_count_2        : out STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        idle                        : out STD_LOGIC--;

        --DEBUG                     : out debug_filterhw_t

    );
    end component;


   --Input
    signal clk                      : STD_LOGIC := '0';
    signal en                       : STD_LOGIC;
    signal rstn                     : STD_LOGIC;
    signal data_rdy                 : STD_LOGIC;
    signal r                        : STD_LOGIC_VECTOR(7 downto 0);
    signal g                        : STD_LOGIC_VECTOR(7 downto 0);
    signal b                        : STD_LOGIC_VECTOR(7 downto 0);
    signal h_min_1                  : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
    signal h_max_1                  : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
    signal h_min_2                  : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
    signal h_max_2                  : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
    signal s_min_1                  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal s_max_1                  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal s_min_2                  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal s_max_2                  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal feature_bram_readout_2   : STD_logic := '0';
    signal feature_bram_raddr_2     : STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal feature_bram_readout_1   : STD_logic := '0';
    signal feature_bram_raddr_1     : STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);

   --Output
    signal feature_bram_left_border_1   : STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal feature_bram_right_border_1  : STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal feature_bram_upper_border_1  : STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal feature_bram_lower_border_1  : STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal feature_bram_valid_1         : STD_LOGIC;
    signal feature_bram_count_1         : STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal feature_bram_left_border_2   : STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal feature_bram_right_border_2  : STD_LOGIC_VECTOR(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal feature_bram_upper_border_2  : STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal feature_bram_lower_border_2  : STD_LOGIC_VECTOR(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal feature_bram_valid_2         : STD_LOGIC;
    signal feature_bram_count_2         : STD_LOGIC_VECTOR(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal idle                         : STD_LOGIC;

    signal value_std_sig : std_logic_vector(23 downto 0);
    signal pixel_cnt_TB : integer range 0 to 307201;

    signal pic_proc_done : std_logic;
    signal feature_rd_cnt1, feature_rd_cnt2 : integer range 0 to 31;

    signal feature_bram_readout_1_del, feature_bram_readout_2_del : std_logic_vector(1 downto 0);
    type integer_del is array (natural range <>) of integer range 0 to 31;
    signal feature_rd_cnt1_del, feature_rd_cnt2_del : integer_del (1 downto 0);



    constant feature_cnt_max : integer := 8;

    signal feature1_cnt, feature2_cnt : integer range 0 to feature_cnt_max-1;

    type FEATURE_TYPE_BOUNDS is
    record
    left, right  : integer;
    upper, lower : integer;
    end record;

    type feature_type is array (natural range <>) of FEATURE_TYPE_BOUNDS;
    constant features_region1: feature_type (0 to 6) := (
    (left => 510, right => 598, upper => 21 , lower => 42),
    (left => 127, right => 193, upper => 115, lower => 172),
    (left => 303, right => 375, upper => 132, lower => 242),
    (left => 552, right => 623, upper => 185, lower => 272),
    (left =>  11, right => 297, upper => 280, lower => 409),
    (left => 313, right => 381, upper => 294, lower => 383),
    (left => 442, right => 585, upper => 341, lower => 450)
    );

    constant features_region2: feature_type (0 to 5) := (
    (left => 17 , right => 85 , upper => 17, lower => 49),
    (left => 146, right => 208, upper => 23, lower => 45),
    (left => 296, right => 346, upper => 35, lower => 63),
    (left => 367, right => 559, upper => 60, lower => 373),
    (left => 47 , right => 272, upper => 64, lower => 245),
    (left => 294, right => 346, upper => 85, lower => 119)
    );

    -- Allow a difference of +/-1 pixel for the output features to compensate for minor implementation variations: 
    constant FEATURE_TOLERANCE: integer := 1;

    function check_feature (
    A : FEATURE_TYPE_BOUNDS;
    B : FEATURE_TYPE_BOUNDS
    )  return STD_LOGIC is 
        variable d_left : integer := 0; 
        variable d_right : integer := 0; 
        variable d_upper : integer := 0; 
        variable d_lower : integer := 0; 
        variable result : STD_LOGIC := '1'; 
    begin 
        d_left := A.left - B.left;
        d_right := A.right - B.right;
        d_upper := A.upper - B.upper;
        d_lower := A.lower - B.lower;
        if d_left > FEATURE_TOLERANCE or d_left < -FEATURE_TOLERANCE then
            result := '0';
        elsif d_right > FEATURE_TOLERANCE or d_right < -FEATURE_TOLERANCE then
            result := '0';
        elsif d_upper > FEATURE_TOLERANCE or d_upper < -FEATURE_TOLERANCE then
            result := '0';
        elsif d_lower > FEATURE_TOLERANCE or d_lower < -FEATURE_TOLERANCE then
            result := '0';
        end if;
        return result; 
    end check_feature;

begin
    uut: filter_hw
    generic map (
        IMAGE_WIDTH                             => IMAGE_WIDTH ,
        IMAGE_HEIGHT                            => IMAGE_HEIGHT,
        LINE_BUFFER_ADDR_WIDTH                  => LINE_BUFFER_ADDR_WIDTH ,
        LINE_BUFFER_DATA_WIDTH                  => LINE_BUFFER_DATA_WIDTH,
        FILTER_MAJOR_PIXEL_COUNT                => FILTER_MAJOR_PIXEL_COUNT ,
        REGION_DETECT_ROW_LENGTH_WIDTH          => REGION_DETECT_ROW_LENGTH_WIDTH,
        REGION_DETECT_ROW_NUMBER_WIDTH          => REGION_DETECT_ROW_NUMBER_WIDTH,
        REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH   => REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH ,
        REGION_DETECT_PIXEL_OFFSET              => REGION_DETECT_PIXEL_OFFSET,
        REGION_DETECT_LINE_OFFSET               => REGION_DETECT_LINE_OFFSET,
        C_SLV_DWIDTH                            => C_SLV_DWIDTH
    )

    port map (
        clk                         => clk,
        en                          => en,
        rstn                        => rstn,
        data_rdy                    => data_rdy,

        r                           => r,
        g                           => g,
        b                           => b,
        h_min_1                     => h_min_1,
        h_max_1                     => h_max_1,
        h_min_2                     => h_min_2,
        h_max_2                     => h_max_2,
        s_min_1                     => s_min_1,
        s_max_1                     => s_max_1,
        s_min_2                     => s_min_2,
        s_max_2                     => s_max_2,
        feature_bram_readout_2      => feature_bram_readout_2,
        feature_bram_raddr_2        => feature_bram_raddr_2,
        feature_bram_readout_1      => feature_bram_readout_1,
        feature_bram_raddr_1        => feature_bram_raddr_1,
        feature_bram_left_border_1  => feature_bram_left_border_1,
        feature_bram_right_border_1 => feature_bram_right_border_1,
        feature_bram_upper_border_1 => feature_bram_upper_border_1,
        feature_bram_lower_border_1 => feature_bram_lower_border_1,
        feature_bram_valid_1        => feature_bram_valid_1,
        feature_bram_count_1        => feature_bram_count_1,
        feature_bram_left_border_2  => feature_bram_left_border_2,
        feature_bram_right_border_2 => feature_bram_right_border_2,
        feature_bram_upper_border_2 => feature_bram_upper_border_2,
        feature_bram_lower_border_2 => feature_bram_lower_border_2,
        feature_bram_valid_2        => feature_bram_valid_2,
        feature_bram_count_2        => feature_bram_count_2,
        idle                        => idle--,
        --DEBUG => open
    );




    CLK_GEN : process(clk)
    begin
        clk <= not clk after 5 ns;
    end process;

    stim_proc: process

        file infile : text;

        variable f_status: FILE_OPEN_STATUS;
        variable value: bit_vector(23 downto 0);
        variable value_std: std_logic_vector(23 downto 0) := X"000000";
        variable inbuf : LINE; -- buffer between the program and file

    begin
        rstn          <= '0';
        en            <= '0';
        data_rdy      <= '0';
        r <= (others => '0');
        g <= (others => '0');
        b <= (others => '0');

        file_open(f_status, infile, "Beispiel1_VECTOR_Bare.ppm", read_mode);
        pic_proc_done <= '0';

        wait for 100 ns;
        rstn          <= '1';

        --Grenzwerte Bild1: Farbe1 rot  hs: 340 179
        --                  Farbe2 blau hs: 218 204
        --                  Farbe3 gelb hs: 61 224
        -- h_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(80,9));
        -- h_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(40,9));
        -- s_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));
        -- s_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(170,8));

        -- h_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(240,9));
        -- h_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(200,9));
        -- s_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));
        -- s_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(160,8));

        h_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(314,9));
        h_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(334,9));
        s_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(50,8));
        s_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));

        h_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(190,9));
        h_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(210,9));
        s_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(50,8));
        s_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));

        pixel_cnt_TB <= 0;

        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        while endfile(infile) /= true loop
            readline(infile, inbuf);
            -- while inbuf/= NULL and inbuf'Length /=0 loop
                read(inbuf, value);
                    value_std := to_stdlogicvector(value);
                    r <= value_std(23 downto 16);
                    g <= value_std(15 downto  8);
                    b <= value_std( 7 downto  0);

                    value_std_sig <= value_std;
            -- end loop;

            pixel_cnt_TB <= pixel_cnt_TB +1;


            data_rdy <= '0';
            wait until rising_edge(clk);
            wait until rising_edge(clk);


            data_rdy <= '1';
            en <= '1';

        -- wait until falling_edge(clk);
        wait until rising_edge(clk);
        end loop;
        -- else

        -- end if;

        r <= (others => '1');
        g <= (others => '1');
        b <= (others => '1');

        data_rdy <= '0';
        -- en <= '0';

        file_close(infile);


        -- wait until falling_edge(clk);

        -- pic_proc_done <= '1';

        wait for 1 ms;

        rstn          <= '0';
        en            <= '0';
        data_rdy      <= '0';

        file_open(f_status, infile, "Beispiel1_VECTOR_Bare.ppm", read_mode);
        pic_proc_done <= '0';

        wait for 100 ns;
        rstn          <= '1';

        --Grenzwerte Bild1: Farbe1 rot  hs: 340 179
        --                  Farbe2 blau hs: 218 204
        --                  Farbe3 gelb hs: 61 224
        -- h_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(80,9));
        -- h_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(40,9));
        -- s_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));
        -- s_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(170,8));

        -- h_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(240,9));
        -- h_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(200,9));
        -- s_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));
        -- s_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(160,8));

        h_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(314,9));
        h_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(334,9));
        s_min_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(50,8));
        s_max_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));

        h_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(190,9));
        h_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(210,9));
        s_min_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(50,8));
        s_max_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(255,8));

        pixel_cnt_TB <= 0;

        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

    
    assert idle = '1'
        report "Component should be idle (IDLE port = '1') after reset!"
        severity failure;

        while endfile(infile) /= true loop
            readline(infile, inbuf);
            -- while inbuf/= NULL and inbuf'Length /=0 loop
            read(inbuf, value);
            value_std := to_stdlogicvector(value);
            r <= value_std(23 downto 16);
            g <= value_std(15 downto  8);
            b <= value_std( 7 downto  0);

            value_std_sig <= value_std;
            -- end loop;

            pixel_cnt_TB <= pixel_cnt_TB +1;


            data_rdy <= '0';
            wait until rising_edge(clk);
            wait until rising_edge(clk);


            data_rdy <= '1';
            en <= '1';

        -- wait until falling_edge(clk);
        wait until rising_edge(clk);
        end loop;
        -- else

        -- end if;

            r <= (others => '1');
            g <= (others => '1');
            b <= (others => '1');

            data_rdy <= '0';
            -- en <= '0';

            file_close(infile);

        -- wait until falling_edge(clk);

        pic_proc_done <= '1';

        --rgb Daten einlesen
        -- for i in 0 to rgb_data'length-1 loop
            -- r        <= rgb_data(i).r;
            -- g        <= rgb_data(i).g;
            -- b        <= rgb_data(i).b;
            -- en <= '1';
            -- wait until falling_edge(clk);
        -- end loop;
        wait;
    end process;

    readout_proc: process (rstn, clk)
        file console: text;
        variable f_status: FILE_OPEN_STATUS;
        variable consolebuf: LINE;
        variable output_feature: FEATURE_TYPE_BOUNDS;

    begin
        if rising_edge(clk) then
            if rstn = '0' then
                feature_bram_readout_1 <= '0';
                feature_bram_raddr_1 <= (others => '0');
                feature_bram_readout_2 <= '0';
                feature_bram_raddr_2 <= (others => '0');

                feature_rd_cnt1 <= 0;
                feature_rd_cnt2 <= 0;

                feature_bram_readout_1_del <= (others => '0');
                feature_bram_readout_2_del <= (others => '0');

                file_open(f_status, console, "STD_OUTPUT", write_mode);

                feature1_cnt <= 0;
                feature2_cnt <= 0;
            else
                feature_bram_readout_1 <= '0';
                feature_bram_raddr_1 <= (others => '0');
                feature_bram_readout_2 <= '0';
                feature_bram_raddr_2 <= (others => '0');

                feature_bram_readout_1_del(0) <= feature_bram_readout_1;
                feature_bram_readout_2_del(0) <= feature_bram_readout_2;

                feature_rd_cnt1_del(0) <= feature_rd_cnt1;
                feature_rd_cnt2_del(0) <= feature_rd_cnt2;


                for i in 1 downto 1 loop
                    feature_bram_readout_1_del(i) <= feature_bram_readout_1_del(i-1);
                    feature_bram_readout_2_del(i) <= feature_bram_readout_2_del(i-1);
                    feature_rd_cnt1_del(i) <= feature_rd_cnt1_del(i-1);
                    feature_rd_cnt2_del(i) <= feature_rd_cnt2_del(i-1);
                end loop;

                if pic_proc_done = '1' then
                    if (idle = '1' and feature_bram_readout_1 = '0' and feature_bram_readout_2 = '0') then
                        if feature_rd_cnt1 < to_integer(unsigned(feature_bram_count_1)) and feature_rd_cnt1 < 31 then
                            feature_bram_raddr_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(feature_rd_cnt1,REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH));
                            feature_bram_readout_1 <= '1';

                            feature_rd_cnt1 <= feature_rd_cnt1+1;

                        elsif feature_rd_cnt2 < to_integer(unsigned(feature_bram_count_2)) and feature_rd_cnt2 < 31 then
                            feature_bram_raddr_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(feature_rd_cnt2,REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH));
                            feature_bram_readout_2 <= '1';

                            feature_rd_cnt2 <= feature_rd_cnt2+1;
                        end if;
                    end if;
                end if;    


                if feature_bram_readout_1_del(1) = '1' and feature_bram_valid_1 = '1' then
                
                    output_feature := (left => to_integer(unsigned(feature_bram_left_border_1)), 
                        right => to_integer(unsigned(feature_bram_right_border_1)), 
                        upper => to_integer(unsigned(feature_bram_upper_border_1)), 
                        lower => to_integer(unsigned(feature_bram_lower_border_1)));
                    
                    if feature1_cnt < feature_cnt_max-1 then
                        feature1_cnt <= feature1_cnt+1;
                    end if;

                    write(consolebuf, string'("Feature Chain 1("));
                    write(consolebuf, feature_rd_cnt1_del(1));
                    write(consolebuf, string'("): Left: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_left_border_1)));
                    write(consolebuf, string'(": Right: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_right_border_1)));
                    write(consolebuf, string'(": Upper: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_upper_border_1)));
                    write(consolebuf, string'(": Lower: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_lower_border_1)));


                    if feature1_cnt <= 6 then
                        if check_feature(features_region1(feature1_cnt), output_feature ) = '1' then
                            write(consolebuf, string'(" - FEATURE correct"));
                            writeline(console, consolebuf);
                        else
                            write(consolebuf, string'(" - FEATURE WRONG"));                
                            writeline(console, consolebuf);
                            report "Feature " & integer'image(feature1_cnt) & " of Regoin Detect 1 is not correct!" severity failure;
                        end if;
                    end if;

                elsif feature_bram_readout_2_del(1) = '1' and feature_bram_valid_2 = '1' then

                    output_feature := (left => to_integer(unsigned(feature_bram_left_border_2)), 
                        right => to_integer(unsigned(feature_bram_right_border_2)), 
                        upper => to_integer(unsigned(feature_bram_upper_border_2)), 
                        lower => to_integer(unsigned(feature_bram_lower_border_2)));

                    if feature2_cnt < feature_cnt_max-1 then
                        feature2_cnt <= feature2_cnt+1;
                    end if;

                    write(consolebuf, string'("Feature Chain 2("));
                    write(consolebuf, feature_rd_cnt2_del(1));
                    write(consolebuf, string'("): Left: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_left_border_2)));
                    write(consolebuf, string'(": Right: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_right_border_2)));
                    write(consolebuf, string'(": Upper: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_upper_border_2)));
                    write(consolebuf, string'(": Lower: "));
                    write(consolebuf, to_integer(unsigned(feature_bram_lower_border_2)));

                    if feature2_cnt <= 5 then
                        if check_feature(features_region2(feature2_cnt), output_feature ) = '1' then

                            write(consolebuf, string'(" - FEATURE correct"));                
                            writeline(console, consolebuf);
                        else
                            write(consolebuf, string'(" - FEATURE WRONG"));                
                            writeline(console, consolebuf);
                            report "Feature " & integer'image(feature2_cnt) & " of Regoin Detect 2 is not correct!" severity failure;
                        end if;
                    end if;

                end if;
            end if;
        end if;
    end process;

    check_result_count: process
    begin        
        wait for 20995 us; 
                
        assert idle = '1'
                report "Component should set the IDLE port to '1' after processing the picture!"
                severity failure;

        assert feature1_cnt = 7
                report "Regoin Detect 1 did not find the expected number of features!"
                severity failure;
        
        assert feature2_cnt = 6
                report "Regoin Detect 2 did not find the expected number of features!"
                severity failure;
                
        
        report "Test sucessful!";
                
        wait;
    end process;

end;
