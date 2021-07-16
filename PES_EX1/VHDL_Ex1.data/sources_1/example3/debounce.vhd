library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library basic_lib;

entity debounce is
    generic(depth	: natural	:=3);
    port (  clk		: in std_logic;
            reset	: in std_logic;
            d_in 	: in  std_logic;
            y_out 	: out  std_logic
            );
end debounce;

architecture Behavioral of debounce is

    component ring_shift_reg_s
        generic( reg_depth : natural := 4 );
        port ( clk 		: in  std_logic;
               reset 	: in  std_logic;
               load_in 	: in  std_logic;
               d_in 	: in  std_logic;
               y_out 	: out std_logic_vector(reg_depth -1 downto 0);
               r_in 	: in  std_logic;
               l_in 	: in  std_logic
               );
    end component;
    
    for all : ring_shift_reg_s use entity basic_lib.ring_shift_reg_s (Behavioral);
    
    type state_type is ( zero, one );
    
    signal local_reg : std_logic_vector(depth-1 downto 0);
    signal curr_state: state_type;

begin

	shift_reg_s_inst: ring_shift_reg_s
    generic map(reg_depth => depth)
    port map( clk     => clk,
              reset   => reset,
              load_in => '1',
              d_in    => d_in,
              r_in 	  => '0',
              l_in	  => '0',
              y_out	  => local_reg
              );
										
	curr_proc: process(clk,reset)
    begin
        if reset = '1' then
            curr_state <= zero;							
        elsif (clk'event and clk = '1') then
            case curr_state is
                when zero =>									
                    if conv_integer(local_reg) = (2**depth)-1 then
                        curr_state <= one;										
                    end if;
                when one =>								
                    if conv_integer(local_reg) = 0 then
                        curr_state <= zero;
                    end if;
            end case;
        end if;
    end process;

	out_proc: process(curr_state)
    begin
        case curr_state is
            when zero =>
                y_out <= '0';
            when one =>
                y_out <= '1';								
        end case;
    end process;
    
end Behavioral;

