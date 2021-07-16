library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi_filter_dma_v1_00_a;
use axi_filter_dma_v1_00_a.all;

--! This component realizes the conversion from RGB to HSV color space.

--! The component can take one color pixel per clock cycle as input.
--! The HSV calculation is pipelined and may take a several clock cycles.
--! The result_rdy output indicates, if the outputs hold a valid computation result.
--! The pixels are processed using the FIFO principle.
entity rgb2hsv is
    port (

        clk        : in  std_logic;   --! Clock input
        rstn       : in  std_logic;   --! Negated asynchronous reset
        data_rdy   : in  std_logic;   --! Input bit indicating if the input data (#r, #g, #b) is ready to be processed
        r          : in  std_logic_vector(7 downto 0);  --! 8 bit red component of the input pixel
        g          : in  std_logic_vector(7 downto 0);  --! 8 bit green component of the input pixel
        b          : in  std_logic_vector(7 downto 0);  --! 8 bit blue component of the input pixel
        result_rdy : out std_logic;       --! Indicates whether the outputs (#h, #s, #v) represent valid pixel data
        h          : out std_logic_vector(8 downto 0);    --! 9 bit hue component of the output pixel (Range: 0° - 360°)
        s          : out std_logic_vector(7 downto 0);    --! 8 bit saturation component of the output pixel
        v          : out std_logic_vector(7 downto 0)     --! 8 bit value component of the output pixel
    );
end entity rgb2hsv;

--! rtl implementation of rgb2hsv
architecture rtl of rgb2hsv is

    --! returns the maximum value of the three given parameters
    function max3(a : unsigned; b : unsigned; c : unsigned) return unsigned is
        variable result : unsigned(7 downto 0) := "00000000";
    begin
        if a > b then
            result := a;
        else
            result := b;
        end if;
        if c > result then
            result := c;
        end if;
        return result;
    end function max3;

    --! returns the minimum value of the three given parameters
    function min3(a : unsigned; b : unsigned; c : unsigned) return unsigned is
        variable result : unsigned(7 downto 0) := "11111111";
    begin
        -- STUDENT CODE HERE
		if a < b then
            result := a;
        else
            result := b;
        end if;
        if c < result then
            result := c;
        end if;
        return result;
        -- STUDENT CODE until HERE
    end function min3;
    
    --! left shifting to realize multiplication 60*
    function mul_60(a : unsigned; b : unsigned) return signed is
        variable result : signed(16 downto 0) := (others=> '0');
    begin
        -- STUDENT CODE HERE
        -- converts to signed with 17 bits
        result := to_signed(to_integer(a) - to_integer(b), 17);
        -- multiplication with 60
        -- left shift 6 times (*64) and subtract its left shifting with 2 times (*4)
        -- 64*result - 4*result = 60*result
        result := shift_left(result,6) - shift_left(result,2);
        return result;
        -- STUDENT CODE until HERE
    end function mul_60;
    
    --! left shifting to realize multiplication 255*
    function mul_255(a : unsigned; b : unsigned) return signed is
        variable result : signed(16 downto 0) := (others=> '0');
    begin
        -- STUDENT CODE HERE
        -- converts to signed with 17 bits
        result := to_signed(to_integer(a) - to_integer(b), 17);
        -- multiplication with 60
        -- left shift 8 times (*256) and subtract selfs (*1)
        -- 256*result - 1*result = 255*result
        result := shift_left(result,8) - result;
        return result;
        -- STUDENT CODE until HERE
    end function mul_255;
    

    type u8_array_t is array(natural range <>) of unsigned(7 downto 0);
    type u16_array_t is array(natural range <>) of signed(15 downto 0);
    type u11_array_t is array(natural range <>) of signed(10 downto 0);

    component div16_8_8 is
    port (
        clk        : in  std_logic;
		en         : in  STD_LOGIC;
        rstn       : in  std_logic;
        a          : in  std_logic_vector(16 downto 0);
        b          : in  std_logic_vector( 7 downto 0);
        result     : out std_logic_vector( 8 downto 0)
    );
    end component;

    -- STUDENT CODE HERE
--    -- max,min signal
--    signal max: unsigned(7 downto 0);
--    signal min: unsigned(7 downto 0);
    -- enable signal for divider
    signal en : std_logic := '0'; 
    
    -- signal for a and b ports (hue)
    signal h_divided : std_logic_vector(16 downto 0);
    signal h_divisor : std_logic_vector(7 downto 0);
    -- signal for a and b ports (saturation)
    signal s_divided : std_logic_vector(16 downto 0);
    signal s_divisor : std_logic_vector(7 downto 0);
    -- signal for value
--    signal v_divided : std_logic_vector(16 downto 0);
--    signal v_divisor : std_logic_vector(7 downto 0);
    
    -- result of divider for hue
    signal h_result : std_logic_vector(8 downto 0);
    -- result of divider for saturation
    signal s_result : std_logic_vector(8 downto 0);
    -- result of value
    signal v_result : u8_array_t(10 downto 0) := (others=>(others=>'0'));
    
    -- condition array for hue calculation
    signal h_condition : u11_array_t(2 downto 0) := (others=>(others=>'0'));
    
    -- pipeline register of result_rdy
    signal r_result_rdy : std_logic_vector(10 downto 0);


    -- STUDENT CODE until HERE

begin

    -- STUDENT CODE HERE
    div_16_instance_h : div16_8_8
        port map(clk  => clk,
                 en   => en,
                 rstn => rstn,
                 a    => h_divided,
                 b    => h_divisor,
                 result => h_result);
                 
    div_16_instance_s : div16_8_8
        port map(clk  => clk,
                 en   => en,
                 rstn => rstn,
                 a    => s_divided,
                 b    => s_divisor,
                 result => s_result);
    
    rgb2hsv: process(rstn, clk, data_rdy)
        -- results fo function of max3 and min3
        variable max, min : unsigned(7 downto 0); 
        -- real result of hue
        variable hue : signed(8 downto 0); 
        variable uhue : unsigned(8 downto 0); 
        -- condition array for hue calculation
        variable v_h_condition : u11_array_t(2 downto 0) := (others=>(others=>'0'));

    begin
        if rstn = '0' then
            -- initialize hsv
            h <= (others => '0');
            s <= (others => '0');
            v <= (others => '0');
            -- initialize result_rdy 
            result_rdy <= '0';
            r_result_rdy <= (others=>'0');
            -- turn off the divider
            en <= '0';
        elsif rising_edge(clk) then  
        
            -- pipeline structrue run always, has nothing to do with data_rdy 
            -- No matter how the conditions change, the array shifts left by one bit per round       
            v_h_condition(0) := shift_left(h_condition(0),1); 
            v_h_condition(1) := shift_left(h_condition(1),1); 
            v_h_condition(2) := shift_left(h_condition(2),1); 
            -- read the last condition array after shifting      
            h_condition(0) <= v_h_condition(0);
            h_condition(1) <= v_h_condition(1);
            h_condition(2) <= v_h_condition(2);    
                  
            -- read the new data, controlled by data_rdy
            if data_rdy = '1' then
                -- start the divider
                en <= '1';
                -- max, min,of rgb
                max := max3(unsigned(r), unsigned(g), unsigned(b));
                min := min3(unsigned(r), unsigned(g), unsigned(b));           
                -- divider part of hue 
                if max = unsigned(r) and max /= min then
                    h_divided <= std_logic_vector(mul_60(unsigned(g), unsigned(b)));
                    h_divisor <= std_logic_vector(max - min);
                    h_condition(0) <= v_h_condition(0) + 1;
                elsif max = unsigned(g) and max /= min then
                    h_divided <= std_logic_vector(mul_60(unsigned(b), unsigned(r))); 
                    h_divisor <= std_logic_vector(max - min);
                    h_condition(1) <= v_h_condition(1) + 1;
                elsif max = unsigned(b) and max /= min then
                    h_divided <= std_logic_vector(mul_60(unsigned(r), unsigned(g))); 
                    h_divisor <= std_logic_vector(max - min);
                    h_condition(2) <= v_h_condition(2) + 1;
                elsif max = min then
                    -- default result is 0
                    h_divided <= std_logic_vector(to_signed(0,17)); 
                    h_divisor <= std_logic_vector(to_signed(1,8));
                end if;
                
                -- divider part of saturation (need to convert from 1 to 255)
                if max = 0 then
                    s_divided <= std_logic_vector(to_signed(0,17));
                    s_divisor <= std_logic_vector(to_signed(1,8));
                else
                    s_divided <= std_logic_vector(mul_255(max,min)); 
                    s_divisor <= std_logic_vector(max);
                end if;
                
                -- pipeline reading part of value (must be max)
                v_result(0) <= max;
            end if;
            
            -- pipeline structrue run always, has nothing to do with data_rdy 
            for i in 0 to 9 loop
                v_result(i+1) <= v_result(i);
            end loop;
            
            -- show the result of divider or pipeline
            -- calculation of hue       
            if h_condition(0)(10) = '1' then
                hue := signed(h_result);
                uhue := unsigned(hue);
            elsif h_condition(1)(10) = '1' then
                hue := signed(h_result) + 120;
                uhue := unsigned(hue);
            elsif h_condition(2)(10) = '1' then
                if to_integer(signed(h_result)) + 240 > 255 then
                    uhue := to_unsigned((to_integer(signed(h_result)) + 240),9);
                    -- make sure it is not negative
                    hue := to_signed(240,9);
                else
                    hue := signed(h_result) + 240;
                    uhue := unsigned(hue);
                end if;
            else
                hue := signed(h_result);
                uhue := unsigned(hue);
            end if;
            -- determine if hue is negative
            case(hue < 0) is
                when true =>
                    uhue := unsigned(hue + 360);
                    h <= std_logic_vector(uhue);
                when false =>
                    h <= std_logic_vector(uhue);
            end case;

            -- calculation of saturation
            s <= s_result(7 downto 0);
            
            -- caculation of value
            v <= std_logic_vector(v_result(10));
            
            -- after 9 clock cycles the conversion result is ready
            -- in fact, it is 11 clock cycles
            -- realize result_rdy by pipeline structrue
            -- value of result_rdy changes with data_rdy          
            r_result_rdy(0) <= data_rdy;
            for i in 0 to 9 loop
                r_result_rdy(i+1) <= r_result_rdy(i);
            end loop;
            result_rdy <= r_result_rdy(10);       
          
        end if;
    end process;
    -- STUDENT CODE until HERE

end architecture rtl;
