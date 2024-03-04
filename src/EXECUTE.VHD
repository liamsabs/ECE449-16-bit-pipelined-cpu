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
         IN_IN      : in std_logic_vector (15 downto 0);
         IN_En      : in std_logic; 
         Done       : out std_logic
     );
end EXECUTE;

architecture Behavioral of EXECUTE is

component alu is
    port ( 
        Input1          : in std_logic_vector(15 downto 0); -- Input from RA
        Input2          : in std_logic_vector(15 downto 0); -- Input from RB
        shiftAmt        : in std_logic_vector(3 downto 0); -- Shift amount specified in A3 
        ALU_op          : in std_logic_vector(2 downto 0); -- ALU op code from decode stage
        Result          : out std_logic_vector(15 downto 0); -- ALU Result Output
        Resultupper    : out std_logic_vector(15 downto 0)
    );
end component;

signal ALU_Result, ALU_Result_upper, IN_result, Resulttemp : std_logic_vector(15 downto 0);
signal Z_sig, N_sig, Moverflow_sig : std_logic;

begin

    ALUnit : alu port map(
        Input1 => RA_data,
        Input2 => RB_data,
        shiftAmt => shiftAmt,
        ALU_op => ALU_op,
        Result => ALU_Result,
        Resultupper => ALU_Result_upper
        );
    IN_result <= IN_IN;
    Result_out <= Resulttemp;
    Z <= Z_sig; N <= N_sig; Moverflow <= Moverflow_sig; 
    
    Resulttemp <= IN_result when IN_En = '1' else ALU_Result;
    
   -- Setting Flags
   process(Clk, Resulttemp)
   begin
        if rising_edge (Clk) and (ALU_op /= "000") then
            -- setting Z flag
            if resulttemp = X"0000" then
                Z_sig <= '1';
            else Z_sig <= '0';
            end if;
            -- setting N flag
            if resulttemp(15) = '1' then
                N_sig <= '1';
            else N_sig <= '0';
            end if;
            -- if multiply 
            if (ALU_op = "011") and (ALU_Result_upper /= "0000000000000000") then
               Moverflow_sig <= '1';
            else
               Moverflow_sig <= '0';
            end if;
        end if;
    end process;
end Behavioral;
