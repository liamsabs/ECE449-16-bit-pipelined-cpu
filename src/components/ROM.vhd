library ieee;
Library xpm;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use xpm.vcomponents.all;

entity ROM is
    port(
        Reset     : in std_logic;  
        Clk       : in std_logic;
        -- Memory Interface Signals       
        addr_A    : in std_logic_vector (15 downto 0);
        Dout_A    : out std_logic_vector (15 downto 0)
    );
end ROM;


architecture behavioral of ROM is
begin
-- xpm_memory_sprom: Single Port ROM
-- Xilinx Parameterized Macro, version 2018.3
    xpm_memory_sprom_inst : xpm_memory_sprom
    generic map (
        -- Common module generics
        MEMORY_SIZE             => 16384,           --positive integer
        MEMORY_PRIMITIVE        => "auto",          --string; "auto", "distributed", or "block";
        MEMORY_INIT_FILE        => "bootloader.mem",          --string; "none" or "<filename>.mem" 
        MEMORY_INIT_PARAM       => "",              --string;
        USE_MEM_INIT            => 1,               --integer; 0,1
        WAKEUP_TIME             => "disable_sleep", --string; "disable_sleep" or "use_sleep_pin" 
        MESSAGE_CONTROL         => 0,               --integer; 0,1
        ECC_MODE                => "no_ecc",        --string; "no_ecc", "encode_only", "decode_only" or "both_encode_and_decode" 
        AUTO_SLEEP_TIME         => 0,               --Do not Change
        MEMORY_OPTIMIZATION     => "true",          --string; "true", "false" 
        
        -- Port A module generics
        READ_DATA_WIDTH_A       => 16,              --positive integer
        ADDR_WIDTH_A            => 16,               --positive integer
        READ_RESET_VALUE_A      => "0",             --string
        READ_LATENCY_A          => 0                --non-negative integer
    )
        
    port map (
        addra           => addr_A,
        clka            => Clk,
        --dbiterra        => ,
        douta           => Dout_A,
        ena             => '1',
        injectdbiterra  => '0',
        injectsbiterra  => '0',
        regcea          => '1',
        rsta            => Reset,
        --sbiterra        => ,
        sleep           => '0'
    );   
end behavioral;
      