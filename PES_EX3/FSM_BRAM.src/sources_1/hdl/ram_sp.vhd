--
-- RAM initial contents described in the VHDL source code
-- All addressable words initialized to same value

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_sp is
    port (
        clk : in  std_logic;
        we  : in  std_logic;
        a   : in  std_logic_vector(1 downto 0);
        di  : in  std_logic_vector(4 downto 0);	
        do  : out std_logic_vector(4 downto 0)
        
    );
end ram_sp;

architecture syn of ram_sp is
	-- define RAM type and signal here
			
	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE
	
begin

    process (clk)
    begin
        if (clk'event and clk = '1') then
			-- add your logic here			
		    -- STUDENT CODE HERE


			-- STUDENT CODE until HERE
        end if;
    end process;

end syn;
