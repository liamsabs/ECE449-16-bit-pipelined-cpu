library ieee;
use ieee.std_logic_1164.all;

entity DECODE is
    port (
        Clk            : in std_logic; -- Clock Input
        ID_Reset       : in std_logic; -- Reset
        ID_IR_in       : in std_logic_vector (15 downto 0); -- Instruction to Decode
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
        BR_addr        : out std_logic_vector (15 downto 0); -- branch address to give to FETCH
        BR_En          : out std_logic; -- Indicates that the instruction is a branch (still need to check if we can branch in EX based on BR_Op)
        BR_op          : out std_logic_vector (1 downto 0); -- branch condition
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
        FW_B_data      : in std_logic_vector (15 downto 0); -- input data from forwarding for RB
        FW_B_En        : in std_logic; -- input to be used to determine if forwarding RB
        -- Memory 
        L_op           : out std_logic_vector (2 downto 0); -- '000' L NOOP,'001' for MOV, '01x' LoadImm LSB is m.1.,'100' LOAD, and '101' STORE
        L_imm          : out std_logic_vector (7 downto 0); -- immediate used for Load Imm
        -- Register Monitoring
        R0             : out std_logic_vector (15 downto 0);
        R1             : out std_logic_vector (15 downto 0);
        R2             : out std_logic_vector (15 downto 0);
        R3             : out std_logic_vector (15 downto 0);
        R4             : out std_logic_vector (15 downto 0);
        R5             : out std_logic_vector (15 downto 0);
        R6             : out std_logic_vector (15 downto 0);
        R7             : out std_logic_vector (15 downto 0) 
    );
end DECODE;

architecture behavioral of DECODE is

-- Componenents
component register_file is
    port(rst : in std_logic; clk: in std_logic;
        --read signals
        rd_index1: in std_logic_vector(2 downto 0); 
        rd_index2: in std_logic_vector(2 downto 0); 
        rd_data1: out std_logic_vector(15 downto 0); 
        rd_data2: out std_logic_vector(15 downto 0);
        --write signals
        wr_index: in std_logic_vector(2 downto 0); 
        wr_data: in std_logic_vector(15 downto 0);
        wr_enable: in std_logic;
        -- Register File Outputs
        R0 : out std_logic_vector (15 downto 0);
        R1 : out std_logic_vector (15 downto 0);
        R2 : out std_logic_vector (15 downto 0);
        R3 : out std_logic_vector (15 downto 0);
        R4 : out std_logic_vector (15 downto 0);
        R5 : out std_logic_vector (15 downto 0);
        R6 : out std_logic_vector (15 downto 0);
        R7 : out std_logic_vector (15 downto 0)
    );
end component;

component FullAdder_16bit is
    Port (
        A, B: in std_logic_vector (15 downto 0);
        Cin: in std_logic;
        Sum: out std_logic_vector (15 downto 0); 
        Cout: out std_logic
    );
end component;

component B1dispformatter is
    port (
         disp1 : in std_logic_vector(8 downto 0);
         disp1formatted : out std_logic_vector(15 downto 0)
    );
end component;

component B2dispformatter is 
    port (
        disps : in std_logic_vector(5 downto 0);
        dispsformatted : out std_logic_vector(15 downto 0)
    );
end component;

-- register file signals
signal opcode             :  std_logic_vector (6 downto 0); -- opcode used for case statement in decode
signal RA_data_sig        :  std_logic_vector (15 downto 0); -- RA data from register file
signal RA_data_sig_FW     :  std_logic_vector (15 downto 0); -- RA data with forwarding logic applied
signal RA_addr_sig        :  std_logic_vector (2 downto 0); -- RA address inputted to register file and outputted for forwarding
signal RB_data_sig        :  std_logic_vector (15 downto 0); -- RB data from register file
signal RB_data_sig_FW     :  std_logic_vector (15 downto 0); -- RB data with forwarding logic applied
signal RB_addr_sig        :  std_logic_vector (2 downto 0); -- RB address inputted to register file and outputted for forwarding
-- Branching Signals
signal PC_incr_sig         : std_logic_vector (15 downto 0); -- signal representing PC where 2 been subtracted
signal disp1_sig          : std_logic_vector (8 downto 0); -- bits from IR for disp1 to be formatted
signal disp1formatted_sig : std_logic_vector (15 downto 0); -- disp1 post formatting (sign extended to 16 bits)
signal disps_sig          : std_logic_vector (5 downto 0); -- bits from IR for disps to be formatted
signal dispsformatted_sig : std_logic_vector (15 downto 0); -- disps post formatting (sign extended to 16 bits)
signal BR_operand1        : std_logic_vector (15 downto 0); -- operand 1 for branch address calculation
signal BR_operand2        : std_logic_vector (15 downto 0); -- operand 2 for branch address calculation
signal BR_Adder_sig       : std_logic_vector (15 downto 0); -- signal from the adder used for branch computation

