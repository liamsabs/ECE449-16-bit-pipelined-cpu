#!/bin/bash

# Bash script to compile VHDL files, elaborate design, run simulation, and open up GTK Wave to view simulation results
#Compiler: GHDL Simulator: gtkwave 

# Check if the argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <entity_to_test>"
    exit 1
fi

# Take in parameter
entity_to_test="$1"
entity_tb="$entity_to_test"_tb

# Compile
ghdl -a "../src/$entity_to_test.vhd"
ghdl -a "../test/$entity_tb.vhd"

# Elaborate the design
ghdl -e "$entity_tb"

# Run elaborated design
ghdl -r "$entity_tb" --wave=wave.ghw

(
    gtkwave wave.ghw
) &

sleep 3

echo "simulation completed"