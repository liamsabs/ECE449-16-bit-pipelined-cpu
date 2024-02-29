library ieee;
use ieee.std_logic_1164.all;

entity barrelshift_16bit is
    port ( 
        direction   : in  std_logic;            -- Left 1 and Right 0
        shiftamount : in  std_logic_vector(3 downto 0); -- amount to shift (up to 15)
        A           : in  std_logic_vector(15 downto 0);
        shiftedresult      : out std_logic_vector(15 downto 0) );
end barrelshift_16bit;

architecture behavioral of barrelshift_16bit is


begin 
    process(A, direction, shiftamount)
        variable T1, T2, T3 : std_logic_vector(15 downto 0); -- Temporary Variables to hold
    begin
           -- Initialize 
        T1 := (others => '0');
        T2 := (others => '0');
        T3 := (others => '0');

        case direction is
            -- shift right
            when '0' =>
                if shiftamount(3) = '1' then --shift 8
                    T1 := "00000000" & A(15 downto 8);
                else
                    T1 := A;
                end if;
                
                if shiftamount(2) = '1' then --shift 4
                    T2 := "0000" & T1(15 downto 4);
                else
                    T2 := T1;
                end if; 
                
                if shiftamount(1) = '1' then --shift 2
                    T3 := "00" & T2(15 downto 2);
                else
                    T3 := T2;
                end if;
                
                if shiftamount(0) = '1' then --shift 1
                    shiftedresult <= '0' & T3(15 downto 1);
                else
                    shiftedresult <= T3;
                end if;

            -- shift left
            when '1' =>
                if shiftamount(3) = '1' then --shift 8
                    T1 := A(7 downto 0) & "00000000";
                else
                    T1 := A;
                end if;
                
                if shiftamount(2) = '1' then --shift 4
                    T2 := T1(11 downto 0) & "0000";
                else
                    T2 := T1;
                end if; 
                
                if shiftamount(1) = '1' then --shift 2
                    T3 := T2(13 downto 0) & "00";
                else
                    T3 := T2;
                end if;
                
                if shiftamount(0) = '1' then --shift 1
                    shiftedresult <= T3(14 downto 0) & '0';
                else
                    shiftedresult <= T3;
                end if;
                
            when others =>
                -- Handle undefined cases
                shiftedresult <= (others => 'X');
        end case;
    end process;
end behavioral;