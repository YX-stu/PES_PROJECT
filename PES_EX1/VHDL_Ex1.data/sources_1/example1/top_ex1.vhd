----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:52 04/09/2010 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name:   
-- Target Devices: 
-- Tool versions: 
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
use ieee.numeric_std.all;

library basic_lib;
use basic_lib.mux_package.all;

entity top_ex1 is
    port (	reset_pin	: in 	std_logic;
			clk_pin		: in 	std_logic;
			
			BTNC		: in std_logic;
			BTND		: in std_logic;
			BTNL		: in std_logic;
			BTNR		: in std_logic;
			BTNU		: in std_logic;
			
			switch_pin 	: in  STD_LOGIC_VECTOR (2 downto 0);
			led_pin 	: out STD_LOGIC_VECTOR (1 downto 0)			
			  );
end top_ex1;

architecture Behavioral of top_ex1 is


	COMPONENT  mux
	PORT(	sel 	: IN std_logic_vector(sel_width-1 downto 0);
			input 	: IN std_logic_vector(input_width-1 downto 0);          
			output 	: OUT std_logic
			);
	END COMPONENT;
	

	
	component flasher
	port(	
			rst			: in std_logic;
			clk			: in std_logic;
			flasher_LED	: out std_logic
			);
	end component;
	
	signal button_pin : std_logic_vector(4 downto 0);

	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE
	
begin

	button_pin <= BTNC & BTNL & BTND & BTNR & BTNU;

	mux_inst: mux
	port map(
		sel 	=> switch_pin,
		input 	=> button_pin,
		output	=> led_pin(1)
		);

	flasher_inst: flasher
	port map(
		rst   		=> reset_pin,
		clk 		=> clk_pin,
		flasher_LED => led_pin(0)
		);
	

end Behavioral;

