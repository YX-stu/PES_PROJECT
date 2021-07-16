library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library feature_extraction_lib;
use feature_extraction_lib.all;

entity feature_extraction is
    generic (
        -- Users to add parameters here

        -- User parameters ends
        -- Do not modify the parameters beyond this line


        -- Parameters of Axi Slave Bus Interface data_AXIS
        C_data_AXIS_TDATA_WIDTH : integer   := 32;

        -- Parameters of Axi Slave Bus Interface registers_AXIL
        C_registers_AXIL_DATA_WIDTH : integer   := 32;
        C_registers_AXIL_ADDR_WIDTH : integer   := 6
    );
    port (
        -- Users to add ports here

        -- User ports ends
        -- Do not modify the ports beyond this line


        -- Ports of Axi Slave Bus Interface data_AXIS
        data_axis_aclk    : in std_logic;
        data_axis_aresetn : in std_logic;
        data_axis_tready  : out std_logic;
        data_axis_tdata   : in std_logic_vector(C_data_AXIS_TDATA_WIDTH-1 downto 0);
        data_axis_tstrb   : in std_logic_vector((C_data_AXIS_TDATA_WIDTH/8)-1 downto 0);
        data_axis_tlast   : in std_logic;
        data_axis_tvalid  : in std_logic;

        -- Ports of Axi Slave Bus Interface registers_AXIL
        registers_axil_aclk    : in std_logic;
        registers_axil_aresetn : in std_logic;
        registers_axil_araddr  : in std_logic_vector(C_registers_AXIL_ADDR_WIDTH-1 downto 0);
        registers_axil_arprot  : in std_logic_vector(2 downto 0);
        registers_axil_arready : out std_logic;
        registers_axil_arvalid : in std_logic;
        registers_axil_awaddr  : in std_logic_vector(C_registers_AXIL_ADDR_WIDTH-1 downto 0);
        registers_axil_awprot  : in std_logic_vector(2 downto 0);
        registers_axil_awready : out std_logic;
        registers_axil_awvalid : in std_logic;
        registers_axil_bready  : in std_logic;
        registers_axil_bresp   : out std_logic_vector(1 downto 0);
        registers_axil_bvalid  : out std_logic;
        registers_axil_rdata   : out std_logic_vector(C_registers_AXIL_DATA_WIDTH-1 downto 0);
        registers_axil_rready  : in std_logic;
        registers_axil_rresp   : out std_logic_vector(1 downto 0);
        registers_axil_rvalid  : out std_logic;
        registers_axil_wdata   : in std_logic_vector(C_registers_AXIL_DATA_WIDTH-1 downto 0);
        registers_axil_wready  : out std_logic;
        registers_axil_wstrb   : in std_logic_vector((C_registers_AXIL_DATA_WIDTH/8)-1 downto 0);
        registers_axil_wvalid  : in std_logic
    );
end feature_extraction;

