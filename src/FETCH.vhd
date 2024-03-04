library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        Clk             : in std_logic;
        Reset           : in std_logic;
        IR_out       : out std_logic_vector(15 downto 0); -- recieved from memory then outputted to IF/ID register
        IR_in        : in std_logic_vector(15 downto 0) -- hardcoded Instruction in Value for Format A Test
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
    signal IR_sig   : std_logic_vector (15 downto 0);
    

    begin      
        Add : FullAdder_16bit port map (A => PC, B=> X"0004", Cin => '0', Sum => NPC);
        IR_sig <= IR_in;
       
        process (Clk, Reset)
        begin 
        if Reset = '1' then -- clear all signals
            IR_out <= (others => '0');     
        elsif rising_edge (Clk) then
        PC <= NPC;
        IR_out <= IR_sig;     
        end if; 
        end process;            
end behavioral;
