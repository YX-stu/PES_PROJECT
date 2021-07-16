onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /classify_tb/VECTOR_LENGTH
add wave -noupdate -radix unsigned /classify_tb/max_value
add wave -noupdate -radix unsigned /classify_tb/min_value
add wave -noupdate -radix unsigned /classify_tb/clk
add wave -noupdate -radix unsigned /classify_tb/rstn
add wave -noupdate -radix unsigned /classify_tb/min
add wave -noupdate -radix unsigned /classify_tb/max
add wave -noupdate -radix unsigned /classify_tb/data_rdy
add wave -noupdate -radix unsigned /classify_tb/data_in
add wave -noupdate -radix unsigned /classify_tb/result_rdy
add wave -noupdate -radix unsigned /classify_tb/result
add wave -noupdate -radix unsigned /classify_tb/ctr
add wave -noupdate -radix unsigned /classify_tb/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {220 ns} 0}
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
WaveRestoreZoom {0 ns} {420 ns}
