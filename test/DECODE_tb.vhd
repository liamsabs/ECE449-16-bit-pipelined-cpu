library ieee;
use ieee.std_logic_1164.all;

entity DECODE_tb is
end DECODE_tb;

architecture tb_arch of DECODE_tb is
    signal Clk          : std_logic := '0';
    signal Reset        : std_logic := '1';
    signal IR_in        : std_logic_vector(15 downto 0) := (others => '0');
    -- Writeback Signals
    signal WB_data      : std_logic_vector(15 downto 0) := (others => '0');
    signal WB_addr      : std_logic_vector(2 downto 0) := (others => '0');
    signal WB_En        : std_logic := '0';
    -- ALU signals
    signal ALU_op       : std_logic_vector(2 downto 0);
    signal shiftAmt     : std_logic_vector(3 downto 0);
    signal RA_data      : std_logic_vector(15 downto 0);
    signal RB_data      : std_logic_vector(15 downto 0);
    signal RW_addr      : std_logic_vector(2 downto 0);
    signal RW_En        : std_logic;
    -- Branching
    signal PC           : std_logic_vector (15 downto 0);
    signal B_addr       : std_logic_vector (15 downto 0);
    signal B_En         : std_logic; -- Indicates that the instruction is a branch (still need to check if we can branch in EX based on B_Op)
    signal B_op         : std_logic_vector (1 downto 0); -- branch condition
    -- For BR.SUB
    signal BR_sub_PC    : std_logic_vector (15 downto 0); -- PC+2 which is written to R7 during BR_sub 
            -- I/0 Handling
    signal IN_En        : std_logic; -- enables input to be read in execute stage 
    signal port_Out     : std_logic_vector (15 downto 0); -- output from OUT instruction
            -- Forwarding
    signal RA_addr      : std_logic_vector (2 downto 0); -- address of RA used for forwarding
    signal FW_A_data    : std_logic_vector (15 downto 0); -- input data from forwarding for RA
    signal FW_A_En      : std_logic; -- input to be used to determine if forwarding RA
    signal RB_addr      : std_logic_vector (2 downto 0); -- address of RB used for forwarding
    signal FW_B_data    : std_logic_vector (15 downto 0); -- input data from forwarding for RA
    signal FW_B_En      : std_logic; -- input to be used to determine if forwarding RB
    

    component DECODE is
        port (
            Clk            : in std_logic; -- Clock Input
            Reset          : in std_logic; -- Reset
            IR_in          : in std_logic_vector (15 downto 0); -- Instruction to Decode
            -- WriteBack
            WB_data        : in std_logic_vector (15 downto 0); -- Write Back data
            WB_addr        : in std_logic_vector (2 downto 0); -- Write Back address 
            WB_En          : in std_logic; -- Write Back Enable
            -- Execute and Register Write Operands
            ALU_op         : out std_logic_vector (2 downto 0); -- ALU operands
            shiftAmt       : out std_logic_vector (3 downto 0); -- shift amount
            RA_data        : out std_logic_vector (15 downto 0); -- Register A data
            RB_data        : out std_logic_vector (15 downto 0); -- Register B data
            RW_addr        : out std_logic_vector (2 downto 0); -- Register Write Address
            RW_En          : out std_logic; -- Register Write Enable
            -- Branching
            PC             : in std_logic_vector (15 downto 0); -- recieved PC+2 (needs to be decremented for branching)
            B_addr         : out std_logic_vector (15 downto 0); -- branch address to give to FETCH
            B_En           : out std_logic; -- Indicates that the instruction is a branch (still need to check if we can branch in EX based on B_Op)
            B_op           : out std_logic_vector (1 downto 0); -- branch condition
            -- For BR.SUB
            BR_sub_PC      : out std_logic_vector (15 downto 0); -- PC+2 which is written to R7 during BR_sub 
            -- I/0 Handling
            IN_En          : out std_logic; -- enables input to be read in execute stage 
            port_Out       : out std_logic_vector (15 downto 0); -- output from OUT instruction
            -- Forwarding
            RA_addr        : out std_logic_vector (2 downto 0); -- address of RA used for forwarding
            FW_A_data      : in std_logic_vector (15 downto 0); -- input data from forwarding for RA
            FW_A_En        : in std_logic; -- input to be used to determine if forwarding RA
            RB_addr        : out std_logic_vector (2 downto 0); -- address of RB used for forwarding
            FW_B_data      : in std_logic_vector (15 downto 0); -- input data from forwarding for RA
            FW_B_En        : in std_logic -- input to be used to determine if forwarding RB
        );
    end component;

begin

    DUT: DECODE
        port map (
            Clk => Clk,
            Reset => Reset,
            IR_in => IR_in,
            WB_data => WB_data,
            WB_addr => WB_addr,
            WB_En => WB_En,
            ALU_op => ALU_op,
            shiftAmt => shiftAmt,
            RA_data => RA_data,
            RB_data => RB_data,
            RW_addr => RW_addr,
            RW_En => RW_En,
            PC => PC,
            B_addr => B_addr,
            B_En => B_En,
            B_op => B_op,
            BR_sub_PC => BR_sub_PC,
            IN_En => IN_En,
            port_Out => port_Out,
            RA_addr => RA_addr,
            FW_A_data => FW_A_data,
            FW_A_En => FW_A_En,
            RB_addr => RB_addr,
            FW_B_data => FW_B_data,
            FW_B_En => FW_B_En
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
    wait for 50 ns;
    IR_in <=  "0000000000000000";  -- You can modify IR_in for different test cases
    PC <= X"0000";
    wait for 50 ns;
    Reset <= '0';   
    wait for 50 ns;
    IR_in <= "0000001001001010"; -- Add R1, R1, R2
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in  <= "0000010001001010"; -- Sub R1, R1, R2
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0000011010001100"; -- Mult R2, R1, R4  
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0000100100011000"; -- NAND R4, R3, R0  
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0000101000001100"; -- SHL R0, R1, R4 
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0000110000001100"; -- SHR R0, R1, R4 
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0000111111000000"; -- Test R7
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0100000001000000"; -- Out R1
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "0100001010000000"; -- In R2
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000000011111111"; -- BRR 011111111
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000001000011111"; -- BRR.N 000011111
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000010000000001"; -- BRR.Z 000000001
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000011001000001"; -- BR R1 000001
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000100001000010"; -- BR.N R1 000010
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000101001000100"; -- BR.Z R1 000100 
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000110001000100"; -- BR.SUB R1 000100 
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    IR_in <= "1000111000000000"; -- RETURN 
    WB_addr <= "000";
    WB_En <= '0';
    wait for 50 ns;
    wait;
    end process;

end tb_arch;
