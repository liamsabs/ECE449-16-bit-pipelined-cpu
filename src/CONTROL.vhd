library ieee;
use ieee.std_logic_1164.all;

-- flushing first 2 latches
-- adding forwarding logic

entity CONTROL is 
    port(
        Clk, Rst       : in std_logic;
        IR_In_from_TB  : in std_logic_vector (15 downto 0);
        Data_In        : in std_logic_vector (15 downto 0);
        Data_Out       : out std_logic_vector (15 downto 0);
        Reset_button   : in std_logic
    );
end CONTROL;

architecture behavioral of CONTROL is
    component FETCH is
        port(
            Reset           : in std_logic;
            PC_reset        : in std_logic;                         -- Resets PC to [val?]
            Br_addr         : in std_logic_vector(15 downto 0);     -- Branch address
            Br_CTRL         : in std_logic;                         -- input signal for PC MUX
            IR_in           : in std_logic_vector(15 downto 0);     -- hardcoded Instruction in Value for Format A Test
            IR_out          : out std_logic_vector(15 downto 0);    -- recieved from memory then outputted to IF/ID register
            PC_out          : out std_logic_vector(15 downto 0);    -- PC for decoder
        );
    end component;
    component DECODE is
        port (
            Clk            : in std_logic; -- Clock Input
            Reset          : in std_logic; -- Reset
            IR_in          : in std_logic_vector (15 downto 0);     -- Instruction to Decode
            -- WriteBack
            WB_data        : in std_logic_vector (15 downto 0);     -- Write Back data
            WB_addr        : in std_logic_vector (2 downto 0);      -- Write Back address 
            WB_En          : in std_logic;                          -- Write Back Enable
            -- Execute and Register Write Operands
            ALU_op         : out std_logic_vector (2 downto 0);     -- ALU operands
            shiftAmt       : out std_logic_vector (3 downto 0);     -- shift amount
            RA_data        : out std_logic_vector (15 downto 0);    -- Register A data
            RB_data        : out std_logic_vector (15 downto 0);    -- Register B data
            RW_addr        : out std_logic_vector (2 downto 0);     -- Register Write Address
            RW_En          : out std_logic;                         -- Register Write Enable
            -- Branching
            PC             : in std_logic_vector (15 downto 0);     -- recieved PC+2 (needs to be decremented for branching)
            B_addr         : out std_logic_vector (15 downto 0);    -- branch address to give to FETCH
            B_En           : out std_logic; -- Indicates that the instruction is a branch (still need to check if we can branch in EX based on B_Op)
            B_op           : out std_logic_vector (1 downto 0);     -- branch condition
            -- For BR.SUB
            BR_sub_PC      : out std_logic_vector (15 downto 0);    -- PC+2 which is written to R7 during BR_sub 
            -- I/0 Handling
            IN_En          : out std_logic;                         -- enables input to be read in execute stage 
            port_Out       : out std_logic_vector (15 downto 0);    -- output from OUT instruction
            -- Forwarding
            RA_addr        : out std_logic_vector (2 downto 0);     -- address of RA used for forwarding
            FW_A_data      : in std_logic_vector (15 downto 0);     -- input data from forwarding for RA
            FW_A_En        : in std_logic;                          -- input to be used to determine if forwarding RA
            RB_addr        : out std_logic_vector (2 downto 0);     -- address of RB used for forwarding
            FW_B_data      : in std_logic_vector (15 downto 0);     -- input data from forwarding for RA
            FW_B_En        : in std_logic                           -- input to be used to determine if forwarding RB
    );
    end component;
    component EXECUTE is
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
            Moverflow      : out std_logic;                             -- Multiplcation overflow flag output for controller
            Z_flag         : out std_logic;                             -- Zero flag used for testing
            N_flag         : out std_logic;                             -- Negative flag used for testing
            -- Branching inputs
            BR_En          : in std_logic;
            BR_op          : in std_logic_vector(1 downto 0);       
            BR_CTRL        : out std_logic;
            BR_addr_in     : in std_logic_vector(15 downto 0);
            BR_addr_out    : out std_logic_vector(15 downto 0);
            BR_sub_PC      : in std_logic_vector(15 downto 0);
            -- I/O Handling
            IN_data        : in std_logic_vector (15 downto 0);
            IN_En          : in std_logic

        );
    end component;
   component WRITEBACK is
        port (
            Clk, Reset  : in std_logic;
            W_data      : in std_logic_vector (15 downto 0);
            W_addr      : in std_logic_vector (2 downto 0);
            W_En        : in std_logic;
            WB_data     : out std_logic_vector (15 downto 0);
            WB_addr     : out std_logic_vector (2 downto 0);
            WB_En       : out std_logic  
        );
    end component;
    
        -- Basic Signals
        signal Clk_sig              : std_logic := '0';
        signal Rst_sig              : std_logic;   
        signal Input_sig            : std_logic_vector (15 downto 0);
        signal Output_sig           : std_logic_vector (15 downto 0);
        
        -- IF/ID
        signal Instruction_in_sig   : std_logic_vector (15 downto 0);
        signal IF_ID_IR             : std_logic_vector (15 downto 0);
        signal IF_ID_PC             : std_logic_vector (15 downto 0);
        
        -- ID/EX
        signal ID_EX_ALU_op     : std_logic_vector (2 downto 0);
        signal ID_EX_Shiftamt   : std_logic_vector (3 downto 0);
        signal ID_EX_RA_data    : std_logic_vector (15 downto 0);
        signal ID_EX_RB_data    : std_logic_vector (15 downto 0);
        signal ID_EX_RW_addr    : std_logic_vector (2 downto 0);
        signal ID_EX_RW_En      : std_logic;
        signal ID_EX_IN_En      : std_logic;
        signal ID_EX_Out        : std_logic_vector (15 downto 0);
        signal ID_EX_br_En      : std_logic;
        signal ID_EX_br_OP      : std_logic_vector (1 downto 0);
        signal ID_EX_br_addr    : std_logic_vector (15 downto 0);
        signal ID_EX_br_sub_PC  : std_logic_vector (15 downto 0);
    
        -- EX/WB
        signal EX_WB_RW_data    : std_logic_vector (15 downto 0);
        signal EX_WB_RW_addr    : std_logic_vector (2 downto 0);
        signal EX_WB_RW_En      : std_logic;
        signal Z_flag, N_flag   : std_logic;
        signal Moverflow_Flag   : std_logic;
        
        -- WB/ID
        signal WB_ID_data       : std_logic_vector (15 downto 0);
        signal WB_ID_addr       : std_logic_vector (2 downto 0);
        signal WB_ID_En         : std_logic;   
        
        -- Forwarding
        signal ID_A_addr        : std_logic_vector (15 downto 0);
        signal FW_A_data        : std_logic_vector (15 downto 0);
        signal FW_A_En          : std_logic;
        signal ID_B_addr        : std_logic_vector (15 downto 0);
        signal FW_B_data        : std_logic_vector (15 downto 0);
        signal FW_B_En          : std_logic;

        -- Write-back
        signal ID_WB_data       : std_logic_vector (15 downto 0);
        signal ID_WB_addr       : std_logic_vector (2 downto 0);
        signal ID_WB_En         : std_logic;

        -- Branching
        signal EX_IF_br_addr    : std_logic_vector (15 downto 0);
        signal EX_IF_br_CTRL    : std_logic;
        
