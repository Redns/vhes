onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fdma_mig_ddr_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fdma_mig_ddr.udo}

run -all

quit -force
