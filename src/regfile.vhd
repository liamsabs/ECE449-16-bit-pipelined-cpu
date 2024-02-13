-- 16 x 8 Register File
------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity RegisterFile_16bit is
    port (
        RA_En, RB_En, WA_En, WB_En, Clk, Reset : in std_logic;
        RA_Addr, RB_Addr, WA_Addr, WB_Addr : in std_logic_vector(2 downto 0);
        WA_In, WB_In: in std_logic_vector(15 downto 0);
        RA_Out, RB_Out: out std_logic_vector(15 downto 0)
    );
end RegisterFile_16bit;

architecture behavioral of RegisterFile_16bit is
    -- Signal 
    signal R0, R1, R2, R3, R4, R5, R6, R7 : std_logic_vector (15 downto 0);

begin
    process (Clk, Reset)
    begin
        if Reset = '1' then
            -- Reset conditions
            R0 <= (others => '0');
            R1 <= (others => '0');
            R2 <= (others => '0');
            R3 <= (others => '0');
            R4 <= (others => '0');
            R5 <= (others => '0');
            R6 <= (others => '0');
            R7 <= (others => '0');
        elsif rising_edge(Clk) then
            -- Writing to Write A port
            if WA_En = '1' then
                case WA_Addr is
                    when "000" =>
                        R0 <= WA_In;
                    when "001" =>
                        R1 <= WA_In;
                    when "010" =>
                        R2 <= WA_In;
                    when "011" =>
                        R3 <= WA_In;
                    when "100" =>
                        R4 <= WA_In;
                    when "101" =>
                        R5 <= WA_In;
                    when "110" =>
                        R6 <= WA_In;
                    when "111" =>
                        R7 <= WA_In;
                    when others =>
                        assert false report "Unexpected WA_Addr value" severity failure;
                end case;
            end if;

            -- Writing to Write B port
            if WB_En = '1' then
                case WB_Addr is
                    when "000" =>
                        R0 <= WB_In;
                    when "001" =>
                        R1 <= WB_In;
                    when "010" =>
                        R2 <= WB_In;
                    when "011" =>
                        R3 <= WB_In;
                    when "100" =>
                        R4 <= WB_In;
                    when "101" =>
                        R5 <= WB_In;
                    when "110" =>
                        R6 <= WB_In;
                    when "111" =>
                        R7 <= WB_In;
                    when others =>
                        assert false report "Unexpected WB_Addr value" severity failure;
                end case;
            end if;

            -- Read to Read A port
            if RA_En = '1' then 
                RA_Out <= R0 when RA_Addr = "000",
                          R1 when RA_Addr = "001",
                          R2 when RA_Addr = "010",
                          R3 when RA_Addr = "011",
                          R4 when RA_Addr = "100",
                          R5 when RA_Addr = "101",
                          R6 when RA_Addr = "110",
                          R7 when RA_Addr = "111";
            end if;

            -- Read to Read B port
            if RB_En = '1' then
                RB_Out <= R0 when RB_Addr = "000",
                          R1 when RB_Addr = "001",
                          R2 when RB_Addr = "010",
                          R3 when RB_Addr = "011",
                          R4 when RB_Addr = "100",
                          R5 when RB_Addr = "101",
                          R6 when RB_Addr = "110",
                          R7 when RB_Addr = "111";
            end if;
        end if;
    end process;
end behavioral;