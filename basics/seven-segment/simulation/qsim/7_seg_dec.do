onerror {quit -f}
vlib work
vlog -work work 7_seg_dec.vo
vlog -work work 7_seg_dec.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sev_seg_dec_vlg_vec_tst
vcd file -direction 7_seg_dec.msim.vcd
vcd add -internal sev_seg_dec_vlg_vec_tst/*
vcd add -internal sev_seg_dec_vlg_vec_tst/i1/*
add wave /*
run -all
