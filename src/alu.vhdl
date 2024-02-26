ibrary ieee;
use ieee.std_logic_1164.all;

entity alu is
    port ( 
        Input1   : in std_logic_vector(15 downto 0); -- Left 1 and Right 0
        Input2 : in  std_logic_vector(15 downto 0); -- amount to shift (up to 15)
        shiftAmt : in std_logic_vector(4 downto 0); -- 
        ALU_op     : out std_logic_vector(2 downto 0) );
        Result           : out  std_logic_vector(15 downto 0);
        Z, N                : out std_logic;
end alu;

architecture behavioral of alu is
    -- Signals
    signal addsubOut, nandOut, multOut, barrelshiftOut, testOut : std_logic_vector(15 downto 0);
    signal bsDir : std_logic; 


    -- Components
    component adderSubtractor_16bit is
        Port (
            A, B: in std_logic_vector (15 downto 0);
             Sub: in std_logic;
             Sum: out std_logic_vector (15 downto 0);
             Cout: out std_logic
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
            Result      : out std_logic_vector(15 downto 0) );
    end component;
    begin
        adderSubtractor : adderSubtractor_16bit port map ( A => Input1, B => Input2, Sub => ALU_op(1) );
        nand16 : nand_16bit port map ( A => Input1, B => Input2, C => nandOut );
        -- add multiplier
        bsdir = (not ALU_op(1)) and ALU_up(0);
        barrelshift : barrelshift_16bit port map (direction => bsdir , shiftamount => shiftAmt, A => Input1, Result => Result );

        Result <= addsubOut when (ALU_op = "001") or (ALU_op = "010"),
                  mulOut when (ALU_op = "011"),
                  nandOut when (ALU_op = "100"),
                  barrelshiftOut when (ALU_op = "101") or (ALU_op = "110"),
                  TestOut when (ALU_op = "111");

        
end behavioral;