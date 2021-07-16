onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider TOP
add wave -noupdate /rgb2hsv_tb/clk
add wave -noupdate /rgb2hsv_tb/rstn
add wave -noupdate /rgb2hsv_tb/data_rdy
add wave -noupdate -radix unsigned /rgb2hsv_tb/r
add wave -noupdate -radix unsigned /rgb2hsv_tb/g
add wave -noupdate -radix unsigned /rgb2hsv_tb/b
add wave -noupdate /rgb2hsv_tb/result_rdy
add wave -noupdate -radix unsigned /rgb2hsv_tb/h
add wave -noupdate -radix unsigned /rgb2hsv_tb/s
add wave -noupdate -radix unsigned /rgb2hsv_tb/v
add wave -noupdate -divider {div multi}
add wave -noupdate -expand -group RGB2HSV_UUT /rgb2hsv_tb/UUT/clk
add wave -noupdate -expand -group RGB2HSV_UUT /rgb2hsv_tb/UUT/rstn
add wave -noupdate -expand -group RGB2HSV_UUT /rgb2hsv_tb/UUT/data_rdy
add wave -noupdate -expand -group RGB2HSV_UUT -radix unsigned /rgb2hsv_tb/UUT/r
add wave -noupdate -expand -group RGB2HSV_UUT -radix unsigned /rgb2hsv_tb/UUT/g
add wave -noupdate -expand -group RGB2HSV_UUT -radix unsigned /rgb2hsv_tb/UUT/b
add wave -noupdate -expand -group RGB2HSV_UUT /rgb2hsv_tb/UUT/result_rdy
add wave -noupdate -expand -group RGB2HSV_UUT -radix unsigned /rgb2hsv_tb/UUT/h
add wave -noupdate -expand -group RGB2HSV_UUT -radix unsigned /rgb2hsv_tb/UUT/s
add wave -noupdate -expand -group RGB2HSV_UUT -radix unsigned /rgb2hsv_tb/UUT/v
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {9823 ns} {10157 ns}
