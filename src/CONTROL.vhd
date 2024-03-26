liBRary ieee;
use ieee.std_logic_1164.all;
Library xpm;
use xpm.vcomponents.all;

entity CONTROL is 
    port(
        Clk             : in std_logic;
        Rst             : in std_logic;
        IR_In_from_TB   : in std_logic_vector (15 downto 0);
        --Data_In        : in std_logic_vector (15 downto 0);
        --Data_Out       : out std_logic_vector (15 downto 0);
        Reset_button   : in std_logic
    );
end CONTROL;

architecture behavioral of CONTROL is
    component FETCH is
        port (
            IF_Reset        : in std_logic;
            PC_reset        : in std_logic;                         -- Resets PC to [val?]
            BR_addr         : in std_logic_vector(15 downto 0);     -- branch address
            BR_CTRL         : in std_logic;                         -- input signal for PC MUX
            IF_IR_in        : in std_logic_vector(15 downto 0);     -- hardcoded Instruction in Value for Format A Test
            IR_out          : out std_logic_vector(15 downto 0);    -- recieved from memory then outputted to IF/ID register
            PC_out          : out std_logic_vector(15 downto 0)    -- PC for decoder
        );
    end component;
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
            FW_B_En        : in std_logic -- input to be used to determine if forwarding RB
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
            Moverflow      : out std_logic; -- Multiplcation overflow flag output for controller
            Z_flag         : out std_logic; -- Zero flag used for testing
            N_flag         : out std_logic; -- Negative flag used for testing
            -- branching inputs
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
            WB_Reset       : in std_logic;
            W_data      : in std_logic_vector (15 downto 0);
            W_addr      : in std_logic_vector (2 downto 0);
            W_En        : in std_logic;
            WB_data     : out std_logic_vector (15 downto 0);
            WB_addr     : out std_logic_vector (2 downto 0);
            WB_En       : out std_logic  
        );
     end component;
     
     
     component XPM_MEMORY_DPDISTRAM is
        port (
             addra       : in std_logic_vector (15 downto 0);
             addrb       : in std_logic_vector (15 downto 0);
             clka        : in std_logic;
             clkb        : in std_logic;
             dina        : in std_logic_vector (15 downto 0);
             douta       : out std_logic_vector (15 downto 0);
             doutb       : out std_logic_vector (15 downto 0);
             ena         : in std_logic;
             enb         : in std_logic;
             regcea      : in std_logic;
             regceb      : in std_logic;
             rsta        : in std_logic;
             rstb        : in std_logic;
             wea         : in std_logic_vector (15 downto 0)
         );
     end component;
    
        -- Basic Signals
        signal Reset                 : std_logic;
        signal PC_Reset              : std_logic;   
        signal Input_sig             : std_logic_vector (15 downto 0);
        signal Output_sig            : std_logic_vector (15 downto 0);
        signal Instruction_in_sig    : std_logic_vector (15 downto 0);
        
        -- ROM
        signal ROM_addra             : std_logic_vector (15 downto 0);
        signal ROM_douta            : std_logic_vector (15 downto 0);
        signal ROM_ena               : std_logic;
        signal ROM_rsta              : std_logic;
        
        -- RAM
        signal RAM_addra             : std_logic_vector (15 downto 0);
        signal RAM_addrb             : std_logic_vector (15 downto 0);
        signal RAM_dina              : std_logic_vector (15 downto 0);
        signal RAM_douta             : std_logic_vector (15 downto 0);
        signal RAM_doutb             : std_logic_vector (15 downto 0);
        signal RAM_ena               : std_logic;
        signal RAM_enb               : std_logic;
        signal RAM_rsta              : std_logic;
        signal RAM_rstb              : std_logic;
        signal RAM_wea               : std_logic_vector (15 downto 0);
        
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
        -- TO DO add MEMORY parameters (address, enable) 

        -- Execute Signals
        signal IN_data               : std_logic_vector (15 downto 0);
        signal Z_flag, N_flag        : std_logic;
        signal Moverflow_Flag        : std_logic;
    
        -- EX/MEM
        signal EX_MEM_RW_data_In     : std_logic_vector (15 downto 0);
        signal EX_MEM_RW_data_Out    : std_logic_vector (15 downto 0);
        signal EX_MEM_RW_addr_In     : std_logic_vector (2 downto 0);
        signal EX_MEM_RW_addr_Out    : std_logic_vector (2 downto 0);
        signal EX_MEM_RW_En_In       : std_logic;
        signal EX_MEM_RW_En_Out      : std_logic;
        signal EX_MEM_BR_CTRL_In     : std_logic;
        signal EX_MEM_BR_CTRL_Out    : std_logic;
        signal EX_MEM_BR_addr_In     : std_logic_vector (15 downto 0);
        signal EX_MEM_BR_addr_Out    : std_logic_vector (15 downto 0);
        -- TO DO add MEMORY parameters (address, enable)
        
        -- MEM/WB
        signal MEM_WB_RW_data_In      : std_logic_vector (15 downto 0);
        signal MEM_WB_RW_data_Out     : std_logic_vector (15 downto 0);
        signal MEM_WB_RW_addr_In      : std_logic_vector (2 downto 0);
        signal MEM_WB_RW_addr_Out     : std_logic_vector (2 downto 0);
        signal MEM_WB_RW_En_In        : std_logic;
        signal MEM_WB_RW_En_Out       : std_logic;
        
        -- Forwarding
        signal ID_A_addr        : std_logic_vector (2 downto 0);
        signal FW_A_data        : std_logic_vector (15 downto 0);
        signal FW_A_En          : std_logic;
        signal ID_B_addr        : std_logic_vector (2 downto 0);
        signal FW_B_data        : std_logic_vector (15 downto 0);
        signal FW_B_En          : std_logic;

        -- Write-back
        signal ID_WB_data       : std_logic_vector (15 downto 0);
        signal ID_WB_addr       : std_logic_vector (2 downto 0);
        signal ID_WB_En         : std_logic;

        -- Branching
        signal EX_IF_BR_addr    : std_logic_vector (15 downto 0);
        signal EX_IF_BR_CTRL    : std_logic;
        
