library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXECUTE is
    port (
-- EX Signals
         Clk        : in std_logic;
         ALU_op     : in std_logic_vector (2 downto 0);
         shiftAmt   : in std_logic_vector (3 downto 0);
         RA_data    : in std_logic_vector (15 downto 0);
         RB_data    : in std_logic_vector (15 downto 0);
         

         Result_out : out std_logic_vector (15 downto 0);
         Z          : out std_logic;
         N          : out std_logic;
         Moverflow  : out std_logic;
         
         Input_IN   : in std_logic_vector (15 downto 0)
     );
end EXECUTE;

architecture Behavioral of EXECUTE is

component alu is
    port ( 
        Clk             : in std_logic;
        Input1          : in std_logic_vector(15 downto 0); -- Input from RA
        Input2          : in std_logic_vector(15 downto 0); -- Input from RB
        shiftAmt        : in std_logic_vector(3 downto 0); -- Shift amount specified in A3 
        ALU_op          : in std_logic_vector(2 downto 0); -- ALU op code from decode stage
        Result          : out std_logic_vector(15 downto 0); -- ALU Result Output
        Result_upper    : out std_logic_vector(15 downto 0);
    );
end component;

signal ALU_Result : std_logic_vector(15 downto 0);
signal Mult_upper : std_logic_vector(15 downto 0);

begin

    ALUnit : alu port map(
        Clk => Clk,
        Input1 => RA_data,
        Input2 => RB_data,
        shiftAmt => shiftAmt,
        ALU_op => ALU_op,
        Result => ALU_Result,
        Result_upper => ALU_Result_upper    
    );


end Behavioral;
