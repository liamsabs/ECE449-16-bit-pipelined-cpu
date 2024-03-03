library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;


entity alu is
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
end alu;

architecture behavioral of alu is
    -- Signals
    signal addsubOut, nandOut, multupperOut, multlowerOut, barrelshiftOut, testOut, resultTemp : std_logic_vector(15 downto 0); -- buffers for different operations
    signal bsDir: std_logic; -- barrel shift direction which is set from 

    -- Components
    component adderSubtractor_16bit is
        Port (
            A, B   : in std_logic_vector (15 downto 0);
             Sub   : in std_logic;
             Sum   : out std_logic_vector (15 downto 0);
             Cout  : out std_logic
        );
    end component; 

    component baugh_wooley_16bit is
        port(
            clk         : in std_logic;
            BW_A           : in std_logic_vector(15 downto 0);
            BW_B           : in std_logic_vector(15 downto 0);
            C_high      : out std_logic_vector(15 downto 0);
            C_low       : out std_logic_vector(15 downto 0);
            DONE_high   : out std_logic;
            DONE_low    : out std_logic
        );
    end component;

    component nand_16bit is 
        port (  
            A, B : in std_logic_vector(15 downto 0);
            C : out std_logic_vector (15 downto 0)
        );
    end component;

    component barrelshift_16bit is
        port ( 
            direction      : in  std_logic;            -- Left 1 and Right 0
            shiftamount    : in  std_logic_vector(3 downto 0); -- amount to shift (up to 15)
            A              : in  std_logic_vector(15 downto 0);
            ShiftedResult  : out std_logic_vector(15 downto 0) );
    end component;

    begin
        -- Instantiating Different Blocks of ALU
        adderSubtractor : adderSubtractor_16bit port map ( A => Input1, B => Input2, Sub => ALU_op(1), Sum => addsubOut );
        nand16 : nand_16bit port map ( A => Input1, B => Input2, C => nandOut );
        bwmultiplier : baugh_wooley_16bit port map (Clk => Clk, BW_A => Input1, BW_B => Input2, C_high => multupperOut, C_low => multlowerOut);
        barrelshift : barrelshift_16bit port map (direction => bsdir , shiftamount => shiftAmt, A => Input1, ShiftedResult => barrelshiftOut );
        bsdir <= (not ALU_op(1)) and ALU_op(0); -- evaluates to 1 for shift left opcode and 0 for right shift
        TestOut <= Input1; -- set TestOut to RA

        -- Calculating Results 
        resultTemp <= addsubOut when (ALU_op = "001") or (ALU_op = "010") else
                  multlowerOut when ALU_op = "011" else
                  nandOut when ALU_op = "100" else
                  barrelshiftOut when (ALU_op = "101") or (ALU_op = "110") else
                  TestOut when (ALU_op = "111");
         -- Setting Result         
        Result <= resultTemp;

        -- Setting Flags
            Z <= '1' when (resultTemp = "0000000000000000") else '0';
            N <= '1' when (resultTemp(15) = '1') else '0';
            process(ALU_op, multupperOut)
            begin
                if ALU_op = "011" then
                    if multupperOut /= "0000000000000000" then
                        Moverflow <= '1';
                    else
                        Moverflow <= '0';
                    end if;
                else
                    Moverflow <= '0';
                end if;
                DONE <= '1';
            end process;
end behavioral;
