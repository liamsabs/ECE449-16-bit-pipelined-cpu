library ieee;
use ieee.std_logic_1164.all;

entity CONTROL is {
    port(
        CLOCK : in std_logic;
    );
}

architecture behavioral of CONTROL is
    ------------------------------------------------------------------------------
    -- SIGNALS
    ------------------------------------------------------------------------------

    -- IF / ID

    signal branch_address : std_logic_vector(15 downto 0);
    signal PC_init : std_logic_vector(15 downto 0);
    signal PC : std_logic_vector(15 downto 0);

    -- ID / EX

    -- EX / MEM

    -- MEM / WB

    ------------------------------------------------------------------------------
    --  FETCH COMPONENT
    ------------------------------------------------------------------------------
    component FETCH is
        port(
            -- Control Signal
            CONTROL_OP     : in std_logic_vector(1 downto 0);

            -- Address to branch to (future)
            branch_address  : in std_logic_vector(15 downto 0);

            -- Program Counter Signals
            PC_init         : in std_logic_vector(15 downto 0);
            PC              : out std_logic_vector(15 downto 0);
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
            Out_EN   : in std_logic
            -- TBA for Instruction Set A & B
    );
    end component;

    ------------------------------------------------------------------------------
    --  EXECUTE COMPONENT
    ------------------------------------------------------------------------------
    component ALU is
        port ( 
            Input1          : in std_logic_vector(15 downto 0); -- Input from RA
            Input2          : in std_logic_vector(15 downto 0); -- Input from RB
            shiftAmt        : in std_logic_vector(3 downto 0); -- Shift amount specified in A3 
            ALU_op          : in std_logic_vector(2 downto 0); -- ALU op code from decode stage
            Result          : out std_logic_vector(15 downto 0); -- ALU Result Output
            Z, N, Moverflow : out std_logic -- Zero, Negative, and Multiplication overflow flags
    );
    end component;
    ------------------------------------------------------------------------------
    --  MEMORY COMPONENT
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    -- WRITE BACK COMPONENT
    ------------------------------------------------------------------------------

    begin
        PC_init <= "0000000000000000";