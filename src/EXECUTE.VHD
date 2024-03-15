library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXECUTE is
    port (
         Clk            : in std_logic;
         Reset          : in std_logic;
         ALU_op         : in std_logic_vector (2 downto 0);          -- OPCODE for ALU
         shiftAmt       : in std_logic_vector (3 downto 0);          -- Amount to shift by
         RA_data        : in std_logic_vector (15 downto 0);         -- Data for ALU A
         RB_data        : in std_logic_vector (15 downto 0);         -- Data for ALU B
         RW_addr_in     : in std_logic_vector (2 downto 0);          -- IN Addr for WB stage
         RW_En_in       : in std_logic;                              -- EN for WB stage
         RW_addr_out    : out std_logic_vector (2 downto 0);         -- OUT Addr for WB stage
         RW_En_out      : out std_logic;                             -- OUT EN for WB stage
         RW_data_out    : out std_logic_vector (15 downto 0);
         Moverflow      : out std_logic;
         Z_flag         : out std_logic;
         N_flag         : out std_logic;
         BR_EN          : in std_logic;
         BR_OP          : in std_logic_vector(1 downto 0);       
         IN_IN          : in std_logic_vector (15 downto 0);
         IN_En          : in std_logic;
         BR_CTRL        : out std_logic;
         BR_addr_in     : in std_logic_vector(15 downto 0);
         BR_addr_out    : out std_logic_vector(15 downto 0);
         BR_sub_PC      : in std_logic_vector(15 downto 0);

     );
end EXECUTE;

architecture Behavioral of EXECUTE is

    component alu is
        port ( 
            Input1          : in std_logic_vector(15 downto 0);     -- Input from RA
            Input2          : in std_logic_vector(15 downto 0);     -- Input from RB
            shiftAmt        : in std_logic_vector(3 downto 0);      -- Shift amount specified in A3 
            ALU_op          : in std_logic_vector(2 downto 0);      -- ALU op code from decode stage
            Result          : out std_logic_vector(15 downto 0);    -- ALU Result Output
            Resultupper    : out std_logic_vector(15 downto 0)
        );
    end component;

    signal ALU_Result : std_logic_vector(15 downto 0);              -- ALU Result
    signal ALU_Result_upper : std_logic_vector(15 downto 0);        -- ALU upper word for multiplication
    signal IN_result : std_logic_vector(15 downto 0);               -- IN value
    signal Resulttemp : std_logic_vector(15 downto 0);              -- Temporary result signal
    signal Moverflow_sig : std_logic;                               -- Overflow from multiplication
    signal RW_addr_sig : std_logic_vector (2 downto 0);             -- Address for WB
    signal RW_En_sig : std_logic;                                   -- Enable for WB
    signal Z_sig : std_logic;
    signal N_sig : std_logic;

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
        Moverflow <= Moverflow_sig;  
        RW_addr_sig <= RW_addr_in;
        RW_En_sig <= RW_En_in;
        Resulttemp <= IN_result when IN_En = '1' else ALU_Result; 
        
        -- Setting Flags
        process(Clk, Resulttemp, ALU_op)
        begin
            if rising_edge (Clk) then
                RW_addr_out <= RW_addr_sig; -- propogate Write address
                RW_En_out   <= RW_En_sig; -- propogate write enable 

                -- Zero signal
                if resulttemp = X"0000" then 
                    Z_sig <= "1";
                else Z_sig <= "0";
                end if;

                -- Negative signal
                if resulttemp(15) = "1" then 
                    N_sig <= "1";
                else N_sig <= "0";
                end if;

                -- Overflow signal
                case Moverflow_Sig is
                    when "0" => Moverflow <= "0";
                    when "1" => Moverflow <= "1";
                end case;

                case BR_EN is
                    when "0" =>
                        case ALU_OP is
                            when "100" =>   -- set flags (TEST)
                                Z_flag <= Z_sig;
                                N_flag <= N_sig;
                            
                            when "011" =>   -- multiply
                                if alu_upper /= X"0000" then
                                    Moverflow_sig <= "1";
                                end if;

                        end case;

                    when "1" => 
                        case BR_OP is
                            when "00" =>    -- branch unconditionally
                                BR_CTRL <= "1";

                            when "01" =>    -- branch if zero
                                if Z_sig = "1" then 
                                    BR_CTRL <= "1";
                                else BR_CTRL <= "0";
                                end if;

                            when "10" =>    -- branch if negative
                                if N_sig = "1" then 
                                    BR_CTRL <= "1";
                                else BR_CTRL <= "0";
                                end if;

                            when "11" =>    -- branch sub
                                BR_CTRL <= "1"; --EDIT

                        end case;

                end case;

                -- output case statement
                if BR_OP = "11" then
                    RW_data_out <= branch_sub_PC;
                elsif IN_EN = "1" then
                    RW_data_out <= IN_in;
                else 
                    RW_data_out <= resulttemp;
                end if;

            end if;
        end process;
end Behavioral;
