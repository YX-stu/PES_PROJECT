library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package debug_types is

-- region detect debug
type debug_region_detect_t is record
    data_rdy    : std_logic;
    eol         : std_logic;
    eof         : std_logic;
    pixel_input : std_logic;
    new_run     : std_logic;
end record;

-- filterhw debug
type debug_filterhw_t is record
    region_1_pixel_ctr           : unsigned(19 downto 0);
    region_1_in_stream_1_ctr     : unsigned(19 downto 0);
    region_1_eol_ctr             : unsigned(9 downto 0);
    region_1_eof_ctr             : unsigned(1 downto 0);
    region_1_new_run_ctr         : unsigned(9 downto 0);
    filterhw_pixel_ctr           : unsigned(19 downto 0);
    converter_filter_restult_rdy : std_logic;
    converter_filter_data_out_1  : std_logic;
    converter_filter_data_out_2  : std_logic;
end record;


end package debug_types;
