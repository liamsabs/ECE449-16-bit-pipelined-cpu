library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multiplier_16bit is
    port (
        A, B : in  std_logic_vector(15 downto 0);
        Result_High, Result_Low : out std_logic_vector(15 downto 0)
    );
end multiplier_16bit;

architecture Behavioral of multiplier_16bit is
    signal product : std_logic_vector(31 downto 0) := (others => '0');
begin
    product <= Signed(A) * Signed(B);
    Result_High <= product(31 downto 16);
    Result_Low <= product(15 downto 0);
end Behavioral;
