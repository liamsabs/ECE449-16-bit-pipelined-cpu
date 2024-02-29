library ieee;
use ieee.std_logic_1164.all;

entity decoder is
    port (
        -- General Inputs
        Clk, En, Reset : in std_logic;
        instr_In : in std_logic_vector(15 downto 0);

        -- Register File access
        RW_addr  : out std_logic_vector(2 downto 0);
        W_En     : out std_logic;
        RA_addr  : out std_logic_vector(2 downto 0);
        RB_addr  : out std_logic_vector(2 downto 0);    

        -- ALU Signals
        ALU_op   : out std_logic_vector(2 downto 0);
        shiftAmt : out std_logic_vector(3 downto 0);
        ALU_En   : out std_logic;

        -- I/0 Signals
        port_IN  : in std_logic_vector(15 downto 0);
        Out_EN   : in std_logic
        -- TBA for Instruction Set A & B
    );
end decoder;

architecture behavioral of decoder is
signal opCode : std_logic_vector (6 downto 0); 
begin
    process (Clk, En, Reset)
    begin
        if Reset = '1' then
            -- clear register file access signals
            RA_addr <= (others => '0');
            RB_addr <= (others => '0');
            RW_addr  <= (others => '0');
            W_En <= '0';

            -- clear ALU signals
            ALU_op   <= (others => '0');
            ALU_En   <= '0';
            shiftAmt <= (others => '0');
        end if;

        if rising_edge(Clk) then
            opCode <= instr_In (15 downto 9);

            -- A1 Instruction
            if opCode = "00000000" then
                -- TODO: figure out what signals are even needed for noop
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
    end process;

end behavioral;
     
