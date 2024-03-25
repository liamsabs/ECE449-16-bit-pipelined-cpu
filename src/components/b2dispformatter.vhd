library ieee;
use ieee.std_logic_1164.all;

entity B2dispformatter is 
    port (
         disps : in std_logic_vector(5 downto 0);
         dispsformatted : out std_logic_vector(15 downto 0)
    );
end entity B2dispformatter;

architecture behavioral of B2dispformatter is
    signal disps_sig          : std_logic_vector (5 downto 0);
    signal dispsformatted_sig : std_logic_vector(15 downto 0);
begin
    disps_sig <= disps;
    process (disps_sig)
    begin
        if disps_sig(5) = '1' then
            dispsformatted_sig <= "111111111" & disps_sig & '0';
        else
            dispsformatted_sig <= "000000000" & disps_sig & '0';
        end if;
    end process;
    dispsformatted <= dispsformatted_sig;
end behavioral; 