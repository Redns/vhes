onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bram_128depth_512width_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bram_128depth_512width.udo}

run -all

quit -force
