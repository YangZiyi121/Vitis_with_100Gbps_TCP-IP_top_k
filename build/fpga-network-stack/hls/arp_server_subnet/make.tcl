
open_project arp_server_subnet_prj

open_solution "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 3.2 -name default

set_top arp_server_subnet_top

add_files /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/arp_server_subnet/../axi_utils.cpp
add_files /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp -cflags "-I/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/arp_server_subnet"


add_files -tb /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/arp_server_subnet/test_arp_server_subnet.cpp -cflags "-I/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/arp_server_subnet"



#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design -clean -argv {/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/arp_server_subnet/in.dat /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/arp_server_subnet/out.dat}
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "arp_server_subnet" -display_name "ARP Subnet Server" -description "Replies to ARP queries and resolves IP addresses." -vendor "ethz.systems.fpga" -version "1.1"
} elseif {$command == "installip"} {
   file mkdir /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/iprepo
   file delete -force /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/iprepo/arp_server_subnet
   file copy -force /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet_prj/solution1/impl/ip /home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/iprepo/arp_server_subnet/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
