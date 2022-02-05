onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /stack_tb/push
add wave -noupdate /stack_tb/pop
add wave -noupdate /stack_tb/RstN
add wave -noupdate /stack_tb/Full
add wave -noupdate /stack_tb/Error
add wave -noupdate /stack_tb/Empty
add wave -noupdate /stack_tb/Data_Out
add wave -noupdate /stack_tb/Data_In
add wave -noupdate /stack_tb/Clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {885 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {12544 ps}
