library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity DECODE is
    port (
        Clk, Reset     : in std_logic;
        instr_In       : in std_logic_vector (15 downto 0); -- Instruction to Decode
        ALU_op         : out std_logic_vector (2 downto 0); -- ALU operands
        shiftAmt       : out std_logic_vector (3 downto 0);
        RA_data        : out std_logic_vector (15 downto 0);
        RB_data        : out std_logic_vector (15 downto 0);
        RW_addr        : out std_logic_vector (2 downto 0); -- Write operands to forward through pipeline
        RW_En          : out std_logic;
        IN_En          : out std_logic; 
        port_Out       : out std_logic_vector (15 downto 0);
        WB_data        : in std_logic_vector (15 downto 0); -- Write Back Inputs
        WB_addr        : in std_logic_vector (2 downto 0);
        WB_En          : in std_logic
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

signal opCode : std_logic_vector (6 downto 0);
signal RA_addr, RB_addr : std_logic_vector (2 downto 0); -- register file access
signal RA_data_sig, RB_data_sig : std_logic_vector (15 downto 0);
signal Out_sig : std_logic_vector(15 downto 0);

begin

    REGISTERFILE : register_file port map( -- instantiating register file
        rst => Reset,
        clk => Clk,
        rd_index1 => RA_addr,
        rd_index2 => RB_addr,
        rd_data1  => RA_data_sig,
        rd_data2  => RB_data_sig,
        wr_index  => WB_addr,
        wr_data   => WB_data,
        wr_enable => WB_En
        );
        
        -- Signal Decleration
        RA_data <= RA_data_sig; Out_sig <= RA_data_sig;
        RB_data <= RB_data_sig;

        opCode <= instr_In (15 downto 9);

    process (Clk, Reset)
    begin
        if Reset = '1' then
            ALU_op         <= (others => '0');
            shiftAmt       <= (others => '0');
            RA_addr        <= (others => '0');
            RB_addr        <= (others => '0');
            RW_addr        <= (others => '0');
            RW_En          <= '0';
            IN_En          <= '0';
            port_Out       <= (others => '0');
        elsif rising_edge(Clk) then
            -- A1 Instruction (NOOP)
            if opCode = "00000000" then
                ALU_op         <= (others => '0');
                shiftAmt       <= (others => '0');
                RA_Addr        <= (others => '0');
                RB_Addr        <= (others => '0');
                RW_addr        <= (others => '0');
                RW_En          <= '0';
                IN_En          <= '0';
                port_Out       <= (others => '0');
            -- A2 Instruction
            elsif opCode = "0000001" or opCode = "0000010" or opCode = "0000011" or opCode = "0000100" then
                ALU_op         <= instr_In (11 downto 9);
                shiftAmt       <= (others => '0'); 
                RA_Addr        <= instr_In (5 downto 3);
                RB_Addr        <= instr_In (2 downto 0);
                RW_Addr        <= instr_In (8 downto 6);
                RW_En          <= '1';
                IN_En          <= '0';
                port_Out       <= (others => '0');
            -- A3 Instruction
            elsif opCode = "0000101" or opCode = "0000110" then
                ALU_op         <= instr_In (11 downto 9);
                shiftAmt       <= Instr_In (3 downto 0); 
                RA_Addr        <= instr_In (8 downto 6);
                RB_Addr        <= (others => '0');
                RW_Addr        <= instr_In (8 downto 6);
                shiftAmt       <= Instr_In (3 downto 0); 
                RW_En          <= '1';
                IN_En          <= '0';
                port_Out       <= (others => '0');
            -- A4 Instruction
            elsif opCode = "0000111" then -- Test
                ALU_op         <= instr_In (11 downto 9);
                shiftAmt       <= (others => '0');
                RA_Addr        <= Instr_In (8 downto 6);
                RB_Addr        <= (others => '0');
                RW_Addr        <= (others => '0');
                RW_En          <= '0';
                IN_En          <= '0';
                port_Out       <= (others => '0');
            elsif opCode = "100000" then -- OUT
                ALU_op         <= (others => '0');
                shiftAmt       <= (others => '0');
                RA_Addr        <= Instr_In (8 downto 6);
                RW_addr        <= (others => '0');
                RW_En          <= '0';
                IN_En          <= '0';
                port_Out       <= out_sig;
            elsif opCode = "1000001" then -- IN
                ALU_op         <= instr_In (11 downto 9);
                shiftAmt       <= (others => '0'); 
                RA_Addr        <= (others => '0');
                RB_Addr        <= (others => '0');
                RW_Addr        <= instr_In (8 downto 6);
                RW_En          <= '1';
                IN_En          <= '0';
                port_Out       <= (others => '0');
            end if;      
        end if;
    end process;

end behavioral;
