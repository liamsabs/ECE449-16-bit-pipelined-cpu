library ieee;
use ieee.std_logic_1164.all;

entity DECODE is
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
        B_En           : out std_logic; -- branch enable given to fetch     
        Z_flag, N_flag : out std_logic; -- zero and negative flags, outputted for debugging
        -- For BR.SUB
        BR_sub_En      : out std_logic; -- BR sub EN, this means we pass PC+2 to be written to R7
        BR_sub_PC      : out std_logic_vector (15 downto 0); -- PC+2 which is written to R7 
        -- I/0 Handling
        IN_En          : out std_logic; -- enables input to be read in execute stage 
        port_Out       : out std_logic_vector (15 downto 0) -- output from OUT instruction
    );
end DECODE;

architecture behavioral of DECODE is

-- Componenents
component register_file is
    port (
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
signal opcode             :  std_logic_vector (6 downto 0);
signal RA_data_sig        :  std_logic_vector (15 downto 0);
signal RA_addr_sig        :  std_logic_vector (2 downto 0);
signal RB_data_sig        :  std_logic_vector (15 downto 0);
signal RB_addr_sig        :  std_logic_vector (2 downto 0);
-- Test Signals
signal Z_flag_sig         : std_logic;
signal N_flag_sig         : std_logic;
-- Branching Signals
signal PC_sig             : std_logic_vector (15 downto 0);
signal PC_dec_sig         : std_logic_vector (15 downto 0);
signal disp1_sig          : std_logic_vector (8 downto 0);
signal disp1formatted_sig : std_logic_vector (15 downto 0);
signal disps_sig          : std_logic_vector (5 downto 0);
signal dispsformatted_sig : std_logic_vector (15 downto 0);
signal B_operand1         :  std_logic_vector (15 downto 0);
signal B_operand2         :  std_logic_vector (15 downto 0);
signal B_En_sig           : std_logic; 
signal B_addr_sig         : std_logic_vector (15 downto 0);
signal B_adder_sig        : std_logic_vector (15 downto 0);
-- Writeback Signals
signal WB_addr_sig        :  std_logic_vector (2 downto 0);
signal WB_data_sig        :  std_logic_vector (15 downto 0);
signal WB_En_sig          :  std_logic;

begin

    registerfile : register_file port map( -- instantiating register file
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
    b1disp : B1dispformatter port map ( -- performs *2 and sign extend for BRR
        disp1 => disp1_sig,
        disp1formatted => disp1formatted_sig
    );
    b2disp : B2dispformatter port map ( -- performs *2 and sign extend for BR
        disps => disps_sig,
        dispsformatted => dispsformatted_sig
    );
    PC_dec : FullAdder_16bit port map ( -- adder used to decrement PC when used for branching
        A => PC_sig,
        B => X"FFFE", -- add -2 so that PC instead of PC+2
        Cin => '0',
        Sum => PC_dec_sig
    );
    B_adder : FullAdder_16bit port map ( -- adder used to compute branch address
        A => B_operand1,
        B => B_operand2,
        Cin => '0',
        Sum => B_adder_sig
    );
    
   -- Decode Output Signal Assignment
    opCode <= IR_in(15 downto 9);    
    RA_data <= RA_data_sig;       
    RB_data <= RB_data_sig;         
    -- Test Signals
    Z_flag <= Z_flag_sig;
    N_flag <= N_flag_sig;
    -- Branching signal Assignment
    PC_sig <= PC;
    BR_sub_PC <= PC_sig;
    -- Branch Formatting
    disp1_sig <= IR_in (8 downto 0);
    disps_sig <= IR_in (5 downto 0);
    -- Write Back Signal Assignment
    WB_addr_sig <= WB_addr;
    WB_data_sig <= WB_data;
    WB_En_sig   <= WB_En;
    
    decode_process : process (Clk, Reset, opCode, IR_in, RA_data_sig, PC_dec_sig, disp1formatted_sig, B_adder_sig, N_flag_sig, Z_flag_sig, dispsformatted_sig, B_operand1, B_operand2)
    begin
        if Reset = '1' then
            ALU_op         <= (others => '0');
            shiftAmt       <= (others => '0');
            RA_Addr_sig    <= (others => '0');
            RB_Addr_sig    <= (others => '0');
            RW_addr        <= (others => '0');
            RW_En          <= '0';
            IN_En          <= '0';
            port_Out       <= (others => '0');
            Z_flag_sig     <= '0';
            N_flag_sig     <= '0';
            B_En           <= '0'; 
            BR_sub_En      <= '0';       
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
                    B_En           <= '0';
                    BR_sub_En      <= '0';
                when "0000001" | "0000010" | "0000011" | "0000100"  => --ADD, SUB, MULT, NAND (A1)
                    ALU_op         <= IR_in (11 downto 9);
                    shiftAmt       <= (others => '0');
                    RA_addr_sig    <= IR_in (5 downto 3);
                    RB_addr_sig    <= IR_in (2 downto 0);
                    RW_addr        <= IR_in (8 downto 6);
                    RW_En          <= '1';
                    In_En          <= '0';
                    B_En           <= '0';
                    BR_sub_En      <= '0';                    
                when "0000101" | "0000110" => -- SHL, SHR
                    ALU_op         <= IR_in (11 downto 9);
                    shiftAmt       <= IR_in (3 downto 0);
                    RA_addr_sig    <= IR_in (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_addr        <= IR_in (8 downto 6);
                    RW_En          <= '1';
                    In_En          <= '0';
                    B_En           <= '0';
                    BR_sub_En      <= '0';
                when "0000111" => -- Test
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    B_En           <= '0';
                    BR_sub_En      <= '0';
                    if rising_edge (Clk) then
                        if RA_data_sig = X"0000" then
                                   Z_flag_sig <= '1';
                        else
                                   Z_flag_sig <= '0';
                        end if;
                        if RA_data_sig(15) = '1' then
                                   N_flag_sig <= '1';
                        else
                                   N_flag_sig <= '0';
                        end if;
                    end if;
                when "0100000" => -- Out
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');   
                    RA_addr_sig    <= IR_in (8 downto 6);
                    RB_addr_sig    <= (others => '0');
                    RW_Addr        <= (others => '0');
                    RW_En          <= '0'; 
                    In_En          <= '0';
                    B_En           <= '0';
                    BR_sub_En      <= '0';                  
                    port_Out       <= RA_data_sig;
                when "0100001" => --In
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');   
                    RA_addr_sig    <= (others => '0');
                    RB_addr_sig    <= (others => '0');
                    RW_Addr        <= IR_in (8 downto 6);
                    RW_En          <= '1'; 
                    IN_En          <= '1';
                    B_En           <= '0';
                    BR_sub_En      <= '0';
                when "1000000" => -- BRR
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    IN_En          <= '0';
                    B_En           <= '1';
                    BR_sub_En      <= '0';
                    B_operand1     <= PC_dec_sig;
                    B_operand2     <= disp1formatted_sig;
                    B_addr         <= B_adder_sig;
                when "1000001" => -- BRR.N
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    if N_flag_sig = '1' then
                        B_En <= '1';
                    else
                        B_En <= '0';
                    end if;
                    BR_sub_En      <= '0';
                    B_operand1     <= PC_dec_sig;
                    B_operand2     <= disp1formatted_sig;
                    B_addr_sig     <= B_adder_sig;
                when "1000010" => -- BRR.Z
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    if Z_flag_sig = '1' then
                        B_En <= '1';
                    else
                        B_En <= '0';
                    end if;
                    BR_sub_En      <= '0';
                    B_operand1     <= PC_dec_sig;
                    B_operand2     <= disp1formatted_sig;
                    B_addr_sig     <= B_adder_sig;
                when "1000011" => -- BR
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    B_En           <= '1';
                    BR_sub_En      <= '0';
                    B_operand1     <= RA_data_sig;
                    B_operand2     <= dispsformatted_sig;
                    B_addr_sig     <= B_adder_sig;
                when "1000100" => -- BR.N
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    if N_flag_sig = '1' then
                        B_En <= '1';
                    else
                        B_En <= '0';
                    end if;
                    BR_sub_En      <= '0';
                    B_operand1     <= RA_data_sig;
                    B_operand2     <= dispsformatted_sig;
                    B_addr_sig     <= B_adder_sig;
                when "1000101" => -- BR.Z
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    if Z_flag_sig = '1' then
                        B_En <= '1';
                    else
                        B_En <= '0';
                    end if;
                    BR_sub_En      <= '0';
                    B_operand1     <= RA_data_sig;
                    B_operand2     <= dispsformatted_sig;
                    B_addr_sig     <= B_adder_sig;
                when "1000110" => -- BR.SUB
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= IR_in (8 downto 6);
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= "111";
                    RW_En          <= '1';
                    In_En          <= '0';
                    B_En           <= '1';
                    BR_sub_En      <= '1';
                    B_operand1     <= RA_data_sig;
                    B_operand2     <= dispsformatted_sig;
                    B_addr_sig     <= B_adder_sig;
                when "1000111" => --RETURN
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= "111";
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    B_En           <= '1';
                    BR_sub_En      <= '0';
                    B_addr_sig     <= RA_data_sig;
                when others =>
                    ALU_op         <= (others => '0');
                    shiftAmt       <= (others => '0');
                    RA_Addr_sig    <= (others => '0');
                    RB_Addr_sig    <= (others => '0');
                    RW_addr        <= (others => '0');
                    RW_En          <= '0';
                    In_En          <= '0';
                    B_En           <= '0';
                    BR_sub_En      <= '0';            
                end case;                   
        end if;
    end process decode_process;
end behavioral;
