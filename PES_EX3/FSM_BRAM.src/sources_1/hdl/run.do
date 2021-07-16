###
### set up workspace
###

file mkdir _run
set basic_lib _run/basic_lib

###
### create libraries
###

vlib $basic_lib
vmap basic_lib $basic_lib
vmap work $basic_lib

###
### compile sources
###

# design
vcom shift_reg_s.vhd
vcom debounce.vhd
vcom flasher.vhd
vcom input_ctrl.vhd
vcom ram_sp.vhd
vcom state_machine2.vhd

# testbench
vcom test_save_machine.vhd

# initialize and run simulation
vsim test_save_machine
source wave.do
run 5000 ns
