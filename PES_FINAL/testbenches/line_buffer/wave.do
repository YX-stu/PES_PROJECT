onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Generics -radix unsigned /line_buffer_tb/ADDR_WIDTH
add wave -noupdate -expand -group Generics -radix unsigned /line_buffer_tb/DATA_WIDTH
add wave -noupdate -expand -group Generics -radix unsigned /line_buffer_tb/LINE_LENGTH
add wave -noupdate -expand -group Generics -radix unsigned /line_buffer_tb/NUMBER_OF_LINES
add wave -noupdate -expand -group {Line_Buffer Input} -radix unsigned /line_buffer_tb/clk
add wave -noupdate -expand -group {Line_Buffer Input} -radix unsigned /line_buffer_tb/rstn
add wave -noupdate -expand -group {Line_Buffer Input} -radix unsigned /line_buffer_tb/data_rdy
add wave -noupdate -expand -group {Line_Buffer Input} -radix unsigned /line_buffer_tb/data_in
add wave -noupdate -expand -group Line_Buffer_Output -radix unsigned /line_buffer_tb/result
add wave -noupdate -expand -group Line_Buffer_Output -radix unsigned /line_buffer_tb/result_rdy
add wave -noupdate -expand -group Testbench -radix unsigned /line_buffer_tb/result_rdy_tb
add wave -noupdate -expand -group Testbench -radix unsigned /line_buffer_tb/count_x
add wave -noupdate -expand -group Testbench -radix unsigned /line_buffer_tb/count_y
add wave -noupdate -expand -group Testbench -radix unsigned /line_buffer_tb/first_line_complete
add wave -noupdate -expand -group Testbench /line_buffer_tb/test_image
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5281 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ns} {10500 ns}
