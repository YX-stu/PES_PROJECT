library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- A simple VHDL Code implementing a counter, counting at the system clock.
-- Effectively this reduces the clock's frequency to a value which makes the clock activity observable for a human being on the output LED.

entity flasher is
    port (  rst			: in std_logic;
			clk			: in std_logic;

			flasher_LED : out std_logic);
end flasher;

architecture structural of flasher is

	signal count: integer range 0 to integer(2.0**27)-1 := 0;
	signal count_std : std_logic_vector(26 downto 0);

begin
	flasher_proc: process(rst, clk)
	  begin
		if rising_edge(clk) then
			if rst = '1' then
				count <= 0;
			else
				if count < integer(2.0**27)-1 then
					count <= count +1;
				else
					count <= 0;
				end if;

				count_std <= std_logic_vector(to_unsigned(count, 27));
				flasher_LED <= count_std(26);
			end if;
		end if;
	  end process;
end structural;