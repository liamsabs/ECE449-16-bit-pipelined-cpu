library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use work.all;

entity CONTROL_tb is 
end CONTROL_tb;

architecture modified_behavioral of CONTROL_tb is

    component CONTROL is 
        port(
            Clk, Reset: in std_logic
            IR_In : in std_logic_vector (15 downto 0);
            Data_in   : in std_logic (15 downto 0);
            Data_out  : in std_logic (15 downto 0);
        );
    end component; 
    
    signal Reset_sig, Clk: std_logic; 
    signal IR_sig, Data_in_sig Data_out_sig: std_logic_vector(15 downto 0); 
    
begin
    CPU : CONTROL port map(Reset => Reset_sig, Clk => Clk, IR_in => IR_sig, Data_in => Data_in_sig, Data_out => Data_out_sig);

    process 
    begin
        Clk <= '0'; wait for 10 us;
        Clk <= '1'; wait for 10 us; 
    end process;
    
    process 
    begin
        reset_signal <= '1'; wait until (rising(Clk)); 
        reset_signal <= '0'; wait until (rising_edge(Clk)); 
        instruction_register <= X"4240"; wait until (rising_edge(Clk)); -- IN r1         
        instruction_register <= X"4280"; wait until (rising_edge(Clk));  -- IN r2 
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"02D1"; wait until (rising_edge(Clk));  -- ADD r3, r2, r1   
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0AC2"; wait until (rising_edge(Clk));  -- SHL r3, 2         
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"068B"; wait until (rising_edge(Clk));  -- MUL r2, r1, r3   
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"4080"; wait until (rising_edge(Clk));  -- OUT r2       
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        instruction_register <= X"0000"; wait until (rising_edge(Clk));  -- NOP
        reset_signal <= '1';
        wait;
    end process;

end modified_behavioral;