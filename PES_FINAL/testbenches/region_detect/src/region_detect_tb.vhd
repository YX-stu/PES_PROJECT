library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

--! This testbench verifies the region_detect component.

--! The testbench passes a black/white test image to the tested component.
--! After the image processing has completed, the testbench reads out all features in the
--! feature BRAM.
entity region_detect_tb is
generic(
    FEATURE_BRAM_ADDR_WIDTH : positive := 6;
    ROW_LENGTH              : positive := 30;     --! Length of a row in the input image
    ROW_LENGTH_WIDTH        : positive := 6;    --! Bitwidth of #ROW_LENGTH
    NUMBER_OF_ROWS          : positive := 11; --! Number of rows in the input image
    ROW_NUMBER_WIDTH        : positive := 5;    --! Bitwidth of #NUMBER_OF_ROWS
    PIXEL_OFFSET            : integer range 0 to 10 :=2;    --! Offset in the first line of the image caused by filter_major
    LINE_OFFSET             : integer range 0 to 10 :=2     --! Number of lines absorbed by filter_major
);

end entity region_detect_tb;

architecture IMP of region_detect_tb is

   component region_detect
      generic( ROW_LENGTH           : positive;
        ROW_LENGTH_WIDTH            : positive;
        NUMBER_OF_ROWS              : positive;
        ROW_NUMBER_WIDTH            : positive;
        FEATURE_BRAM_ADDR_WIDTH     : positive;
        PIXEL_OFFSET                : integer range 0 to 10;    --offset in the first line because of filter_major
        LINE_OFFSET                 : integer range 0 to 10     --each filter_major absorbs 2 lines
        );
      port(
        clk                         : in std_logic;
        rstn                        : in std_logic;
        data_in                     : in std_logic;
        data_rdy                    : in std_logic;
        FEATURE_BRAM_READOUT        : in STD_logic;
        FEATURE_BRAM_RADDR          : in STD_LOGIC_VECTOR(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        FEATURE_BRAM_LEFT_BORDER    : out STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 downto 0);
        FEATURE_BRAM_RIGHT_BORDER   : out STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 downto 0);
        FEATURE_BRAM_UPPER_BORDER   : out STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 downto 0);
        FEATURE_BRAM_LOWER_BORDER   : out STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 downto 0);
        FEATURE_BRAM_VALID          : out STD_LOGIC;
        FEATURE_BRAM_COUNT          : out STD_LOGIC_VECTOR(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        IDLE                        : out STD_LOGIC
        );
    end component region_detect;

    signal clk                       : STD_LOGIC := '1';
    signal rstn                      : STD_LOGIC;
    signal frame_start               : STD_LOGIC;
    signal frame_done                : STD_LOGIC;
    signal row_start                 : STD_LOGIC;
    signal data_rdy                  : STD_LOGIC;
    signal data_in                   : STD_LOGIC;
    signal FEATURE_BRAM_READOUT      : STD_logic := '0';
    signal FEATURE_BRAM_RADDR        : STD_LOGIC_VECTOR(FEATURE_BRAM_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal FEATURE_BRAM_LEFT_BORDER  : STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 downto 0);
    signal FEATURE_BRAM_RIGHT_BORDER : STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 downto 0);
    signal FEATURE_BRAM_UPPER_BORDER : STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 downto 0);
    signal FEATURE_BRAM_LOWER_BORDER : STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 downto 0);
    signal FEATURE_BRAM_VALID        : STD_LOGIC;
    signal FEATURE_BRAM_COUNT        : STD_LOGIC_VECTOR(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal IDLE                      : STD_LOGIC;

    SIGNAL y_tb         : INTEGER RANGE 0 TO NUMBER_OF_ROWS-1;
    SIGNAL x_tb         : INTEGER RANGE 0 TO ROW_LENGTH-1;
    
    SIGNAL readout      : STD_LOGIC := '0';
    SIGNAL readout_count: integer := 0;

    TYPE image_t IS ARRAY(natural RANGE <>) of STD_LOGIC_VECTOR(0 TO ROW_LENGTH-1);

    -- the first pixel being sent to the region_detect module is
    -- the second one of the second line, the last pixel is the one
    -- of the last but one line, last but one pixel
    -- these values are specified by LINE_OFFSET and PIXEL_OFFSET
    -- the offsets of the filter_converter module are included
    -- -> the pixel positions are given w.r.t. the original image
    CONSTANT test_image : image_t(0 TO NUMBER_OF_ROWS-1) := (
    --   0                              29
        "000000000000000000000000000000",   --0
        "000000001000000000000000000000",   --1
        "000011100000000000000111000000",   --2
        "001111000000000000011100000000",   --3
        "000001111111111111110000000000",   --4
        "000001111111111111110000000000",   --5
        "000110000000000000000000001111",   --6
        "000000000000111111000000000000",   --7
        "000000000000000000000000000000",   --8
        "000000000000000000000000000000",   --9
        "000000000000000000000000000000"    --10
    );

    type label_selection_out_t is (NEW_FEATURE, UPDATE, MERGE);
    type label_selection_output_t is
        record
            start_pos   : Integer;
            end_pos     : Integer;
            row_number  : Integer;
            type_out    : label_selection_out_t;
        end record;
    type output_data_label_selection_t is array(NATURAL range <>) of label_selection_output_t;

    -- data, which is expected to be sent to the feature_calculation module
    -- the corresponding signals need to be displayed
    -- no check routine is implemented
    constant output_data_label_selection : output_data_label_selection_t := (
        ( 4,    6,  2,  NEW_FEATURE),
        ( 21,   23, 2,  NEW_FEATURE),
        ( 2,    5,  3,  UPDATE),
        ( 19,   21, 3,  UPDATE),
        ( 5,    19, 4,  UPDATE),
        ( 5,    19, 4,  MERGE),
        ( 5,    19, 5,  UPDATE),
        ( 3,    4,  6,  NEW_FEATURE),
        ( 26,   29, 6,  NEW_FEATURE),
        ( 12,   17, 7,  NEW_FEATURE)
    );


    type FEATURE_TYPE_BOUNDS is
    record
        left, right  : integer;
        upper, lower : integer;
    end record;

   -- data of the features
   -- no check routing implemented
   type feature_type is array (natural range <>) of FEATURE_TYPE_BOUNDS;
   constant features: feature_type (0 to 3) := (
       (left => 2,  right => 23,    upper => 2 ,    lower => 5),
       (left => 3,  right => 4,     upper => 6,     lower => 6),
       (left => 26, right => 29,    upper => 6,     lower => 6),
       (left => 12, right => 17,    upper => 7,     lower => 7)
   );


    -- Allow no difference between the output features and the expected features: 
    constant FEATURE_TOLERANCE: integer := 0;

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

    function featrue_to_string (
        A : FEATURE_TYPE_BOUNDS
    ) return string is
    begin
        return "(left=" & integer'image(A.left) & ", right=" & integer'image(A.right) & ", upper=" & integer'image(A.upper) & ", lower=" & integer'image(A.lower) & ")";
    end featrue_to_string;

begin

    UUT : region_detect
    generic map (
         ROW_LENGTH                 => ROW_LENGTH,
         ROW_LENGTH_WIDTH           => ROW_LENGTH_WIDTH,
         NUMBER_OF_ROWS             => NUMBER_OF_ROWS,
         ROW_NUMBER_WIDTH           => ROW_NUMBER_WIDTH,
         FEATURE_BRAM_ADDR_WIDTH    => FEATURE_BRAM_ADDR_WIDTH,
         PIXEL_OFFSET               => PIXEL_OFFSET,
         LINE_OFFSET                => LINE_OFFSET
    )
    port map (
        CLK                         => clk,
        rstn                        => rstn,
        data_in                     => data_in,
        data_rdy                    => data_rdy,
        FEATURE_BRAM_READOUT        => FEATURE_BRAM_READOUT,
        FEATURE_BRAM_RADDR          => FEATURE_BRAM_RADDR,
        FEATURE_BRAM_LEFT_BORDER    => FEATURE_BRAM_LEFT_BORDER,
        FEATURE_BRAM_RIGHT_BORDER   => FEATURE_BRAM_RIGHT_BORDER,
        FEATURE_BRAM_UPPER_BORDER   => FEATURE_BRAM_UPPER_BORDER,
        FEATURE_BRAM_LOWER_BORDER   => FEATURE_BRAM_LOWER_BORDER,
        FEATURE_BRAM_VALID          => FEATURE_BRAM_VALID,
        FEATURE_BRAM_COUNT          => FEATURE_BRAM_COUNT,
        IDLE                        => IDLE
    );

    STIMULI : process
    begin

        rstn        <= '0';

        data_rdy    <= '0';

        data_in     <= '0';

        wait for 100 ns;
        rstn        <= '1';
        wait for 100 ns;
        rstn        <= '0';
        wait for 100 ns;
        rstn        <= '1';

        wait until rising_edge(clk);

        Y_LOOP:FOR y IN LINE_OFFSET TO NUMBER_OF_ROWS-LINE_OFFSET-1 LOOP
            X_LOOP:FOR x IN 0 TO ROW_LENGTH-1 LOOP
                WAIT UNTIL rising_edge(clk);
                data_rdy    <= '1';
                x_tb <= x;
                y_tb <= y;
                --first line, mind offset
                if y = LINE_OFFSET then
                    data_in <= test_image(y)(x+PIXEL_OFFSET);
                    if x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                        exit X_LOOP;
                    end if;
                else
                    data_in <= test_image(y)(x);
                end if;

                --last line, mind offset
                if y = NUMBER_OF_ROWS - LINE_OFFSET - 1 AND x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                    exit Y_LOOP;
                end if;

                --test cases data_rdy
                if y = 5 then
                    data_rdy    <= '0';
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    data_rdy <= '1';
                end if;
                if y = 2 AND x = 5 then
                    data_rdy    <= '0';
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    data_rdy    <= '1';
                END if;
            END LOOP X_LOOP;

        END LOOP Y_LOOP;

        WAIT UNTIL rising_edge(clk);
        data_rdy    <= '0';
        wait until idle = '1';
        readout <= '1';        
        

            
        --test reset behavior
        wait for 1000 ns;    
        readout <= '0';    
        rstn        <= '0';

        data_rdy     <= '0';



        wait for 100 ns;
        rstn        <= '1';
        wait for 100 ns;
        rstn        <= '0';
        wait for 100 ns;
        rstn        <= '1';

        wait until rising_edge(clk);

        Y_LOOP2:FOR y IN LINE_OFFSET TO NUMBER_OF_ROWS-LINE_OFFSET-1 LOOP
            X_LOOP2:FOR x IN 0 TO ROW_LENGTH-1 LOOP
                WAIT UNTIL rising_edge(clk);
                data_rdy    <= '1';
                x_tb <= x;
                y_tb <= y;
                --first line, mind offset
                if y = LINE_OFFSET then
                    data_in <= test_image(y)(x+PIXEL_OFFSET);
                    if x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                        exit X_LOOP2;
                    end if;
                else
                    data_in <= test_image(y)(x);
                end if;

                --last line, mind offset
                if y = NUMBER_OF_ROWS - LINE_OFFSET - 1 AND x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                    exit Y_LOOP2;
                end if;

                --test cases data_rdy
                if y = 3 then
                    data_rdy    <= '0';
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    data_rdy <= '1';
                end if;
                if y = 7 AND x = 5 then
                    data_rdy    <= '0';
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    data_rdy    <= '1';
                END if;
            END LOOP X_LOOP2;

        END LOOP Y_LOOP2;

        WAIT UNTIL rising_edge(clk);
        data_rdy    <= '0';
        wait until idle = '1';
        readout <= '1';        
        


        wait;
    end process;

    CLKGEN : process(clk)
    begin
        clk <= not clk after 10 ns;
    end process;
    
    
    readout_proc: process 
        variable feature_counter : integer := 0;
        variable addr_counter : integer := 0;
        variable output_feature: FEATURE_TYPE_BOUNDS;
    begin
    
        wait until readout = '1';
    wait for 10ns;
        wait until falling_edge(clk);
        FEATURE_BRAM_READOUT <= '1';
        FEATURE_BRAM_RADDR <= (others => '0');
        feature_counter := 0;
    addr_counter := 0;

     assert idle = '1'
                report "Component should set the IDLE port to '1' after processing the picture!"
                severity failure;

        wait until falling_edge(clk);

        for addr_counter in 0 to TO_INTEGER(UNSIGNED(FEATURE_BRAM_COUNT)) loop
            FEATURE_BRAM_RADDR <= STD_LOGIC_VECTOR(TO_UNSIGNED(addr_counter, FEATURE_BRAM_ADDR_WIDTH));
            wait for 60ns;
            
            if FEATURE_BRAM_VALID = '1' then                    
                assert feature_counter <  features'length
                report "Too many valid features have been generaed. "
                severity failure;                    
                
                output_feature := (left => to_integer(unsigned(FEATURE_BRAM_LEFT_BORDER)), 
                    right => to_integer(unsigned(FEATURE_BRAM_RIGHT_BORDER)), 
                    upper => to_integer(unsigned(FEATURE_BRAM_UPPER_BORDER)), 
                    lower => to_integer(unsigned(FEATURE_BRAM_LOWER_BORDER)));
                
                if check_feature(features(feature_counter), output_feature ) = '0' then                                        
                    report "Expected feature " & featrue_to_string(features(feature_counter)) severity error;            
                    report " But got feature " & featrue_to_string(output_feature) severity error;
                    report "Feature " & integer'image(feature_counter) & " is not correct!" severity failure;
                end if;                    
                
                feature_counter := feature_counter + 1;
            end if;                    
        end loop;

        assert feature_counter = features'length
            report "Expected " &  integer'image(features'length) & " features but got only " & integer'image(feature_counter) & "!"
            severity failure;
        
        FEATURE_BRAM_READOUT <= '0';
        FEATURE_BRAM_RADDR <= STD_LOGIC_VECTOR(TO_UNSIGNED(0,FEATURE_BRAM_ADDR_WIDTH));
        readout_count <= readout_count + 1;
        
    end process;
    
    
    check_result_count: process
    begin        
        wait for 15990 ns; 
                
        assert readout_count = 2
                report "The features have not been read out!"
                severity failure;
        
        report "Test sucessful!";
        
        wait;
    end process;

end architecture IMP;

