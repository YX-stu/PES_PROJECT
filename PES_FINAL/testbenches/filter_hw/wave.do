onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/FILTER_MAJOR_PIXEL_COUNT
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/FRAME_PIXEL
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/IMAGE_HEIGHT
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/IMAGE_WIDTH
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/LINE_BUFFER_ADDR_WIDTH
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/LINE_BUFFER_DATA_WIDTH
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/REGION_DETECT_FEATURE_BRAM_ADDR_WIDTH
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/REGION_DETECT_LINE_OFFSET
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/REGION_DETECT_PIXEL_OFFSET
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/REGION_DETECT_ROW_LENGTH_WIDTH
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/REGION_DETECT_ROW_NUMBER_WIDTH
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/clk
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/rstn
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/en
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/data_rdy
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/r
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/g
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/b
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/filter_hw_pixel_ctr
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/h_max_1
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/h_min_1
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/s_max_1
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/s_min_1
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/result_1
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/idle_1
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/h_max_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/h_min_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/s_min_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/s_max_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/result_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/idle_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/result_rdy_f_c
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/data_rdy_region_detect
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/frame_done
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/idle
add wave -noupdate -expand -group Filter_HW /filter_hw_tb/uut/converter_filter_module/r_result_rdy_fc1
add wave -noupdate -expand -group Filter_HW /filter_hw_tb/uut/converter_filter_module/r_result_rdy_fc2
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_readout_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_count_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_raddr_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_valid_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_left_border_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_upper_border_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_right_border_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_1 -radix unsigned /filter_hw_tb/uut/feature_bram_lower_border_1
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_readout_2
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_count_2
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_raddr_2
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_valid_2
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_left_border_2
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_upper_border_2
add wave -noupdate -expand -group Filter_HW -expand -group Features_2 -radix unsigned /filter_hw_tb/uut/feature_bram_right_border_2
add wave -noupdate -expand -group Filter_HW -radix unsigned /filter_hw_tb/uut/feature_bram_lower_border_2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 319
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {26250 us}
