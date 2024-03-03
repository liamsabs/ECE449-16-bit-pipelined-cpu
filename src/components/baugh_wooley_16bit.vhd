library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------------------
--  AND Block
------------------------------------------------------------------------------------

entity and_block is
    port(
        in1, in2, Ci, AND_Si    : in std_logic;
        Co, So              : out std_logic
    );
end and_block;

architecture Behavioral of and_block is
    signal and_Result : std_logic;

    component FullAdder_1bit is
        port(
            a, b, Cin: in std_logic;
            Sum, Cout: out std_logic
        );
    end component;

    begin
        and_result <= in1 AND in2;
        add : FullAdder_1bit port map (
            A => AND_Si, 
            B => and_result, 
            Cin => Ci, 
            Sum => So, 
            Cout => Co
            );

end Behavioral;

------------------------------------------------------------------------------------
--  NAND Block
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity nand_block is
    port(
        in1, in2, Ci, NAND_Si    : in std_logic;
        Co, So              : out std_logic
    );
end nand_block;

architecture Behavioral of nand_block is
    signal nand_Result : std_logic;

    component FullAdder_1bit is
        port(
            a, b, Cin: in std_logic;
            Sum, Cout: out std_logic
        );
    end component;

    begin
        nand_result <= in1 NAND in2;
        add : FullAdder_1bit port map (
            A => NAND_Si, 
            B => nand_result, 
            Cin => Ci, 
            Sum => So, 
            Cout => Co
            );

end Behavioral;

------------------------------------------------------------------------------------
--  BW Line 0-14
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity baugh_wooley_first_lines is
    port(
        A       : in std_logic_vector(15 downto 0);
        B       : in std_logic;
        Cin     : in std_logic_vector(15 downto 0);
        Si      : in std_logic_vector(15 downto 0);
        Cout    : out std_logic_vector(15 downto 0);
        Sout    : out std_logic_vector(15 downto 0); 
        Sout0   : out std_logic
    );
end baugh_wooley_first_lines;