architecture feature_extraction_arch of feature_extraction is
    constant IMAGE_WIDTH                           : integer range 3 to 2047 := 640;
    constant IMAGE_HEIGHT                          : integer range 3 to 2047 := 480;
    constant LINE_BUFFER_ADDR_WIDTH                : positive := 11;              -- Bitbreite 3*IMAGE_WIDTH
    constant LINE_BUFFER_DATA_WIDTH                : positive := 1;               -- Bitbreite LINE_BUFFER
    constant FILTER_MAJOR_PIXEL_COUNT              : positive := 4;               -- Filterkoeffizient
    constant REGION_DETECT_ROW_LENGTH_WIDTH        : positive := 10;              -- Bitbreite IMAGE_WIDTH
    constant REGION_DETECT_ROW_NUMBER_WIDTH        : positive := 9;               -- Bitbreite IMAGE_HEIGHT
    constant REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH : positive := 11;              -- Bitbreite FEATURE_BRAM_ADDR, bestimmt Anzahl Speicherzellen
    constant REGION_DETECT_PIXEL_OFFSET            : integer range 0 to 10 :=2*2; -- 2*Anzahl filter_major Module in der jeweiligen Pipeline
    constant REGION_DETECT_LINE_OFFSET             : integer range 0 to 10 :=2*2; -- 2*Anzahl filter_major Module in der jeweiligen Pipeline

    signal module_reset                            : std_logic;   -- unified reset signal of software and AXI reset
                                                                  -- 1 = run, 0 = reset; inverted logic

    signal axis_to_pixbuf_data                          : std_logic_vector(C_data_AXIS_TDATA_WIDTH-1 downto 0);
    signal axis_to_pixbuf_en                            : std_logic;

    signal reg_to_filter_h_min_1                        : std_logic_vector(8 downto 0);
    signal reg_to_filter_h_max_1                        : std_logic_vector(8 downto 0);
    signal reg_to_filter_h_min_2                        : std_logic_vector(8 downto 0);
    signal reg_to_filter_h_max_2                        : std_logic_vector(8 downto 0);
    signal reg_to_filter_s_min_1                        : std_logic_vector(7 downto 0);
    signal reg_to_filter_s_max_1                        : std_logic_vector(7 downto 0);
    signal reg_to_filter_s_min_2                        : std_logic_vector(7 downto 0);
    signal reg_to_filter_s_max_2                        : std_logic_vector(7 downto 0);

    signal reg_to_filter_feature_bram_readout_2         : std_logic;
    signal reg_to_filter_feature_bram_raddr_2           : std_logic_vector(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal reg_to_filter_feature_bram_readout_1         : std_logic;
    signal reg_to_filter_feature_bram_raddr_1           : std_logic_vector(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_left_border_1     : std_logic_vector(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_right_border_1    : std_logic_vector(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_upper_border_1    : std_logic_vector(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_lower_border_1    : std_logic_vector(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_valid_1           : std_logic;
    signal filter_to_reg_feature_bram_count_1           : std_logic_vector(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_left_border_2     : std_logic_vector(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_right_border_2    : std_logic_vector(REGION_DETECT_ROW_LENGTH_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_upper_border_2    : std_logic_vector(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_lower_border_2    : std_logic_vector(REGION_DETECT_ROW_NUMBER_WIDTH-1 downto 0);
    signal filter_to_reg_feature_bram_valid_2           : std_logic;
    signal filter_to_reg_feature_bram_count_2           : std_logic_vector(REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH-1 downto 0);

    signal reg_to_mux_r_value                           : std_logic_vector(7 downto 0);
    signal reg_to_mux_g_value                           : std_logic_vector(7 downto 0);
    signal reg_to_mux_b_value                           : std_logic_vector(7 downto 0);
    signal filter_to_reg_idle                           : std_logic;
    signal reg_to_filter_software_reset                 : std_logic;
    signal reg_to_filter_enable_pipeline                : std_logic;

    signal pixel_buffer_r_value                         : std_logic_vector(7 downto 0);
    signal pixel_buffer_g_value                         : std_logic_vector(7 downto 0);
    signal pixel_buffer_b_value                         : std_logic_vector(7 downto 0);
    signal pixel_buffer_ready                           : std_logic;

    signal r_value                                      : std_logic_vector(7 downto 0);
    signal g_value                                      : std_logic_vector(7 downto 0);
    signal b_value                                      : std_logic_vector(7 downto 0);

    signal pixel_buffer_to_stream_if_busy               : std_logic;
    signal mux_to_filter_data_ready                     : std_logic;
    signal reg_to_mux_manual_data_ready                 : std_logic;
begin

    module_reset <= reg_to_filter_software_reset and registers_axil_aresetn;

    axi_stream_interface : entity feature_extraction_lib.axi_str_core
    generic map
    (
        C_S_AXIS_TDATA_WIDTH    => C_data_AXIS_TDATA_WIDTH
    )
    port map
    (
        S_AXIS_ACLK     => data_axis_aclk,
        S_AXIS_ARESETN  => data_axis_aresetn,
        S_AXIS_TREADY   => data_axis_tready,
        S_AXIS_TDATA    => data_axis_tdata,
        S_AXIS_TSTRB    => data_axis_tstrb,
        S_AXIS_TLAST    => data_axis_tlast,
        S_AXIS_TVALID   => data_axis_tvalid,


        stream_data     => axis_to_pixbuf_data,
        stream_enable   => axis_to_pixbuf_en,

        pixel_buffer_busy => pixel_buffer_to_stream_if_busy
    );

    axi_lite_registers : entity feature_extraction_lib.feature_extraction_registers
    generic map
    (
        REGION_DETECT_ROW_LENGTH_WIDTH        => REGION_DETECT_ROW_LENGTH_WIDTH,
        REGION_DETECT_ROW_NUMBER_WIDTH        => REGION_DETECT_ROW_NUMBER_WIDTH,
        REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH => REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH                    => C_registers_AXIL_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH                    => C_registers_AXIL_ADDR_WIDTH
    )
    port map
    (
        register_h_min_1                      => reg_to_filter_h_min_1,
        register_h_max_1                      => reg_to_filter_h_max_1,
        register_h_min_2                      => reg_to_filter_h_min_2,
        register_h_max_2                      => reg_to_filter_h_max_2,
        register_s_min_1                      => reg_to_filter_s_min_1,
        register_s_max_1                      => reg_to_filter_s_max_1,
        register_s_min_2                      => reg_to_filter_s_min_2,
        register_s_max_2                      => reg_to_filter_s_max_2,

        register_feature_bram_readout_2       => reg_to_filter_feature_bram_readout_2,
        register_feature_bram_raddr_2         => reg_to_filter_feature_bram_raddr_2,
        register_feature_bram_readout_1       => reg_to_filter_feature_bram_readout_1,
        register_feature_bram_raddr_1         => reg_to_filter_feature_bram_raddr_1,
        register_feature_bram_left_border_1   => filter_to_reg_feature_bram_left_border_1,
        register_feature_bram_right_border_1  => filter_to_reg_feature_bram_right_border_1,
        register_feature_bram_upper_border_1  => filter_to_reg_feature_bram_upper_border_1,
        register_feature_bram_lower_border_1  => filter_to_reg_feature_bram_lower_border_1,
        register_feature_bram_valid_1         => filter_to_reg_feature_bram_valid_1,
        register_feature_bram_count_1         => filter_to_reg_feature_bram_count_1,
        register_feature_bram_left_border_2   => filter_to_reg_feature_bram_left_border_2,
        register_feature_bram_right_border_2  => filter_to_reg_feature_bram_right_border_2,
        register_feature_bram_upper_border_2  => filter_to_reg_feature_bram_upper_border_2,
        register_feature_bram_lower_border_2  => filter_to_reg_feature_bram_lower_border_2,
        register_feature_bram_valid_2         => filter_to_reg_feature_bram_valid_2,
        register_feature_bram_count_2         => filter_to_reg_feature_bram_count_2,

        register_r_value                      => reg_to_mux_r_value,
        register_g_value                      => reg_to_mux_g_value,
        register_b_value                      => reg_to_mux_b_value,
        register_idle                         => filter_to_reg_idle,
        register_filter_software_reset        => reg_to_filter_software_reset,
        register_enable_pipeline              => reg_to_filter_enable_pipeline,
        register_manual_data_ready            => reg_to_mux_manual_data_ready,

        -- AXI Stuff
        S_AXI_ACLK       =>  registers_axil_aclk,
        S_AXI_ARESETN    =>  registers_axil_aresetn,
        S_AXI_ARADDR     =>  registers_axil_araddr,
        S_AXI_ARPROT     =>  registers_axil_arprot,
        S_AXI_ARREADY    =>  registers_axil_arready,
        S_AXI_ARVALID    =>  registers_axil_arvalid,
        S_AXI_AWADDR     =>  registers_axil_awaddr,
        S_AXI_AWPROT     =>  registers_axil_awprot,
        S_AXI_AWREADY    =>  registers_axil_awready,
        S_AXI_AWVALID    =>  registers_axil_awvalid,
        S_AXI_BREADY     =>  registers_axil_bready,
        S_AXI_BRESP      =>  registers_axil_bresp,
        S_AXI_BVALID     =>  registers_axil_bvalid,
        S_AXI_RDATA      =>  registers_axil_rdata,
        S_AXI_RREADY     =>  registers_axil_rready,
        S_AXI_RRESP      =>  registers_axil_rresp,
        S_AXI_RVALID     =>  registers_axil_rvalid,
        S_AXI_WDATA      =>  registers_axil_wdata,
        S_AXI_WREADY     =>  registers_axil_wready,
        S_AXI_WSTRB      =>  registers_axil_wstrb,
        S_AXI_WVALID     =>  registers_axil_wvalid
    );

    pixel_buffer_instance : entity feature_extraction_lib.pixel_buffer
    generic map (C_S_AXIS_TDATA_WIDTH => C_data_AXIS_TDATA_WIDTH)
    port map
    (
        clk         => registers_axil_aclk,
        rstn        => module_reset,

        data_in     => axis_to_pixbuf_data,
        data_en     => axis_to_pixbuf_en,

        busy        => pixel_buffer_to_stream_if_busy,

        r           => pixel_buffer_r_value,
        g           => pixel_buffer_g_value,
        b           => pixel_buffer_b_value,
        data_rdy    => pixel_buffer_ready
    );

    -- Mux to decide which rgb values to use
    r_value <= pixel_buffer_r_value when pixel_buffer_ready = '1' else reg_to_mux_r_value;
    g_value <= pixel_buffer_g_value when pixel_buffer_ready = '1' else reg_to_mux_g_value;
    b_value <= pixel_buffer_b_value when pixel_buffer_ready = '1' else reg_to_mux_b_value;

    mux_to_filter_data_ready <= '1' when reg_to_mux_manual_data_ready = '1' or pixel_buffer_ready = '1' else '0';

    filter_hw_instance : entity feature_extraction_lib.filter_hw
    generic map
    (
        IMAGE_WIDTH                           => IMAGE_WIDTH,
        IMAGE_HEIGHT                          => IMAGE_HEIGHT,
        LINE_BUFFER_ADDR_WIDTH                => LINE_BUFFER_ADDR_WIDTH,
        LINE_BUFFER_DATA_WIDTH                => LINE_BUFFER_DATA_WIDTH,
        FILTER_MAJOR_PIXEL_COUNT              => FILTER_MAJOR_PIXEL_COUNT,
        REGION_DETECT_ROW_LENGTH_WIDTH        => REGION_DETECT_ROW_LENGTH_WIDTH,
        REGION_DETECT_ROW_NUMBER_WIDTH        => REGION_DETECT_ROW_NUMBER_WIDTH,
        REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH => REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH,
        REGION_DETECT_PIXEL_OFFSET            => REGION_DETECT_PIXEL_OFFSET,
        REGION_DETECT_LINE_OFFSET             => REGION_DETECT_LINE_OFFSET,
        C_SLV_DWIDTH                          => C_registers_AXIL_DATA_WIDTH
    )
    port map
    (
        clk                         => registers_axil_aclk,
        en                          => reg_to_filter_enable_pipeline,
        rstn                        => module_reset,

        data_rdy                    => mux_to_filter_data_ready,

        r                           => r_value,
        g                           => g_value,
        b                           => b_value,

        h_min_1                     => reg_to_filter_h_min_1,
        h_max_1                     => reg_to_filter_h_max_1,
        h_min_2                     => reg_to_filter_h_min_2,
        h_max_2                     => reg_to_filter_h_max_2,
        s_min_1                     => reg_to_filter_s_min_1,
        s_max_1                     => reg_to_filter_s_max_1,
        s_min_2                     => reg_to_filter_s_min_2,
        s_max_2                     => reg_to_filter_s_max_2,

        feature_bram_readout_2      => reg_to_filter_feature_bram_readout_2,
        feature_bram_raddr_2        => reg_to_filter_feature_bram_raddr_2,

        feature_bram_readout_1      => reg_to_filter_feature_bram_readout_1,
        feature_bram_raddr_1        => reg_to_filter_feature_bram_raddr_1,

        feature_bram_left_border_1  => filter_to_reg_feature_bram_left_border_1,
        feature_bram_right_border_1 => filter_to_reg_feature_bram_right_border_1,
        feature_bram_upper_border_1 => filter_to_reg_feature_bram_upper_border_1,
        feature_bram_lower_border_1 => filter_to_reg_feature_bram_lower_border_1,
        feature_bram_valid_1        => filter_to_reg_feature_bram_valid_1,
        feature_bram_count_1        => filter_to_reg_feature_bram_count_1,

        feature_bram_left_border_2  => filter_to_reg_feature_bram_left_border_2,
        feature_bram_right_border_2 => filter_to_reg_feature_bram_right_border_2,
        feature_bram_upper_border_2 => filter_to_reg_feature_bram_upper_border_2,
        feature_bram_lower_border_2 => filter_to_reg_feature_bram_lower_border_2,
        feature_bram_valid_2        => filter_to_reg_feature_bram_valid_2,
        feature_bram_count_2        => filter_to_reg_feature_bram_count_2,

        idle                        => filter_to_reg_idle
    );

end architecture;