begin


    -- xpm_memory_sprom: Single Port ROM
    -- Xilinx Parameterized Macro, version 2018.3
    xpm_memory_sprom_inst : xpm_memory_sprom
        generic map (
            -- Common module generics
            MEMORY_SIZE             => 16384,           --positive integer
            MEMORY_PRIMITIVE        => "auto",          --string; "auto", "distributed", or "block";
            MEMORY_INIT_FILE        => "none",          --string; "none" or "<filename>.mem" 
            MEMORY_INIT_PARAM       => "",              --string;
            USE_MEM_INIT            => 1,               --integer; 0,1
            WAKEUP_TIME             => "disable_sleep", --string; "disable_sleep" or "use_sleep_pin" 
            MESSAGE_CONTROL         => 0,               --integer; 0,1
            ECC_MODE                => "no_ecc",        --string; "no_ecc", "encode_only", "decode_only" or "both_encode_and_decode" 
            AUTO_SLEEP_TIME         => 0,               --Do not Change
            MEMORY_OPTIMIZATION     => "true",          --string; "true", "false" 
            
            -- Port A module generics
            READ_DATA_WIDTH_A       => 16,              --positive integer
            ADDR_WIDTH_A            => 11,               --positive integer
            READ_RESET_VALUE_A      => "0",             --string
            READ_LATENCY_A          => 0                --non-negative integer
        )
        
    port map (
                addra           => ROM_addra,
                clka            => clk,
                --dbiterra        => ,
                douta           => ROM_douta,
                ena             => ROM_ena,
                injectdbiterra  => '0',
                injectsbiterra  => '0',
                regcea          => '1',
                rsta            => ROM_rsta,
                --sbiterra        => ,
                sleep           => '0'
    );
    -- End of xpm_memory_sprom_inst instantiation
    
    xpm_memory_dpdistram_inst : xpm_memory_dpdistram
        generic map (
             -- Common module generics
            MEMORY_SIZE             => 16384,          --positive integer
            CLOCKING_MODE           => "common_clock", --string; "common_clock", "independent_clock" 
            MEMORY_INIT_FILE        => "format-A-test",--string; "none" or "<filename>.mem" 
            MEMORY_INIT_PARAM       => "",             --string;
            USE_MEM_INIT            => 1,              --integer; 0,1
            MESSAGE_CONTROL         => 0,              --integer; 0,1
            USE_EMBEDDED_CONSTRAINT => 0,              --integer: 0,1
            MEMORY_OPTIMIZATION     => "true",         --string; "true", "false" 
        
            -- Port A module generics
            WRITE_DATA_WIDTH_A      => 16,             --positive integer
            READ_DATA_WIDTH_A       => 16,             --positive integer
            BYTE_WRITE_WIDTH_A      => 16,             --integer; 8, 9, or WRITE_DATA_WIDTH_A value
            ADDR_WIDTH_A            => 11,              --positive integer
            READ_RESET_VALUE_A      => "0",            --string
            READ_LATENCY_A          => 0,              --non-negative integer
        
            -- Port B module generics
            READ_DATA_WIDTH_B       => 16,             --positive integer
            ADDR_WIDTH_B            => 6,              --positive integer
            READ_RESET_VALUE_B      => "0",            --string
            READ_LATENCY_B          => 0               --non-negative integer
        )
        port map (
            addra       => RAM_addra,
            addrb       => RAM_addrb,
            clka        => clk,
            clkb        => clk,
            dina        => RAM_dina,
            douta       => RAM_douta,
            doutb       => RAM_doutb,
            ena         => RAM_ena,
            enb         => RAM_enb,
            regcea      => '1',
            regceb      => '1',
            rsta        => RAM_rsta,
            rstb        => RAM_rstb,
            wea         => RAM_wea
        );
        -- End of xpm_memory_dpdistram_inst instantiation        
        
        FetchStage : FETCH port map (
            IF_Reset    => Reset,
            PC_reset    => Reset_button,
            BR_addr     => EX_MEM_BR_addr_In,
            BR_CTRL     => EX_MEM_BR_CTRL_In,
            IR_out      => IF_ID_IR_In,       
            IF_IR_in    => Instruction_in_sig,
            PC_out      => IF_ID_PC_In          
        );
        
        Decoder : DECODE port map (
            Clk       => Clk, 
            ID_Reset  => Reset,     
            ID_IR_in  => IF_ID_IR_In,
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
            FW_B_En   => FW_B_En  
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
            IN_data     => Input_sig,      
            IN_En       => ID_EX_IN_En_Out     
        );
        
        WriteBackStage: WRITEBACK port map (
            WB_Reset  => Reset,
            W_data    => EX_MEM_RW_data_Out, 
            W_addr    => EX_MEM_RW_addr_Out,         
            W_En      => EX_MEM_RW_En_Out,            
            WB_data   => ID_WB_data,   
            WB_addr   => ID_WB_addr,  
            WB_En     => ID_WB_En      
        );
        
        --Clk_sig <= Clk;
        Reset <= Rst;
        Instruction_in_sig <= IR_In_from_TB; 
   
    FWD : process(Clk, Rst, IR_in_from_TB, EX_MEM_RW_data_In, ID_WB_data, ID_A_addr, ID_B_addr, EX_MEM_RW_addr_In, ID_WB_addr)
    begin        
        -- Forwarding logic
        if EX_MEM_RW_addr_In = ID_A_addr then
            FW_A_En <= '1';
            FW_A_data <= EX_MEM_RW_data_In;
        elsif EX_MEM_RW_addr_In = ID_B_addr then
            FW_B_En <= '1';
            FW_B_data <= EX_MEM_RW_data_In;
        elsif ID_WB_addr = ID_A_addr then
            FW_A_En <= '1';
            FW_A_data <= ID_WB_data;
        elsif ID_WB_addr = ID_B_addr then
            FW_B_En <= '1';
            FW_B_data <= ID_WB_data;
        end if;
    end process FWD; 
    
    IF_ID : process (Clk, EX_MEM_BR_CTRL_Out, Reset)
    begin
        if falling_edge(Clk) then
            if EX_MEM_BR_CTRL_Out = '1' then
                IF_ID_IR_Out <= (others => '0');
                IF_ID_PC_Out <= (others => '0');
            else
                IF_ID_IR_Out <= IF_ID_IR_In;
                IF_ID_PC_Out <= IF_ID_PC_In;
            end if;
        end if;
        if Reset ='1' then
            IF_ID_IR_Out <= (others => '0');
            IF_ID_PC_Out <= (others => '0');
        end if;
    end process IF_ID;

    ID_EX : process (Clk, EX_MEM_BR_CTRL_Out, Reset, ID_EX_ALU_op_In, 
    ID_EX_Shiftamt_In, ID_EX_RA_data_In, ID_EX_RB_data_In, ID_EX_RW_addr_In, 
    ID_EX_RW_En_In, ID_EX_IN_En_In, ID_EX_Out_In, ID_EX_BR_En_In, ID_EX_BR_Op_In, 
    ID_EX_BR_addr_In, ID_EX_BR_sub_PC_In)
    begin
        if falling_edge(Clk) then
            if EX_MEM_BR_CTRL_Out = '1' or Reset = '1' then
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
            end if;
        end if;
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
        end if;
    end process ID_EX;

    EX_MEM : process (EX_MEM_RW_data_In, EX_MEM_RW_addr_In, EX_MEM_RW_En_In, 
    EX_MEM_BR_CTRL_In, EX_MEM_BR_CTRL_In, EX_MEM_BR_addr_In, Clk, Reset)
    begin
        if falling_edge(Clk) then
            if EX_MEM_BR_CTRL_Out = '1' then
                EX_MEM_RW_data_Out <= (others => '0');
                EX_MEM_RW_addr_Out <= (others => '0');
                EX_MEM_RW_En_Out <= '0';
                EX_MEM_BR_CTRL_Out <= '0';
                EX_MEM_BR_addr_Out <= (others => '0');
            else
                EX_MEM_RW_data_Out <= EX_MEM_RW_data_In;
                EX_MEM_RW_addr_Out <= EX_MEM_RW_addr_In;
                EX_MEM_RW_En_Out <= EX_MEM_RW_En_In;
                EX_MEM_BR_CTRL_Out <= EX_MEM_BR_CTRL_In;
                EX_MEM_BR_addr_Out <= EX_MEM_BR_addr_In;
            end if;
        end if;
        if Reset = '1' then
            EX_MEM_RW_data_Out <= (others => '0');
            EX_MEM_RW_addr_Out <= (others => '0');
            EX_MEM_RW_En_Out <= '0';
            EX_MEM_BR_CTRL_Out <= '0';
            EX_MEM_BR_addr_Out <= (others => '0');
        end if;
    end process EX_MEM;

    MEM_WB : process (Clk, MEM_WB_RW_data_In, MEM_WB_RW_addr_In, MEM_WB_RW_En_In, Reset)
    begin
        MEM_WB_RW_data_Out <= MEM_WB_RW_data_In;
        MEM_WB_RW_addr_Out <= MEM_WB_RW_addr_In;
        MEM_WB_RW_En_Out <= MEM_WB_RW_En_In;
        
        if falling_edge(Clk) then
            MEM_WB_RW_data_Out <= (others => '0');
            MEM_WB_RW_addr_Out <= (others => '0');
            MEM_WB_RW_En_Out <= '0';
        end if;

        if Reset = '1' then
            MEM_WB_RW_data_Out <= (others => '0');
            MEM_WB_RW_addr_Out <= (others => '0');
            MEM_WB_RW_En_Out <= '0';    
        end if;
    end process MEM_WB;
        
end behavioral;
