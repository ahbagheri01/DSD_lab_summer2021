onerror {quit -f}
vlib work
vlog -work work mode.vo
vlog -work work mode.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mode_vlg_vec_tst
vcd file -direction mode.msim.vcd
vcd add -internal mode_vlg_vec_tst/*
vcd add -internal mode_vlg_vec_tst/i1/*
add wave /*
run -all