begin

    registerfile : register_file port map( -- instantiating register file
        rst => ID_Reset,
        clk => Clk,
        rd_index1 => RA_addr_sig,
        rd_index2 => RB_addr_sig,
        rd_data1  => RA_data_sig,
        rd_data2  => RB_data_sig,
        wr_index  => WB_addr,
        wr_data   => WB_data,
        wr_enable => WB_En,
        R0 => R0, 
        R1 => R1, 
        R2 => R2, 
        R3 => R3,
        R4 => R4, 
        R5 => R5, 
        R6 => R6,
        R7 => R7
        );
    b1disp : B1dispformatter port map ( -- performs *2 and sign extend for BRR
        disp1 => disp1_sig,
        disp1formatted => disp1formatted_sig
    );
    b2disp : B2dispformatter port map ( -- performs *2 and sign extend for BR
        disps => disps_sig,
        dispsformatted => dispsformatted_sig
    );
    PC_incr : FullAdder_16bit port map ( -- adder so BR SUB stores PC+2 instead of PC
        A => PC,
        B => X"0002", -- add -
        Cin => '0',
        Sum => PC_incr_sig
    );
    B_adder : FullAdder_16bit port map ( -- adder used to compute branch address
        A => BR_operand1,
        B => BR_operand2,
        Cin => '0',
        Sum => BR_Adder_sig
    );
    
    -- Decode Output Signal Assignment
    opCode <= ID_IR_in(15 downto 9);
    -- Register Data and Forwarding Signals
    RA_data <= RA_data_sig_FW;
    RB_data <= RB_data_sig_FW; 
    RA_addr <= RA_addr_sig;
    RB_addr <= RB_addr_sig;           
    -- Branching signal Assignment
    BR_sub_PC <= PC_incr_sig; 
    -- Branch Formatting
    disp1_sig <= ID_IR_in (8 downto 0);
    disps_sig <= ID_IR_in (5 downto 0);
    -- Immediate Value
    L_imm    <= ID_IR_in (7 downto 0);
    
    decode_process : process (ID_Reset, opCode, ID_IR_in, RA_data_sig_FW, PC_incr_sig, disp1formatted_sig, BR_Adder_sig, dispsformatted_sig, BR_operand1, BR_operand2)
    begin
        if ID_Reset = '1' then
            ALU_op         <= (others => '0');
            shiftAmt       <= (others => '0');
            RA_Addr_sig    <= (others => '0');
            RB_Addr_sig    <= (others => '0');
            RW_addr        <= (others => '0');
            RW_En          <= '0';
            IN_En          <= '0';
            port_Out       <= (others => '0');
            BR_En          <= '0';
            BR_Op          <= "00";
            BR_operand1    <= (others => '0');
            BR_operand2    <= (others => '0');
            BR_addr        <= (others => '0');
            L_op           <= (others => '0');       
        else
           case opcode is
                when "0000000" =>
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    IN_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others => '0');
                    BR_operand2    <= (others => '0');
                    BR_addr        <= (others => '0');
                    L_op           <= (others => '0');
                when "0000001" | "0000010" | "0000011" | "0000100"  => -- ADD, SUB, MULT, NAND (A1)
                    ALU_op         <= ID_IR_in (11 downto 9);
                    shiftAmt       <= (others => '0');
                    RA_addr_sig    <= ID_IR_in (5 downto 3);
                    RB_addr_sig    <= ID_IR_in (2 downto 0);
                    RW_addr        <= ID_IR_in (8 downto 6);
                    RW_En          <= '1';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others => '0');
                    BR_operand2    <= (others => '0');
                    BR_addr        <= (others => '0');
                    L_op           <= (others => '0');                    
                when "0000101" | "0000110" => -- SHL, SHR
                    ALU_op         <= ID_IR_in (11 downto 9);
                    shiftAmt       <= ID_IR_in (3 downto 0);
                    RA_addr_sig    <= ID_IR_in (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_addr        <= ID_IR_in (8 downto 6);
                    RW_En          <= '1';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00"; 
                    BR_operand1    <= (others => '0');
                    BR_operand2    <= (others => '0');
                    BR_addr        <= (others => '0');
                    L_op           <= (others => '0');  
                when "0000111" => -- Test
                    ALU_op         <= ID_IR_in (11 downto 9);
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others => '0');
                    BR_operand2    <= (others => '0');
                    BR_addr        <= (others => '0');
                    L_op           <= (others => '0');  
                when "0100000" => -- Out
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');   
                    RA_addr_sig    <= ID_IR_in (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_Addr        <= (others => '0');
                    RW_En          <= '0'; 
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others => '0');
                    BR_operand2    <= (others => '0');
                    BR_addr        <= (others => '0');                  
                    port_Out       <= RA_data_sig_FW;
                    L_op           <= (others => '0');
                when "0100001" => --In
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');   
                    RA_addr_sig    <= (others => '0');
                    RB_addr_sig    <= (others => '0');
                    RW_Addr        <= ID_IR_in (8 downto 6);
                    RW_En          <= '1'; 
                    IN_En          <= '1';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others => '0');
                    BR_operand2    <= (others => '0');
                    BR_addr        <= (others => '0');
                    L_op           <= (others => '0'); 
                when "1000000" => -- BRR
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    IN_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "00";
                    BR_operand1    <= PC;
                    BR_operand2    <= disp1formatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000001" => -- BRR.N
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';                   
                    BR_En          <= '1';
                    BR_Op          <= "10";
                    BR_operand1    <= PC;
                    BR_operand2    <= disp1formatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000010" => -- BRR.Z
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "01";
                    BR_operand1    <= PC;
                    BR_operand2    <= disp1formatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000011" => -- BR
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "00";
                    BR_operand1    <= RA_data_sig_FW;
                    BR_operand2    <= dispsformatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000100" => -- BR.N
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "10";
                    BR_operand1    <= RA_data_sig_FW;
                    BR_operand2    <= dispsformatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000101" => -- BR.Z
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "01";
                    BR_operand1    <= RA_data_sig_FW;
                    BR_operand2    <= dispsformatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000110" => -- BR.SUB
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= "111";
                    RW_En          <= '1';
                    In_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "11";
                    BR_operand1    <= RA_data_sig_FW;
                    BR_operand2    <= dispsformatted_sig;
                    BR_addr        <= BR_Adder_sig;
                    L_op           <= (others => '0');
                when "1000111" => --RETURN
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= "111";
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '1';
                    BR_Op          <= "00";
                    BR_operand1    <= (others=>'0');
                    BR_operand2    <= (others=>'0');
                    BR_addr        <= RA_data_sig_FW;
                    L_op           <= (others => '0');
                when "0010000" => -- LOAD
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (5 downto 3);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= ID_IR_in (8 downto 6);
                    RW_En          <= '1';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others=>'0');
                    BR_operand2    <= (others=>'0');
                    BR_addr        <= (others=>'0');
                    L_op           <= "100";      
                when "0010001" => -- STORE
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (8 downto 6);
                    RB_Addr_sig    <= ID_IR_in (5 downto 3);
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others=>'0');
                    BR_operand2    <= (others=>'0');
                    BR_addr        <= (others=>'0');
                    L_op           <= "101";
                when "0010010" => -- LOADIMM
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= "111";
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= "111";
                    RW_En          <= '1';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others=>'0');
                    BR_operand2    <= (others=>'0');
                    BR_addr        <= (others=>'0');
                    L_op           <= "01" & ID_IR_in(8);
                when "0010011" => -- MOV
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= ID_IR_in (5 downto 3);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= ID_IR_in (8 downto 6);
                    RW_En          <= '1';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others=>'0');
                    BR_operand2    <= (others=>'0');
                    BR_addr        <= (others=>'0');
                    L_op           <= "001";  
                when others => 
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    BR_En          <= '0';
                    BR_Op          <= "00";
                    BR_operand1    <= (others=>'0');
                    BR_operand2    <= (others=>'0');
                    BR_addr        <= (others=>'0');
                    L_op           <= (others => '0');           
                end case;
        end if;                           
    end process decode_process;
    forwarding_process : process(FW_A_En, FW_B_En, FW_A_data, FW_B_data, RA_data_sig, RB_data_sig)
    begin
        if FW_A_En = '1' then -- forwarding for RA
            RA_data_sig_FW <= FW_A_data;
        else
            RA_data_sig_FW <= RA_data_sig;
        end if;
        if FW_B_En = '1' then -- forwarding for RB
            RB_data_sig_FW <= FW_B_data;
        else
            RB_data_sig_FW <= RB_data_sig;
        end if;
    end process forwarding_process;
end behavioral;
