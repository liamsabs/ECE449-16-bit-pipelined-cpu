library ieee;
use ieee.std_logic_1164.all;

entity baugh_wooley_16bit is
    port(
        A           : in std_logic_vector(15 downto 0);
        B           : in std_logic_vector(15 downto 0);
        C_high      : out std_logic_vector(15 downto 0);
        C_low       : out std_logic_vector(15 downto 0);
        DONE_high   : out std_logic;
        DONE_low    : out std_logic;
    );
end baugh_wooley_16bit;

architecture functional of baugh_wooley is
    signal P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P15, P16 : std_logic_vector(15 downto 0);
    