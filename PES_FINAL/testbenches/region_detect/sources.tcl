
# design
vcom ../../hdl/interfaceing/debug_types.vhd
vcom ../../hdl/filter_hw/ram_dp.vhd
vcom ../../hdl/filter_hw/ram_tp.vhd
vcom ../../hdl/filter_hw/feature_calculation.vhd
vcom ../../hdl/filter_hw/label_selection.vhd
vcom ../../hdl/filter_hw/rle.vhd
vcom ../../hdl/filter_hw/region_detect.vhd

# testbench
vcom src/region_detect_tb.vhd

set SIM_TIME "16 us"
set SIM_TOP_LEVEL "region_detect_tb"
