library ieee;
use ieee.std_logic_1164.all;

entity alu is
    port ( 
        Input1   :  in std_logic_vector(15 downto 0); -- Left 1 and Right 0
        Input2   :  in std_logic_vector(15 downto 0); -- amount to shift (up to 15)
        shiftAmt :  in std_logic_vector(3 downto 0); -- 
        ALU_op   :  in std_logic_vector(2 downto 0);
        Result   :  out std_logic_vector(15 downto 0);
        Z, N                : out std_logic );
end alu;

architecture behavioral of alu is
    -- Signals
    signal addsubOut, nandOut, multupperOut, multlowerOut, barrelshiftOut, testOut, resultTemp : std_logic_vector(15 downto 0); -- buffers for different operations
    signal bsDir: std_logic; -- barrel shift direction which is set from 

    -- Components
    component adderSubtractor_16bit is
        Port (
            A, B: in std_logic_vector (15 downto 0);
             Sub: in std_logic;
             Sum: out std_logic_vector (15 downto 0);
             Cout: out std_logic
        );
    end component; 

    component baugh_wooley_16bit is
        port(
            A           : in std_logic_vector(15 downto 0);
            B           : in std_logic_vector(15 downto 0);
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
            direction   : in  std_logic;            -- Left 1 and Right 0
            shiftamount : in  std_logic_vector(3 downto 0); -- amount to shift (up to 15)
            A           : in  std_logic_vector(15 downto 0);
            ShiftedResult      : out std_logic_vector(15 downto 0) );
    end component;

    begin
        adderSubtractor : adderSubtractor_16bit port map ( A => Input1, B => Input2, Sub => ALU_op(1) );
        nand16 : nand_16bit port map ( A => Input1, B => Input2, C => nandOut );
        bwmultiplier : baugh_wooley_16bit port map ( A => Input1, B => Input2, C_high => multupperOut, C_low => multlowerOut);
        barrelshift : barrelshift_16bit port map (direction => bsdir , shiftamount => shiftAmt, A => Input1, ShiftedResult => barrelshiftOut );
        bsdir <= (not ALU_op(1)) and ALU_op(0);

        -- Calculating Results 
        resultTemp <= addsubOut when (ALU_op = "001") or (ALU_op = "010") else
                  multlowerOut when (ALU_op = "011") else
                  nandOut when (ALU_op = "100") else
                  barrelshiftOut when (ALU_op = "101") or (ALU_op = "110") else
                  TestOut;
         -- Setting Result         
        Result <= resultTemp;

        -- Setting Flags
            Z <= '1' when (resultTemp = "0000000000000000") else '0';
            N <= '1' when (resultTemp(15) = '1') else '0';
end behavioral;