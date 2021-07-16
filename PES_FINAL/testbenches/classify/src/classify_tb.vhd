library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_STD.UNSIGNED;

--! A testbench for testing the classify component with a set of sample inputs.
--! The outputs of classify are automatically matched against the expected results.
entity classify_tb is
generic(
    VECTOR_LENGTH : positive := 9 --! Bitwidth of the input data for classify
);

end entity classify_tb;

architecture IMP of classify_tb is

  Component classify is
    Generic (
        VECTOR_LENGTH : positive := 8
    );
    Port (
        clk         : in STD_LOGIC;
        data_in     : in STD_LOGIC_VECTOR(VECTOR_LENGTH-1 downto 0);
        data_rdy    : in STD_LOGIC;
        rstn        : in STD_LOGIC;
        min         : in STD_LOGIC_VECTOR(VECTOR_LENGTH-1 downto 0);
        max         : in STD_LOGIC_VECTOR(VECTOR_LENGTH-1 downto 0);
        result_rdy  : out  STD_LOGIC;
        result      : out  STD_LOGIC
        );
    end Component;

    signal clk          : STD_LOGIC := '1';
    signal rstn         : STD_LOGIC;
    signal data_rdy     : STD_LOGIC;
    signal result       : STD_LOGIC;
    signal result_rdy   : STD_LOGIC;
    signal data_in      : STD_LOGIC_VECTOR(VECTOR_LENGTH-1 downto 0);
    signal min          : STD_LOGIC_VECTOR(VECTOR_LENGTH-1 downto 0);
    signal max          : STD_LOGIC_VECTOR(VECTOR_LENGTH-1 downto 0);

    type int_array_t is array (INTEGER range <>) OF INTEGER RANGE 0 TO 255;
    constant data : int_array_t(0 to 4)  := (
        255,250,252,42,0
    );
    constant result_check : STD_LOGIC_VECTOR(0 to 4)  := "11100";
    constant  max_value : INTEGER RANGE 0 TO 255 := 255;
    constant  min_value : INTEGER RANGE 0 TO 255 := 250;
    signal ctr          : INTEGER;

begin

    classify_inst : classify
    Generic map (
        VECTOR_LENGTH   => VECTOR_LENGTH
    )
    Port map(
            clk         => clk,
            rstn        => rstn,
            data_in     => data_in,
            data_rdy    => data_rdy,
            result      => result,
            result_rdy  => result_rdy,
            min         => min,
            max         => max
            );

    STIMULI : process
    begin

        rstn        <= '0';
        data_in     <= (others => '0');
        data_rdy    <= '0';
        min         <= (others => '0');
        max         <= (others => '0');
        wait for 100 ns;

        rstn        <= '1';
        wait until rising_edge(clk);

        max <= STD_LOGIC_VECTOR(TO_UNSIGNED(max_value,VECTOR_LENGTH));
        min <= STD_LOGIC_VECTOR(TO_UNSIGNED(min_value,VECTOR_LENGTH));
        wait until rising_edge(clk);

        data_rdy    <= '1';

        FOR i IN 0 TO data'length-1 LOOP
            data_in     <= STD_LOGIC_VECTOR(TO_UNSIGNED(data(i),VECTOR_LENGTH));
            wait until rising_edge(clk);
            if i = 1 then
                data_rdy <= '0';
                wait until rising_edge(clk);
                data_rdy <= '1';
            end if;
        END LOOP;

        data_rdy    <= '0';

        wait;
    end process;

    Check : process(rstn, clk)
    begin
        if rstn = '0' then
            ctr <= 0;
        elsif rising_edge(clk) then
            if result_rdy = '1' then
                assert ( ctr < data'length ) report "result ready not correct" SEVERITY ERROR;
                assert result = result_check(ctr)  report
                "wrong result: " & integer'image(data(ctr))
                SEVERITY ERROR;
                ctr <= ctr + 1;
            end if;
        end if;

    end process;

    CLKGEN : process(clk)
    begin
        clk <= not clk after 10 ns;
    end process;


    check_result_count: process
    begin        
		wait for 400 ns; 
				
		assert ctr >= data'length
                report "Component did not generate the expected number of results!"
                severity failure;
				
		wait;
    end process;


end architecture IMP;

