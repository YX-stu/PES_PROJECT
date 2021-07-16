onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /filter_major_tb/IMAGE_WIDTH
add wave -noupdate -expand -group TB /filter_major_tb/IMAGE_HEIGHT
add wave -noupdate -expand -group TB /filter_major_tb/ADDR_WIDTH
add wave -noupdate -expand -group TB /filter_major_tb/DATA_WIDTH
add wave -noupdate -expand -group TB /filter_major_tb/PIXEL_COUNT
add wave -noupdate -expand -group TB /filter_major_tb/clk
add wave -noupdate -expand -group TB /filter_major_tb/rstn
add wave -noupdate -expand -group TB /filter_major_tb/data_rdy
add wave -noupdate -expand -group TB /filter_major_tb/data_in
add wave -noupdate -expand -group TB /filter_major_tb/result
add wave -noupdate -expand -group TB /filter_major_tb/result_rdy
add wave -noupdate -expand -group TB /filter_major_tb/write_count_x
add wave -noupdate -expand -group TB /filter_major_tb/write_count_y
add wave -noupdate -expand -group TB /filter_major_tb/tb_frame_done
add wave -noupdate -expand -group TB /filter_major_tb/test_image
add wave -noupdate -expand -group TB /filter_major_tb/image_out
add wave -noupdate -expand -group TB /filter_major_tb/reference_image
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8440 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 281
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
WaveRestoreZoom {0 ns} {21 us}
