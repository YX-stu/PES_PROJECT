onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rechenwerk_tb/clk
add wave -noupdate /rechenwerk_tb/rst
add wave -noupdate /rechenwerk_tb/mux_sel_sig
add wave -noupdate /rechenwerk_tb/R1_en
add wave -noupdate /rechenwerk_tb/R2_en
add wave -noupdate /rechenwerk_tb/instruction
add wave -noupdate /rechenwerk_tb/instruction_en
add wave -noupdate /rechenwerk_tb/mux_R2_data_in
add wave -noupdate /rechenwerk_tb/status_out
add wave -noupdate /rechenwerk_tb/alu_res
add wave -noupdate /rechenwerk_tb/alu_res_rdy
add wave -noupdate /rechenwerk_tb/TB_done
add wave -noupdate /rechenwerk_tb/instruction_int
add wave -noupdate /rechenwerk_tb/instruction_cnt
add wave -noupdate /rechenwerk_tb/jmp_address
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/clk
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/rst
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/mux_sel_sig
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/R1_en
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/R2_en
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/instruction
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/instruction_en
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/mux_R2_data_in
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/status_out
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/alu_res
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/alu_res_rdy
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/mux_out
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/R1_out
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/R2_out
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/alu_out
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/alu_status_out
add wave -noupdate -expand -group DataPath /rechenwerk_tb/data_path_struct_inst/h_level
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {830 ns} 0}
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
WaveRestoreZoom {0 ns} {9680 ns}
