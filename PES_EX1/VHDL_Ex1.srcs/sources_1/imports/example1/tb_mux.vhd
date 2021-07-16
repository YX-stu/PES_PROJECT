
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:07 04/08/2010
-- Design Name:   mux
-- Module Name:   C:/temp/PEA-DAL_versuch_1/mux/tb_mux.vhd
-- Project Name:  mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.all;

library basic_lib;
use basic_lib.mux_package.all;

ENTITY tb_mux_vhd IS
END tb_mux_vhd;

ARCHITECTURE behavior OF tb_mux_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT mux
	PORT(
		sel : IN std_logic_vector(sel_width-1 downto 0);
		input : IN std_logic_vector(input_width-1 downto 0);          
		output : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL sel :  std_logic_vector(sel_width-1 downto 0) := (others=>'0');
	SIGNAL input :  std_logic_vector(input_width-1 downto 0) := (others=>'0');

	--Outputs
	SIGNAL output :  std_logic := '0';
	
	for all : mux use entity basic_lib.mux (arch2) ;	

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: 		mux PORT MAP(	sel => sel,
									input => input,
									output => output
				);

	tb: 		PROCESS
					variable v_input 	: 	integer range 0 to (2**input_width)-1;
					variable v_sel		:	integer range 0 to (2**sel_width)-1;
				BEGIN
				
					-- Wait 100 ns for global reset to finish
					wait for 100 ns;
			
					-- Place stimulus here
					for j in 0 to (2**sel_width)-1 loop
						for i in 0 to (2**input_width)-1 loop						
							wait for 20 ns;
							input <= conv_std_logic_vector(i,input_width);
							sel <= conv_std_logic_vector(j,sel_width);
							wait for 1 ns;
							if conv_integer(sel) < input_width-1 then
								assert input(conv_integer(sel)) = output report "Achtung Fehler! " severity error;
							end if;
						end loop;
					end loop;
			
					wait; -- will wait forever
				END PROCESS;
	
--	output_check_proc : process(input,sel,output)
--	
--	begin
--		
--		if conv_integer(sel) < 6 then
--			assert input(conv_integer(sel)) = output report "Achtung Fehler! " severity error;
--		end if;
--			
--		
--	end process;

END;
