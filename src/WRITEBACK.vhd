library ieee;
use ieee.std_logic_1164.all;

entity WRITEBACK is
    port (
        WB_Reset    : in std_logic;
        W_data      : in std_logic_vector (15 downto 0);
        MEM_data    : in std_logic_vector (15 downto 0);
        W_addr      : in std_logic_vector (2 downto 0);
        W_En        : in std_logic;
        L_op        : in std_logic_vector (2 downto 0);
        WB_data     : out std_logic_vector (15 downto 0);
        WB_addr     : out std_logic_vector (2 downto 0);
        WB_En       : out std_logic  
    );
end WRITEBACK;

architecture behavioral of WRITEBACK is
begin
    process (WB_Reset, W_data, W_addr, W_En, L_op, Mem_data)
    begin
        if WB_Reset = '1' then
            WB_data <= (others => '0');
            WB_addr <= (others => '0');
            WB_En   <= '0';   
        elsif L_op = "100" then -- In the case of a load command, write back memory data instead
            WB_data <= MEM_data;
            WB_addr <= W_addr;
            WB_En <= W_En;
        else
            WB_data <= W_data;
            WB_addr <= W_addr;
            WB_En <= W_En;
        end if;
    end process;
 end behavioral;
