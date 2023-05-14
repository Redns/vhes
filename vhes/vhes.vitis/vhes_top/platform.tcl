# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\Project\vhes\vhes\vhes.vitis\vhes_top\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\Project\vhes\vhes\vhes.vitis\vhes_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vhes_top}\
-hw {E:\Project\vhes\vhes\vhes_top.xsa}\
-out {E:/Project/vhes/vhes/vhes.vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_client}
platform generate -domains 
platform active {vhes_top}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp config api_mode "SOCKET_API"
bsp reload
bsp reload
bsp config lwip_dhcp "false"
bsp config dhcp_does_arp_check "true"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform active {vhes_top}
platform config -updatehw {E:/Project/vhes/vhes/vhes_top.xsa}
bsp reload
bsp config arp_queueing "1"
bsp config dhcp_does_arp_check "false"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
