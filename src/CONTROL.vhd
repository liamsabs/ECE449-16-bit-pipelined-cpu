library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Library xpm;
use xpm.vcomponents.all;

entity CONTROL is 
    port(
        Clk             : in std_logic;
        Rst             : in std_logic;
        --IR_In_from_TB   : in std_logic_vector (15 downto 0);
        Data_In       : in std_logic_vector (15 downto 0);
        Data_Out      : out std_logic_vector (15 downto 0);
        Reset_button    : in std_logic
    );
end CONTROL;

architecture behavioral of CONTROL is
    -- ROM Component
    component ROM is
        port(
            Reset     : in std_logic;  
            Clk       : in std_logic;
            -- Memory Interface Signals       
            addr_A    : in std_logic_vector (5 downto 0);
            Dout_A    : out std_logic_vector (15 downto 0)
        );
    end component;
    -- RAM Component
    component RAM is
        port(
            Reset     : in std_logic;  
            Clk       : in std_logic;
            -- Port A       
            addr_A    : in std_logic_vector(8 downto 0);
            Dout_A    : out std_logic_vector(15 downto 0);
            Din_A     : in std_logic_vector(15 downto 0);
            W_En_A    : in std_logic_vector(0 downto 0); 
            -- Port B     
            addr_B    : in std_logic_vector(8 downto 0);
            Dout_B    : out std_logic_vector(15 downto 0)
        );
    end component;
    -- FETCH Component
    component FETCH is
        port(
            Clk            : in std_logic;
            Reset_Ex       : in std_logic;
            Reset_Load     : in std_logic;                         -- Resets PC to [val?]
            Br_addr        : in std_logic_vector(15 downto 0);     -- Branch address
            Br_CTRL        : in std_logic;                         -- input signal for PC MUX
            Test_En        : in std_logic;                         -- used when we are testing in the Testbench [TO BE REMOVED]
            IR_in          : in std_logic_vector(15 downto 0);     -- hardcoded Instruction in Value for behavioral sim [TO BE REMOVED]
            IR_out         : out std_logic_vector(15 downto 0);    -- recieved from memory then outputted to IF/ID register
            PC_out         : out std_logic_vector(15 downto 0);     -- PC for decoder
            NPC_out        : out std_logic_vector (15 downto 0);
            IR_ROM         : in std_logic_vector (15 downto 0);
            IR_RAM         : in std_logic_vector (15 downto 0)
            
        );
    end component;
    -- Decode Component
    component DECODE is
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
            L_imm          : out std_logic_vector (7 downto 0) -- immediate used for Load Imm
        );
    end component;
    -- Decode Component
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
    end component;
    -- Decode Component
    component WRITEBACK is
        port (
            WB_Reset    : in std_logic;
            W_data      : in std_logic_vector (15 downto 0);
            MEM_data    : in std_logic_vector (15 downto 0);
            W_addr      : in std_logic_vector (2 downto 0);
            W_En        : in std_logic;
            L_op        : in std_logic_vector (2 downto 0);
            WB_data     : out std_logic_vector (15 downto 0);
            WB_addr     : out std_logic_vector (2 downto 0);
            WB_En       : out std_logic  
        );
     end component;
     
        -- Basic Signals
        signal Reset                 : std_logic;
        signal Reset_Ex              : std_logic;
        signal Reset_Load            : std_logic;
        signal Output_sig            : std_logic_vector (15 downto 0);
        signal Instruction_in_sig    : std_logic_vector (15 downto 0);
        signal Test_En               : std_logic; -- used for testing device
        signal PC_sig                : std_logic_vector (15 downto 0); -- used to keep track of PC for testing
        
        -- Tracking opcode and PC
        signal IF_OP_sig             : std_logic_vector (15 downto 0); -- tracking OPCODE for debugging
        signal IF_PC_sig             : std_logic_vector (15 downto 0); -- tracking PC for debugging
        signal ID_OP_sig             : std_logic_vector (15 downto 0); -- tracking OPCODE for debugging
        signal ID_PC_sig             : std_logic_vector (15 downto 0); -- tracking PC for debugging
        signal EX_OP_sig             : std_logic_vector (15 downto 0); -- tracking OPCODE for debugging
        signal EX_PC_sig             : std_logic_vector (15 downto 0); -- tracking PC for debugging
        signal MEM_OP_sig            : std_logic_vector (15 downto 0); -- tracking OPCODE for debugging
        signal MEM_PC_sig            : std_logic_vector (15 downto 0); -- tracking PC for debugging
        signal WB_OP_sig             : std_logic_vector (15 downto 0); -- tracking OPCODE for debugging
        signal WB_PC_sig             : std_logic_vector (15 downto 0); -- tracking PC for debugging
        
        -- ROM
        signal ROM_addra             : std_logic_vector (5 downto 0);
        signal ROM_douta             : std_logic_vector (15 downto 0);
        
        -- RAM
        signal RAM_addra             : std_logic_vector (8 downto 0);
        signal RAM_addrb             : std_logic_vector (8 downto 0);
        signal RAM_dina              : std_logic_vector (15 downto 0);
        signal RAM_douta             : std_logic_vector (15 downto 0);
        signal RAM_doutb             : std_logic_vector (15 downto 0);
        signal RAM_wea               : std_logic_vector (0 downto 0);
        
        -- IF/ID
        signal IF_ID_IR_In           : std_logic_vector (15 downto 0);
        signal IF_ID_IR_Out          : std_logic_vector (15 downto 0);
        signal IF_ID_PC_In           : std_logic_vector (15 downto 0);
        signal IF_ID_PC_Out          : std_logic_vector (15 downto 0);
    
        -- Decode Signals
        signal ID_Out_sig            : std_logic_vector (15 downto 0); 

        -- ID/EX
        signal ID_EX_ALU_op_In       : std_logic_vector (2 downto 0);
        signal ID_EX_ALU_op_Out      : std_logic_vector (2 downto 0);
        signal ID_EX_Shiftamt_In     : std_logic_vector (3 downto 0);
        signal ID_EX_Shiftamt_Out    : std_logic_vector (3 downto 0);
        signal ID_EX_RA_data_In      : std_logic_vector (15 downto 0);
        signal ID_EX_RA_data_Out     : std_logic_vector (15 downto 0);
        signal ID_EX_RB_data_In      : std_logic_vector (15 downto 0);
        signal ID_EX_RB_data_Out     : std_logic_vector (15 downto 0);
        signal ID_EX_RW_addr_In      : std_logic_vector (2 downto 0);
        signal ID_EX_RW_addr_Out     : std_logic_vector (2 downto 0);
        signal ID_EX_RW_En_In        : std_logic;
        signal ID_EX_RW_En_Out       : std_logic;
        signal ID_EX_IN_En_In        : std_logic;
        signal ID_EX_IN_En_Out       : std_logic;
        signal ID_EX_Out_In          : std_logic_vector (15 downto 0);
        signal ID_EX_Out_Out         : std_logic_vector (15 downto 0);
        signal ID_EX_BR_En_In        : std_logic;
        signal ID_EX_BR_En_Out       : std_logic;
        signal ID_EX_BR_Op_In        : std_logic_vector (1 downto 0);
        signal ID_EX_BR_Op_Out       : std_logic_vector (1 downto 0);
        signal ID_EX_BR_addr_In      : std_logic_vector (15 downto 0);
        signal ID_EX_BR_addr_Out     : std_logic_vector (15 downto 0);
        signal ID_EX_BR_sub_PC_In    : std_logic_vector (15 downto 0);
        signal ID_EX_BR_sub_PC_Out   : std_logic_vector (15 downto 0);
        signal ID_EX_L_op_In         : std_logic_vector (2 downto 0); -- opcode for Load, used by Execute, memory, and writeback
        signal ID_EX_L_op_Out        : std_logic_vector (2 downto 0);
        signal ID_EX_L_imm_In        : std_logic_vector (7 downto 0); -- immediate value which will need processing in execute
        signal ID_EX_L_imm_Out       : std_logic_vector (7 downto 0); 

        -- Execute Signals
        signal IN_data               : std_logic_vector (15 downto 0);
        signal Z_flag, N_flag        : std_logic;
        signal Moverflow_Flag        : std_logic;
    
        -- EX/MEM
        signal EX_MEM_RW_data_In     : std_logic_vector (15 downto 0); -- this is used for format A Register file stuff as well as the address line into memory
        signal EX_MEM_RW_data_Out    : std_logic_vector (15 downto 0);
        signal EX_MEM_RW_addr_In     : std_logic_vector (2 downto 0);
        signal EX_MEM_RW_addr_Out    : std_logic_vector (2 downto 0);
        signal EX_MEM_RW_En_In       : std_logic;
        signal EX_MEM_RW_En_Out      : std_logic;
        signal EX_MEM_BR_CTRL_In     : std_logic;
        signal EX_MEM_BR_CTRL_Out    : std_logic;
        signal EX_MEM_BR_addr_In     : std_logic_vector (15 downto 0);
        signal EX_MEM_BR_addr_Out    : std_logic_vector (15 downto 0);
        signal EX_MEM_MEM_din_In     : std_logic_vector (15 downto 0); -- This is RB_data passed through the execute stage to be used as the data to write to memory
        signal EX_MEM_MEM_din_Out    : std_logic_vector (15 downto 0);
        signal EX_MEM_L_op_In        : std_logic_vector (2 downto 0);
        signal EX_MEM_L_op_Out       : std_logic_vector (2 downto 0);
        
        -- MEM/WB
        signal MEM_WB_RW_data_In     : std_logic_vector (15 downto 0); -- this is data from execute stage
        signal MEM_WB_RW_data_Out    : std_logic_vector (15 downto 0);
        signal MEM_WB_MEM_dout_In    : std_logic_vector (15 downto 0); -- this is data from memory stage
        signal MEM_WB_MEM_dout_Out   : std_logic_vector (15 downto 0);
        signal MEM_WB_RW_addr_In     : std_logic_vector (2 downto 0);
        signal MEM_WB_RW_addr_Out    : std_logic_vector (2 downto 0);
        signal MEM_WB_RW_En_In       : std_logic;
        signal MEM_WB_RW_En_Out      : std_logic;
        signal MEM_WB_L_op_In        : std_logic_vector (2 downto 0);
        signal MEM_WB_L_op_Out       : std_logic_vector (2 downto 0);
        
        -- Forwarding
        signal ID_A_addr             : std_logic_vector (2 downto 0);
        signal FW_A_data             : std_logic_vector (15 downto 0);
        signal FW_A_En               : std_logic;
        signal ID_B_addr             : std_logic_vector (2 downto 0);
        signal FW_B_data             : std_logic_vector (15 downto 0);
        signal FW_B_En               : std_logic;

        -- Write-back
        signal ID_WB_data            : std_logic_vector (15 downto 0);
        signal ID_WB_addr            : std_logic_vector (2 downto 0);
        signal ID_WB_En              : std_logic;

        -- Branching
        signal EX_IF_BR_addr    : std_logic_vector (15 downto 0);
        signal EX_IF_BR_CTRL    : std_logic;
        
