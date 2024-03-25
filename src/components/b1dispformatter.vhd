library ieee;
use ieee.std_logic_1164.all;

entity B1dispformatter is 
    port (
         disp1 : in std_logic_vector(8 downto 0);
         disp1formatted : out std_logic_vector(15 downto 0)
    );
end entity B1dispformatter;

architecture behavioral of B1dispformatter is
    signal disp1_sig          : std_logic_vector (8 downto 0);
    signal disp1formatted_sig : std_logic_vector(15 downto 0);
begin
    disp1_sig <= disp1;
    process (disp1_sig)
    begin
        if disp1_sig(8) = '1' then
            disp1formatted_sig <= "111111" & disp1_sig & '0';
        else
            disp1formatted_sig <= "000000" & disp1_sig & '0';
        end if;
    end process;
    disp1formatted <= disp1formatted_sig;
end behavioral; 