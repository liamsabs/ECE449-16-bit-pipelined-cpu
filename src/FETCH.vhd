library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        -- PC Control Signals
        Clk             : in std_logic;
        Reset           : in std_logic;
        Instr_out       : out std_logic_vector(15 downto 0); -- recieved from memory then outputted to IF/ID register
        Instr_in        : in std_logic_vector(15 downto 0); -- hardcoded Instruction in Value for Format A Test
        FormatA_Test    : in std_logic;

        -- RAM Control Signal
        DPRAM_data_in   : in std_logic_vector(15 downto 0);
        DPRAM_addr_b    : out std_logic_vector(15 downto 0);
        DPRAM_en_b      : out std_logic;
        DPRAM_read_en   : in std_logic; -- used to determine if reading from DPRAM or room (used for bootloader later)

        -- ROM Control Signals
        SPROM_data_in   : in std_logic_vector(15 downto 0);
        SPROM_addr_b    : out std_logic_vector(15 downto 0);
        SPROM_en_b      : out std_logic;

        DONE            : out std_logic;


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

    signal PC_Out, PC_Incr, Mem_out_data  : std_logic_vector (15 downto 0);

    begin      
        Add : FullAdder_16bit port map (A => PC_Out, B=> "4", Cin => '0', Cout => '0', Sum => PC_Incr);
        PC  : FF port map (Clk => Clk, D_In => PC_Incr, D_Out => PC_Out);

        process (Clk, Reset)
        begin 
        if Reset = '1' then -- clear all signals
            Instr_out <= (others => '0');
            DPRAM_addr_b <= (others => '0');
            DPRAM_en_b <= '0';
            SPROM_addr_b <= (others => '0');
            SPROM_en_b <= '0';       
        elsif rising_edge (Clk) then
            if FormatA_Test = '1' then
                Mem_out_data <= Instr_In;
            elsif DPRAM_read_en = '1' then
                Mem_out_data <= DPRAM_data_in;
            elsif SPROM_read_en = '1' then
                Mem_out_data <= SPROM_data_in;
            end if;
        end if;             
end behavioral;