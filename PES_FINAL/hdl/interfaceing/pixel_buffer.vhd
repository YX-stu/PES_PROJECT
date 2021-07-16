
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library unisim;
use unisim.vcomponents.all;

use work.debug_types.all;

library axi_filter_dma_v1_00_a;
use axi_filter_dma_v1_00_a.all;

entity pixel_buffer is
    generic
    (
        C_S_AXIS_TDATA_WIDTH : integer := 32
    );
    port
    (
        clk                 : in std_logic;
        rstn                : in std_logic;

        data_in             : in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
        data_en             : in std_logic;

        busy                : out std_logic;

        r                   : out std_logic_vector(7 downto 0);
        g                   : out std_logic_vector(7 downto 0);
        b                   : out std_logic_vector(7 downto 0);
        data_rdy            : out std_logic
    );

end entity pixel_buffer;

architecture pixel_buffer_arch of pixel_buffer is

    signal temp_reg                                  : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    signal output_reg                                : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    signal r_in, g_in, b_in                          : std_logic_vector(7 downto 0);

    signal rst                                       : std_logic;
    signal pixel_cnt                                 : integer range 0 to 3;

    signal fifo_rd_en, fifo_almost_empty, fifo_empty : std_logic;

    signal busy_int, busy_int_del                    : std_logic;
    signal data_in_fifo                              : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    signal data_en_fifo                              : std_logic;

    signal data_en_withStall                         : std_logic;

begin

    rst <= not rstn;

    data_en_withStall <= '1' when (data_en = '1' and busy_int_del = '0') else '0';  -- Needed in order not to get double data sets in the fifo if stall requested.

    FIFO18E1_inst : FIFO18E1
    generic map (
        ALMOST_EMPTY_OFFSET => X"0080",   -- Sets the almost empty threshold
        ALMOST_FULL_OFFSET => X"0080",    -- Sets almost full threshold
        DATA_WIDTH => 36,                 -- Sets data width to 4-36
        DO_REG => 1,                      -- Enable output register (1-0) Must be 1 if EN_SYN = FALSE
        EN_SYN => FALSE,                  -- Specifies FIFO as dual-clock (FALSE) or Synchronous (TRUE)
        -- FIFO_MODE => "FIFO18",            -- Sets mode to FIFO18 or FIFO18_36
        FIFO_MODE => "FIFO18_36",            -- Sets mode to FIFO18 or FIFO18_36
        FIRST_WORD_FALL_THROUGH => FALSE, -- Sets the FIFO FWFT to FALSE, TRUE
        INIT => X"000000000",             -- Initial values on output port
        SIM_DEVICE => "7SERIES",          -- Must be set to "7SERIES" for simulation behavior
        SRVAL => X"000000000"             -- Set/Reset value for output port
    )
    port map (
                                          -- Write Control Signals: 1-bit (each) input: Write clock and enable input signals
        WRCLK => clk,                     -- 1-bit input: Write clock
        WREN => data_en_withStall,        -- 1-bit input: Write enable

                                          -- Write Data: 32-bit (each) input: Write input data
        DI => data_in,                    -- 32-bit input: Data input
        DIP => X"0",                      -- 4-bit input: Parity input

                                          -- Read Control Signals: 1-bit (each) input: Read clock, enable and reset input signals
        RDCLK => clk,                     -- 1-bit input: Read clock
        RDEN => fifo_rd_en,               -- 1-bit input: Read enable
        REGCE => '1',                     -- 1-bit input: Clock enable
        RST => rst,                       -- 1-bit input: Asynchronous Reset
        RSTREG => '1',                    -- 1-bit input: Output register set/reset

                                          -- Read Data: 32-bit (each) output: Read output data
        DO => data_in_fifo,               -- 32-bit output: Data output
        DOP => open,                      -- 4-bit output: Parity data output
                                          -- Status: 1-bit (each) output: Flags and other FIFO status outputs

        ALMOSTEMPTY => fifo_almost_empty, -- 1-bit output: Almost empty flag
        ALMOSTFULL => open,               -- 1-bit output: Almost full flag
        EMPTY => fifo_empty,              -- 1-bit output: Empty flag
        FULL => open,                     -- 1-bit output: Full flag
        RDCOUNT => open,                  -- 12-bit output: Read count
        RDERR => open,                    -- 1-bit output: Read error
        WRCOUNT => open,                  -- 12-bit output: Write count
        WRERR => open                     -- 1-bit output: Write error
    );

    fifo_rd_en <= '1' when (fifo_empty = '0' and not(data_en_fifo = '1' and pixel_cnt = 2)) else '0';

    G_32: if C_S_AXIS_TDATA_WIDTH = 32 generate
    begin
        process(rst, clk)
        begin
            if (rst = '1') then
                temp_reg <= (others => '0');
                pixel_cnt <= 0;
                busy_int <= '0';
                data_rdy <= '0';
                busy_int_del <= '0';

            elsif rising_edge(clk) then
                busy_int <= '0';
                data_rdy <= '0';

                data_en_fifo <= fifo_rd_en;
                busy_int_del <= busy_int;

                case (pixel_cnt) is
                when 0 =>                         -- Buffer 1 Byte
                    if (data_en_fifo = '1') then
                        temp_reg <= X"000000" & data_in_fifo(C_S_AXIS_TDATA_WIDTH-1 downto 24);
                        output_reg <= X"00" & data_in_fifo(23 downto 0);
                        data_rdy <= '1';

                        pixel_cnt <= pixel_cnt +1;
                    end if;

                when 1 =>                         -- Buffer 2 Bytes
                    if (data_en_fifo = '1') then
                        -- busy_int <= '1';       -- DON't initiate a read cycle in the next clock cycle (causes data in pixel_count = 3 state...) accept new data in the next clock cycle ...
                        busy_int <= '1';          -- DON't initiate a read cycle in the next clock cycle (causes data in pixel_count = 3 state...) accept new data in the next clock cycle ...

                        temp_reg <= X"0000" & data_in_fifo(C_S_AXIS_TDATA_WIDTH-1 downto 16);
                        output_reg <= X"00" & data_in_fifo(15 downto 0) & temp_reg(7 downto 0);
                        data_rdy <= '1';

                        pixel_cnt <= pixel_cnt +1;
                    end if;

                when 2 =>                         -- Buffer 3 Bytes
                    if (data_en_fifo = '1') then

                        temp_reg <= X"00" & data_in_fifo(C_S_AXIS_TDATA_WIDTH-1 downto 8);
                        output_reg <= X"00" & data_in_fifo(7 downto 0) & temp_reg(15 downto 0);
                        data_rdy <= '1';

                        pixel_cnt <= pixel_cnt +1;
                    end if;

                when 3 =>                         -- Buffer nothing, output full buffer
                    output_reg <= X"00" & temp_reg(23 downto 0);
                    data_rdy <= '1';

                    pixel_cnt <= 0;
                end case;
            end if;
        end process;

        busy <= busy_int;

        r <= output_reg(7 downto 0);
        g <= output_reg(15 downto 8);
        b <= output_reg(23 downto 16);

    end generate;

    g_nothing: if C_S_AXIS_TDATA_WIDTH /= 32 generate
    begin
        r <= (others => '0');
        g <= (others => '0');
        b <= (others => '0');

        data_rdy <= '0';
        busy  <= '0';
    end generate;

end pixel_buffer_arch;
