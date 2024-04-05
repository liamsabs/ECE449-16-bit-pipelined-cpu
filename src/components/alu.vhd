library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;


entity alu is
    port ( 
        Input1          : in std_logic_vector(15 downto 0); -- Input from RA
        Input2          : in std_logic_vector(15 downto 0); -- Input from RB
        shiftAmt        : in std_logic_vector(3 downto 0); -- Shift amount specified in A3 
        ALU_op          : in std_logic_vector(2 downto 0); -- ALU op code from decode stage
        Result          : out std_logic_vector(15 downto 0); -- ALU Result Output
        Resultupper    : out std_logic_vector(15 downto 0)
    );
end alu;

architecture behavioral of alu is
    -- Signals
    signal addsubOut, nandOut, multupperOut, multlowerOut, barrelshiftOut, resultTemp : std_logic_vector(15 downto 0); -- buffers for different operations
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

    component multiplier_16bit is
        port (
            A, B : in  std_logic_vector(15 downto 0);
            Result_High, Result_Low : out std_logic_vector(15 downto 0)
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
        multiplier : multiplier_16bit port map (A => Input1, B => Input2, Result_high => multupperOut, Result_low => multlowerOut);
        barrelshift : barrelshift_16bit port map (direction => bsdir , shiftamount => shiftAmt, A => Input1, ShiftedResult => barrelshiftOut );
        
        process (ALU_op, addsubOut, multlowerOut, nandOut, barrelshiftOut, multupperOut)
        begin
        -- Choose ALU Output
        if ALU_op = "001" or ALU_op = "010" then
            Result <= addsubOut;
        elsif ALU_op = "011" then
            Result <= multlowerOut;
        elsif ALU_op = "100" then
            Result <= nandOut;
        elsif ALU_op = "101" or ALU_op = "110" then
            Result <= barrelshiftOut;
        else 
            Result <= (others => '0');
        end if;
   
        bsdir <= (not ALU_op(1)) and ALU_op(0); -- evaluates to 1 for shift left opcode and 0 for right shift
        Resultupper <= multupperout; -- output upper results of multiplication
        end process;
end behavioral;
