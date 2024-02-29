library ieee;
use ieee.std_logic_1164.all;

entity baugh_wooley_16bit_tb is
end entity baugh_wooley_16bit_tb;

architecture testbench of baugh_wooley_tb is
    signal A : std_logic_vector(15 downto 0);
    signal B : std_logic_vector(15 downto 0);
    signal C_LOW : std_logic_vector(15 downto 0);
    signal C_high : std_logic_vector(15 downto 0);

    component baugh_wooley_16bit is
        port(
        clk         : in std_logic;
        A           : in std_logic_vector(15 downto 0);
        B           : in std_logic_vector(15 downto 0);
        C_high      : out std_logic_vector(15 downto 0);
        C_low       : out std_logic_vector(15 downto 0);
        DONE_high   : out std_logic;
        DONE_low    : out std_logic
    );
    end component;

    h