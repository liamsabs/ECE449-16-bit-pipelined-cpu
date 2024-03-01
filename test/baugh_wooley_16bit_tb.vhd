library ieee;
use ieee.std_logic_1164.all;

entity baugh_wooley_16bit_tb is
end entity baugh_wooley_16bit_tb;

architecture testbench of baugh_wooley_tb is
    signal clk : std_logic;
    signal A : std_logic_vector(15 downto 0);
    signal B : std_logic_vector(15 downto 0);
    signal C_LOW : std_logic_vector(15 downto 0);
    signal C_high : std_logic_vector(15 downto 0);
    signal DONE_HIGH : std_logic;
    signal DONE_LOW : std_logic;

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

    begin
        UUT: baugh_wooley_16bit port map(clk, A, B, C_HIGH, C_LOW, DONE_HIGH, DONE_LOW);

        stimulus_process : process
        begin

            -- Multiply: 3 x 5 = 15
            A <= "0000000000000011";
            B <= "0000000000000101";
            wait for 10 ms;

            -- Multiply: 32768 x 49152 = 1610612736
            A <= "1000000000000000";
            B <= "1100000000000000";
            wait for 10 ms;

        end process;
end architecture;

