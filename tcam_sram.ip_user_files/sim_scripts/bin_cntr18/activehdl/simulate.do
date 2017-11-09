onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+bin_cntr18 -L xbip_utils_v3_0_7 -L c_reg_fd_v12_0_3 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_3 -L xbip_dsp48_addsub_v3_0_3 -L xbip_addsub_v3_0_3 -L c_addsub_v12_0_10 -L c_gate_bit_v12_0_3 -L xbip_counter_v3_0_3 -L c_counter_binary_v12_0_10 -L xil_defaultlib -L secureip -O5 xil_defaultlib.bin_cntr18

do {wave.do}

view wave
view structure

do {bin_cntr18.udo}

run -all

endsim

quit -force
