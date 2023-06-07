onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L blk_mem_gen_v8_4_5 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.bram_sp_256depth_64width xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bram_sp_256depth_64width.udo}

run -all

quit -force
