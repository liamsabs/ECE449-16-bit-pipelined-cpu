library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        -- PC Control Signals
        Clk             : in std_logic;
        Reset           : in std_logic;
        Instr_out       : out std_logic_vector(15 downto 0); -- recieved from memory then outputted to IF/ID register
        Instr_in        : in std_logic_vector(15 downto 0); -- hardcoded Instruction in Value for Format A Test
        FormatA_Test    : in std_logic
    );
end FETCH;

architecture behavioral of FETCH is

    component FullAdder_16bit is
        port(
            A, B    : in std_logic_vector (15 downto 0);
            Cin     : in std_logic;
            Cout    : out std_logic;
            Sum     : out std_logic_vector (15 downto 0) 
        );
    end component;

    signal PC, NPC  : std_logic_vector (15 downto 0) := (others => '0'); -- signals to increment PC
    

    begin      
        Add : FullAdder_16bit port map (A => PC, B=> X"0004", Cin => '0', Sum => NPC);
       
        process (Clk, Reset)
        begin 
        if Reset = '1' then -- clear all signals
            Instr_out <= (others => '0');     
        elsif rising_edge (Clk) then
        PC <= NPC;     
        end if; 
        end process;            
end behavioral;