library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

--! This testbench verifies the label_selection component.

--! The testbench passes run by run to the component label_selection.
--! The testbench <label_selection_check_tb> checks if the correct inputs are transferred to the component <feature_calculation>.
--! After the image processing has completed, the testbench awaits the IDLE signal.

entity label_selection_stimuli_tb is
generic(
    FEATURE_BRAM_ADDR_WIDTH : positive := 6;
    ROW_LENGTH              : positive := 30;     --! Length of a row in the input image
    ROW_LENGTH_WIDTH        : positive := 6;    --! Bitwidth of #ROW_LENGTH
    NUMBER_OF_ROWS          : positive := 11; 	--! Number of rows in the input image
    ROW_NUMBER_WIDTH        : positive := 5;    --! Bitwidth of #NUMBER_OF_ROWS
    MAX_NUMBER_LABELS       : positive := 1023;
    PIXEL_OFFSET            : integer range 0 to 10 :=2;    --! Offset in the first line of the image caused by filter_major
    LINE_OFFSET             : integer range 0 to 10 :=2     --! Number of lines absorbed by filter_major
);

end entity label_selection_stimuli_tb;

architecture behavior of label_selection_stimuli_tb is

    component label_selection is
    generic(
            ROW_LENGTH                  : positive := 640;
            ROW_LENGTH_WIDTH            : positive := 10;
            NUMBER_OF_ROWS              : positive := 480;
            ROW_NUMBER_WIDTH            : positive := 9;
            MAX_NUMBER_LABELS           : positive := 1023;
            FEATURE_BRAM_ADDR_WIDTH     : positive := 11;
            NUMBER_ROWS_BRAM            : positive := 3;
            SIMULATION                  : std_logic 
            );
    port(
            clk                         : in std_logic;
            rstn                        : in std_logic;
            start_pos                   : in std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
            end_pos                     : in std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
            row_number                  : in std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);
            new_run                     : in std_logic;
            eol                         : in std_logic;
            eof                         : in std_logic;
            idle                        : out std_logic;
            feature_bram_readout        : in std_logic;
            feature_bram_raddr          : in std_logic_vector(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
            feature_bram_left_border    : out std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
            feature_bram_right_border   : out std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
            feature_bram_upper_border   : out std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);
            feature_bram_lower_border   : out std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);
            feature_bram_valid          : out std_logic;
            feature_bram_count          : out std_logic_vector(FEATURE_BRAM_ADDR_WIDTH-1 downto 0)

        );
    end component;


    signal clk                       : STD_LOGIC := '1';
    signal rstn                      : STD_LOGIC;
    signal feature_bram_readout      : STD_logic;
    signal feature_bram_raddr        : STD_LOGIC_VECTOR(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal feature_bram_left_border  : STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 downto 0);
    signal feature_bram_right_border : STD_LOGIC_VECTOR(ROW_LENGTH_WIDTH-1 downto 0);
    signal feature_bram_upper_border : STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 downto 0);
    signal feature_bram_lower_border : STD_LOGIC_VECTOR(ROW_NUMBER_WIDTH-1 downto 0);
    signal feature_bram_valid        : STD_LOGIC;
    signal feature_bram_count        : STD_LOGIC_VECTOR(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal idle                      : STD_LOGIC;

  
    signal rle_start_pos, rle_end_pos       : std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
    signal rle_row_number                   : std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);
    signal rle_new_run, rle_eol, rle_eof    : std_logic;


    type run_t is
        record
            start_pos   : INTEGER RANGE 0 TO ROW_LENGTH;
            end_pos     : INTEGER RANGE 0 TO ROW_LENGTH;
            row_number  : INTEGER RANGE 0 TO NUMBER_OF_ROWS;
            new_run, eol, eof : std_logic;
        end record;
    type run_array_t is array(NATURAL range <>) of run_t;

    CONSTANT test_runs : run_array_t := (
        (4,     6,      2,  '1',  '0',  '0'),
        (21,    23,     2,  '1',  '0',  '0'),
        (0,     0,      2,  '0',  '1',  '0'),
        (2,     5,      3,  '1',  '0',  '0'),
        (19,    21,     3,  '1',  '0',  '0'),
        (0,     0,      3,  '0',  '1',  '0'),
        (5,     19,     4,  '1',  '0',  '0'),
        (0,     0,      4,  '0',  '1',  '0'),
        (5,     19,     5,  '1',  '0',  '0'),
        (0,     0,      5,  '0',  '1',  '0'),
        (3,     4,      6,  '1',  '0',  '0'),
        (26,    29,     6,  '1',  '0',  '0'),
        (0,     0,      6,  '0',  '1',  '0'),
        (12,    17,     7,  '1',  '0',  '0'),
        (0,     0,      7,  '0',  '1',  '0'),
        (0,     0,      8,  '0',  '1',  '1')
    );


    


