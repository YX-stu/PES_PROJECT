library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

--! This copmonent implements a run-length encoder for 1 bit black/white images.

--! The resulting runs are parametrized using the start position (#start_pos), end position (#end_pos) and
--! the corresponding row number (#row_number).
entity rle is
    generic(
        ROW_LENGTH          : positive := 640;   --! Length of a row in the input image
        ROW_LENGTH_WIDTH    : positive := 10;  --! Bitwidth of #ROW_LENGTH
        NUMBER_OF_ROWS      : positive := 480; --! Number of rows in the input image
        ROW_NUMBER_WIDTH    : positive := 9;   --! Bitwidth of #NUMBER_OF_ROWS
        PIXEL_OFFSET        : integer range 0 to 10 := 2;    --! Offset in the first line caused by filter_major
        LINE_OFFSET         : integer range 0 to 10 := 2     --! Number of lines absorbed by filter_major
        );
    port(
        clk         : in std_logic;   --! Clock input
        rstn        : in std_logic;   --! Negated asynchronous reset
        data_in     : in std_logic; --! 1 bit black or white input pixel
        data_rdy    : in std_logic; --! Indicates if the input data (#data_in) is ready to be processed
        start_pos   : out std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);  --! The starting position of the detected run. Only valid if #new_run is '1'.
        end_pos     : out std_logic_vector(ROW_LENGTH_WIDTH-1 downto 0);  --! The end position of the detected run. Only valid if #new_run is '1'.
        row_number  : out std_logic_vector(ROW_NUMBER_WIDTH-1 downto 0);--! The row number of the detected run. Only valid if #new_run is '1'.
        new_run     : out std_logic;    --! Indicates if a new run has been detected. The run parameters are only valid if #new_run is '1'.
        eol         : out std_logic;  --! Indicates if the run-length encoder has reached the end of a row in the image.
        eof         : out std_logic   --! Indicates if the run-length encoder has reached the end of the data stream (i.e. the image has been processed completely).
        );
end rle;

architecture behavioral of rle is

    -- STUDENT CODE HERE
    -- Runs calculation position
    signal pos : unsigned(ROW_LENGTH_WIDTH-1 downto 0);
    -- Runs start position
    signal rstart_pos : unsigned(ROW_LENGTH_WIDTH-1 downto 0);
    -- Runs end position
    signal rend_pos : unsigned(ROW_LENGTH_WIDTH-1 downto 0);
    -- Runs stop flag
    signal stop : std_logic;
    -- Runs start flag
    signal start : std_logic;
    -- Runs time
    signal run : unsigned(ROW_LENGTH_WIDTH-1 downto 0);
    signal rrun : unsigned(ROW_LENGTH_WIDTH-1 downto 0);
    
    -- Register of new_run
    signal rnew_run : std_logic;
    
    -- Rows number
    signal sline : unsigned(ROW_NUMBER_WIDTH-1 downto 0);
    
    -- End of line
    signal seol : std_logic;
    signal sseol : std_logic;
    -- End of final
    signal seof : std_logic;
    signal sseof : std_logic;

    -- STUDENT CODE until HERE

begin

    -- STUDENT CODE HERE
    -- Status determination for Runs
    runs_determine_status : process(data_in, data_rdy, rstn)
    -- Stop must only appear after start 
    variable start_rdy : std_logic := '0';
    begin
        if rstn = '0' then
            -- Initialize Runs status
            start <= '0';
            stop  <= '0';
            start_rdy := '0';
        elsif data_in = '1' and data_rdy = '1' then
            start <= '1';
            stop  <= '0';
            start_rdy := '1';
        elsif data_in = '0' and data_rdy = '1' and start_rdy = '1' then
            start <= '0';
            stop  <= '1';
            start_rdy := '0';
        elsif data_rdy = '0' then
            start <= '0';
            stop  <= '0';
        end if;
    end process;
    
    -- Status determination for postion
    runs_determine_pos : process(clk, rstn, rnew_run)
    begin
        if rstn = '0' then 
            -- Initialize end of line
            eol    <= '0';
            seol   <= '0';
            sseol  <= '0';
            -- Initialize signals
            pos    <= (others=> '0');
            run    <= (others=> '0');
            rrun   <= (others=> '0');
            sline  <= (others=> '0');
        elsif rising_edge(clk) and sseof /= '1' then  
            -- Besure the eol only one clock hight level
            eol <= '0';            
            -- Determine Runs status for every clock
            if data_rdy = '1' then
                -- Runs position always calculates
                pos <= pos + 1;
                -- Determine Runs calculation
                -- Normal situation
                if data_in = '1' and seol = '0' then
                    run  <= run + 1;
                    rrun <= rrun + 1;                  
                elsif data_in = '0' then
                    rrun <= (others=> '0');
                    run  <= rrun;
                end if;   
                -- Special situation for the continuous Runs from different line
                if data_in = '1' and rnew_run = '1' then
                    run  <= run - (ROW_LENGTH - to_integer(rstart_pos));
                    rrun <= rrun - (ROW_LENGTH - to_integer(rstart_pos));   
                end if;
                -- Special situation for the too short distance between two Runs(no include the start point)
                if data_in = '1' and rend_pos > 0 and rstart_pos - rend_pos = 2 then
                    run  <= run;
                    rrun <= rrun;
                end if;   
                
                -- Determine eol
                -- Only one clock for high-level  
                sseol <= '0';       
                eol   <= sseol;
                seol  <= sseol;
                -- For the first line and the last line
                if sline = 0 or LINE_OFFSET + to_integer(sline) = NUMBER_OF_ROWS - 3 then
                    if PIXEL_OFFSET + to_integer(pos) = ROW_LENGTH - 2 then
                        sseol <= '1';
                    end if;
                else
                    if to_integer(pos) = ROW_LENGTH - 2 then
                        sseol <= '1';
                    end if;
                end if;   
                
                -- Position reset and sline addition
                if sseol = '1' then
                    pos   <= (others=> '0');
                    sline <= sline + 1;
                end if;
                
--                -- Dealy one clock to reset sline, so that get the correct row_number
--                if LINE_OFFSET + to_integer(sline) = NUMBER_OF_ROWS - 2 then
--                    sline <= (others=> '0');
--                end if;     
            end if;
      
--            -- Determine eol
--            -- Only one clock for high-level    
--            eol   <= sseol;
--            seol  <= sseol;
--            sseol <= '0';  
--            -- For the first line and the last line
--            if sline = 0 or LINE_OFFSET + to_integer(sline) = NUMBER_OF_ROWS - 3 then
--                if PIXEL_OFFSET + to_integer(pos) = ROW_LENGTH - 2 then
--                    sseol <= '1';
--                end if;
--            else
--                if to_integer(pos) = ROW_LENGTH - 2 then
--                    sseol <= '1';
--                end if;
--            end if;
            
--            -- Position reset and sline addition
--            if sseol = '1' then
--                pos   <= (others=> '0');
--                sline <= sline + 1;
--            end if;
            
            -- Dealy one clock to reset sline, so that get the correct row_number
            if LINE_OFFSET + to_integer(sline) = NUMBER_OF_ROWS - 2 then
                sline <= (others=> '0');
            end if;
        end if;
    end process;

    -- Status determination for end of final
    runs_determine_eof : process(rstn, clk, sline)
    -- Flag of one clock high-level
    variable once : std_logic;
    begin
        if rstn = '0' then 
            -- Initialize end of final
            eof    <= '0';
            seof   <= '0';
            sseof  <= '0';
            once   := '0';
        elsif rising_edge(clk) then
            eof    <= '0';
            seof   <= '0';
            -- Delay one clock
            sseof  <= seof;
        end if;
        
        if LINE_OFFSET + to_integer(sline) = NUMBER_OF_ROWS - 2 and once = '0' then
            seof  <= '1';
            eof   <= '1';
            once  := '1';
        elsif LINE_OFFSET + to_integer(sline) /= NUMBER_OF_ROWS - 2 then
            seof  <= '0';
            eof   <= '0';
            once  := '0';
        end if;
    end process;
    
    -- Runs output status
    runs_determine_new : process(rstn, clk, stop, seol)
    -- Flag of one clock high-level
    variable once : std_logic;
    begin
        if rstn = '0' then 
            -- Initialize new_run
            new_run  <= '0';
            rnew_run <= '0';
            once     := '0';
        elsif rising_edge(clk) then
            new_run  <= '0';
            rnew_run <= '0';
        end if;
        -- Normal situation
        if stop = '1' and once = '0' then
            new_run  <= '1';
            rnew_run <= '1';
            once     := '1';
        elsif stop = '0' then
            new_run  <= '0';
            rnew_run <= '0';
            once     := '0';
        end if;
        -- Special situation for the continuous Runs from different line
        if start = '1' and seol = '1' then
            new_run  <= '1';
            rnew_run <= '1';
        elsif start = '1' and falling_edge(seol) then
            new_run  <= '0';
            rnew_run <= '0';
        end if;
    end process; 
    
    -- Runs output
    runs_output : process(rstn, start, stop, rnew_run)
    -- Flag of already starting
    variable started : std_logic := '0';
    variable started_s : std_logic := '0';
    begin
        if rstn = '0' then
            -- Initialize rle output port
            start_pos  <= (others=> '0');
            end_pos    <= (others=> '0');
            row_number <= (others=> '0');
        else    
            -- Runs start
            -- Special situation for the continuous Runs from different line
            if start = '1' and falling_edge(rnew_run) and started = '0' then
                -- First line special
                if sline = 0 then
                    start_pos  <= std_logic_vector(PIXEL_OFFSET + pos - 1);
                    rstart_pos <= PIXEL_OFFSET + pos - 1;
                else
                    start_pos  <= std_logic_vector(pos - 1);
                    rstart_pos <= pos - 1;
                end if;
                started   := '1';
                started_s := '1';
            end if;
            -- Normal situation
            if start = '1' and started = '0' then
                -- First line special
                if sline = 0 then
                    start_pos  <= std_logic_vector(PIXEL_OFFSET + pos);
                    rstart_pos <= PIXEL_OFFSET + pos;
                else
                    start_pos  <= std_logic_vector(pos);
                    rstart_pos <= pos;
                end if;
                started := '1';
            elsif stop = '1' and started = '1' then
                end_pos  <= std_logic_vector(rstart_pos + run - 1);
                rend_pos <= rstart_pos + run - 1; 
                -- Change line special
                if seol = '1' then
                    row_number <= std_logic_vector(LINE_OFFSET + sline - 1);
                else 
                    row_number <= std_logic_vector(LINE_OFFSET + sline);
                end if;
                started := '0';
            elsif start = '1' and started = '1' and rising_edge(rnew_run) then
                end_pos  <= std_logic_vector(rstart_pos + run - 1);
                rend_pos <= rstart_pos + run - 1;
                -- Change line special
                if seol = '1' then
                    row_number <= std_logic_vector(LINE_OFFSET + sline - 1);
                else 
                    row_number <= std_logic_vector(LINE_OFFSET + sline);
                end if;
                started := '0';
            end if;
            -- Special situation for the continuous Runs from different line
            if stop = '1' and started_s = '1' then
                end_pos <= std_logic_vector(rstart_pos + run);
                -- Change line special
                if seol = '1' then
                    row_number <= std_logic_vector(LINE_OFFSET + sline - 1);
                else 
                    row_number <= std_logic_vector(LINE_OFFSET + sline);
                end if;
                started_s := '0';
            end if;
        end if;
    end process;
    -- STUDENT CODE until HERE


end behavioral;
