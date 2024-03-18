library ieee;
use ieee.std_logic_1164.all;

-- flushing first 2 latches
-- adding forwarding logic

entity CONTROL is 
    port(
        Clk, Rst       : in std_logic;
        IR_In_from_TB  : in std_logic_vector (15 downto 0);
        Data_In        : in std_logic_vector (15 downto 0);
        Data_Out       : out std_logic_vector (15 downto 0)
    );
end CONTROL;

architecture behavioral of CONTROL is
    component FETCH is
       port(
            Clk            : in std_logic;
            Reset          : in std_logic;
            IR_out         : out std_logic_vector(15 downto 0); -- recieved from memory then outputted to IF/ID register
            IR_in          : in std_logic_vector(15 downto 0) -- hardcoded Instruction in Value for Format A Test
        );
    end component;
    component DECODE is
        port (
            Clk, Reset     : in std_logic;
            instr_In       : in std_logic_vector (15 downto 0); -- Instruction to Decode
            ALU_op         : out std_logic_vector (2 downto 0); -- ALU operands
            shiftAmt       : out std_logic_vector (3 downto 0);
            RA_data        : out std_logic_vector (15 downto 0);
            RB_data        : out std_logic_vector (15 downto 0);
            RW_addr        : out std_logic_vector (2 downto 0); -- Write operands to forward through pipeline
            RW_En          : out std_logic;
            IN_En          : out std_logic; 
            port_Out       : out std_logic_vector (15 downto 0);
            WB_data        : in std_logic_vector (15 downto 0); -- Write Back Inputs
            WB_addr        : in std_logic_vector (2 downto 0);
            WB_En          : in std_logic
        );
    end component;
    component EXECUTE is
        port (
             Clk           : in std_logic;
             ALU_op        : in std_logic_vector (2 downto 0);
             shiftAmt      : in std_logic_vector (3 downto 0);
             RA_data       : in std_logic_vector (15 downto 0);
             RB_data       : in std_logic_vector (15 downto 0);
             RW_addr_in    : in std_logic_vector (2 downto 0);
             RW_En_in      : in std_logic;
             RW_addr_out   : out std_logic_vector (2 downto 0);
             RW_En_out     : out std_logic;     
             RW_data_out   : out std_logic_vector (15 downto 0);
             Z             : out std_logic;
             N             : out std_logic;
             Moverflow     : out std_logic;       
             IN_IN         : in std_logic_vector (15 downto 0);
             IN_En         : in std_logic
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
        signal Instruction_in_sig : std_logic_vector (15 downto 0);
        signal IF_ID_IR : std_logic_vector (15 downto 0);
        
        -- ID/EX
        signal ID_EX_ALU_op     : std_logic_vector (2 downto 0);
        signal ID_EX_Shiftamt   : std_logic_vector (3 downto 0);
        signal ID_EX_RA_data    : std_logic_vector (15 downto 0);
        signal ID_EX_RB_data    : std_logic_vector (15 downto 0);
        signal ID_EX_RW_addr    : std_logic_vector (2 downto 0);
        signal ID_EX_RW_En      : std_logic;
        signal ID_EX_IN_En      : std_logic;
        signal ID_EX_Out        : std_logic_vector (15 downto 0);
    
        -- EX/WB
        signal EX_WB_RW_data    : std_logic_vector (15 downto 0);
        signal EX_WB_RW_addr    : std_logic_vector (2 downto 0);
        signal EX_WB_RW_En      : std_logic;
        signal Z_flag, N_flag   : std_logic;
        signal Moverflow_Flag   : std_logic;
        
        -- EX/WB
        signal WB_ID_data       : std_logic_vector (15 downto 0);
        signal WB_ID_addr       : std_logic_vector (2 downto 0);
        signal WB_ID_En         : std_logic;       
begin

    process(Clk)
    begin
        Clk_sig <= Clk;
        Rst_sig <= Rst;
        Instruction_in_sig <= IR_In_from_TB;
        
        FetchStage : FETCH port map (
            Clk     => Clk_sig,          
            Reset   => Rst_sig,          
            IR_out  => IF_ID_IR,       
            IR_in   => Instruction_in_sig          
        );
        
        Decoder : DECODE port map (
            Clk       => Clk_sig, 
            Reset     => Rst_sig,     
            instr_In  => IF_ID_IR,       
            ALU_op    => ID_EX_ALU_op,         
            shiftAmt  => ID_EX_Shiftamt,       
            RA_data   => ID_EX_RA_data,         
            RB_data   => ID_EX_RB_data,         
            RW_addr   => ID_EX_RW_addr,        
            RW_En     => ID_EX_RW_En,                
            IN_En     => ID_EX_IN_En,          
            port_Out  => Output_sig,         
            WB_data   => WB_ID_data,        
            WB_addr   => WB_ID_addr,       
            WB_En     => WB_ID_En        
        );
        
        ExecuteStage : EXECUTE port map (
            Clk         => Clk_sig,        
            ALU_op      => ID_EX_ALU_op,     
            shiftAmt    => ID_EX_Shiftamt,    
            RA_data     => ID_EX_RA_data,   
            RB_data     => ID_EX_RB_data,
            RW_addr_in  => ID_EX_RW_addr,
            RW_En_in    => ID_EX_RW_En,
            RW_addr_out => EX_WB_RW_addr,
            RW_En_out   => EX_WB_RW_En,        
            RW_data_out => EX_WB_RW_data, 
            Z           => Z_flag,          
            N           => N_flag,
            Moverflow   => Moverflow_flag,              
            IN_IN       => Input_sig,      
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
    end process;      
        
end behavioral;
