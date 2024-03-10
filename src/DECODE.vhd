library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity DECODE is
    port (
        Clk            : in std_logic;
        Reset          : in std_logic;
        IR_in          : in std_logic_vector (15 downto 0); -- Instruction to Decode
        WB_data        : in std_logic_vector (15 downto 0); -- Write Back Inputs
        WB_addr        : in std_logic_vector (2 downto 0);
        WB_En          : in std_logic;
        ALU_op         : out std_logic_vector (2 downto 0); -- ALU operands
        shiftAmt       : out std_logic_vector (3 downto 0);
        RA_data        : out std_logic_vector (15 downto 0);
        RB_data        : out std_logic_vector (15 downto 0);
        RW_addr        : out std_logic_vector (2 downto 0); -- Write operands to forward through pipeline
        RW_En          : out std_logic;
        IN_En          : out std_logic; 
        port_Out       : out std_logic_vector (15 downto 0)
    );
end DECODE;

architecture behavioral of DECODE is

-- Componenents
component register_file is
    port(
    rst : in std_logic; clk: in std_logic;
    --read signals
    rd_index1: in std_logic_vector(2 downto 0); 
    rd_index2: in std_logic_vector(2 downto 0); 
    rd_data1: out std_logic_vector(15 downto 0); 
    rd_data2: out std_logic_vector(15 downto 0);
    --write signals
    wr_index: in std_logic_vector(2 downto 0); 
    wr_data: in std_logic_vector(15 downto 0); 
    wr_enable: in std_logic
    );
end component;

signal IR_sig         :  std_logic_vector (15 downto 0);
signal opcode         :  std_logic_vector (6 downto 0);
signal ALU_op_sig     :  std_logic_vector (2 downto 0); -- ALU operands
signal shiftAmt_sig   :  std_logic_vector (3 downto 0);
signal RA_data_sig    :  std_logic_vector (15 downto 0);
signal RA_addr_sig    :  std_logic_vector (2 downto 0);
signal RB_data_sig    :  std_logic_vector (15 downto 0);
signal RB_addr_sig    :  std_logic_vector (2 downto 0);
signal RW_addr_sig    :  std_logic_vector (2 downto 0); -- Write operands to forward through pipeline
signal RW_En_sig      :  std_logic;
signal IN_En_sig      :  std_logic;
signal port_out_sig   :  std_logic_vector (15 downto 0);

signal WB_addr_sig    :  std_logic_vector (2 downto 0);
signal WB_data_sig    :  std_logic_vector (15 downto 0);
signal WB_En_sig      :  std_logic;

begin

    REGISTERFILE : register_file port map( -- instantiating register file
        rst => Reset,
        clk => Clk,
        rd_index1 => RA_addr_sig,
        rd_index2 => RB_addr_sig,
        rd_data1  => RA_data_sig,
        rd_data2  => RB_data_sig,
        wr_index  => WB_addr_sig,
        wr_data   => WB_data_sig,
        wr_enable => WB_En_sig
        );
   
   -- Decode Output Signal Assignment
    IR_sig <= IR_in;
    opCode <= IR_in(15 downto 9);    
    ALU_op <= ALU_op_sig;
    shiftAmt <= shiftAmt_sig;
    RA_data <= RA_data_sig;       
    RB_data <= RB_data_sig;
    RW_addr <= RW_addr_sig;
    RW_En <= RW_En_sig;
    IN_en <= IN_En_sig;          
    port_Out <= port_Out_sig;
    
    -- Write Back Signal Assignment
    WB_addr_sig <= WB_addr;
    WB_data_sig <= WB_data;
    WB_En_sig   <= WB_En;
    
    decode_process : process (Reset, opCode, IR_sig, RA_data_sig)
    begin
        if Reset = '1' then
            ALU_op_sig     <= (others => '0');
            shiftAmt_sig   <= (others => '0');
            RA_Addr_sig    <= (others => '0');
            RB_Addr_sig    <= (others => '0');
            RW_Addr_sig    <= (others => '0');
            RW_En_sig      <= '0';
            IN_En_sig      <= '0';
            port_Out_sig   <= (others => '0');
        
        else
           case opcode is
                when "0000000" =>
                    ALU_op_sig     <= (others => '0');
                    shiftAmt_sig   <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_Addr_sig    <= (others => '0');
                    RW_En_sig      <= '0';
                    IN_En_sig      <= '0';
                when "0000001" | "0000010" | "0000011" | "0000100"  => --ADD, SUB, MULT, NAND (A1)
                    ALU_op_sig     <= IR_sig (11 downto 9);
                    shiftAmt_sig   <= (others => '0');
                    RA_addr_sig    <= IR_sig (5 downto 3);
                    RB_addr_sig    <= IR_sig (2 downto 0);
                    RW_addr_sig    <= IR_sig (8 downto 6);
                    RW_En_sig      <= '1';
                    IN_En_sig      <= '0';                     
                when "0000101" | "0000110" => -- SHL, SHR
                    ALU_op_sig     <= IR_sig (11 downto 9);
                    shiftAmt_sig   <= IR_sig (3 downto 0);
                    RA_addr_sig    <= IR_sig (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_addr_sig    <= IR_sig (8 downto 6);
                    RW_En_sig      <= '1';
                    IN_En_sig      <= '0';
                when "0000111" => -- Test
                    ALU_op_sig     <= IR_sig (11 downto 9);
                    shiftAmt_sig   <= (others => '0');   
                    RA_addr_sig    <= IR_sig (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_Addr_sig    <= (others => '0');
                    RW_En_sig      <= '0'; 
                    IN_En_sig      <= '0';
                when "1000000" => -- Out
                    ALU_op_sig     <= (others => '0');
                    shiftAmt_sig   <= (others => '0');   
                    RA_addr_sig    <= IR_sig (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_Addr_sig    <= (others => '0');
                    RW_En_sig      <= '0'; 
                    IN_En_sig      <= '0';
                    port_Out_sig   <= RA_data_sig;
                when "1000001" => --In
                    ALU_op_sig     <= (others => '0');
                    shiftAmt_sig   <= (others => '0');   
                    RA_addr_sig    <= (others => '0');
                    RB_addr_sig    <= (others => '0');
                    RW_Addr_sig    <= IR_sig (8 downto 6);
                    RW_En_sig      <= '1'; 
                    IN_En_sig      <= '1';
                when others =>
                    ALU_op_sig     <= (others => '0');
                    shiftAmt_sig   <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_Addr_sig    <= (others => '0');
                    RW_En_sig      <= '0';
                    IN_En_sig      <= '0';    
                end case;                   
        end if;
    end process decode_process;
end behavioral;
