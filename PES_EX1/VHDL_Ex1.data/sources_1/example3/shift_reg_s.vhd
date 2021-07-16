library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library basic_lib;
use basic_lib.mux_package.all;

entity ring_shift_reg_s is
	generic( reg_depth : natural := 4 );
    Port ( clk     : in  std_logic;
           reset   : in  std_logic;
           load_in : in  std_logic;
           d_in    : in  std_logic;
           y_out   : out std_logic_vector(reg_depth -1 downto 0);
           r_in    : in  std_logic;
           l_in    : in  std_logic);
end ring_shift_reg_s;

architecture Behavioral of ring_shift_reg_s is
    signal y_int : std_logic_vector(reg_depth-1 downto 0);
begin
	y_out <= y_int;
	
	reg_proc: process(clk,reset)
    begin
        if (reset = '1') then
            y_int<= (others => '0');
        elsif ( clk'event and clk = '1') then
            if load_in = '1' then 
                y_int(reg_depth-1) <= d_in;	
                y_int(reg_depth-2 downto 0) <= y_int(reg_depth-1 downto 1);	
            elsif r_in = '1' then
                y_int <= y_int(0) & y_int(reg_depth-1 downto 1);
            elsif l_in = '1' then								
                Y_int <= y_int(reg_depth-2 downto 0) & y_int(reg_depth-1);
            else
                y_int <= y_int ;
            end if;			
        end if;	
    end process;
	
end Behavioral;

architecture structural of ring_shift_reg_s is
	component ff is
		port( clk   : in  std_logic;
			  reset : in  std_logic;
			  en    : in  std_logic;
			  d     : in  std_logic;
			  q     : out std_logic
			  );
	end component;
	
	component mux is
		port( input  : in  std_logic_vector(input_width-1 downto 0);
			  sel    : in  std_logic_vector(sel_width-1 downto 0);
			  output : out std_logic
			  );
	end component;
	
	type mux_type is array (natural range <>) of std_logic_vector(input_width-1 downto 0);
	
	signal local_enable	    : std_logic;
	signal local_sel		: std_logic_vector(sel_width-1 downto 0);
	signal local_d			: std_logic_vector(reg_depth-1 downto 0);
	signal local_q			: std_logic_vector(reg_depth-1 downto 0);
	signal local_mux_input	: mux_type(reg_depth-1 downto 0);
	signal local_mux_output	: std_logic_vector(reg_depth-1 downto 0);

	for all : mux use entity basic_lib.mux (arch6) ;	

begin

    reg_gen: for i in reg_depth-1 downto 0  generate
        ff_inst: ff
        port map(	clk	  => clk,
                    reset => reset,
                    en    => local_enable,
                    d     => local_d(i),
                    q     => local_q(i)
                    );
                
        mux_inst: mux
        port map(	input	=> local_mux_input(i),
                    output	=> local_mux_output(i),
                    sel		=> local_sel
                    );
                        
        local_d(i) <= local_mux_output(i);   
    end generate;
	
    sig_gen: for i in  reg_depth-2 downto 1 generate
        local_mux_input(i)(0) <= local_q(i+1);
        local_mux_input(i)(1) <= local_q(i-1);
        local_mux_input(i)(2) <= local_q(i+1);		
    end generate;
	
	-- first mux
    local_mux_input(reg_depth-1)(0)	<= d_in;
    local_mux_input(reg_depth-1)(1) <= local_q(reg_depth-2);
    local_mux_input(reg_depth-1)(2)	<= local_q(0);
		
	--last mux
    local_mux_input(0)(0) <= local_q(1);
    local_mux_input(0)(1) <= local_q(reg_depth-1);
    local_mux_input(0)(2) <= local_q(1);

	--reg_enable logic
	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE
	
	--mux select logic
	-- STUDENT CODE HERE


	-- STUDENT CODE until HERE
	
	y_out <= local_q;
	
end structural;