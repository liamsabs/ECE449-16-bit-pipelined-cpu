library ieee;
use ieee.std_logic_1164.all;

entity FF is 
port (
    Clk     : in std_logic;
    Reset   : in std_logic;
    PC_In   : in std_logic;
    PC_Out  : out std_logic
);
end FF;

architecture behavioral of FF is
begin

    process (Clk)
    begin
        if Reset = '1' then
            PC_Out <= '0';
        elsif rising_edge(Clk) then
            PC_Out <= PC_In;
    end if;

end behavioral;