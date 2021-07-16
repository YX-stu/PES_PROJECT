library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi_filter_dma_v1_00_a;
use axi_filter_dma_v1_00_a.all;


--! This component implements black/white filtering of the input pixel as a function of the
--! previously determined Hue and Saturation thresholds as well as a two level noise filter.

--! The output (result) is a 1 bit black and white image with a '1' indicating, that the pixel color
--! lies in between the given thresholds.
entity filter_chain is
     generic(
           IMAGE_WIDTH  : integer range 3 to 2047 := 640; --! width of a the input image in pixels
           IMAGE_HEIGHT : integer range 3 to 2047 := 480; --! height of a the input image in pixels
           ADDR_WIDTH   : positive := 11;   --! Address width for the filter_major subcomponent
           DATA_WIDTH   : positive := 1;    --! Data width for the filter_major subcomponent
           PIXEL_COUNT  : positive := 4     --! Pixel count for the filter_major subcomponent

     );
     Port (
            clk        : in std_logic;  --! clock input
            data_rdy   : in std_logic;  --! input bit indicating if the inputs are valid and ready to be processed
            rstn       : in std_logic;  --! negated asynchronous reset
            h          : in std_logic_vector(8 downto 0);   --! hue component of the current input pixel
            s          : in std_logic_vector(7 downto 0);   --! saturation component of the current input pixel
            h_min      : in std_logic_vector(8 downto 0);   --! lower threshold for the hue component
            h_max      : in std_logic_vector(8 downto 0);   --! upper threshold for the hue component
            s_min      : in std_logic_vector(7 downto 0);   --! lower threshold for the saturation component
            s_max      : in std_logic_vector(7 downto 0);   --! upper threshold for the saturation component

            result_rdy  : out std_logic;   --! Indicates whether the output (#result) represents a valid pixel
            result      : out std_logic    --! Output pixel
    );

end filter_chain;

--! rtl implementation of filter_chain
architecture rtl of filter_chain is

    component classify is
    generic(
       VECTOR_LENGTH : positive := 9
    );
    Port (
        clk         : in std_logic;
        data_in     : in std_logic_vector(VECTOR_LENGTH-1 downto 0);
        data_rdy    : in std_logic;
        rstn        : in std_logic;
        min         : in std_logic_vector(VECTOR_LENGTH-1 downto 0);
        max         : in std_logic_vector(VECTOR_LENGTH-1 downto 0);
        result_rdy  : out std_logic;
        result      : out std_logic
    );

    end component;

    component filter_major is
    generic (
        IMAGE_WIDTH  : integer range 3 to 2047 := 640;
        IMAGE_HEIGHT : integer range 3 to 2047 := 480;
        ADDR_WIDTH   : positive := 11;
        DATA_WIDTH   : positive := 1;
        PIXEL_COUNT  : positive := 4
    );
    Port (
        clk         : in  std_logic;
        rstn        : in  std_logic;
        data_in     : in  std_logic;
        data_rdy    : in  std_logic;
        result      : out std_logic;
        result_rdy  : out std_logic
    );
    end component;

    -- STUDENT CODE HERE
    -- Signals of classify 
    signal cla_rdy_h : std_logic;
    signal cla_res_h : std_logic;
    signal cla_rdy_s : std_logic;
    signal cla_res_s : std_logic;
    
    --Signals of filter_major
    signal maj_rdy_h : std_logic;
    signal maj_res_h : std_logic;
    signal maj_rdy_s : std_logic;
    signal maj_res_s : std_logic;
    
    signal maj_in_h_s : std_logic;
    signal data_rdy_h_s : std_logic;
--    signal maj_rdy_h_s : std_logic;
--    signal maj_res_h_s : std_logic;

    -- STUDENT CODE until HERE

begin


    -- Create Separate Components for the following tasks and use instantiation!

    -- 1.) Filter the Colors to be in range of h_min, h_max, and s_min, s_max (entity classify)
    -- Filter Hue (classify_h)
    -- Filter Saturation (classify_s)

    -- 2.) Remove pixel arrangements having number of ones smaller than PIXEL_COUNT (here: 4) in a 3x3 arrangement of pixels --> Noise reduction (filter_major)
    --      line i-2    1 0 0
    --      line i-1    1 1 0   --> Output '1'
    --      line i      1 0 0

    --      line i-2    0 1 0
    --      line i-1    0 1 0   --> Output '0'
    --      line i      1 0 0

    -- Sample solution noise filters H and S data separately, ANDs the resulting pixel output and filters them again by another noise filter block
    -- --> filter_major_h
    -- --> filter_major_s
    -- --> input_h_s = result_h AND result_s
    -- --> filter_major_h_s

    -- STUDENT CODE HERE
    -- Instance of classify_h
    classify_h_instance : classify
    generic map(
        VECTOR_LENGTH => 9
    )
    port map(   clk         => clk,
                data_in     => h,
                data_rdy    => data_rdy,
                rstn        => rstn,
                min         => h_min,
                max         => h_max,
                result_rdy  => cla_rdy_h,
                result      => cla_res_h
    );
    
    -- Instance of classify_s
    classify_s_instance : classify
    generic map(
        VECTOR_LENGTH => 8
    )
    port map(   clk         => clk,
                data_in     => s,
                data_rdy    => data_rdy,
                rstn        => rstn,
                min         => s_min,
                max         => s_max,
                result_rdy  => cla_rdy_s,
                result      => cla_res_s
    );
    
    -- Instance of filter_major_h
    filter_major_h_instance : filter_major
    generic map(
        IMAGE_WIDTH  => IMAGE_WIDTH,
        IMAGE_HEIGHT => IMAGE_HEIGHT,
        ADDR_WIDTH   => ADDR_WIDTH,
        DATA_WIDTH   => DATA_WIDTH,
        PIXEL_COUNT  => PIXEL_COUNT
    )
    port map(
        clk         => clk,
        rstn        => rstn,
        data_in     => cla_res_h,
        data_rdy    => cla_rdy_h,
        result      => maj_res_h,
        result_rdy  => maj_rdy_h
    );
    
    -- Instance of filter_major_s
    filter_major_s_instance : filter_major
    generic map(
        IMAGE_WIDTH  => IMAGE_WIDTH,
        IMAGE_HEIGHT => IMAGE_HEIGHT,
        ADDR_WIDTH   => ADDR_WIDTH,
        DATA_WIDTH   => DATA_WIDTH,
        PIXEL_COUNT  => PIXEL_COUNT
    )
    port map(
        clk         => clk,
        rstn        => rstn,
        data_in     => cla_res_s,
        data_rdy    => cla_rdy_s,
        result      => maj_res_s,
        result_rdy  => maj_rdy_s
    );
    
	maj_in_h_s <= maj_res_h and maj_res_s;
	data_rdy_h_s <= maj_rdy_h and maj_rdy_s;
	
    -- Instance of filter_major_h_s
    filter_major_h_s_instance : filter_major
    generic map(
        IMAGE_WIDTH  => IMAGE_WIDTH,
        IMAGE_HEIGHT => IMAGE_HEIGHT,
        ADDR_WIDTH   => ADDR_WIDTH,
        DATA_WIDTH   => DATA_WIDTH,
        PIXEL_COUNT  => PIXEL_COUNT
    )
    port map(
        clk         => clk,
        rstn        => rstn,
        data_in     => maj_in_h_s,
        data_rdy    => data_rdy_h_s,
        result      => result,
        result_rdy  => result_rdy
    );
    
--    process(clk, rstn)
--    begin
--        if rstn = '0' then
--            result <= '0';
--            result_rdy <= '0';
--        elsif rising_edge(clk) then
--            if maj_rdy_h = '1' and maj_rdy_s = '1' then
--                maj_in_h_s <= maj_res_h and maj_res_s;
--                data_rdy_h_s <= '1';
--            else
--                data_rdy_h_s <= '0';
--            end if;
--        end if;
--    end process;
    -- STUDENT CODE until HERE

end rtl;
