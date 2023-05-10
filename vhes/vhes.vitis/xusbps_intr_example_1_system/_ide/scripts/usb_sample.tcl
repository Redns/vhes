# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\Project\xk265\vhes\vhes.vitis\xusbps_intr_example_1_system\_ide\scripts\usb_sample.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\Project\xk265\vhes\vhes.vitis\xusbps_intr_example_1_system\_ide\scripts\usb_sample.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249857743" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210249857743-03736093-0"}
fpga -file E:/Project/xk265/vhes/vhes.vitis/xusbps_intr_example_1/_ide/bitstream/vhes_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/Project/xk265/vhes/vhes.vitis/vhes_wrapper/export/vhes_wrapper/hw/vhes_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/Project/xk265/vhes/vhes.vitis/xusbps_intr_example_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/Project/xk265/vhes/vhes.vitis/xusbps_intr_example_1/Debug/xusbps_intr_example_1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
