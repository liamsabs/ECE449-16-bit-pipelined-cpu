library ieee;
use ieee.std_logic_1164.all;

entity incrementor is
    port(
        control_inc     : in std_logic_vector(1 downto 0);
        control_prev    : in std_logic;
        displacement    : in std_logic_vector(15 downto 0);
        branch_address  : in std_logic_vector(5 downto 0);
        PC_prev         : in std_logic_vector(15 downto 0);
        PC              : out std_logic_vector(15 downto 0);
        fetch_mem       : out std_logic;
    );
end incrementor;

architecture behavioral of incrementor is
    signal I1, I2 : std_logic_vector(15 downto 0);

begin
    with control_inc select
        I1  <=  4 when "00",            -- Normal increment
            0 when "01",                -- NOP
            displacement when "10",     -- Displacement
            0 when others;

    with control_prev select
        I2 <= PC_prev when "0",
            branch_address when "1";
        
    PC <= I1 + I2;
    fetch_mem <= I2;

end behavioral;