begin
    ROM_inst   : ROM port map (
        Reset    => Reset,      
        Clk      => Clk,           
        addr_A   => ROM_addra,
        Dout_A   => ROM_douta    
    );
    
    RAM_inst   : RAM port map (
        Reset   => Reset,             
        Clk     => Clk,         
        addr_A  => RAM_addra,
        Dout_A  => RAM_douta,   
        Din_A   => RAM_dina,
        W_En_A  => RAM_wea,
        addr_B  => RAM_addrb,
        Dout_B  => RAM_doutb
    );     
     
    FetchStage : FETCH port map (
        Clk        => Clk,             
        Reset_Ex   => Reset_Ex,    
        Reset_Load => Reset_Load,                          
        BR_addr    => EX_MEM_BR_addr_Out,   
        BR_CTRL    => EX_MEM_BR_CTRL_Out,        
        Test_en    => Test_En,
        IR_out     => IF_ID_IR_In,                   
        IR_in      => Instruction_in_sig,          
        PC_out     => PC_sig,         
        NPC_out    => IF_ID_PC_In,         
        IR_ROM     => RAM_doutb,          
        IR_RAM     => ROM_douta      
    );
    
    Decoder : DECODE port map (
        Clk       => Clk, 
        ID_Reset  => Reset,     
        ID_IR_in  => IF_ID_IR_Out,
        WB_data   => ID_WB_data,
        WB_addr   => ID_WB_addr,
        WB_En     => ID_WB_En,
        ALU_op    => ID_EX_ALU_op_In,         
        shiftAmt  => ID_EX_Shiftamt_In,       
        RA_data   => ID_EX_RA_data_In,         
        RB_data   => ID_EX_RB_data_In,         
        RW_addr   => ID_EX_RW_addr_In,        
        RW_En     => ID_EX_RW_En_In,
        PC        => IF_ID_PC_Out,
        BR_addr   => ID_EX_BR_addr_In,
        BR_En     => ID_EX_BR_En_In,
        BR_op     => ID_EX_BR_Op_In,
        BR_sub_PC => ID_EX_BR_sub_PC_In,
        IN_En     => ID_EX_IN_En_In,          
        port_Out  => Output_sig,         
        RA_addr   => ID_A_addr,
        FW_A_data => FW_A_data,
        FW_A_En   => FW_A_En,
        RB_addr   => ID_B_addr,
        FW_B_data => FW_B_data,
        FW_B_En   => FW_B_En,
        L_op      => ID_EX_L_op_In,
        L_imm     => ID_EX_L_imm_In  
    );
    
    ExecuteStage : EXECUTE port map (
        ALU_op      => ID_EX_ALU_op_Out,     
        shiftAmt    => ID_EX_Shiftamt_Out,    
        RA_data     => ID_EX_RA_data_Out,   
        RB_data     => ID_EX_RB_data_Out,
        RW_addr_in  => ID_EX_RW_addr_Out,
        RW_En_in    => ID_EX_RW_En_Out,
        RW_addr_out => EX_MEM_RW_addr_In,
        RW_En_out   => EX_MEM_RW_En_In,        
        RW_data_out => EX_MEM_RW_data_In, 
        Moverflow   => Moverflow_flag,
        Z_flag      => Z_flag,          
        N_flag      => N_flag,
        BR_En       => ID_EX_BR_En_Out,
        BR_op       => ID_EX_BR_Op_Out,
        BR_CTRL     => EX_MEM_BR_CTRL_In,
        BR_addr_in  => ID_EX_BR_addr_Out,
        BR_addr_out => EX_MEM_BR_addr_In,
        BR_sub_PC   => ID_EX_BR_sub_PC_Out,
        IN_data     => Data_In,      
        IN_En       => ID_EX_IN_En_Out,
        L_op_in     => ID_EX_L_op_out,
        L_op_out    => EX_MEM_L_op_in,
        L_imm       => ID_EX_L_imm_Out,
        RB_data_out => EX_MEM_MEM_din_In
    );
    
    WriteBackStage: WRITEBACK port map (
        WB_Reset  => Reset,	        
        W_data    => MEM_WB_RW_data_Out,
        MEM_data  => MEM_WB_MEM_dout_Out, 
        W_addr    => MEM_WB_RW_addr_Out,         
        W_En      => MEM_WB_RW_En_Out,
        L_op      => MEM_WB_L_op_Out,         
        WB_data   => ID_WB_data,   
        WB_addr   => ID_WB_addr,  
        WB_En     => ID_WB_En      
    );
        
        --Clk_sig <= Clk;
        Reset <= Rst;
        --Instruction_in_sig <= IR_In_from_TB; 
        
        -- Tracking opcode & PC
        IF_OP_sig <= IF_ID_IR_In;
        IF_PC_sig <= PC_sig;
        
        -- ROM and RAM Port B for reading in Fetch
        ROM_addra <= PC_sig (5 downto 0);
        RAM_addrb <= PC_sig (8 downto 0);
       
        
        
   
    FWD : process(ID_EX_RW_addr_Out, ID_EX_RW_En_Out, EX_MEM_RW_data_In, EX_MEM_RW_addr_Out, EX_MEM_RW_En_Out, EX_MEM_L_op_Out, EX_MEM_RW_data_Out,  
    MEM_WB_MEM_dout_In, MEM_WB_RW_data_In, ID_WB_addr, ID_WB_En, ID_WB_data, ID_A_addr, ID_B_addr)
    begin        
        -- Forwarding logic (A)
        if ID_EX_RW_addr_Out = ID_A_addr and ID_EX_RW_En_Out = '1'  then -- forward from Execute stage
            FW_A_En <= '1';
            FW_A_data <= EX_MEM_RW_data_In;
            
        elsif EX_MEM_RW_addr_Out = ID_A_addr and EX_MEM_RW_En_Out = '1' then -- Forward from Memory stage
            FW_A_En <= '1';
            if EX_MEM_L_op_Out = "100" then -- load so forward memory dout instead
                FW_A_data <= MEM_WB_MEM_dout_In;
            else
                FW_A_data <= EX_MEM_RW_data_Out;
            end if;     
        elsif ID_WB_addr = ID_A_addr and ID_WB_En = '1' then -- Forward from Writeback stage
            FW_A_En <= '1';
            FW_A_data <= ID_WB_data;
        else -- otherwise don't forward
            FW_A_En <= '0';
            FW_A_data <= (others => '0');
        end if; 
        
        -- Forwarding logic (B)
        if ID_EX_RW_addr_Out = ID_B_addr and ID_EX_RW_En_Out = '1'  then -- forward from Execute stage
            FW_B_En <= '1';
            FW_B_data <= EX_MEM_RW_data_In;
            
        elsif EX_MEM_RW_addr_Out = ID_B_addr and EX_MEM_RW_En_Out = '1' then -- Forward from Memory stage
            FW_B_En <= '1';
            if EX_MEM_L_op_Out = "100" then -- load so forward memory dout instead
                FW_B_data <= MEM_WB_MEM_dout_In;
            else
                FW_B_data <= EX_MEM_RW_data_Out;
            end if;     
        elsif ID_WB_addr = ID_B_addr and ID_WB_En = '1' then -- Forward from Writeback stage
            FW_B_En <= '1';
            FW_B_data <= ID_WB_data;
        else -- otherwise don't forward
            FW_B_En <= '0';
            FW_B_data <= (others => '0');
        end if; 
              
    end process FWD; 
    
    MEM : process (EX_MEM_L_op_Out, EX_MEM_RW_data_Out, EX_MEM_MEM_din_Out, EX_MEM_RW_data_Out, RAM_douta, EX_MEM_RW_addr_Out, EX_MEM_RW_En_Out, EX_MEM_L_op_Out) -- to add Memory stage logic
    begin
        -- determine if we can set write memory Enable
        if EX_MEM_L_op_Out = "101" then
            RAM_wea <= "1";
        else 
            RAM_wea <= "0";
        end if;
        
        -- output of EX/MEM latch into the RAM inputs
        RAM_addra <= EX_MEM_RW_data_Out (8 downto 0); -- RA from Execute stage being used as memory address
        RAM_dina  <= EX_MEM_MEM_din_Out; -- RB data going to RAM
        
        -- Routing signals between the interstage latches
        MEM_WB_RW_data_In  <= EX_MEM_RW_data_Out; -- data from Execute stage
        MEM_WB_MEM_dout_In <= RAM_douta; -- data from RAM
        MEM_WB_RW_addr_In  <= EX_MEM_RW_addr_Out; -- address for writeback
        MEM_WB_RW_En_In    <= EX_MEM_RW_En_Out; -- enable for write back
        MEM_WB_L_op_In     <= EX_MEM_L_op_Out;
           
    end process MEM;
    
    IF_ID : process (Clk, EX_MEM_BR_CTRL_Out, Reset)
    begin
        if Reset = '1' then
            IF_ID_IR_Out <= (others => '0');
            IF_ID_PC_Out <= (others => '0');
            -- Tracking opcode & PC
            ID_OP_sig <= (others => '0');
            ID_PC_sig <= (others => '0');
        elsif falling_edge(Clk) then
            if EX_MEM_BR_CTRL_Out = '1' then
                IF_ID_IR_Out <= (others => '0');
                IF_ID_PC_Out <= (others => '0');
            else
                IF_ID_IR_Out <= IF_ID_IR_In;
                IF_ID_PC_Out <= IF_ID_PC_In;
                -- Tracking opcode & PC
                ID_OP_sig <= IF_OP_sig;
                ID_PC_sig <= IF_PC_sig;
            end if;
        end if;
    end process IF_ID;

    ID_EX : process (Clk, EX_MEM_BR_CTRL_Out, Reset, ID_EX_ALU_op_In, 
    ID_EX_Shiftamt_In, ID_EX_RA_data_In, ID_EX_RB_data_In, ID_EX_RW_addr_In, 
    ID_EX_RW_En_In, ID_EX_IN_En_In, ID_EX_Out_In, ID_EX_BR_En_In, ID_EX_BR_Op_In, 
    ID_EX_BR_addr_In, ID_EX_BR_sub_PC_In)
    begin
        if Reset = '1' then
            ID_EX_ALU_op_Out <= (others => '0');
            ID_EX_Shiftamt_Out <= (others => '0');
            ID_EX_RA_data_Out <= (others => '0');
            ID_EX_RB_data_Out <= (others => '0');
            ID_EX_RW_addr_Out <= (others => '0');
            ID_EX_RW_En_Out <= '0';
            ID_EX_IN_En_Out <= '0';
            ID_EX_Out_Out <= (others => '0');
            ID_EX_BR_En_Out <= '0';
            ID_EX_BR_Op_Out <= (others => '0');
            ID_EX_BR_addr_Out <= (others => '0');
            ID_EX_BR_sub_PC_Out <= (others => '0');
            ID_EX_L_op_Out    <= (others => '0');
            ID_EX_L_imm_Out   <= (others => '0');
            -- Tracking opcode & PC
            EX_OP_sig <= (others => '0');
            EX_PC_sig <= (others => '0');
        elsif falling_edge(Clk) then
            if EX_MEM_BR_CTRL_Out = '1' then
                ID_EX_ALU_op_Out <= (others => '0');
                ID_EX_Shiftamt_Out <= (others => '0');
                ID_EX_RA_data_Out <= (others => '0');
                ID_EX_RB_data_Out <= (others => '0');
                ID_EX_RW_addr_Out <= (others => '0');
                ID_EX_RW_En_Out <= '0';
                ID_EX_IN_En_Out <= '0';
                ID_EX_Out_Out <= (others => '0');
                ID_EX_BR_En_Out <= '0';
                ID_EX_BR_Op_Out <= (others => '0');
                ID_EX_BR_addr_Out <= (others => '0');
                ID_EX_BR_sub_PC_Out <= (others => '0');
                ID_EX_L_op_Out    <= (others => '0');
                ID_EX_L_imm_Out   <= (others => '0');
                -- Tracking opcode & PC
                EX_OP_sig <= (others => '0');
                EX_PC_sig <= (others => '0');
            else
                ID_EX_ALU_op_Out <= ID_EX_ALU_op_In;
                ID_EX_Shiftamt_Out <= ID_EX_Shiftamt_In;
                ID_EX_RA_data_Out <= ID_EX_RA_data_In;
                ID_EX_RB_data_Out <= ID_EX_RB_data_In;
                ID_EX_RW_addr_Out <= ID_EX_RW_addr_In;
                ID_EX_RW_En_Out <= ID_EX_RW_En_In;
                ID_EX_IN_En_Out <= ID_EX_IN_En_In;
                ID_EX_Out_Out <= ID_EX_Out_In;
                ID_EX_BR_En_Out <= ID_EX_BR_En_In;
                ID_EX_BR_Op_Out <= ID_EX_BR_Op_In;
                ID_EX_BR_addr_Out <= ID_EX_BR_addr_In;
                ID_EX_BR_sub_PC_Out <= ID_EX_BR_sub_PC_In;
                ID_EX_L_op_Out <= ID_EX_L_op_In;
                ID_EX_L_imm_Out <= ID_EX_L_imm_In;
                Data_out <= Output_sig;
                -- Tracking opcode & PC
                EX_OP_sig <= ID_OP_sig;
                EX_PC_sig <= ID_PC_sig;
            end if; 
        end if;
    end process ID_EX;

    EX_MEM : process (EX_MEM_RW_data_In, EX_MEM_RW_addr_In, EX_MEM_RW_En_In, EX_MEM_BR_CTRL_Out, EX_MEM_BR_addr_In, Clk, Reset)
    begin
        if Reset = '1' then
            EX_MEM_RW_data_Out <= (others => '0');
            EX_MEM_RW_addr_Out <= (others => '0');
            EX_MEM_RW_En_Out   <= '0';
            EX_MEM_BR_CTRL_Out <= '0';
            EX_MEM_BR_addr_Out <= (others => '0');
            EX_MEM_MEM_din_Out <= (others => '0');
            EX_MEM_L_op_Out <= (others => '0'); 
            -- Tracking opcode & PC
            MEM_OP_sig <= (others => '0');
            MEM_PC_sig <= (others => '0');
        elsif falling_edge(Clk) then
            if EX_MEM_BR_CTRL_Out = '1' then
                EX_MEM_RW_data_Out <= (others => '0');
                EX_MEM_RW_addr_Out <= (others => '0');
                EX_MEM_RW_En_Out   <= '0';
                EX_MEM_BR_CTRL_Out <= '0';
                EX_MEM_BR_addr_Out <= (others => '0');
                EX_MEM_MEM_din_Out <= EX_MEM_MEM_din_In;
                EX_MEM_L_op_Out <= (others => '0'); 
                -- Tracking opcode & PC
                MEM_OP_sig <= (others => '0');
                MEM_PC_sig <= (others => '0');
            else
                EX_MEM_RW_data_Out <= EX_MEM_RW_data_In;
                EX_MEM_RW_addr_Out <= EX_MEM_RW_addr_In;
                EX_MEM_RW_En_Out   <= EX_MEM_RW_En_In;
                EX_MEM_BR_CTRL_Out <= EX_MEM_BR_CTRL_In;
                EX_MEM_BR_addr_Out <= EX_MEM_BR_addr_In;
                EX_MEM_L_op_Out <= EX_MEM_L_op_In;
                -- Tracking opcode & PC
                MEM_OP_sig <= EX_OP_sig;
                MEM_PC_sig <= EX_PC_sig;
            end if;
        end if;
    end process EX_MEM;

    MEM_WB : process (Clk, MEM_WB_RW_data_In, MEM_WB_RW_addr_In, MEM_WB_RW_En_In, Reset)
    begin      
        if Reset = '1' then
            MEM_WB_RW_data_Out <= (others => '0');
            MEM_WB_MEM_dout_Out <= (others => '0');
            MEM_WB_RW_addr_Out <= (others => '0');
            MEM_WB_RW_En_Out <= '0';
            MEM_WB_L_op_Out <= (others => '0');
            -- Tracking opcode & PC
            WB_OP_sig <= (others => '0');
            WB_PC_sig <= (others => '0'); 
        elsif falling_edge(Clk) then
            MEM_WB_RW_data_Out <= MEM_WB_RW_data_In;
            MEM_WB_MEM_dout_Out <= MEM_WB_MEM_dout_In;
            MEM_WB_RW_addr_Out <= MEM_WB_RW_addr_In;
            MEM_WB_RW_En_Out <= MEM_WB_RW_En_In;
            MEM_WB_L_op_Out <= MEM_WB_L_op_In;
            -- Tracking opcode & PC
            WB_OP_sig <= MEM_OP_sig;
            WB_PC_sig <= MEM_PC_sig;      
        end if;
    end process MEM_WB;
        
end behavioral;
