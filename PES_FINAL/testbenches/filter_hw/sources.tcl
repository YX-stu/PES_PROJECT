# design

vcom ../../hdl/interfaceing/debug_types.vhd
vcom ../../hdl/filter_hw/ram_dp.vhd
vcom ../../hdl/filter_hw/div16.vhd
vcom ../../hdl/filter_hw/rgb2hsv.vhd
vcom ../../hdl/filter_hw/classify.vhd
vcom ../../hdl/filter_hw/line_buffer.vhd
vcom ../../hdl/filter_hw/filter_major.vhd
vcom ../../hdl/filter_hw/filter_chain.vhd
vcom ../../hdl/filter_hw/converter_filter.vhd
vcom ../../hdl/filter_hw/ram_tp.vhd
vcom ../../hdl/filter_hw/feature_calculation.vhd
vcom ../../hdl/filter_hw/label_selection.vhd
vcom ../../hdl/filter_hw/rle.vhd
vcom ../../hdl/filter_hw/region_detect.vhd
vcom ../../hdl/filter_hw/filter_hw.vhd

# testbench
vcom src/filter_hw_tb.vhd


set SIM_TIME "21 ms"
set SIM_TOP_LEVEL "filter_hw_tb"
