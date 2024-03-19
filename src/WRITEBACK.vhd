library ieee;
use ieee.std_logic_1164.all;

entity WRITEBACK is
    port (
        Clk         : in std_logic;
        WB_Reset    : in std_logic;
        W_data      : in std_logic_vector (15 downto 0);
        W_addr      : in std_logic_vector (2 downto 0);
        W_En        : in std_logic;
        WB_data     : out std_logic_vector (15 downto 0);
        WB_addr     : out std_logic_vector (2 downto 0);
        WB_En       : out std_logic  
    );
end WRITEBACK;

architecture behavioral of WRITEBACK is
    signal W_data_sig : std_logic_vector (15 downto 0);
    signal W_addr_sig : std_logic_vector (2 downto 0);
    signal W_en_sig   : std_logic;
begin
    W_data_sig <= W_data;
    W_addr_sig <= W_addr;
    W_En_sig <= W_En;

    process (Clk, WB_Reset)
    begin
        if WB_Reset = '1' then
            WB_data <= (others => '0');
            WB_addr <= (others => '0');
            WB_En   <= '0';   
        elsif rising_edge(Clk) then
            WB_data <= W_data_sig;
            WB_addr <= W_addr_sig;
            WB_En <= W_En_sig;
        end if;
    end process;
 end behavioral;
