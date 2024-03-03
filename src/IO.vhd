library ieee;
use ieee.std_logic_1164.all;

entity IO is 
    port (
        Clk         : in std_logic;
        Reset       : in std_logic;
        -- Input
        Input       : in std_logic_vector(15 downto 0);
        Input_out   : out std_logic_vector(15 downto 0);
        Input_En    : in std_logic_vector(15 downto 0);
        -- Output
        Output_in   : in std_logic_vector(15 downto 0);
        Output      : out std_logic_vector(15 downto 0);
        Output_En   : in std_logic;
    );
end IO;
    
architecture behavioral of IO is
begin
    Output_intermediate
    process (Clk, Reset)
    if Reset = '1' then
        Output <= '0';
    elsif rising_edge(Clk) then
        if Output_En = '1' then
            Output <= Output_in;
        elsif Input_En = '1' then
            Input_out <= Input; 
    end process; 
end behavioral;
