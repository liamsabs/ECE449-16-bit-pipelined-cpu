library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- finish branch_sub logic

entity EXECUTE is
    port (
         -- ALU Args
         ALU_op         : in std_logic_vector (2 downto 0);          -- OPCODE for ALU
         shiftAmt       : in std_logic_vector (3 downto 0);          -- Amount to shift by
         RA_data        : in std_logic_vector (15 downto 0);         -- Data for ALU A
         RB_data        : in std_logic_vector (15 downto 0);         -- Data for ALU B
         -- Register Write Data to propogate through
         RW_addr_in     : in std_logic_vector (2 downto 0);          -- IN Addr for WB stage
         RW_En_in       : in std_logic;                              -- EN for WB stage
         RW_addr_out    : out std_logic_vector (2 downto 0);         -- OUT Addr for WB stage
         RW_En_out      : out std_logic;                             -- OUT EN for WB stage
         RW_data_out    : out std_logic_vector (15 downto 0);        -- data to be written back
         -- Flags to be set
         Moverflow      : out std_logic; -- Multiplcation overflow flag output for controller
         Z_flag         : out std_logic; -- Zero flag used for testing
         N_flag         : out std_logic; -- Negative flag used for testing
         -- Branching inputs
         BR_En          : in std_logic;
         BR_op          : in std_logic_vector(1 downto 0);       
         BR_CTRL        : out std_logic;
         BR_addr_in     : in std_logic_vector(15 downto 0);
         BR_addr_out    : out std_logic_vector(15 downto 0);
         BR_sub_PC      : in std_logic_vector(15 downto 0);
         -- I/O Handling
         IN_data        : in std_logic_vector (15 downto 0);
         IN_En          : in std_logic;
         -- Memory
         L_op_in      : in std_logic_vector (2 downto 0);
         L_op_out     : out std_logic_vector (2 downto 0);
         L_imm        : in std_logic_vector (7 downto 0);
         RB_data_out    : out std_logic_vector (15 downto 0)

     );
end EXECUTE;

architecture Behavioral of EXECUTE is

    component alu is
        port ( 
            Input1          : in std_logic_vector(15 downto 0);     -- Input from RA
            Input2          : in std_logic_vector(15 downto 0);     -- Input from RB
            shiftAmt        : in std_logic_vector(3 downto 0);      -- Shift amount specified in A3 
            ALU_op          : in std_logic_vector(2 downto 0);      -- ALU op code from decode stage
            Result          : out std_logic_vector(15 downto 0);    -- ALU Result Output
            Resultupper    : out std_logic_vector(15 downto 0)
        );
    end component;

    signal ALU_Result : std_logic_vector(15 downto 0);              -- ALU Result
    signal ALU_Result_upper : std_logic_vector(15 downto 0);        -- ALU upper word for multiplication
    signal RW_addr_sig : std_logic_vector (2 downto 0);             -- Address for WB
    signal RW_En_sig : std_logic;                                   -- Enable for WB
    signal Z_sig : std_logic; -- Z flag visible from within execute for conditional branching
    signal N_sig : std_logic; -- N flag visible from within execute for conditional branching

    begin
        -- Instantiate ALU
        ALUnit : alu port map(
            Input1 => RA_data,
            Input2 => RB_data,
            shiftAmt => shiftAmt,
            ALU_op => ALU_op,
            Result => ALU_Result,
            Resultupper => ALU_Result_upper
        );
        -- Propogating Through RW data and En for WB
        RW_addr_out <= RW_addr_in; -- propogate Write address
        RW_En_out   <= RW_En_in; -- propogate write enable
        BR_addr_out <= BR_addr_in;
        
        -- Routing Flag Signals
        Z_flag    <= Z_sig;
        N_flag    <= N_sig;  
        
        -- Memory Signals
        L_op_out <= L_op_in;
        RB_data_out <= RB_data;
               
        -- Setting Flags
        process(ALU_op, Z_sig, N_sig, RA_data, ALU_Result_upper, BR_En, BR_op, BR_sub_PC, IN_En, In_data, ALU_Result, L_op_in, L_imm)
        begin 
            case BR_en is
                when '0' =>
                    -- Setting Flags
                    if ALU_op = "111" then
                        -- Zero Flag
                        if RA_data = X"0000" then 
                            Z_sig <= '1';
                        else 
                            Z_sig <= '0';
                        end if;
                        -- Negative Flag
                        if RA_data(15) = '1' then 
                            N_sig <= '1';
                        else 
                            N_sig <= '0';
                        end if;  
                    elsif ALU_op = "011" then
                        if alu_result_upper = X"0000" or alu_result_upper = X"FFFF" then
                            Moverflow <= '1';
                        else 
                            Moverflow <= '0';
                        end if;
                    end if;
                    BR_CTRL <= '0'; -- set to no branching by default    
                when '1' => -- branch instruction, check branch opcode 
                    case BR_op is
                        when "00" | "11" =>    -- branch unconditionally (BR, BRR, B.SUB)
                            BR_CTRL <= '1';
                        when "01" =>    -- branch if zero
                            if Z_sig = '1' then 
                                BR_CTRL <= '1';
                             else 
                                BR_CTRL <= '0';
                             end if;
                        when "10" =>    -- branch if negative
                            if N_sig = '1' then 
                                BR_CTRL <= '1';
                            else 
                                BR_CTRL <= '0';
                            end if;
                    end case;
            end case;
            
            -- WB/Mem Data choice
            if BR_op = "11" then -- BR_SUB
                RW_data_out <= BR_sub_PC;
            elsif IN_En = '1' then -- In Instruction
                RW_data_out <= IN_data;
            else 
                RW_data_out <= ALU_Result;
            end if;
            
            if L_op_in(2) = '1' then                  -- LOAD / STORE
                RW_data_out <= RA_data;
            elsif L_op_in(2 downto 1) = "01" then     -- LOAD IMM
                if L_op_in(0) = '0' then
                    RW_data_out <= RA_data(15 downto 8) & L_imm;
                else
                    RW_data_out <= L_imm & RA_data(7 downto 0);
                end if;
            elsif L_op_in = "001" then
                RW_data_out <= RA_data;                 -- MOV
            end if;
            
        end process;
end Behavioral;
