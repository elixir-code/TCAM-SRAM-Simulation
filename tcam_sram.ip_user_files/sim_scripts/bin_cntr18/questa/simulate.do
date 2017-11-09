onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bin_cntr18_opt

do {wave.do}

view wave
view structure
view signals

do {bin_cntr18.udo}

run -all

quit -force
