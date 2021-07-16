library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

--! This testbench receives the commands instead of the component feature_calculation if the generic value label_selection/SIMULATION is set high.
--! The receiving input values are be checked.


entity feature_label_check is
    generic(
        ROW_LENGTH_WIDTH            : positive := 10;
        ROW_NUMBER_WIDTH            : positive := 9;
        FEATURE_BRAM_ADDR_WIDTH     : positive := 11
    );
    port(
        clk                         : in std_logic;
        rstn                        : in std_logic;

        new_feature                 : in std_logic;
        update                      : in std_logic;
        merge                       : in std_logic;
        run_label_1                 : in std_logic_vector(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        run_label_2                 : in std_logic_vector(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        start_pos                   : in std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
        end_pos                     : in std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
        row_number                  : in std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);

        feature_bram_readout        : in std_logic;
        feature_bram_raddr          : in std_logic_vector(FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
        feature_bram_left_border    : out std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
        feature_bram_right_border   : out std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);
        feature_bram_upper_border   : out std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);
        feature_bram_lower_border   : out std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);
        feature_bram_valid          : out std_logic
    );

end entity feature_label_check;

architecture behavior of feature_label_check is

    function check_new_update_merge(a : std_logic; b : std_logic; c : std_logic) return std_logic is
        variable result : std_logic := '0';
    begin
        result := '0';
        if a = '1' then
            if (b = '1' OR c = '1') then
                result := '1';
            end if;
        elsif b = '1' then
            if ( c = '1') then
                result := '1';
            end if;
        end if;
        return result;
    end function check_new_update_merge;

    type label_selection_type_t is (A_NEW_FEATURE, A_UPDATE, A_MERGE);
    type label_selection_record_t is
        record
            label_1     : Integer;
            label_2     : Integer;
            start_pos   : Integer;
            end_pos     : Integer;
            row_number  : Integer;
            type_out    : label_selection_type_t;
        end record;
    type data_label_selection_t is array(NATURAL range <>) of label_selection_record_t;

    -- data, which is expected to be sent to the feature_calculation module
    -- the corresponding signals need to be displayed
    -- no check routine is implemented
    constant input_data_label_selection : data_label_selection_t := (
        ( 0, 0,  4,    6,  2,  A_NEW_FEATURE),
        ( 1, 0,  21,   23, 2,  A_NEW_FEATURE),
        ( 0, 0,  2,    5,  3,  A_UPDATE),
        ( 1, 0,  19,   21, 3,  A_UPDATE),
        ( 0, 0,  5,    19, 4,  A_UPDATE),
        ( 0, 1,  5,    19, 4,  A_MERGE),
        ( 0, 0,  5,    19, 5,  A_UPDATE),
        ( 2, 0,  3,    4,  6,  A_NEW_FEATURE),
        ( 3, 0,  26,   29, 6,  A_NEW_FEATURE),
        ( 4, 0,  12,   17, 7,  A_NEW_FEATURE)
    );

    type label_id_array is array(NATURAL range <>) of integer;

    signal cnt : integer := 0;
    shared variable label_ids : label_id_array (0 to 20) := (others => -1);
   
begin

    
    CHECK_FEATURES: process(clk, rstn)
    begin
        if (rstn = '0') then
            cnt <= 0;
            feature_bram_left_border   <= (others => '0');
            feature_bram_right_border   <= (others => '0');
            feature_bram_upper_border   <= (others => '0');
            feature_bram_lower_border   <= (others => '0');
            feature_bram_valid          <= '0';
            
        elsif( rising_edge(clk ) AND (new_feature = '1' OR update = '1' OR  merge = '1')) then
        
            -- check incoming feature labels
            
            ASSERT (cnt < input_data_label_selection'length )
            REPORT "too many feature labels received"
            SEVERITY FAILURE;

           
            ASSERT (check_new_update_merge(new_feature, update, merge) = '0')
            REPORT "more than one signal of <new_feature>, <update> and <merge> is active"
            SEVERITY FAILURE;

            if (input_data_label_selection(cnt).type_out = A_NEW_FEATURE) then
                ASSERT new_feature = '1'
                REPORT "signal <new_feature> is not high"
                SEVERITY FAILURE;
                
                label_ids(input_data_label_selection(cnt).label_1) :=  TO_INTEGER(UNSIGNED(run_label_1));
                
            elsif (input_data_label_selection(cnt).type_out = A_UPDATE) then
                ASSERT update = '1'
                REPORT "signal <update> is not high"
                SEVERITY FAILURE;
            elsif (input_data_label_selection(cnt).type_out = A_MERGE) then
                ASSERT merge = '1'
                REPORT "signal <merge> is not high"
                SEVERITY FAILURE;
            end if;

            ASSERT (label_ids(input_data_label_selection(cnt).label_1) = TO_INTEGER(UNSIGNED(run_label_1)))
                REPORT "expected <label_1>: " 
                & integer'image(label_ids(input_data_label_selection(cnt).label_1)) 
                & " , received: "
                & integer'image( TO_INTEGER(UNSIGNED(run_label_1)))
                SEVERITY FAILURE;         
            

            if merge = '1' then
                ASSERT (label_ids(input_data_label_selection(cnt).label_2) = TO_INTEGER(UNSIGNED(run_label_2)))
                REPORT "expected <label_2>: " 
                & integer'image(label_ids(input_data_label_selection(cnt).label_2))
                & " , received: "
                & integer'image( TO_INTEGER(UNSIGNED(run_label_2)))
                SEVERITY FAILURE;
            end if;

            ASSERT (input_data_label_selection(cnt).start_pos = TO_INTEGER(UNSIGNED(start_pos)))
            REPORT "expected <start_pos>: " 
            & integer'image(input_data_label_selection(cnt).start_pos) 
            & " , received: "
            & integer'image( TO_INTEGER(UNSIGNED(start_pos)))
            SEVERITY FAILURE;

            ASSERT (input_data_label_selection(cnt).end_pos = TO_INTEGER(UNSIGNED(end_pos)))
            REPORT "expected <end_pos>: "
            & integer'image(input_data_label_selection(cnt).end_pos) 
            & " , received: "
            & integer'image( TO_INTEGER(UNSIGNED(end_pos)))
            SEVERITY FAILURE;

            ASSERT (input_data_label_selection(cnt).row_number = TO_INTEGER(UNSIGNED(row_number)))
            REPORT "expected <row_number>: "
            & integer'image(input_data_label_selection(cnt).row_number) 
            & " , received: "
            & integer'image( TO_INTEGER(UNSIGNED(row_number)))
            SEVERITY FAILURE;

            cnt <= cnt + 1;

        end if;
        
    end process CHECK_FEATURES;


    check_result_count: process
    begin        
        wait for 14900 ns; 
                
        assert cnt = input_data_label_selection'length
                report "Component did not create all expected features!"
                severity failure;


        report "Test sucessful!";

        wait;

   end process;
    



end architecture behavior;

