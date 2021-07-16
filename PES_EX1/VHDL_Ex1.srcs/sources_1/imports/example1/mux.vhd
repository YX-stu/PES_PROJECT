----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:46 03/29/2010 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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
use basic_lib.mux_package.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( sel 	: in  	STD_LOGIC_VECTOR (sel_width-1 downto 0);
           input 	: in  	STD_LOGIC_VECTOR (input_width-1 downto 0);
           output : out  	STD_LOGIC);
end mux;

architecture arch1 of mux is

begin

output <= input(0) when sel="000" else input(1) when sel="001" else input(2) when sel="010" else input(3) when sel="011" else input(4) when sel="100" 
-- STUDENT CODE HERE


-- STUDENT CODE until HERE
;

end arch1;

-----------------------------
architecture arch2 of mux is

begin
	mux_proc_0:	process(sel)
					begin
						case conv_integer(sel) is
							when 0=> output <= input(0);
							when 1 => output <= input(1);
							when 2 => output <= input(2);
							when 3 => output <= input(3);
							when 4 => output <= input(4);
				--			when "101" => output <= input(5);
				--			when others => output <= input(0);
							when others => output <= '0';
						end case;
					end process;
end arch2;
	
-------------------------------

architecture arch3 of mux is

begin
	mux_proc_1 :process(input,sel)
					begin
						output <= input(0);
						if sel = "000" then
							output <= input(0);
						else
							if sel = "001" then
								output <= input(1);
							else
								if sel = "010" then
									output <= input(2);
								else
									if sel = "011" then
										output <= input(3);
									else
										if sel = "100" then
											output <= input(4);
										else											
											output <= input(0);										
										end if;
									end if;
								end if;
							end if;
						end if;
					end process;

end arch3;

--------------------------------------------------------
architecture arch4 of mux is

begin
	mux_proc_1 :process(input,sel)
					begin
						if sel = "000" then
							output <= input(0);
						elsif sel = "001" then
							output <= input(1);
						elsif sel = "010" then
							output <= input(2);
						elsif sel = "011" then
							output <= input(3);
						elsif sel = "100" then
							output <= input(4);
						else
							output <= '0';								
						end if;
					end process;

end arch4;

--------------------------------------------------------
architecture arch5 of mux is
begin
	mux_proc : 	process(input,sel)
		
					variable v_int_sel : integer range 0 to (2**sel_width)-1 ;
					
					begin
						v_int_sel := conv_integer(sel);
						output <= '0';
						for i in 0 to input_width-1 loop
							if (i = v_int_sel) then
								output <= input(v_int_sel);
							end if;
						end loop;
					
				end process;
end arch5;

------------------------------------------------------------
architecture arch6 of mux is
begin

	mux_proc : process(input,sel)
		
					variable v_int_sel : integer range 0 to (2**sel_width)-1 ;
					
					begin
						v_int_sel := conv_integer(sel);
--						output <= input(0);
						for i in 0 to (2**sel_width)-1 loop							
							if (i = v_int_sel) then
								if i < input_width then
									output <= input(v_int_sel);
								else
				--					output <= input(0);
									output <= '0';
								end if;
							end if;
						end loop;					
				end process;

end arch6;

