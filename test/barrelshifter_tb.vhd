library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barrelshifter_tb is
end entity barrelshifter_tb;

architecture testbench of barrelshifter_tb is

-- Signals
signal A, Result: std_logic_vector(15 downto 0);
signal shiftamount: std_logic_vector(3 downto 0);
signal direction: std_logic;

-- Component
component barrelshift_16bit is
    port ( 
        direction   : in  std_logic;            -- Left 1 and Right 0
        shiftamount : in  std_logic_vector(3 downto 0); -- amount to shift (up to 15)
        A           : in  std_logic_vector(15 downto 0);
        Result      : out std_logic_vector(15 downto 0) );
end component;

begin 
    UUT: barrelshift_16bit port map (direction, shiftamount, A, Result);

    stimulus_process : process
    begin

    -- right shifts
    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0000";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0001";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0010";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0011";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0100";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0101";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0110";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "0111";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1000";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1001";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1010";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1011";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1100";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1101";
    wait for 1 ms;
    
    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1110";
    wait for 1 ms;

    A <= "1000000000000000";
    direction <= '0';
    shiftamount <= "1111";
    wait for 1 ms;

    -- left shifts
    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0000";
    wait for 1 ms;
    
    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0001";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0011";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0100";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0101";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0110";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "0111";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "1000";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "1001";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "1101";
    wait for 1 ms;
    
    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "1110";
    wait for 1 ms;

    A <= "0000000000000001";
    direction <= '1';
    shiftamount <= "1111";
    wait for 1 ms;

    wait;


    end process stimulus_process;

end architecture testbench;

