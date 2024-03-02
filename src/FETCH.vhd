library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        -- PC Control Signals
        Clk             : in std_logic;
        Reset           : in std_logic;
        Instr_out       : out std_logic_vector(15 downto 0);

        -- RAM Control Signals
        DPRAM_data_in   : in std_logic_vector(15 downto 0);
        DPRAM_addr_b    : out std_logic_vector(15 downto 0);
        DPRAM_en_b      : out std_logic;

        -- ROM Control Signals
        SPROM_data_in   : in std_logic_vector(15 downto 0);
        SPROM_addr_b    : out std_logic_vector(15 downto 0);
        
    );
end FETCH;

architecture behavioral of FETCH is
    
    component FF is 
    port (
        Clk     : in std_logic;
        Reset   : in std_logic;
        PC_In   : in std_logic;
        PC_Out  : out std_logic
    );
    end component;

    component FullAdder_16bit is
        port(
            A, B    : in std_logic_vector (15 downto 0);
            Cin     : in std_logic;
            Cout    : out std_logic;
            Sum     : out std_logic_vector (15 downto 0); 
        );
    end component;

    signal PC_Out, PC_Incr,  : std_logic_vector (15 downto 0);

    begin      
        Add : FullAdder_16bit port map (A => PC_Out, B=> "4", Cin => '0', Cout => '0', Sum => PC_Incr);
        PC  : FF port map (Clk => Clk, D_In => PC_Incr, D_Out => PC_Out);

        process (clk, Reset)
        begin 
        if(Reset = '1') then
            



end behavioral;