LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;

--! This testbench tests the run-length encoder (#rle) component.

--! The rle is tested with an example image and the output ius checked against
--! the runs which are expected for that image. Unexpected outputs will generate
--! an assertion fault.
ENTITY rle_tb IS
GENERIC(
    ROW_LENGTH          : POSITIVE :=20;  --! Length of a row in the test image
    ROW_LENGTH_WIDTH    : POSITIVE :=6; --! Bitwidth of #ROW_LENGTH
    NUMBER_OF_ROWS      : POSITIVE :=10;--! Number of rows in the test image
    ROW_NUMBER_WIDTH    : POSITIVE :=6; --! Bitwidth of #NUMBER_OF_ROWS
    PIXEL_OFFSET        : INTEGER RANGE 0 TO 10 :=2;    --! Offset in the first line caused by filter_major
    LINE_OFFSET         : INTEGER RANGE 0 TO 10 :=2     --! Number of lines absorbed by filter_major
);

END ENTITY rle_tb;

ARCHITECTURE IMP of rle_tb IS

   component rle
        GENERIC(
            ROW_LENGTH          : POSITIVE;
            ROW_LENGTH_WIDTH    : POSITIVE;
            NUMBER_OF_ROWS      : POSITIVE;
            ROW_NUMBER_WIDTH    : POSITIVE ;
            PIXEL_OFFSET        : INTEGER RANGE 0 TO 10;    --offset IN the last lINe becaUSE of filter_major
            LINE_OFFSET         : INTEGER RANGE 0 TO 10     --each filter_major absorbs 2 lINes
        );
        PORT(
            clk         : IN  STD_LOGIC;
            rstn        : IN  STD_LOGIC;
            data_in     : IN  STD_LOGIC;
            data_rdy    : IN  STD_LOGIC;
            start_pos   : OUT STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 DOWNTO 0);
            end_pos     : OUT STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 DOWNTO 0);
            row_number  : OUT STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 DOWNTO 0);
            new_run     : OUT STD_LOGIC;
            eol         : OUT STD_LOGIC;
            eof         : OUT STD_LOGIC
         );
    END component rle;

    SIGNAL clk          : STD_LOGIC := '1';
    SIGNAL rstn         : STD_LOGIC;
    SIGNAL data_rdy     : STD_LOGIC;
    SIGNAL data_in      : STD_LOGIC;
    SIGNAL start_pos    : STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 DOWNTO 0);
    SIGNAL end_pos      : STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 DOWNTO 0);
    SIGNAL row_number   : STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 DOWNTO 0);
    SIGNAL new_run      : STD_LOGIC;
    SIGNAL eol          : STD_LOGIC;
    SIGNAL eof          : STD_LOGIC;

    SIGNAL eol_tb       : STD_LOGIC;
    SIGNAL eol_tb_tmp   : STD_LOGIC;
    SIGNAL eof_tb       : STD_LOGIC;
    SIGNAL eof_tb_tmp   : STD_LOGIC;
    SIGNAL y_tb         : INTEGER RANGE 0 TO NUMBER_OF_ROWS-1;
    SIGNAL x_tb         : INTEGER RANGE 0 TO ROW_LENGTH-1;
    SIGNAL ctr          : INTEGER;
    SIGNAL phase        : STD_LOGIC;


    shared variable eof_detected : std_logic;

    TYPE image_t IS ARRAY(natural RANGE <>) of STD_LOGIC_VECTOR(0 TO ROW_LENGTH-1);

    -- Test image: the pixel and line offsets due to the lost pixels in the previous module (filter_converter) must be treated correctly. 
    -- Pixels with value 'U' are cut off by filter major and thus ignored in this testbench. 
    -- Pixel indexing assumes, that 2 of the lost lines are in the beginning and 2 in the end of the picture (see 'U' pixels below). 
    CONSTANT test_image0 : image_t(0 TO NUMBER_OF_ROWS-1) := (
    --   0                  19
        "UUUUUUUUUUUUUUUUUUUU", --0
        "UUUUUUUUUUUUUUUUUUUU", --1
        "UU110011111000000000", --2
        "00000001110000000011", --3
        "00000000000000000000", --4
        "00000001111000000000", --5
        "00000001001000000000", --6
        "000000011110000011UU", --7
        "UUUUUUUUUUUUUUUUUUUU", --8
        "UUUUUUUUUUUUUUUUUUUU"  --9
    );

    CONSTANT test_image1 : image_t(0 TO NUMBER_OF_ROWS-1) := (
    --   0                  19
        "UUUUUUUUUUUUUUUUUUUU", --0
        "UUUUUUUUUUUUUUUUUUUU", --1
        "UU110011111000000000", --2
        "00000001110000000011", --3
        "11000000000000000101", --4
        "00000001111000000000", --5
        "00000001001000000000", --6
        "000000011110000010UU", --7
        "UUUUUUUUUUUUUUUUUUUU", --8
        "UUUUUUUUUUUUUUUUUUUU"  --9
    );

    type run_t is
        record
            start_pos   : INTEGER RANGE 0 TO ROW_LENGTH;
            end_pos     : INTEGER RANGE 0 TO ROW_LENGTH;
            row_number  : INTEGER RANGE 0 TO NUMBER_OF_ROWS;
        end record;
    type run_array_t is array(NATURAL range <>) of run_t;

    -- expected result
    constant result_data0 : run_array_t := (
        ( 2,    3,  2),
        ( 6,    10, 2),
        ( 7,    9,  3),
        ( 18,   19, 3),
        ( 7,    10, 5),
        ( 7,    7,  6),
        ( 10,   10, 6),
        ( 7,    10, 7),
        ( 16,   17, 7)
        );
    constant result_data1 : run_array_t := (
        ( 2,    3,  2),
        ( 6,    10, 2),
        ( 7,    9,  3),
        ( 18,   19, 3),
        ( 0,    1,  4),
        ( 17,   17, 4),
        ( 19,   19, 4),
        ( 7,    10, 5),
        ( 7,    7,  6),
        ( 10,   10, 6),
        ( 7,    10, 7),
        ( 16,   16, 7)
        );


