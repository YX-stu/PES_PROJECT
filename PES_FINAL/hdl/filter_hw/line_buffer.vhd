library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi_filter_dma_v1_00_a;
use axi_filter_dma_v1_00_a.all;

--! This component buffers the pixels of one line in the input image

--! The component implements a FIFO buffer with a depth of #LINE_LENGTH.
--! If #data_rdy is '1' the first element in the FIFO queue will be removed
--! and the input from #data_in is pushed to the end of the queue.
entity line_buffer is
    Generic (
        LINE_LENGTH : positive;   --! Length of the lines in the image
        ADDR_WIDTH  : positive;   --! Address width for the ram_dp subcomponent
        DATA_WIDTH  : positive    --! Data width for the ram_dp subcomponent
    );
  Port (
        clk             : in std_logic;     --! Clock input
        rstn            : in std_logic;     --! Negated asynchronous reset
        data_in         : in std_logic;  --! Input to be pushed to the FIFO
        data_rdy        : in std_logic;   --! Input bit indicating if the current input data (#data_in) should be pushed to the back of the FIFO queue
        result          : out std_logic;  --! Outputs the element at the front of the FIFO queue
        result_rdy      : out std_logic --! If #result_rdy is '1', the front element (accessible through #result) will be removed from the FIFO queue until the next clock cycle
    );
end line_buffer;

architecture rtl of line_buffer is

    component ram_dp is
    Generic (
        ADDR_WIDTH : positive;
        DATA_WIDTH : positive;
        USE_OUTPUT_REG : std_logic  := '0'
    );
    Port(
        clk     : in std_logic;
        wena    : in std_logic;
        wenb    : in std_logic;
        addra   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        addrb   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        dina    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dinb    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        douta   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        doutb   : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
    end component;

    -- STUDENT CODE HERE
    -- Signals of ram_dp
    signal wena    :  std_logic;
    signal wenb    :  std_logic;
    signal addra   :  std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal addrb   :  std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal dina    :  std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dinb    :  std_logic_vector(DATA_WIDTH-1 downto 0);
    signal douta   :  std_logic_vector(DATA_WIDTH-1 downto 0);
    signal doutb   :  std_logic_vector(DATA_WIDTH-1 downto 0);
    
    -- STUDENT CODE until HERE
begin

    -- STUDENT CODE HERE
    -- Instantiation of ram_dp
    ram_dp_instance : ram_dp
    generic map(
        ADDR_WIDTH => ADDR_WIDTH,
        DATA_WIDTH => DATA_WIDTH,
        USE_OUTPUT_REG => '0'
    )
    port map(   clk     => clk,
                wena    => wena,
                wenb    => wenb,
                addra   => addra,
                addrb   => addrb,
                dina    => dina,
                dinb    => dinb,
                douta   => douta,
                doutb   => doutb
    );
    
    -- line buffer process
    linebuffer : process(clk, rstn)
    -- variable for wena
--    variable v_wena : std_logic;
    -- Flag of end of writting for line
    variable write_end : std_logic;
    begin
        if rstn = '0' then
            -- Initialization of linebuffer
            result_rdy <= '0';
            write_end := '0';
            -- Initialization of ram_dp
            wena  <= '0';
            wenb  <= '0';
--            dina  <= (others=> '0');
--            dinb  <= (others=> '0');
            addra <= (others=> '0');
            addrb <= (others=> '0');
--            v_wena := '0';
        elsif rising_edge(clk) then
            -- Let data writting form first address of port A
--            if v_wena = '0' then
--                wena <= '0';
--                v_wena := '1';
--            end if;
            
            if data_rdy = '1' then
            
                -- Write data using port A
                wena <= '1';
                -- Use just one bit(datawidth should be 1) in ram
                dina(0) <= data_in; 
                -- Address of port A increases
                if wena = '1' then
                    addra <= std_logic_vector(unsigned(addra) + 1);
                end if;
                -- Until the line max length, it should be reset to zero(Ring-shift)
                if unsigned(addra) = LINE_LENGTH - 1 then 
                    addra <= std_logic_vector(to_unsigned(0, ADDR_WIDTH));
                    -- Line writting completes
                    write_end := '1';
                end if;
                
                -- Read data using port B
                wenb <= '0';
                -- Address of port B increases
                -- When address reaches maximun, it needs to be reset to zero(Ring-shift)
                addrb <= std_logic_vector(unsigned(addrb) + 1);
                if unsigned(addrb) = LINE_LENGTH - 1 then 
                    addrb <= std_logic_vector(to_unsigned(0, ADDR_WIDTH));
                end if;
                
                -- Result_rdy must wait for the line_length time(linebuffer is already fully written)
                if write_end = '1' then
                    result_rdy <= '1';
                end if;
            else    
                -- Result_rdy changes with data_rdy
                result_rdy <= '0';
            end if;                   
        end if;
    end process;
        
    -- Quasi-parallel process can eliminate output delay
    output : process(doutb)
    begin
        -- ouput result
        -- Use just one bit(datawidth should be 1) in ram
        result <= doutb(0);
    end process;
    -- STUDENT CODE until HERE

end rtl;

