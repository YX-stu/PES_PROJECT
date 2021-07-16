----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:06:37 04/13/2010 
-- Design Name: 
-- Module Name:    debounce - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



library basic_lib;


entity input_ctrl is
    port(	clk	:	in std_logic;
			reset	:	in std_logic;
			d_in	: 	in std_logic;
			p_out	:	out std_logic);
end input_ctrl;

architecture Behavioral of input_ctrl is

type state_type is (	zero,
							one, two);

signal curr_state: state_type;

begin
										
	curr_proc:	process(clk,reset)
					begin
						if reset = '1' then
							curr_state <= zero;							
						elsif (clk'event and clk = '1') then
							case curr_state is
								when zero =>									
									if d_in = '1' then
										curr_state <= one;										
									end if;
								when one =>								
										curr_state <= two;
								when two =>
									if d_in = '0' then
										curr_state <= zero;
									end if;
							end case;
						end if;
					end process;

	
	out_proc:	process(curr_state)
					begin
						case curr_state is
							when zero =>
								p_out <= '0';
							when one =>
								p_out <= '1';
							when two =>
								p_out <= '0';
						end case;
					end process;
end Behavioral;

