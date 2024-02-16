library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_BarrelShift_16bit is
end entity;

architecture testbench of tb_BarrelShift_16bit is

-- Signals
signal A, Result: std_logic_vector(15 downto 0);
signal shiftamount: std_logic_vector(3 downto 0);
signal direction: std_logic;

-- Component
component barrelshift_16bit is
    port ( direction   : in  std_logic;            -- Left 1 and Right 0
        shiftamount : in  std_logic_vector(3 downto 0); -- amount to shift (up to 15)
        A           : in  std_logic_vector(15 downto 0);
        Result      : out std_logic_vector(15 downto 0) );
end component;

begin 
    UUT: barrelshift_16bit port map (direction, shiftamount, A, Result);
    
end 

end architecture testbench;

