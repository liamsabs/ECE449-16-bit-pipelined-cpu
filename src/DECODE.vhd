library ieee;
use ieee.std_logic_1164.all;

entity DECODE is
    port (
        -- General Inputs
        Clk, En, Reset : in std_logic;
        instr_In : in std_logic_vector (15 downto 0);

        -- PC Handling
        NPC_In   : in std_logic_vector (15 downto 0);
        NPC_Out  : in std_logic_vector (15 downto 0);

        -- EX Signals
        ALU_op   : out std_logic_vector (2 downto 0);
        shiftAmt : out std_logic_vector (3 downto 0);
        ALU_En   : out std_logic;
        RA_data  : out std_logic (15 downto 0);
        RB_data  : out std_logic (15 downto 0);
        -- For forwarding later on
        -- RA_addr : out std_logic (2 downto 0);
        -- RB_addr : out std_logic (2 downto 0); 

        -- Register File Write Signals for this instruction
        RW_addr  : out std_logic (15 downto 0);
        RW_En     : out std_logic (15 downto 0);

        -- Input to Register File from WB stage
        WB_data  : in std_logic (15 downto 0);
        WB_addr  : in std_logic (2 downto 0);
        WB_En    : in std_logic;

        -- TO DO: write to memory signals

        -- I/0 Signals
        port_IN  : in std_logic_vector(15 downto 0);
        port_Out : out std_logic_vector (15 downto 0);
        Out_EN   : in std_logic;

        -- TBA for Instruction Set A & B
        DONE     : out std_logic
    );
end DECODE;

architecture behavioral of DECODE is

-- Componenents
component register_file is
    port(
    rst : in std_logic; clk: in std_logic;
    --read signals
    rd_index1: in std_logic_vector(2 downto 0); 
    rd_index2: in std_logic_vector(2 downto 0); 
    rd_data1: out std_logic_vector(15 downto 0); 
    rd_data2: out std_logic_vector(15 downto 0);
    --write signals
    wr_index: in std_logic_vector(2 downto 0); 
    wr_data: in std_logic_vector(15 downto 0); 
    wr_enable: in std_logic
    );
end component;

-- ALU opCode
signal opCode : std_logic_vector (6 downto 0);

-- Register File access
signal RW_addr  : std_logic_vector (2 downto 0);
signal W_En     :  std_logic;
signal RW_addr, RA_addr, RB_addr  :  std_logic_vector (2 downto 0);

begin

    REGISTERFILE : register_file port map( -- instantiating register file
        rst => Reset,
        clk => Clk,
        rd_index1 => RA_addr,
        rd_index2 => RB_addr,
        rd_data1  => RA_data,
        rd_data2  => RB_data,
        wr_index  => WB_addr,
        wr_data   => WB_data,
        wr_enable => WB_enable
        );

    process (Clk, En, Reset)
    begin
        if Reset = '1' then
            -- Reset Execute Stage Data
            ALU_op <= (others => '0');
            shiftAmt <= (others => '0');
            ALU_En <= (others => '0');
            RA_data <= (others => '0');
            RB_data <= (others => '0');

            -- Reset Write Stage signals
            RW_addr <= (others => '0');
            RW_En <= (others => '0');

            -- Clear Done Signal
            DONE <= (others => '0')
            ;
        elsif rising_edge(Clk) then

            opCode <= instr_In (15 downto 9);

            -- A1 Instruction (NOOP)
            if opCode = "00000000" then
                RA_data <= (others => '0');
                RB_data <= (others => '0');
                W_En <= '0';

            -- A2 Instruction
            elsif opCode = "0000001" or opCode = "0000010" or opCode = "0000011" or opCode = "0000100" then
                -- ALU Signals
                ALU_op <= instr_In (11 downto 9);
                ALU_En <= '1';

                -- Register File Signals
                RW_Addr <= instr_In (8 downto 6);
                RA_Addr <= instr_In (5 downto 3);
                RB_Addr <= instr_In (2 downto 0);
                W_En <= '1';

            -- A3 Instruction
            elsif opCode = "0000101" or opCode = "0000110" then
                -- ALU Signals
                ALU_op <= instr_In (11 downto 9);
                ALU_En <= '1';

                -- Register File Signals
                RW_Addr  <= instr_In (8 downto 6);
                RA_Addr  <= instr_In (8 downto 6);
                shiftAmt <= Instr_In (3 downto 0); 
                W_En <= '1';

            -- A4 Instruction
            elsif opCode = "0000111" then -- Test
                -- ALU Signals
                ALU_op <= instr_In (11 downto 9);
                ALU_En <= '1';

                -- Register File Signals
                RW_Addr <= (others => '0');
                RA_Addr <= Instr_In (8 downto 6);
                RB_Addr <= (others => '0');
                W_En <= '0';

            elsif opCode = "100000" then -- OUT
                -- ALU Signals
                ALU_En <= '0';

                -- Register File Signals
                RW_Addr <= (others => '0');
                RA_Addr <= Instr_In (8 downto 6);
                RB_Addr <= (others => '0');
                W_En <= '0';

            elsif opCode = "1000001" then -- IN
                -- ALU Signals
                ALU_En <= '0';

                -- Register File Signals
                RW_Addr <= Instr_In (8 downto 6);
                RA_Addr <= (others => '0');
                RB_Addr <= (others => '0');
                W_En <= '1';
            end if;      
        end if;
        DONE <= '1';
    end process;

end behavioral;
     
