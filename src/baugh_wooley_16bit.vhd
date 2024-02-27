library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------------------
--  AND Block
------------------------------------------------------------------------------------

entity and_block is
    port(
        in1, in2, Ci, Si    : in std_logic;
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
        add : FullAdder_1bit port map (Si, and_result, Ci, So, Co);

end Behavioral;

------------------------------------------------------------------------------------
--  NAND Block
------------------------------------------------------------------------------------

entity nand_block is
    port(
        in1, in2, Ci, Si    : in std_logic;
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
        add : FullAdder_1bit port map (Si, nand_result, Ci, So, Co);

end Behavioral;

------------------------------------------------------------------------------------
--  BW Line 0-14
------------------------------------------------------------------------------------

entity baugh_wooley_first_lines is
    port(
        A       : in std_logic_vector(15 downto 0);
        B       : in std_logic;
        Cin     : in std_logic_vector(15 downto 0);
        Si      : in std_logic_vector(15 downto 0);
        Cout    : out std_logic_vector(15 downto 0);
        Sout    : out std_logic_vector(15 downto 1); 
        Sout0   : out std_logic;
    );
end baugh_wooley_first_lines;

architecture Behavioral of baugh_wooley_first_lines is

    component and_block is
        port(
            in1, in2, Ci, Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    component nand_block is
        port(
            in1, in2, Ci, Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    begin
        a0  :   and_block port map (A(0), B, Cin(0), Si(0), Cout(0), Sout0);
        a1  :   and_block port map (A(1), B, Cin(1), Si(1), Cout(1), Sout(1));
        a2  :   and_block port map (A(2), B, Cin(2), Si(2), Cout(2), Sout(2));
        a3  :   and_block port map (A(3), B, Cin(3), Si(3), Cout(3), Sout(3));
        a4  :   and_block port map (A(4), B, Cin(4), Si(4), Cout(4), Sout(4));
        a5  :   and_block port map (A(5), B, Cin(5), Si(5), Cout(5), Sout(5));
        a6  :   and_block port map (A(6), B, Cin(6), Si(6), Cout(6), Sout(6));
        a7  :   and_block port map (A(7), B, Cin(7), Si(7), Cout(7), Sout(7));
        a8  :   and_block port map (A(8), B, Cin(8), Si(8), Cout(8), Sout(8));
        a9  :   and_block port map (A(9), B, Cin(9), Si(9), Cout(9), Sout(9));
        a10 :   and_block port map (A(10), B, Cin(10), Si(10), Cout(10), Sout(10));
        a11 :   and_block port map (A(11), B, Cin(11), Si(11), Cout(11), Sout(11));
        a12 :   and_block port map (A(12), B, Cin(12), Si(12), Cout(12), Sout(12));
        a13 :   and_block port map (A(13), B, Cin(13), Si(13), Cout(13), Sout(13));
        a14 :   and_block port map (A(14), B, Cin(14), Si(14), Cout(14), Sout(14));
        a15 :   nand_block port map (A(15), B, Cin(15), Si(15), Cout(15), Sout(15));

end Behavioral;

------------------------------------------------------------------------------------
--  BW Line 15
------------------------------------------------------------------------------------

entity baugh_wooley_last_line is
    port(
        A       : in std_logic_vector(15 downto 0);
        B       : in std_logic;
        Cin     : in std_logic_vector(15 downto 0);
        Si      : in std_logic_vector(15 downto 0);
        Cout    : out std_logic_vector(15 downto 0);
        Sout    : out std_logic_vector(15 downto 1); 
        Sout0   : out std_logic;
    );
end baugh_wooley_last_line;

architecture Behavioral of baugh_wooley_last_line is

    component and_block is
        port(
            in1, in2, Ci, Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    component nand_block is
        port(
            in1, in2, Ci, Si    : in std_logic;
            Co, So              : out std_logic
        );
    end component;

    begin
        a0  :   nand_block port map (A(0), B, Cin(0), Si(0), Cout(0), Sout0);
        a1  :   nand_block port map (A(1), B, Cin(1), Si(1), Cout(1), Sout(1));
        a2  :   nand_block port map (A(2), B, Cin(2), Si(2), Cout(2), Sout(2));
        a3  :   nand_block port map (A(3), B, Cin(3), Si(3), Cout(3), Sout(3));
        a4  :   nand_block port map (A(4), B, Cin(4), Si(4), Cout(4), Sout(4));
        a5  :   nand_block port map (A(5), B, Cin(5), Si(5), Cout(5), Sout(5));
        a6  :   nand_block port map (A(6), B, Cin(6), Si(6), Cout(6), Sout(6));
        a7  :   nand_block port map (A(7), B, Cin(7), Si(7), Cout(7), Sout(7));
        a8  :   nand_block port map (A(8), B, Cin(8), Si(8), Cout(8), Sout(8));
        a9  :   nand_block port map (A(9), B, Cin(9), Si(9), Cout(9), Sout(9));
        a10 :   nand_block port map (A(10), B, Cin(10), Si(10), Cout(10), Sout(10));
        a11 :   nand_block port map (A(11), B, Cin(11), Si(11), Cout(11), Sout(11));
        a12 :   nand_block port map (A(12), B, Cin(12), Si(12), Cout(12), Sout(12));
        a13 :   nand_block port map (A(13), B, Cin(13), Si(13), Cout(13), Sout(13));
        a14 :   nand_block port map (A(14), B, Cin(14), Si(14), Cout(14), Sout(14));
        a15 :   and_block port map (A(15), B, Cin(15), Si(15), Cout(15), Sout(15));

end Behavioral;

------------------------------------------------------------------------------------
--  Baug-Wooley Multiplier
------------------------------------------------------------------------------------

entity baugh_wooley_16bit is
    port(
        clk         : in std_logic;
        A           : in std_logic_vector(15 downto 0);
        B           : in std_logic_vector(15 downto 0);
        C_high      : out std_logic_vector(15 downto 0);
        C_low       : out std_logic_vector(15 downto 0);
        DONE_high   : out std_logic;
        DONE_low    : out std_logic
    );
end baugh_wooley_16bit;

architecture Functional of baugh_wooley is
    signal carry_in : std_logic_vector(15 downto 0);
    signal sum_in : std_logic_vector(15 downto 0);
    signal carry_out : std_logic_vector(15 downto 0);
    signal sum_out : std_logic_vector(14 downto 0);
    
    component FullAdder_16bit is
        port(
            A   : in std_logic_vector(15 downto 0);
            B   : in std_logic_vector(15 downto 0);
            Cin : in std_logic;
            C   : out std_logic_vector(15 downto 0);
            Cout: out std_logic
        );
    end component;

    component baugh_wooley_first_lines is
        port(
            A       : in std_logic_vector(15 downto 0);
            B       : in std_logic;
            Cin     : in std_logic_vector(15 downto 0);
            Si      : in std_logic_vector(15 downto 0);
            Cout    : out std_logic_vector(15 downto 0);
            Sout    : out std_logic_vector(15 downto 1); 
            Sout0   : out std_logic;
        );
    end component;

    component baugh_wooley_last_line is
        port(
            A       : in std_logic_vector(15 downto 0);
            B       : in std_logic;
            Cin     : in std_logic_vector(15 downto 0);
            Si      : in std_logic_vector(15 downto 0);
            Cout    : out std_logic_vector(15 downto 0);
            Sout    : out std_logic_vector(15 downto 1); 
            Sout0   : out std_logic;
        );
    end component;

    begin
        overall : process(clk)
        begin
            line0   :   baugh_wooley_first_lines port map (A, B(0), "0000000000000000", "0000000000000000", )
                

end Functional;       