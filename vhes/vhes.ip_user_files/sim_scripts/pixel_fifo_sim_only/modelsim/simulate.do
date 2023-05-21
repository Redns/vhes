onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L fifo_generator_v13_2_6 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.pixel_fifo_sim_only xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {pixel_fifo_sim_only.udo}

run -all

quit -force
