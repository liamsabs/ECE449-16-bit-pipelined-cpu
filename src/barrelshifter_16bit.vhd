library ieee;
use ieee.std_logic_1164.all;

entity barrelshift_16bit is
    port ( direction   : in  std_logic;            -- Left 1 and Right 0
        shiftamount : in  std_logic_vector(3 downto 0); -- amount to shift (up to 15)
        A           : in  std_logic_vector(15 downto 0);
        Result      : out std_logic_vector(15 downto 0) );
end barrelshift_16bit;

architecture behavioral of barrelshift_16bit is
    signal C1, C2, C3 : std_logic_vector(15 downto 0);

begin 
    process(A, direction, shiftamount)
    begin
        case direction is
            -- shift right
            when "0" =>
                if shiftamount(3) = '1' then --shift 8
                    C1 <= "00000000" & A(15 downto 8);
                else
                    C1 <= A;
                end if;
                
                if shiftamount(2) = '1' then --shift 4
                    C2 <= "0000" & C1(15 downto 4);
                else
                    C2 <= C1;
                end if; 
                
                if shiftamount(1) = '1' then --shift 2
                    C3 <= "00" & C2(15 downto 2);
                else
                    C3 <= C2;
                end if;
                
                if shiftamount(0) = '1' then --shift 1
                    Result <= "0" & C3(15 downto 1);
                else
                    Result <= C3;
                end if;

            -- shift left
            when "1" =>
                if shiftamount(3) = '1' then --shift 8
                    C1 <= A(7 downto 0) & "00000000";
                else
                    C1 <= A;
                end if;
                
                if shiftamount(2) = '1' then --shift 4
                    C2 <= C1(11 downto 0) & "0000";
                else
                    C2 <= C1;
                end if; 
                
                if shiftamount(1) = '1' then --shift 2
                    C3 <= C2(13 downto 0) & "00";
                else
                    C3 <= C2;
                end if;
                
                if shiftamount(0) = '1' then --shift 1
                    Result <= C3(14 downto 0) & "0";
                else
                    Result <= C3;
                end if;
        end case;
    end process;
end behavioral;