architecture Behavioral of baugh_wooley_first_lines is

    signal sum_out_0 : std_logic;

    component and_block is
        port(
            in1, in2, Ci, AND_Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    component nand_block is
        port(
            in1, in2, Ci, NAND_Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    begin
        
        AND0 : and_block port map (
                in1 => A(0), 
                in2 => B, 
                Ci => Cin(0), 
                AND_Si => Si(0), 
                Co => Cout(0), 
                So => sum_out_0
                );
         
         sout0 <= sum_out_0;
         sout(0) <= sum_out_0;
        
        G_AND : for and_i in 1 to 14 generate
                AND_gen : and_block port map (
                    in1 => A(and_i), 
                    in2 => B, 
                    Ci => Cin(and_i), 
                    AND_Si => Si(and_i), 
                    Co => Cout(and_i), 
                    So => Sout(and_i)
                    );
         end generate G_AND;
                 
                 NAND15 : Nand_block port map (
                     in1 => A(15), 
                     in2 => B, 
                     Ci => Cin(15), 
                     NAND_Si => Si(15), 
                     Co => Cout(15), 
                     So => Sout(15)
                 );
          
end Behavioral;

------------------------------------------------------------------------------------
--  BW Line 15
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity baugh_wooley_last_line is
    port(
        A       : in std_logic_vector(15 downto 0);
        B       : in std_logic;
        Cin     : in std_logic_vector(15 downto 0);
        Si      : in std_logic_vector(15 downto 0);
        Cout    : out std_logic_vector(15 downto 0);
        Sout    : out std_logic_vector(15 downto 0); 
        Sout0   : out std_logic
    );
end baugh_wooley_last_line;

architecture Behavioral of baugh_wooley_last_line is

    signal sum_out_0 : std_logic;

    component and_block is
        port(
            in1, in2, Ci, AND_Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    component nand_block is
        port(
            in1, in2, Ci, NAND_Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    begin
        
        NAND0 : nand_block port map (
            in1 => A(0), 
            in2 => B, 
            Ci => Cin(0), 
            NAND_Si => Si(0), 
            Co => Cout(0), 
            So => sum_out_0
            );
        
         sout0 <= sum_out_0;
         sout(0) <= sum_out_0;
        
        G_NAND : for nand_i in 0 to 14 generate
            NAND_gen : nand_block port map (
                in1 => A(nand_i), 
                in2 => B, 
                Ci => Cin(nand_i), 
                NAND_Si => Si(nand_i), 
                Co => Cout(nand_i), 
                So => Sout(nand_i)
                );
         end generate G_NAND;
         
         AND15 : and_block port map (
             in1 => A(15), 
             in2 => B, 
             Ci => Cin(15), 
             AND_Si => Si(15), 
             Co => Cout(15), 
             So => Sout(15)
         );

end Behavioral;

------------------------------------------------------------------------------------
--  Baug-Wooley Multiplier
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity baugh_wooley_16bit is
    port(
        clk         : in std_logic;
        BW_A        : in std_logic_vector(15 downto 0);
        BW_B        : in std_logic_vector(15 downto 0);
        C_high      : out std_logic_vector(15 downto 0);
        C_low       : out std_logic_vector(15 downto 0);
        DONE_high   : out std_logic;
        DONE_low    : out std_logic
    );
end baugh_wooley_16bit;

architecture Functional of baugh_wooley_16bit is
    signal BW_carry_in : std_logic_vector(15 downto 0);
    signal BW_carry_out : std_logic_vector(15 downto 0);
    signal BW_sum_in : std_logic_vector(15 downto 0);
    signal BW_sum_out : std_logic_vector(15 downto 0);
    signal BW_adder_carry : std_logic_vector(15 downto 0);
    signal A_internal, B_internal, C_high_internal, C_low_internal : std_logic_vector(15 downto 0);
    
    signal last_adder_out : std_logic;
   
    
    component FullAdder_1bit is
        port(
            a, b, Cin: in std_logic;
            Sum, Cout: out std_logic
        );
    end component;

    component baugh_wooley_first_lines is
        port(
            A       : in std_logic_vector(15 downto 0);
            B       : in std_logic;
            Cin     : in std_logic_vector(15 downto 0);
            Si      : in std_logic_vector(15 downto 0);
            Cout    : out std_logic_vector(15 downto 0);
            Sout    : out std_logic_vector(15 downto 0); 
            Sout0   : out std_logic
        );
    end component;

    component baugh_wooley_last_line is
        port(
            A       : in std_logic_vector(15 downto 0);
            B       : in std_logic;
            Cin     : in std_logic_vector(15 downto 0);
            Si      : in std_logic_vector(15 downto 0);
            Cout    : out std_logic_vector(15 downto 0);
            Sout    : out std_logic_vector(15 downto 0); 
            Sout0   : out std_logic
        );
    end component;

    begin

        BW_carry_in <= X"0000";
        BW_sum_in <= X"0000";
        BW_adder_carry <= X"0001";
        A_internal <= BW_A;
        B_internal <= BW_B;

            G1 :  for i in 0 to 15 generate
                first_lines : baugh_wooley_first_lines port map (
                    A => A_internal,
                    B => B_internal(i), 
                    Cin => BW_carry_in, 
                    Si => BW_sum_in, 
                    Cout => BW_carry_out, 
                    Sout => BW_sum_out, 
                    Sout0 => C_low_internal(i)
                    );
                    
                    BW_carry_in <= BW_carry_out;
                    BW_sum_in <= BW_sum_out;
            end generate G1;
            
            last_line : baugh_wooley_last_line port map (
                A => A_internal, 
                B => B_internal(15), 
                Cin => BW_carry_in, 
                Si => BW_sum_in, 
                Cout => BW_carry_out, 
                Sout => BW_sum_out, 
                Sout0 => C_low_internal(15)
                );

            
             adder : FullAdder_1bit port map (
                    A => BW_sum_out(1), 
                    B => BW_carry_out(0), 
                    Cin => '0', 
                    Sum => C_high_internal(0), 
                    Cout => BW_adder_carry(0)
                    );
             
             G2 : for j in 1 to 14 generate
                    adder : FullAdder_1bit port map (
                    A => BW_sum_out(j+1), 
                    B => BW_carry_out(j), 
                    Cin => BW_adder_carry(j-1), 
                    Sum => C_high_internal(j), 
                    Cout => BW_adder_carry(j)
                    );
             end generate G2;
             
             LastAdder : FullAdder_1bit port map (
                    A => '1', 
                    B => BW_carry_out(15), 
                    Cin => BW_adder_carry(14),
                    Sum => C_high_internal(15), 
                    Cout => BW_adder_carry(15)
                    );


        overall : process(clk)
        begin
            
            C_low <= C_low_internal;
            DONE_low <= '1';
            
            C_high <= C_high_internal;
            DONE_high <= '1';

         end process overall;
        
end Functional; 

