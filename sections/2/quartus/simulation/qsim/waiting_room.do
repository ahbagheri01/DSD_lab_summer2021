onerror {quit -f}
vlib work
vlog -work work waiting_room.vo
vlog -work work waiting_room.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.waiting_room_vlg_vec_tst
vcd file -direction waiting_room.msim.vcd
vcd add -internal waiting_room_vlg_vec_tst/*
vcd add -internal waiting_room_vlg_vec_tst/i1/*
add wave /*
run -all
