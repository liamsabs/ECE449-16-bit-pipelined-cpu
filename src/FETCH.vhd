library ieee;
use ieee.std_logic_1164.all;

entity FETCH is
    port(
        CONTROL_OP      : in std_logic_vector(1 downto 0);
        branch_address  : in std_logic_vector(15 downto 0);
        PC_init         : in std_logic_vector(15 downto 0); 
        PC              : out std_logic_vector(15 downto 0);
    );
end FETCH;

architecture behavioral of FETCH is
    signal I1, I2 : std_logic_vector(15 downto 0);
    signal PC_prev : std_logic_vector(15 downto 0);

    component FullAdder_16bit is
        port(
            A, B    : in std_logic_vector (15 downto 0);
            Cin     : in std_logic;
            Sum     : out std_logic_vector (15 downto 0); 
            Cout    : out std_logic;
        );
    end component;

    begin
        with CONTROL_OP(0) select
            I1  <=  "0000000000000100"  when "1",      -- Normal increment by 4
                    "0000000000000000"  when "0";      -- NOP

        with CONTROL_OP(1) select
            I2  <=   PC_init         when "0",       -- Add to previous PC
                     branch_address  when "1";       -- Add to branch destination
            
        Add : FullAdder_16bit port map (I1, I2, 0, PC);
        PC_prev <= PC_init;
        -- TODO: Get instruction from ROM

end behavioral;