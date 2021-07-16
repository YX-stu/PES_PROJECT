library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ff_ex2 is
    Port (  clk 	: in  STD_LOGIC;
            reset 	: in  STD_LOGIC;
            d 		: in  STD_LOGIC;
            en		: in  std_logic;
            q 		: out STD_LOGIC	
            );
end ff_ex2;

architecture Behavioral of ff_ex2 is
	
	signal temp1 : std_logic;
	signal temp2 : std_logic;

begin
	
	q <= temp2;

    ff_pro: process(clk,reset)
    begin
        if reset = '1' then
            temp2 <= '0';
            temp1 <= '0';
        elsif clk'event and clk = '1' then	
            if en = '1' then		
                temp1 <= d;
                temp2 <= temp1;
            end if;							
        end if;
    end process;
					
end Behavioral;

