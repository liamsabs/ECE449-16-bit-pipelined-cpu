library ieee;
use ieee.std_logic_1164.all;

entity CONTROL_tb is end CONTROL_tb;

architecture testbench of CONTROL_tb is
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
        
        
        -- simulation signals 
        signal Clk_tb              : std_logic := '0';
        signal Rst_tb              : std_logic;
        signal IR_tb, Data_in_tb, Data_out_tb  : std_logic_vector(15 downto 0);      
begin

    
     FetchStage : FETCH port map (
          Clk     => Clk_tb,          
          Reset   => Rst_tb,          
          IR_out  => IF_ID_IR,       
          IR_in   => IR_tb          
     );
     
     Decoder : DECODE port map (
          Clk       => Clk_tb, 
          Reset     => Rst_tb,     
          instr_In  => IF_ID_IR,       
          ALU_op    => ID_EX_ALU_op,         
          shiftAmt  => ID_EX_Shiftamt,       
          RA_data   => ID_EX_RA_data,         
          RB_data   => ID_EX_RB_data,         
          RW_addr   => ID_EX_RW_addr,        
          RW_En     => ID_EX_RW_En,                
          IN_En     => ID_EX_IN_En,          
          port_Out  => Data_out_tb,         
          WB_data   => WB_ID_data,        
          WB_addr   => WB_ID_addr,       
          WB_En     => WB_ID_En        
    );
    
    ExecuteStage : EXECUTE port map (
           Clk         => Clk_tb,        
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
           IN_IN       => Data_in_tb,      
           IN_En       => ID_EX_IN_En     
      );
      
      WriteBackStage: WRITEBACK port map (
           Clk       => Clk_tb, 
           Reset     => Rst_tb,
           W_data    => EX_WB_RW_data, 
           W_addr    => EX_WB_RW_addr,         
           W_En      => EX_WB_RW_En,            
           WB_data   => WB_ID_data,   
           WB_addr   => WB_ID_addr,  
           WB_En     => WB_ID_En      
      );
      
      data_in_tb <= X"0003";
          process 
          begin
              Clk_tb <= '0'; wait for 50 us;
              Clk_tb <= '1'; wait for 50 us; 
          end process;
          
          process 
          begin
              Rst_tb <= '1'; wait until (rising_edge(Clk_tb)); 
              Rst_tb <= '0'; wait until (rising_edge(Clk_tb)); 
              IR_tb <= X"4240"; wait until (rising_edge(Clk_tb));  -- IN r1         
              IR_tb <= X"4280"; wait until (rising_edge(Clk_tb));  -- IN r2 
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"02D1"; wait until (rising_edge(Clk_tb));  -- ADD r3, r2, r1   
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0AC2"; wait until (rising_edge(Clk_tb));  -- SHL r3, 2         
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"068B"; wait until (rising_edge(Clk_tb));  -- MUL r2, r1, r3   
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"4080"; wait until (rising_edge(Clk_tb));  -- OUT r2       
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              IR_tb <= X"0000"; wait until (rising_edge(Clk_tb));  -- NOP
              Rst_tb <= '1';
              wait;
          end process;        
        
end testbench;
