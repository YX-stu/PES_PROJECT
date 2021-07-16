----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2015 10:08:45
-- Design Name: 
-- Module Name: test_save_machine - Behavioral
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

entity test_save_machine is
--  Port ( );
end test_save_machine;

architecture Behavioral of test_save_machine is
	component state_machine2 is
	    generic(sim : integer := 0);
		Port(
			SW0        : in  std_logic;
			SW1        : in  std_logic;
			SW2        : in  std_logic;
			SW3        : in  std_logic;
			--oder gleich in HW zusammenfassen

			SW4        : in  std_logic;
			SW5        : in  std_logic;
			SW6        : in  std_logic;
			SW7        : in  std_logic;

			BTNC       : in  std_logic; --for confirm any combination

			led_pin    : out std_logic_vector(3 downto 0);
			led_status : out std_logic;

			clk        : in  std_logic;
			rst        : in  std_logic  --BTNR for reset  	
		);
	end component;

	signal local_btn_center : std_logic := '0';
	signal local_led_pin    : std_logic_vector(3 downto 0);

	signal sSW0 : std_logic := '0';
	signal sSW1 : std_logic := '0';
	signal sSW2 : std_logic := '0';
	signal sSW3 : std_logic := '0';
	signal sSW4 : std_logic := '0';
	signal sSW5 : std_logic := '0';
	signal sSW6 : std_logic := '0';
	signal sSW7 : std_logic := '0';

	signal sled_pin    : std_logic_vector(3 downto 0);
	signal sled_status : std_logic;
	signal sBTNC       : std_logic;

	signal clk   : std_logic := '0';
	signal reset : std_logic := '0';

begin
	

	my_machine : state_machine2
	       generic map(sim => 1)
		port map(SW0        => sSW0,
			     SW1        => sSW1,
			     SW2        => sSW2,
			     SW3        => sSW3,
			     SW4        => sSW4,
			     SW5        => sSW5,
			     SW6        => sSW6,
			     SW7        => sSW7,
			     BTNC       => sBTNC,
			     led_pin    => sled_pin,
			     led_status => sled_status,
			     clk        => clk,
			     rst        => reset);

	-- Add you stimuli here!
	-- ...
	
	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE
	
	
end Behavioral;
