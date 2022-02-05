transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Zomorrod/Desktop/DSD-ThirdOne/3.1 {C:/Users/Zomorrod/Desktop/DSD-ThirdOne/3.1/onebit_comparator.v}

