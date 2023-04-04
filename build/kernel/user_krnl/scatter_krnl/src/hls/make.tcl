
open_project scatter_prj

open_solution "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 3.2 -name default

set_top scatter

add_files /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/kernel/user_krnl/scatter_krnl/src/hls/scatter.cpp -cflags "-I/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/kernel/user_krnl/scatter_krnl/src/hls"


add_files -tb /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/kernel/user_krnl/scatter_krnl/src/hls/test_scatter.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "scatter" -display_name "scatter" -vendor "ethz.systems.fpga" -version "1.0"
} elseif {$command == "installip"} {
   file mkdir /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/iprepo
   file delete -force /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/iprepo/scatter
   file copy -force /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/kernel/user_krnl/scatter_krnl/src/hls/scatter_prj/solution1/impl/ip /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/iprepo/scatter/
} else {
   puts "No valid command specified. Use vitis_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
