library ieee;
use ieee.std_logic_1164.all;

entity CONTROL is 
    port(
        CLOCK : in std_logic
    );
end CONTROL;

architecture behavioral of CONTROL is
    ------------------------------------------------------------------------------
    --  FETCH COMPONENT
    ------------------------------------------------------------------------------
    component FETCH is
        port (
            -- Control Signal
            CONTROL_OP     : in std_logic_vector(1 downto 0);

            -- Address to branch to (future)
            branch_address  : in std_logic_vector(15 downto 0);

            -- Program Counter Signals
            PC_init         : in std_logic_vector(15 downto 0);
            PC_out          : out std_logic_vector(15 downto 0);
            
            -- DONE Signal
            DONE            : out std_logic
    );
    end component;

    ------------------------------------------------------------------------------
    --  DECODE COMPONENT
    ------------------------------------------------------------------------------
    component DECODE is
        port (
            -- General Inputs
            Clk, En, Reset : in std_logic;
            instr_In : in std_logic_vector(15 downto 0);

            -- Register File access
            RW_addr  : out std_logic_vector(2 downto 0);
            W_En     : out std_logic;
            RA_addr  : out std_logic_vector(2 downto 0);
            RB_addr  : out std_logic_vector(2 downto 0);    

            -- ALU Signals
            ALU_op   : out std_logic_vector(2 downto 0);
            shiftAmt : out std_logic_vector(3 downto 0);
            ALU_En   : out std_logic;

            -- I/0 Signals
            port_IN  : in std_logic_vector(15 downto 0);
            Out_EN   : in std_logic;
            -- TBA for Instruction Set A & B
            DONE     : out std_logic
    );
    end component;

    ------------------------------------------------------------------------------
    --  EXECUTE COMPONENT
    ------------------------------------------------------------------------------
    component alu is
        port ( 
            Clk             : in std_logic;
            Input1          : in std_logic_vector(15 downto 0); -- Input from RA
            Input2          : in std_logic_vector(15 downto 0); -- Input from RB
            shiftAmt        : in std_logic_vector(3 downto 0); -- Shift amount specified in A3 
            ALU_op          : in std_logic_vector(2 downto 0); -- ALU op code from decode stage
            Result          : out std_logic_vector(15 downto 0); -- ALU Result Output
            Z, N, Moverflow : out std_logic; -- Zero, Negative, and Multiplication overflow flags
            DONE            : out std_logic
        );
    end component;
    ------------------------------------------------------------------------------
    --  MEMORY COMPONENT
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    -- WRITE BACK COMPONENT
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    
    ------------------------------------------------------------------------------
    -- SIGNALS
    ------------------------------------------------------------------------------
    
        -- IF
        
        signal branch_address : std_logic_vector(15 downto 0);
        signal PC_init : std_logic_vector(15 downto 0);
        signal PC : std_logic_vector(15 downto 0);
        
        -- IF
        signal if_ctl_op : std_logic_vector(1 downto 0);
        signal if_branch_addr : std_logic_vector(15 downto 0);
        signal if_pc_init : std_logic_vector(15 downto 0);
        signal if_pc_out : std_logic_vector(15 downto 0);
        signal if_DONE : std_logic;
        
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
    
     FetchStage : fetch port map (
           CONTROL_OP      => if_ctl_op,
           branch_address  => if_branch_addr,
           PC_init         => if_pc_init,
           PC_out          => if_pc_out,
           DONE            => if_DONE
     );
    
    ArithmeticLogicUnit : alu port map (
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
