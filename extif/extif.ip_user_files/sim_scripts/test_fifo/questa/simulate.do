onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib test_fifo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {test_fifo.udo}

run -all

quit -force
