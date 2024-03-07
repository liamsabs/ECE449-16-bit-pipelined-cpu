library ieee;
use ieee.std_logic_1164.all;

entity DECODE_tb is
end DECODE_tb;

architecture tb_arch of DECODE_tb is
    signal Clk          : std_logic := '0';
    signal Reset        : std_logic := '1';
    signal IR_in        : std_logic_vector(15 downto 0) := (others => '0');
    signal WB_data      : std_logic_vector(15 downto 0) := (others => '0');
    signal WB_addr      : std_logic_vector(2 downto 0) := (others => '0');
    signal WB_En        : std_logic := '0';
    signal ALU_op       : std_logic_vector(2 downto 0);
    signal shiftAmt     : std_logic_vector(3 downto 0);
    signal RA_data      : std_logic_vector(15 downto 0);
    signal RB_data      : std_logic_vector(15 downto 0);
    signal RW_addr      : std_logic_vector(2 downto 0);
    signal RW_En        : std_logic;
    signal IN_En        : std_logic;
    signal port_Out     : std_logic_vector(15 downto 0);

    component DECODE
        port (
            Clk            : in std_logic;
            Reset          : in std_logic;
            IR_in          : in std_logic_vector(15 downto 0);
            WB_data        : in std_logic_vector(15 downto 0);
            WB_addr        : in std_logic_vector(2 downto 0);
            WB_En          : in std_logic;
            ALU_op         : out std_logic_vector(2 downto 0);
            shiftAmt       : out std_logic_vector(3 downto 0);
            RA_data        : out std_logic_vector(15 downto 0);
            RB_data        : out std_logic_vector(15 downto 0);
            RW_addr        : out std_logic_vector(2 downto 0);
            RW_En          : out std_logic;
            IN_En          : out std_logic;
            port_Out       : out std_logic_vector(15 downto 0)
        );
    end component;

begin

    DUT: DECODE
        port map (
            Clk     => Clk,
            Reset   => Reset,
            IR_in   => IR_in,
            WB_data => WB_data,
            WB_addr => WB_addr,
            WB_En   => WB_En,
            ALU_op  => ALU_op,
            shiftAmt => shiftAmt,
            RA_data => RA_data,
            RB_data => RB_data,
            RW_addr => RW_addr,
            RW_En   => RW_En,
            IN_En   => IN_En,
            port_Out => port_Out
        );

    -- Clock generation
    process
    begin
        wait for 50 ns;
        Clk <= '1';
        wait for 50 ns;
         Clk <= '0';
    end process;

    -- Stimulus process
    process
    begin
    wait for 50 ns;  -- Wait for some time to stabilize
    -- Test Case 1
     Reset <= '1';
    IR_in <= "0000000000000000";  -- You can modify IR_in for different test cases
    wait for 50 ns;
    Reset <= '0';
    wait for 50 ns;   
    wait for 50 ns;
    WB_data <= X"6969";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;
    WB_data <= X"F019";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;
    WB_data <= X"0069";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;
    WB_data <= X"216C";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;
    WB_data <= X"CCCC";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;
    WB_data <= X"7777";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;
    WB_data <= X"0001";
    WB_addr <= "000";
    WB_En <= '1';
    wait for 50 ns;        
        wait for 50 ns;  -- Wait for some time to stabilize
        -- Test Case 1
        Reset <= '0';
        IR_in <= "0000000000000000";  -- You can modify IR_in for different test cases
        wait for 50 ns;
        

        -- Test Case 2
        Reset <= '0';
        IR_in <= "0000001000000000";  -- You can modify IR_in for different test cases
        wait for 50 ns;
        
        -- Test Case 3
        Reset <= '0';
        IR_in <= "0000010111111111";  -- You can modify IR_in for different test cases
        wait for 50 ns;
        
         Reset <= '0';
         IR_in <= "0000011111111111";  -- You can modify IR_in for different test cases
         wait for 50 ns;
               
          Reset <= '0';
          IR_in <= "0000100111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;
          
          Reset <= '0';
          IR_in <= "0000101111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;          
          
          Reset <= '0';
          IR_in <= "0000110111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;
          Reset <= '0';
          IR_in <= "0000101111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;    
          Reset <= '0';
          IR_in <= "0000101111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;    
          IR_in <= "0000111111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;
          IR_in <= "1000000111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;
          IR_in <= "1000001111111111";  -- You can modify IR_in for different test cases
          wait for 50 ns;                    
        -- Add more test cases as needed

        wait;

    end process;

end tb_arch;
