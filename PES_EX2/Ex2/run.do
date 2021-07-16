###
### set up workspace
###

file mkdir _run
set work _run/work

###
### create libraries
###

vlib $work
vmap work $work

###
### compile sources
###

# design
vcom components/Mux.vhd
vcom components/Register.vhd
vcom components/Arithmetische_Logikeinheit.vhd
vcom components/Rechenwerk.vhd

# testbench
vcom Rechenwerk_TB_modelsim.vhd

# initialize and run simulation
vsim Rechenwerk_TB
source wave.do
run 40000 ns
