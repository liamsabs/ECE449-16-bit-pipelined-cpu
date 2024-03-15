library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        Clk             : in std_logic;
        Reset           : in std_logic;
        PC_reset        : in std_logic;                         -- Resets PC to [val?]
        Br_addr         : in std_logic_vector(15 downto 0);     -- Branch address
        Br_CTRL         : in std_logic;                         -- input signal for PC MUX
        IR_in           : in std_logic_vector(15 downto 0);     -- hardcoded Instruction in Value for Format A Test
        IR_out          : out std_logic_vector(15 downto 0);    -- recieved from memory then outputted to IF/ID register
        PC_out          : out std_logic_vector(15 downto 0);    -- PC for decoder
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

    signal PC       : std_logic_vector (15 downto 0) := (others => '0');    -- program counter
    signal NPC      : std_logic_vector (15 downto 0) := (others => '0');    -- new program counter
    signal IR_sig   : std_logic_vector (15 downto 0);                       -- instruction register
    signal adder_PC : std_logic_vector (15 downto 0) := (others => '0');    -- regular PC incremented with adder
    

    begin      
        Add : FullAdder_16bit port map (A => PC, B=> X"0004", Cin => '0', Sum => adder_PC);
        IR_sig <= IR_in;

        if Br_CTRL = '0' then
            NPC <= adder_PC;
        else
            NPC <= BR_addr
        end if;

        process (Reset)
        begin 
            if Reset = '1' then -- clear all signals
                IR_out <= (others => '0');     
            else
                PC <= NPC;
                PC_out <= NPC;
                IR_out <= IR_sig;
                ID_BR_ZERO <= BR_ZERO;
                ID_BR_CTRL <= BR_CTRL; 
            end if;
        end process;            
end behavioral;