BEGIN

    UUT : rle
        GENERIC MAP (
            ROW_LENGTH          => ROW_LENGTH,
            ROW_LENGTH_WIDTH    => ROW_LENGTH_WIDTH,
            NUMBER_OF_ROWS      => NUMBER_OF_ROWS,
            ROW_NUMBER_WIDTH    => ROW_NUMBER_WIDTH,
            PIXEL_OFFSET        => PIXEL_OFFSET,
            LINE_OFFSET         => LINE_OFFSET
        )
        PORT MAP (
            clk         => clk,
            rstn        => rstn,
            data_in     => data_in,
            data_rdy    => data_rdy,
            start_pos   => start_pos,
            end_pos     => end_pos,
            row_number  => row_number,
            new_run     => new_run,
            eol         => eol,
            eof         => eof
        );

    STIMULI : PROCESS
    BEGIN

        rstn        <= '0';
        eol_tb      <= '0';
        eol_tb_tmp  <= '0';
        eof_tb      <= '0';
        eof_tb_tmp  <= '0';
        data_rdy    <= '0';
        data_in     <= '0';
        phase       <= '0';
        WAIT FOR 100 ns;

        rstn    <= '1';
        WAIT UNTIL falling_edge(clk);


        Y_LOOP:FOR y IN LINE_OFFSET TO NUMBER_OF_ROWS-LINE_OFFSET-1 LOOP
            X_LOOP:FOR x IN 0 TO ROW_LENGTH-1 LOOP
                WAIT UNTIL rising_edge(clk);
                data_rdy    <= '1';
                eol_tb_tmp <= '0';
                eol_tb <= eol_tb_tmp;

                x_tb <= x;
                y_tb <= y;
                --first line, mind the offset
                if y = LINE_OFFSET then
                    data_in <= test_image0(y)(x+PIXEL_OFFSET);
                    if x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                        exit X_LOOP;
                    end if;
                else
                    data_in <= test_image0(y)(x);
                end if;

                --last line, mind the offset
                if y = NUMBER_OF_ROWS - LINE_OFFSET - 1 AND x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                    exit Y_LOOP;
                end if;

                --test cases data_rdy
                if y = 2 AND x = 5 then
                    data_rdy    <= '0';
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    data_rdy    <= '1';
                END if;
            END LOOP X_LOOP;
            eol_tb_tmp <= '1';
        END LOOP Y_LOOP;

        WAIT UNTIL rising_edge(clk);
        eof_tb <= '1';
        eol_tb <= '1';
        data_in <= '0';

        WAIT UNTIL rising_edge(clk);
        eof_tb_tmp <= eof_tb;
        eof_tb <= '0';
        eol_tb <= '0';
        WAIT UNTIL rising_edge(clk);
        eof_tb_tmp <= eof_tb;
        WAIT UNTIL rising_edge(clk);
        data_rdy    <= '0';

        WAIT FOR 25 ns;
    
        assert eof_detected = '1' REPORT "Component did not set the eof flag!" SEVERITY FAILURE;

        WAIT FOR 25 ns;

        --stimuli for a second time, test reset behavior
        rstn        <= '0';
        eol_tb      <= '0';
        eol_tb_tmp  <= '0';
        eof_tb      <= '0';
        eof_tb_tmp  <= '0';
        data_rdy    <= '0';
        data_in     <= '0';
        WAIT FOR 100 ns;

        rstn    <= '1';
        phase   <= '1';
        WAIT UNTIL falling_edge(clk);


        Y_LOOP2:FOR y IN LINE_OFFSET TO NUMBER_OF_ROWS-LINE_OFFSET-1 LOOP
            X_LOOP2:FOR x IN 0 TO ROW_LENGTH-1 LOOP
                WAIT UNTIL rising_edge(clk);
                data_rdy    <= '1';
                eol_tb_tmp <= '0';
                eol_tb <= eol_tb_tmp;

                x_tb <= x;
                y_tb <= y;
                --first line, mind the offset
                if y = LINE_OFFSET then
                    data_in <= test_image1(y)(x+PIXEL_OFFSET);
                    if x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                        exit X_LOOP2;
                    end if;
                else
                    data_in <= test_image1(y)(x);
                end if;

                --last line, mind the offset
                if y = NUMBER_OF_ROWS - LINE_OFFSET - 1 AND x = ROW_LENGTH - PIXEL_OFFSET - 1 then
                    exit Y_LOOP2;
                end if;

                --test cases data_rdy
                if y = 6 AND x = 8 then
                    data_rdy    <= '0';
                    WAIT UNTIL rising_edge(clk);
                    WAIT UNTIL rising_edge(clk);
                    data_rdy    <= '1';
                END if;
            END LOOP X_LOOP2;
            eol_tb_tmp <= '1';
        END LOOP Y_LOOP2;

        WAIT UNTIL rising_edge(clk);
        eof_tb <= '1';
        eol_tb <= '1';
        data_in <= '0';

        WAIT UNTIL rising_edge(clk);
        eof_tb_tmp <= eof_tb;
        eof_tb <= '0';
        eol_tb <= '0';
        WAIT UNTIL rising_edge(clk);
        eof_tb_tmp <= eof_tb;
        WAIT UNTIL rising_edge(clk);
        data_rdy    <= '0';

        WAIT;
    END PROCESS;



    -- END PROCESS;


    --process which check the behavior
    CHECK : PROCESS(clk,rstn)
        variable cnt_row : integer := 0;
    BEGIN
        if rstn = '0' then
            ctr <= 0;
            cnt_row := 2;
            eof_detected := '0';
        elsif rising_edge(clk) then
            -- ASSERT eol_tb = eol REPORT "end of line signal not correct" SEVERITY FAILURE;
            -- ASSERT eof_tb = eof REPORT "end of file signal not correct" SEVERITY FAILURE;
            if new_run = '1' then
                ASSERT eof_detected = '0'
                REPORT "new run after eof was returned" 
                SEVERITY FAILURE;

                ASSERT cnt_row = TO_INTEGER(UNSIGNED(row_number)) 
                REPORT "at least one EOL is missing" 
                SEVERITY FAILURE;

                if(ROW_LENGTH-1 = TO_INTEGER(UNSIGNED(end_pos)) ) then
                    ASSERT eol = '1' 
                    REPORT "run is until the end of line but signal eol is not high"
                    SEVERITY FAILURE;
                end if;

                if phase = '0' and ctr < result_data0'length then
                    ASSERT result_data0(ctr).start_pos = TO_INTEGER(UNSIGNED(start_pos)) REPORT "expected start_pos: "
                    & INTEGER'IMAGE(result_data0(ctr).start_pos) & " received: "
                    & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(start_pos))) SEVERITY FAILURE;
                    ASSERT result_data0(ctr).end_pos = TO_INTEGER(UNSIGNED(end_pos)) REPORT "expected end_pos: "
                    & INTEGER'IMAGE(result_data0(ctr).end_pos) & " received: "
                    & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(end_pos))) SEVERITY FAILURE;
                    ASSERT result_data0(ctr).row_number = TO_INTEGER(UNSIGNED(row_number)) REPORT "expected row_number: "
                    & INTEGER'IMAGE(result_data0(ctr).row_number) & " received: "
                    & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(row_number))) SEVERITY FAILURE;
                elsif phase = '1' and ctr < result_data1'length then
                    ASSERT result_data1(ctr).start_pos = TO_INTEGER(UNSIGNED(start_pos)) REPORT "expected start_pos: "
                    & INTEGER'IMAGE(result_data1(ctr).start_pos) & " received: "
                    & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(start_pos))) SEVERITY FAILURE;
                    ASSERT result_data1(ctr).end_pos = TO_INTEGER(UNSIGNED(end_pos)) REPORT "expected end_pos: "
                    & INTEGER'IMAGE(result_data1(ctr).end_pos) & " received: "
                    & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(end_pos))) SEVERITY FAILURE;
                    ASSERT result_data1(ctr).row_number = TO_INTEGER(UNSIGNED(row_number)) REPORT "expected row_number: "
                    & INTEGER'IMAGE(result_data1(ctr).row_number) & " received: "
                    & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(row_number))) SEVERITY FAILURE;
                end if;
                ctr <= ctr + 1;
            end if;

            if( eol = '1') then
                cnt_row := cnt_row +1;
            end if;

            if eof_detected = '1' then   
                if phase = '0' then
                    ASSERT ctr = result_data0'LENGTH REPORT "at least one run is missing" SEVERITY FAILURE;
                else
                    ASSERT ctr = result_data1'LENGTH REPORT "at least one run is missing" SEVERITY FAILURE;
                end if;

                ASSERT cnt_row = NUMBER_OF_ROWS-LINE_OFFSET
                    REPORT "at least one EOL is missing" 
                SEVERITY FAILURE;

            end if;
            if eof = '1' then
                eof_detected := '1';
            if( eol = '0') then
                    cnt_row := cnt_row +1;
        end if;
            end if;
        end if;


    END PROCESS;


    CLKGEN : PROCESS(clk)
    BEGIN
        clk <= not clk after 10 ns;
    END PROCESS;

END ARCHITECTURE IMP;

