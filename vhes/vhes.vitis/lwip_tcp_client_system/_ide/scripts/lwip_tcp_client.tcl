# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\Project\vhes\vhes\vhes.vitis\lwip_tcp_client_system\_ide\scripts\lwip_tcp_client.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\Project\vhes\vhes\vhes.vitis\lwip_tcp_client_system\_ide\scripts\lwip_tcp_client.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249857743" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210249857743-03736093-0"}
fpga -file E:/Project/vhes/vhes/vhes.vitis/lwip_tcp_client/_ide/bitstream/vhes_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/Project/vhes/vhes/vhes.vitis/vhes_top/export/vhes_top/hw/vhes_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/Project/vhes/vhes/vhes.vitis/lwip_tcp_client/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/Project/vhes/vhes/vhes.vitis/lwip_tcp_client/Debug/lwip_tcp_client.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
