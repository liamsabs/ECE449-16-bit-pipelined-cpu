library ieee;
use ieee.std_logic_1164.all;

entity nand_16bit is 
port (A, B : in std_logic_vector(15 downto 0);
    C : out std_logic_vector (15 downto 0);    
);
end nand_16bit;

architecture behavioral of nand_16bit is
 begin
    C <= A nand B;
end behavioral;