begin

    UUT_LABEL_SELECTION_MODULE : label_selection
    generic map (
        ROW_LENGTH              => ROW_LENGTH,
        ROW_LENGTH_WIDTH        => ROW_LENGTH_WIDTH,
        NUMBER_OF_ROWS          => NUMBER_OF_ROWS,
        ROW_NUMBER_WIDTH        => ROW_NUMBER_WIDTH,
        MAX_NUMBER_LABELS       => MAX_NUMBER_LABELS,
        FEATURE_BRAM_ADDR_WIDTH => FEATURE_BRAM_ADDR_WIDTH,
        SIMULATION              => '1'
    )
    port map (
        clk                         => clk,
        rstn                        => rstn,
        start_pos                   => rle_start_pos,
        end_pos                     => rle_end_pos,
        row_number                  => rle_row_number,
        new_run                     => rle_new_run,
        eol                         => rle_eol,
        eof                         => rle_eof,
        feature_bram_readout        => feature_bram_readout,
        feature_bram_raddr          => feature_bram_raddr,
        feature_bram_left_border    => feature_bram_left_border,
        feature_bram_right_border   => feature_bram_right_border,
        feature_bram_upper_border   => feature_bram_upper_border,
        feature_bram_lower_border   => feature_bram_lower_border,
        feature_bram_valid          => feature_bram_valid,
        feature_bram_count          => feature_bram_count,
        idle                        => idle
    );


    





    STIMULI : process
    begin

        rstn        <= '0';

        wait for 100 ns;
        rstn        <= '1';
        wait for 100 ns;
        rstn        <= '0';
        wait for 100 ns;
        rstn        <= '1';

        wait until rising_edge(clk);


        RUN_LOOP : FOR j IN 0 TO test_runs'length - 1 LOOP

            WAIT UNTIL rising_edge(clk);
            rle_start_pos <= STD_LOGIC_VECTOR(TO_UNSIGNED(test_runs(j).start_pos, ROW_LENGTH_WIDTH));
            rle_end_pos <= STD_LOGIC_VECTOR(TO_UNSIGNED(test_runs(j).end_pos, ROW_LENGTH_WIDTH));
            rle_row_number <= STD_LOGIC_VECTOR(TO_UNSIGNED(test_runs(j).row_number, ROW_NUMBER_WIDTH));
            rle_new_run <= test_runs(j).new_run;
            rle_eol <= test_runs(j).eol;
            rle_eof <= test_runs(j).eof;

            WAIT UNTIL rising_edge(clk);
            rle_new_run <= '0';
            rle_eol <= '0';
            rle_eof <= '0';

            wait for 300 ns;



        END LOOP RUN_LOOP;




        WAIT UNTIL rising_edge(clk);
        
        wait for 500 ns;

        ASSERT idle = '1'
        REPORT "IDLE haven't set high"
        SEVERITY FAILURE;


        --test reset behavior
        wait for 500 ns;
        rstn        <= '0';


        wait for 100 ns;
        rstn        <= '1';
        wait for 100 ns;
        rstn        <= '0';
        wait for 100 ns;
        rstn        <= '1';

        wait until rising_edge(clk);

        FOR j IN 0 TO test_runs'length - 1 LOOP

            WAIT UNTIL rising_edge(clk);
            rle_start_pos <= STD_LOGIC_VECTOR(TO_UNSIGNED(test_runs(j).start_pos, ROW_LENGTH_WIDTH));
            rle_end_pos <= STD_LOGIC_VECTOR(TO_UNSIGNED(test_runs(j).end_pos, ROW_LENGTH_WIDTH));
            rle_row_number <= STD_LOGIC_VECTOR(TO_UNSIGNED(test_runs(j).row_number, ROW_NUMBER_WIDTH));
            rle_new_run <= test_runs(j).new_run;
            rle_eol <= test_runs(j).eol;
            rle_eof <= test_runs(j).eof;

            WAIT UNTIL rising_edge(clk);
            rle_new_run <= '0';
            rle_eol <= '0';
            rle_eof <= '0';

            
            wait for 300 ns;



        END LOOP ;

        


        
        wait for 1 us;

        ASSERT idle = '1'
        REPORT "IDLE haven't set high"
        SEVERITY FAILURE;


        
        wait;
    end process;

    CLKGEN : process(clk)
    begin
        clk <= not clk after 10 ns;
    end process;



end architecture behavior;

