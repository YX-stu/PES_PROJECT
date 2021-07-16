----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:47 04/15/2010 
-- Design Name: 
-- Module Name:    ff - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ff is
    Port ( clk 	: in  STD_LOGIC;
           d 		: in  STD_LOGIC;
           q 		: out  STD_LOGIC;
			  en : in	std_logic;
           reset : in  STD_LOGIC);
end ff;

architecture Behavioral of ff is
	
	signal temp1 : std_logic;


begin
	

	q <= temp1;
	
	ff_pro:		process(clk,reset)
					begin
						if reset = '1' then
							temp1 <= '0';
						elsif rising_edge(clk)  then
							if en = '1' then
								temp1 <= d;
							end if;
							
						end if;
						
					end process;
					


end Behavioral;

