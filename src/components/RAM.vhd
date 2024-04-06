library ieee;
Library xpm;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use xpm.vcomponents.all;

entity RAM is
    port(
        Reset     : in std_logic;  
        Clk       : in std_logic;
        -- Port A       
        addr_A    : in std_logic_vector(8 downto 0);
        Dout_A    : out std_logic_vector(15 downto 0);
        Din_A     : in std_logic_vector(15 downto 0);
        W_En_A    : in std_logic_vector(0 downto 0); 
        -- Port B     
        addr_B    : in std_logic_vector(8 downto 0);
        Dout_B    : out std_logic_vector(15 downto 0)
    );
end RAM;


architecture behavioral of RAM is
begin
    -- xpm_memory_dpdistram: Dual Port Distributed RAM
    -- Xilinx Parameterized Macro, version 2018.3
    xpm_memory_dpdistram_inst : xpm_memory_dpdistram
    generic map (
        MEMORY_SIZE             => 8192, -- 1024 bytes block
        CLOCKING_MODE           => "common_clock", -- DEFAULT VALUE
        MEMORY_INIT_FILE        => "Test_FormatA_16Bit.mem", -- DEFAULT VALUE
        MEMORY_INIT_PARAM       => "", -- DEFAULT VALUE
        USE_MEM_INIT            => 1,              --integer; 0,1
        MESSAGE_CONTROL         => 0,              --integer; 0,1
        USE_EMBEDDED_CONSTRAINT => 0,              --integer: 0,1
        MEMORY_OPTIMIZATION     => "true",          --string; "true", "false" 
    
        -- Port A module generics
        WRITE_DATA_WIDTH_A      => 16,             -- 16-bit data
        READ_DATA_WIDTH_A       => 16,             -- 16-bit data
        BYTE_WRITE_WIDTH_A      => 16,             -- 16-bit data
        ADDR_WIDTH_A            => 9,             -- 16-bit addressing
        READ_RESET_VALUE_A      => "0",            --string
        READ_LATENCY_A          => 1,              --non-negative integer
    
        -- Port B module generics
        READ_DATA_WIDTH_B       => 16,             --positive integer
        ADDR_WIDTH_B            => 9,              --positive integer
        READ_RESET_VALUE_B      => "0",            --string
        READ_LATENCY_B          => 1               --non-negative integer
    )
    port map (
        addra          => addr_A,
        addrb          => addr_B,
        clka           => Clk,
        clkb           => Clk,
        dina           => Din_A,
        douta          => Dout_A,
        doutb          => Dout_B,
        ena            => '1',
        enb            => '1',
        regcea         => '1',
        regceb         => '1',
        rsta           => Reset,
        rstb           => Reset,
        wea            => W_En_A
    );
end behavioral;

