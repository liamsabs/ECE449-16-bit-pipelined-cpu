library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_AdderSubtractor_16bit is
end entity tb_AdderSubtractor_16bit;

architecture testbench of tb_AdderSubtractor_16bit is
    -- Signals
    signal A, B, Sum: std_logic_vector(15 downto 0);
    signal Sub, Cout: std_logic;

    -- Component instantiation
    component AdderSubtractor_16bit
        port (
            A, B: in std_logic_vector(15 downto 0);
            Sub: in std_logic;
            Sum: out std_logic_vector(15 downto 0);
            Cout: out std_logic
        );
    end component;

    -- Stimulus process
    begin
        UUT: AdderSubtractor_16bit port map (A, B, Sub, Sum, Cout);

        stimulus_process: process
        begin
            -- Test case 1: Addition
            A <= "0000000000001111";
            B <= "0000000000001111";
            Sub <= '0';
            wait for 40 ns;

            -- Test case 2: Subtraction
            A <= "1111111111001011";
            B <= "0000000000001111";
            Sub <= '1';
            wait for 40 ns;
            -- Test case 3: Addition
            A <= "0111111111111111";
            B <= "0000000000001111";
            Sub <= '0';
            wait for 40 ns;
            -- Test case 3: subtraction
            A <= "0011111111011111";
            B <= "0000000001111111";
            Sub <= '1';
            wait for 40 ns;
            -- Test case 1: Addition
            A <= "0000000000001111";
            B <= "1000111111111111";
            Sub <= '1';
            wait for 40 ns;

           

            -- Add more test cases as needed

            wait;
        end process stimulus_process;

    end architecture testbench;