library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library basic_lib;
use basic_lib.mux_package.all;

entity top_ex3 is
    port (  reset_pin	: in std_logic;
			clk_pin		: in std_logic;
			
			BTNC		: in std_logic;
			BTND		: in std_logic;
			BTNL		: in std_logic;
			BTNR		: in std_logic;
			BTNU		: in std_logic;
			
			switch_pin 	: in  std_logic_vector (2 downto 0);
			led_pin 	: out std_logic_vector (1 downto 0);
			
			led_shift_pin: out std_logic_vector (3 downto 0));
end top_ex3;

architecture structural of top_ex3 is

	component input_ctrl
        port( clk   : in std_logic;
              reset : in std_logic;
              d_in  : in std_logic;
              p_out : out std_logic
              );
	end component;
			
	component ring_shift_reg_s
        generic( reg_depth : natural := 4);
        port( clk     : in std_logic;
              reset   : in std_logic;
              load_in : in std_logic;
              d_in    : in std_logic;
              l_in    : in std_logic;
              r_in    : in std_logic;
              y_out   : out std_logic_vector
              );
	end component;
	
--	for all : ring_shift_reg_s use entity basic_lib.ring_shift_reg_s (Behavioral);
	for all : ring_shift_reg_s use entity basic_lib.ring_shift_reg_s (structural);

	component debounce 
        generic( depth : natural :=3);
        port (	clk   : in  std_logic;
				reset : in  std_logic;
				d_in  : in  std_logic;
				y_out : out std_logic
                );
    end component;
			
	signal local_right : std_logic;
	signal local_left  : std_logic;
	signal local_enter : std_logic;
	
	signal local_bt_load  : std_logic;
	signal local_bt_left  : std_logic;
	signal local_bt_right : std_logic;

begin
	
	led_pin(0) <= BTNU;
	led_pin(1) <= '0';
	
	btload_ctrl_inst: input_ctrl
    port map( clk   => clk_pin,
              reset => reset_pin,
              d_in  => local_bt_load,
              p_out => local_enter
              );
                    
	bt_left_ctrl_inst: input_ctrl
    port map( clk   => clk_pin,
              reset => reset_pin,
              d_in  => local_bt_left,
              p_out => local_left
              );
                    
	bt_right_ctrl_inst: input_ctrl
    port map( clk   => clk_pin,
              reset => reset_pin,
              d_in  => local_bt_right,
              p_out => local_right
              );
                    
	shift_reg_inst	: ring_shift_reg_s
    generic map( reg_depth => 4)
    port map( clk     => clk_pin,
              reset   => reset_pin,
              load_in => local_enter,
              d_in    => BTNU,
              l_in    => local_left,
              r_in    => local_right,
              y_out   => led_shift_pin
              );
	
	bt_load_debounce_inst: debounce
    generic map( depth => 10 )
    port map( clk   => clk_pin,
              reset => reset_pin,
              d_in  => BTNC,
              y_out => local_bt_load
              );
									
	bt_left_debounce_inst: debounce
    generic map( depth => 10 )
    port map( clk   => clk_pin,
              reset => reset_pin,
              d_in	=> BTNL,
              y_out	=> local_bt_left
              );
									
	bt_right_debounce_inst: debounce
    generic map( depth => 10 )
    port map( clk   => clk_pin,
              reset	=> reset_pin,
              d_in	=> BTNR,
              y_out	=> local_bt_right
              );

end structural;