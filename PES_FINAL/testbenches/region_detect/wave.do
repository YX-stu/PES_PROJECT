onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/FEATURE_BRAM_ADDR_WIDTH
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/LINE_OFFSET
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/NUMBER_OF_ROWS
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/PIXEL_OFFSET
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/ROW_LENGTH
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/ROW_LENGTH_WIDTH
add wave -noupdate -expand -group Generics -radix unsigned /region_detect_tb/ROW_NUMBER_WIDTH
add wave -noupdate -expand -group region_detect_input -radix unsigned /region_detect_tb/clk
add wave -noupdate -expand -group region_detect_input -radix unsigned /region_detect_tb/data_in
add wave -noupdate -expand -group region_detect_input -radix unsigned /region_detect_tb/data_rdy
add wave -noupdate -expand -group region_detect_input -radix unsigned /region_detect_tb/rstn
add wave -noupdate -radix unsigned /region_detect_tb/IDLE
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/RUN_LABEL_1
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/RUN_LABEL_2
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/START_POS
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/END_POS
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/ROW_NUMBER
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/UPDATE
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/MERGE
add wave -noupdate -expand -group feature_calculation_input -radix unsigned /region_detect_tb/UUT/LABEL_SELECTION_MODULE/FEATURE_CALCULATION_MODULE/NEW_FEATURE
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_COUNT
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_READOUT
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_RADDR
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_LEFT_BORDER
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_RIGHT_BORDER
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_UPPER_BORDER
add wave -noupdate -expand -group {features output} -radix unsigned /region_detect_tb/FEATURE_BRAM_LOWER_BORDER
add wave -noupdate -radix unsigned /region_detect_tb/FEATURE_BRAM_VALID
add wave -noupdate -expand -group testbench -radix unsigned -childformat {{/region_detect_tb/features(0) -radix unsigned} {/region_detect_tb/features(1) -radix unsigned} {/region_detect_tb/features(2) -radix unsigned} {/region_detect_tb/features(3) -radix unsigned}} -subitemconfig {/region_detect_tb/features(0) {-height 15 -radix unsigned} /region_detect_tb/features(1) {-height 15 -radix unsigned} /region_detect_tb/features(2) {-height 15 -radix unsigned} /region_detect_tb/features(3) {-height 15 -radix unsigned}} /region_detect_tb/features
add wave -noupdate -expand -group testbench -radix unsigned -childformat {{/region_detect_tb/output_data_label_selection(0) -radix unsigned} {/region_detect_tb/output_data_label_selection(1) -radix unsigned} {/region_detect_tb/output_data_label_selection(2) -radix unsigned} {/region_detect_tb/output_data_label_selection(3) -radix unsigned} {/region_detect_tb/output_data_label_selection(4) -radix unsigned} {/region_detect_tb/output_data_label_selection(5) -radix unsigned} {/region_detect_tb/output_data_label_selection(6) -radix unsigned} {/region_detect_tb/output_data_label_selection(7) -radix unsigned} {/region_detect_tb/output_data_label_selection(8) -radix unsigned} {/region_detect_tb/output_data_label_selection(9) -radix unsigned}} -expand -subitemconfig {/region_detect_tb/output_data_label_selection(0) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(1) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(2) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(3) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(4) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(5) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(6) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(7) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(8) {-height 15 -radix unsigned} /region_detect_tb/output_data_label_selection(9) {-height 15 -radix unsigned}} /region_detect_tb/output_data_label_selection
add wave -noupdate -expand -group testbench /region_detect_tb/test_image
add wave -noupdate -expand -group testbench -radix unsigned /region_detect_tb/x_tb
add wave -noupdate -expand -group testbench -radix unsigned /region_detect_tb/y_tb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6534 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 339
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
WaveRestoreZoom {0 ns} {15750 ns}
