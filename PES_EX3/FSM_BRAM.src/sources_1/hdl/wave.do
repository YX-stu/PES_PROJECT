onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_save_machine/my_machine/clk
add wave -noupdate /test_save_machine/my_machine/BTNC
add wave -noupdate /test_save_machine/my_machine/SW0
add wave -noupdate /test_save_machine/my_machine/SW1
add wave -noupdate /test_save_machine/my_machine/SW2
add wave -noupdate /test_save_machine/my_machine/SW3
add wave -noupdate /test_save_machine/my_machine/SW4
add wave -noupdate /test_save_machine/my_machine/SW5
add wave -noupdate /test_save_machine/my_machine/SW6
add wave -noupdate /test_save_machine/my_machine/SW7
add wave -noupdate /test_save_machine/my_machine/led_pin
add wave -noupdate /test_save_machine/my_machine/led_status
add wave -noupdate /test_save_machine/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 336
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
WaveRestoreZoom {3050 ns} {3846 ns}
