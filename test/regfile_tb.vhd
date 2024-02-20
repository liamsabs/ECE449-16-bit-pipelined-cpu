library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regfile_tb is 
end entity regfile_tb;

architecture testbench of regfile is
signal RA_En, RB_En, WA_En, WB_En, Clk, Reset : std_logic;
signal RA_Addr, RB_Addr, WA_Addr, WB_Addr : std_logic_vector(2 downto 0);
signal WA_In, WB_In, RA_Out, RB_Out:std_logic_vector(15 downto 0);

component RegisterFile_16bit is
    port (
        RA_En, RB_En, WA_En, WB_En, Clk, Reset : in std_logic;
        RA_Addr, RB_Addr, WA_Addr, WB_Addr : in std_logic_vector(2 downto 0);
        WA_In, WB_In: in std_logic_vector(15 downto 0);
        RA_Out, RB_Out: out std_logic_vector(15 downto 0)
    );
end component;

begin
process(RA_En, Rb_En, WA_En, WB_En, Clk, Reset,
 RA_Addr, RB_Addr, WA_Addr, WB_Addr, 
 WA_In, WB_In, 
 RA_Out, RB_Out)

 begin
    UUT: RegisterFile_16bit port map (RA_En, Rb_En, WA_En, WB_En, Clk, Reset,
        RA_Addr, RB_Addr, WA_Addr, WB_Addr, 
        WA_In, WB_In, 
        RA_Out, RB_Out);

    stimulus_process: process
    begin


    end process stimulus_process;
end architecture testbench;
