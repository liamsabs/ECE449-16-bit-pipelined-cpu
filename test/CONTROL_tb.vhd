library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use work.all;

entity CONTROL_tb is 
end CONTROL_tb;

architecture modified_behavioral of CONTROL_tb is

    component CONTROL is 
        port(
            Clk, Rst       : in std_logic;
            IR_In_from_TB  : in std_logic_vector (15 downto 0);
            Data_In        : in std_logic_vector (15 downto 0);
            Data_Out       : out std_logic_vector (15 downto 0)
        );
    end component; 
    
    signal Clk_tb, Rst_tb: std_logic; 
    signal IR_tb, Data_in_tb, Data_out_tb  : std_logic_vector(15 downto 0); 
    
begin
    CPU : CONTROL port map(Clk => Clk_tb, Rst => Rst_tb, IR_In_from_TB => IR_tb, Data_In => Data_in_tb, Data_out => Data_out_tb); 

   data_in_tb <= X"0003";
    process 
    begin
        Clk_tb <= '0'; wait for 10 us;
        Clk_tb <= '1'; wait for 10 us; 
    end process;
    
    process 
    begin
        Rst_tb <= '1'; wait until (rising_edge(Clk_tb)); 
        Rst_tb <= '0'; wait until (rising_edge(Clk_tb)); 
        IR_tb <= X"4240"; wait until (rising_edge(Clk_tb)); -- IN r1         
        IR_tb <= X"4280"; wait until (rising_edge(Clk_tb));  -- IN r2 
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"02D1"; wait until (rising_edge(Clk_tb));  -- ADD r3, r2, r1   
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0AC2"; wait until (rising_edge(Clk_tb));  -- SHL r3, 2         
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"068B"; wait until (rising_edge(Clk_tb));  -- MUL r2, r1, r3   
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"4080"; wait until (rising_edge(Clk_tb));  -- OUT r2       
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
        Rst_tb <= '1';
        wait;
    end process;

end modified_behavioral;
