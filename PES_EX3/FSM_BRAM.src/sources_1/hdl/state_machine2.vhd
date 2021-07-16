----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2015 16:14:52
-- Design Name: 
-- Module Name: save_machine - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


--todo
-- -led zum status des zustandes einbauen (zb status_led auf programm blinken)
-- 
-- -


entity state_machine2 is
	generic(sim : integer := 0);
	Port(
		SW0        : in  std_logic;
		SW1        : in  std_logic;
		SW2        : in  std_logic;
		SW3        : in  std_logic;

		SW4        : in  std_logic;
		SW5        : in  std_logic;
		SW6        : in  std_logic;
		SW7        : in  std_logic;

		BTNC       : in  std_logic;     --for confirm any combination

		led_pin    : out std_logic_vector(3 downto 0);
		led_status : out std_logic;

		clk        : in  std_logic;
		rst        : in  std_logic      --BTNR for reset  	
	);

end state_machine2;

architecture Behavioral of state_machine2 is

	--ram signals
	signal local_we : std_logic;
	signal addr     : std_logic_vector(1 downto 0);
	signal local_do : std_logic_vector(4 downto 0);
	signal di_bit   : std_logic_vector(4 downto 0);
	
	signal local_bt_load, local_enter : std_logic;
	
	signal fast, slow : std_logic;
	
	constant debounce_depth_syn : integer := 10;
	constant debounce_depth_sim : integer := 1;
	
	constant flasher_fast_syn : integer := 22;
	constant flasher_fast_sim : integer := 2;
	
	constant flasher_slow_syn : integer := 25;
	constant flasher_slow_sim : integer := 5;
	
	attribute mark_debug : string;
	attribute mark_debug of local_enter : signal is "true";
	attribute mark_debug of addr : signal is "true";
	attribute mark_debug of local_do : signal is "true";
	
	type fsm_state is (idle, store_information, check_input, output_result);
	signal state : fsm_state := idle;
	
	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE

	component flasher
		generic(
			event_bit : natural
		);
		port(
			clk         : in  std_logic;
			rst         : in  std_logic;
			flasher_LED : out std_logic
		);

	end component;

	component ram_sp
		port(
			clk : in  std_logic;
			we  : in  std_logic;
			a   : in  std_logic_vector(1 downto 0);
			di  : in  std_logic_vector(4 downto 0);
			do  : out std_logic_vector(4 downto 0)
		);
	end component;
	
	component debounce is
    generic(depth		: natural	:=3);
	 Port (		clk		: in STD_LOGIC;
				reset	: in std_logic;
				d_in 	: in  STD_LOGIC;
				y_out 	: out  STD_LOGIC
			  );
	end component;
	
	component input_ctrl is
    port(	clk		:	in std_logic;
			reset	:	in std_logic;
			d_in	: 	in std_logic;
			p_out	:	out std_logic);
	end component;


begin

	-- Central button debouncing
	
	G_debounce_syn: if sim = 0 generate
	begin
		bt_load_debounce_inst: debounce
		generic map(depth => debounce_depth_syn)
		port map( 	clk			=> clk,
					reset		=> rst,
					d_in		=> BTNC,
					y_out		=> local_bt_load
					);
	end generate;
	
	G_debounce_sim: if sim = 1 generate
	begin
		bt_load_debounce_inst: debounce
		generic map(depth => debounce_depth_sim)
		port map( 	clk			=> clk,
					reset		=> rst,
					d_in		=> BTNC,
					y_out		=> local_bt_load
					);
	end generate;
	
	-- Fast/Slow flasher

	G_flashers_syn: if sim = 0 generate
	begin
		flasher_status_fast : flasher
		generic map(
			event_bit => flasher_fast_syn
		)
		port map(
			clk         => clk,
			rst         => rst,
			flasher_LED => fast
		);

		flasher_status_slow : flasher
		generic map(
			event_bit => flasher_slow_syn
		)
		port map(
			clk         => clk,
			rst         => rst,
			flasher_LED => slow);
	end generate;
	
	G_flashers_sim: if sim = 1 generate
	begin
		flasher_status_fast : flasher
		generic map(
			event_bit => flasher_fast_sim
		)
		port map(
			clk         => clk,
			rst         => rst,
			flasher_LED => fast
		);

		flasher_status_slow : flasher
		generic map(
			event_bit => flasher_slow_sim
		)
		port map(
			clk         => clk,
			rst         => rst,
			flasher_LED => slow);
	end generate;
	
	-- Central button - pulse generation
	
	btload_ctrl_inst: input_ctrl
	port map(	clk 	=> clk,
				reset 	=> rst,
				d_in	=> local_bt_load,
				p_out 	=> local_enter
				);

	-- RAM Block (Ram_style attribute needed in order to force BRAM block implementation instead of distributed RAM (RAM depth is too small!))
	my_ram : ram_sp
		port map(clk => clk,
			     we  => local_we,
			     a   => addr,
			     di  => di_bit,
			     do  => local_do);
				
		
	-- Select Status LED output
	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE
	
	main : process(clk, rst)
	begin
		if (rst = '1') then
		    -- STUDENT CODE HERE


			-- STUDENT CODE until HERE
            state <= idle;
		elsif rising_edge(clk) then
		      -- STUDENT CODE HERE


		      -- STUDENT CODE until HERE
			case state is
		      when idle =>
		          -- STUDENT CODE HERE


		          -- STUDENT CODE until HERE

		      when store_information =>
		          -- STUDENT CODE HERE


		          -- STUDENT CODE until HERE
		      when check_input =>
		          -- STUDENT CODE HERE


		          -- STUDENT CODE until HERE
			  when output_result =>
			      -- STUDENT CODE HERE


		          -- STUDENT CODE until HERE
		    end case;
		end if;
	end process;
end Behavioral;
