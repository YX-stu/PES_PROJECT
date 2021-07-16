
# design
vcom ../../hdl/filter_hw/ram_dp.vhd
vcom ../../hdl/filter_hw/line_buffer.vhd

# testbench
vcom src/line_buffer_tb.vhd

set SIM_TIME "10 us"
set SIM_TOP_LEVEL "line_buffer_tb"
