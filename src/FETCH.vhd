library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        Clk             : in std_logic;
        Reset_Ex        : in std_logic;
        Reset_Load      : in std_logic;                         -- Resets PC to [val?]
        Br_addr         : in std_logic_vector(15 downto 0);     -- Branch address
        Br_CTRL         : in std_logic;                         -- input signal for PC MUX
        Test_En         : in std_logic;                         -- used when we are testing in the Testbench [TO BE REMOVED]
        IR_in           : in std_logic_vector(15 downto 0);     -- hardcoded Instruction in Value for behavioral sim [TO BE REMOVED]
        IR_out          : out std_logic_vector(15 downto 0);    -- recieved from memory then outputted to IF/ID register
        PC_out          : out std_logic_vector(15 downto 0);     -- PC for decoder
        NPC_out         : out std_logic_vector (15 downto 0);
        IR_ROM          : in std_logic_vector (15 downto 0);
        IR_RAM          : in std_logic_vector (15 downto 0)
        
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
    signal IR_sig   : std_logic_vector (15 downto 0) := (others => '0');    -- instruction register
    signal adder_PC : std_logic_vector (15 downto 0) := (others => '0');    -- regular PC incremented with adder    

    begin      
        Add : FullAdder_16bit port map (A => PC, B=> X"0002", Cin => '0', Sum => adder_PC);
        PC_Out <= PC (15 downto 1) & '0';
        
        PC_process : process (Clk, Reset_Load, Reset_Ex, Br_CTRL, BR_addr, adder_PC, Br_addr, IR_sig, clk)
            variable NPC_var : std_logic_vector(15 downto 0);
        begin
           
            if Reset_Load = '1' then
                NPC_var := X"0000"; -- to be changed [Location of ROM] 
            elsif Reset_Ex = '1' then
                NPC_var := X"0400"; -- to be changed [location of RAM] 
            elsif Br_CTRL = '1' then
                NPC_var := BR_addr; -- branch address
            else 
                NPC_var := adder_PC; -- PC incrementor
            end if;
            NPC_Out <= NPC_var;
            if rising_edge(Clk) then
                PC <= NPC_var; 
            end if;    
        end process PC_process;
    
        Memory_process : process (PC, IR_in, IR_RAM, IR_ROM, Test_EN)
        begin
        if Test_En = '1' then
        IR_out <= IR_In;
        elsif PC(10) = '1' then
        IR_out <= IR_RAM;
        else
        IR_out <= IR_ROM;
        end if;        
        end process Memory_process; 
                     
end behavioral;
