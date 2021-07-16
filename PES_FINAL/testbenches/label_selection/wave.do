onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Feature Calculation} -label clk /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/clk
add wave -noupdate -expand -group {Feature Calculation} -label rstn /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/rstn
add wave -noupdate -expand -group {Feature Calculation} -label new_feature /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/new_feature
add wave -noupdate -expand -group {Feature Calculation} -label update /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/update
add wave -noupdate -expand -group {Feature Calculation} -label merge /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/merge
add wave -noupdate -expand -group {Feature Calculation} -label run_label_1 -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/run_label_1
add wave -noupdate -expand -group {Feature Calculation} -label run_label_2 -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/run_label_2
add wave -noupdate -expand -group {Feature Calculation} -label start_pos -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/start_pos
add wave -noupdate -expand -group {Feature Calculation} -label end_pos -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/end_pos
add wave -noupdate -expand -group {Feature Calculation} -label row_number -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/G_FEATURE_LABEL_CHECK/feature_label_check_module/row_number
add wave -noupdate -expand -group {Label Selection} -label clk /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/clk
add wave -noupdate -expand -group {Label Selection} -label rstn /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/rstn
add wave -noupdate -expand -group {Label Selection} -label start_pos -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/start_pos
add wave -noupdate -expand -group {Label Selection} -label end_pos -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/end_pos
add wave -noupdate -expand -group {Label Selection} -label row_number -radix decimal /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/row_number
add wave -noupdate -expand -group {Label Selection} -label new_run /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/new_run
add wave -noupdate -expand -group {Label Selection} -label eol /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/eol
add wave -noupdate -expand -group {Label Selection} -label eof /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/eof
add wave -noupdate -expand -group {Label Selection} -label feature_bram_readout /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/feature_bram_readout
add wave -noupdate -expand -group {Label Selection} -label feature_bram_raddr /label_selection_stimuli_tb/UUT_LABEL_SELECTION_MODULE/feature_bram_raddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {900 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {670 ns} {1670 ns}