begin

    process(Clk)
    begin
        Clk_sig <= Clk;
        Rst_sig <= Rst;
        Instruction_in_sig <= IR_In_from_TB;
        
        FetchStage : FETCH port map (
            Reset    => Rst_sig,
            PC_reset => Reset_button,
            BR_addr  => EX_IF_br_addr,
            BR_CTRL  => EX_IF_br_CTRL,
            IR_out   => IF_ID_IR,       
            IR_in    => Instruction_in_sig,
            PC_out   => IF_ID_PC          
        );
        
        Decoder : DECODE port map (
            Clk       => Clk_sig, 
            Reset     => Rst_sig,     
            instr_In  => IF_ID_IR,
            WB_data   => ID_WB_data,
            WB_addr   => ID_WB_addr,
            WB_En     => ID_WB_En,
            ALU_op    => ID_EX_ALU_op,         
            shiftAmt  => ID_EX_Shiftamt,       
            RA_data   => ID_EX_RA_data,         
            RB_data   => ID_EX_RB_data,         
            RW_addr   => ID_EX_RW_addr,        
            RW_En     => ID_EX_RW_En,
            PC        => ID_ID_PC,
            B_addr    => ID_EX_br_addr,
            B_En      => ID_EX_br_En,
            B_op      => ID_EX_br_OP,
            Br_sub_PC => ID_EX_br_sub_PC,
            IN_En     => ID_EX_IN_En,          
            port_Out  => Output_sig,         
            RA_addr   => ID_A_addr,
            FW_A_data => FW_A_data,
            FW_A_En   => FW_A_En,
            RB_addr   => ID_B_addr,
            FW_B_data => FW_B_data,
            FW_B_En   => FW_B_En  
        );
        
        ExecuteStage : EXECUTE port map (
            ALU_op      => ID_EX_ALU_op,     
            shiftAmt    => ID_EX_Shiftamt,    
            RA_data     => ID_EX_RA_data,   
            RB_data     => ID_EX_RB_data,
            RW_addr_in  => ID_EX_RW_addr,
            RW_En_in    => ID_EX_RW_En,
            RW_addr_out => EX_WB_RW_addr,
            RW_En_out   => EX_WB_RW_En,        
            RW_data_out => EX_WB_RW_data, 
            Moverflow   => Moverflow_flag
            Z_flag      => Z_flag,          
            N_flag      => N_flag,
            BR_En       => ID_EX_br_En,
            BR_op       => ID_EX_br_OP,
            BR_CTRL     => EX_IF_br_CTRL
            BR_addr_in  => ID_EX_br_addr
            BR_addr_out => EX_IF_br_addr,
            BR_sub_PC   => ID_EX_br_sub_PC,
            IN_data     => Input_sig,      
            IN_En       => ID_EX_IN_En     
        );
        
        WriteBackStage: WRITEBACK port map (
            Clk       => Clk_sig, 
            Reset     => Rst_sig,
            W_data    => EX_WB_RW_data, 
            W_addr    => EX_WB_RW_addr,         
            W_En      => EX_WB_RW_En,            
            WB_data   => WB_ID_data,   
            WB_addr   => WB_ID_addr,  
            WB_En     => WB_ID_En      
        );
        
        -- Forwarding logic
        if EX_WB_RW_addr = ID_A_addr
            FW_A_data <= EX_WB_RW_addr;
        elsif EX_WB_RW_addr = ID_B_addr
            FW_B_data <= EX_WB_RW_addr;
        elsif WB_ID_addr = ID_A_addr
            FW_A_data <= WB_ID_addr;
        elsif WB_ID_addr = ID_B_addr
            FW_B_data <= WB_ID_addr;
        end if;

    end process;      
        
end behavioral;
