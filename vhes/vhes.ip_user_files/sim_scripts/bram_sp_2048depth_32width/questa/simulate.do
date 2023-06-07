onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bram_sp_2048depth_32width_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bram_sp_2048depth_32width.udo}

run -all

quit -force
