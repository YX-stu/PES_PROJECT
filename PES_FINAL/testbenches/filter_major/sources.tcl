# design
vcom ../../hdl/interfaceing/debug_types.vhd
vcom ../../hdl/filter_hw/ram_dp.vhd
vcom ../../hdl/filter_hw/line_buffer.vhd
vcom ../../hdl/filter_hw/filter_major.vhd

# testbench
vcom src/filter_major_tb.vhd

set SIM_TIME "20 us"
set SIM_TOP_LEVEL "filter_major_tb"
