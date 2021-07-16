onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /rle_tb/ROW_LENGTH
add wave -noupdate -radix unsigned /rle_tb/ROW_LENGTH_WIDTH
add wave -noupdate -radix unsigned /rle_tb/NUMBER_OF_ROWS
add wave -noupdate -radix unsigned /rle_tb/ROW_NUMBER_WIDTH
add wave -noupdate -radix unsigned /rle_tb/PIXEL_OFFSET
add wave -noupdate -radix unsigned /rle_tb/LINE_OFFSET
add wave -noupdate -expand -group {rle in} -radix unsigned /rle_tb/clk
add wave -noupdate -expand -group {rle in} -radix unsigned /rle_tb/rstn
add wave -noupdate -expand -group {rle in} -radix unsigned /rle_tb/data_in
add wave -noupdate -expand -group {rle out} -radix unsigned /rle_tb/new_run
add wave -noupdate -expand -group {rle out} -radix unsigned /rle_tb/start_pos
add wave -noupdate -expand -group {rle out} -radix unsigned /rle_tb/end_pos
add wave -noupdate -expand -group {rle out} -radix unsigned /rle_tb/row_number
add wave -noupdate -expand -group {rle out} -radix unsigned /rle_tb/eol
add wave -noupdate -expand -group {rle out} -radix unsigned /rle_tb/eof
add wave -noupdate -expand -group tb -radix unsigned /rle_tb/eol_tb
add wave -noupdate -expand -group tb -radix unsigned /rle_tb/eof_tb
add wave -noupdate -expand -group tb -radix unsigned /rle_tb/y_tb
add wave -noupdate -expand -group tb -radix unsigned /rle_tb/x_tb
add wave -noupdate -expand -group tb -radix unsigned /rle_tb/ctr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {5050 ns} {6050 ns}
