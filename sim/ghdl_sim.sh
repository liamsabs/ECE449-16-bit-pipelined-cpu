#!/bin/bash

# Bash script to compile VHDL files, elaborate design, run simulation, and open up GTK Wave to view simulation results
#Compiler: GHDL Simulator: gtkwave 

# Check if both arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <testbench_entity> <unit_under_test_entity>"
    exit 1
fi

#compile ghdl file and testbench

#take in parameters (testbench path and )
TB_ENTITY="$1"
UUT_ENTITY="$2"

#compile
ghdl -a "../src/$UUT_ENTITY.vhd"
ghdl -a "../test/$TB_ENTITY.vhd"

# Elaborate the design
ghdl -e "$TB_ENTITY"

#run elaborated design
ghdl -r "$TB_ENTITY" --wave=wave.ghw

(
    gtkwave wave.ghw
) &

sleep 3

echo "simulation completed"