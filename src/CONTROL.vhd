library ieee;
use ieee.std_logic_1164.all;

entity CONTROL is 
    port(
        Clk, Reset: in std_logic
        IR_In : in std_logic_vector (15 downto 0);
        Data_In   : in std_logic (15 downto 0);
    );
end CONTROL;

architecture behavioral of CONTROL is
    component FETCH is
        port(
            Clk             : in std_logic;
            Reset           : in std_logic;
            Instr_out       : out std_logic_vector(15 downto 0); -- recieved from memory then outputted to IF/ID register
            Instr_in        : in std_logic_vector(15 downto 0); -- hardcoded Instruction in Value for Format A Test
            FormatA_Test    : in std_logic
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
            Clk        : in std_logic;
            ALU_op     : in std_logic_vector (2 downto 0);
            shiftAmt   : in std_logic_vector (3 downto 0);
            RA_data    : in std_logic_vector (15 downto 0);
            RB_data    : in std_logic_vector (15 downto 0);     
            Result_out : out std_logic_vector (15 downto 0);
            Z          : out std_logic;
            N          : out std_logic;
            Moverflow  : out std_logic;       
            IN_IN      : in std_logic_vector (15 downto 0);
            IN_En      : in std_logic; 
            Done       : out std_logic
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
    
        

        signal IF_ID_IR : std_logic_vector (15 downto 0);
        
        
        -- ID
        signal id_enable : std_logic;
        signal id_reset : std_logic;
        signal id_instr_in : std_logic_vector(15 downto 0);
        signal id_rw_addr : std_logic_vector(2 downto 0);
        signal id_w_en : std_logic;
        signal id_ra_addr : std_logic_vector(2 downto 0);
        signal id_rb_addr : std_logic_vector(2 downto 0);
        signal id_alu_op : std_logic_vector(2 downto 0);
        signal id_shift_amt : std_logic_vector(3 downto 0);
        signal id_alu_en : std_logic;
        signal id_port_in : std_logic_vector(15 downto 0);
        signal id_out_en : std_logic;
        signal id_DONE : std_logic;
    
        -- EX
        signal ALU_OP : std_logic_vector(2 downto 0);
        signal alu_input_a : std_logic_vector(15 downto 0);
        signal alu_input_b : std_logic_vector(15 downto 0);
        signal alu_shift_amt : std_logic_vector(3 downto 0);
        signal alu_result : std_logic_vector(15 downto 0);
        signal alu_Z : std_logic;
        signal alu_N : std_logic;
        signal alu_V : std_logic;
        signal alu_DONE : std_logic;
        
        -- EX / MEM  
        
        -- MEM / WB
begin
    
     FetchStage : FETCH port map (
           CONTROL_OP      => if_ctl_op,
           branch_address  => if_branch_addr,
           PC_init         => if_pc_init,
           PC_out          => if_pc_out,
           DONE            => if_DONE
     );
    
    ExecuteStage : alu port map (
          Clk       => CLOCK,
          Input1    => alu_input_a,
          Input2    => alu_input_b,
          shiftAmt  => alu_shift_amt,
          ALU_op    => ALU_OP,
          result    => alu_result,
          Z         => alu_Z,
          N         => alu_N,
          Moverflow => alu_V,
          done      => alu_DONE
      );
      
      Decoder : DECODE port map (
          Clk => CLOCK,
          En => id_enable,
          Reset => id_reset,
          instr_In => id_instr_in,
          RW_addr  => id_rw_addr,
          W_En     => id_w_en,
          RA_addr  => id_ra_addr,
          RB_addr  => id_rb_addr,    
          ALU_op   => id_alu_op,
          shiftAmt => id_shift_amt,
          ALU_En   => id_alu_en,
          port_IN  => id_port_in,
          Out_EN   => id_out_en,
          DONE     => id_DONE
       );

        Pipeline : process (CLOCK)
        
            variable cpu_PC : std_logic_vector(15 downto 0);
            
            variable if_PC_out_var : std_logic_vector(15 downto 0);
            
            variable id_rw_addr_var : std_logic_vector(2 downto 0);
            variable id_w_en_var : std_logic;
            variable id_ra_addr_var : std_logic_vector(2 downto 0);
            variable id_rb_addr_var : std_logic_vector(2 downto 0);
            variable id_alu_op_var : std_logic_vector(2 downto 0);
            variable id_shift_amt_var : std_logic_vector(3 downto 0);
            variable id_alu_en_var : std_logic;
            
            variable alu_result_var : std_logic_vector(15 downto 0);
            variable alu_flags_var : std_logic_vector(2 downto 0);
                        
        begin
            cpu_PC := X"0000";

        
            -- Fetch
            if rising_edge(if_DONE) then
                if_PC_out_var := if_PC_out;
            end if;
            
            -- Decode
            if rising_edge(id_DONE) then
                id_rw_addr_var := id_rw_addr;
                id_w_en_var := id_w_en;
                id_ra_addr_var := id_ra_addr;
                id_rb_addr_var := id_rb_addr;
                id_alu_op_var := id_alu_op;
                id_shift_amt_var := id_shift_amt;
                id_alu_en_var := id_alu_en;
            end if;
            
            -- Execute / ALU
            if rising_edge(alu_DONE) then
                alu_result_var := alu_result;
                alu_flags_var(0) := alu_N;
                alu_flags_var(1) := alu_Z;
                alu_flags_var(2) := alu_V;
                
            end if; -- ALU_DONE
            
            -- Memory
            
            -- Write Back
            
        
        end process Pipeline;
        
        
end behavioral;
