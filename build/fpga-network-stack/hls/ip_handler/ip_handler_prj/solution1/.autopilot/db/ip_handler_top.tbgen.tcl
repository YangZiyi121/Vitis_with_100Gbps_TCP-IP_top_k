set moduleName ip_handler_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ip_handler_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_raw_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_raw Data } }  }
	{ s_axis_raw_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_raw Keep } }  }
	{ s_axis_raw_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_raw Strb } }  }
	{ s_axis_raw_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_raw Last } }  }
	{ m_axis_arp_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_arp Data } }  }
	{ m_axis_arp_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_arp Keep } }  }
	{ m_axis_arp_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_arp Strb } }  }
	{ m_axis_arp_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_arp Last } }  }
	{ m_axis_icmpv6_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_icmpv6 Data } }  }
	{ m_axis_icmpv6_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_icmpv6 Keep } }  }
	{ m_axis_icmpv6_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_icmpv6 Strb } }  }
	{ m_axis_icmpv6_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_icmpv6 Last } }  }
	{ m_axis_ipv6udp_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_ipv6udp Data } }  }
	{ m_axis_ipv6udp_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_ipv6udp Keep } }  }
	{ m_axis_ipv6udp_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_ipv6udp Strb } }  }
	{ m_axis_ipv6udp_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_ipv6udp Last } }  }
	{ m_axis_icmp_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_icmp Data } }  }
	{ m_axis_icmp_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_icmp Keep } }  }
	{ m_axis_icmp_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_icmp Strb } }  }
	{ m_axis_icmp_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_icmp Last } }  }
	{ m_axis_udp_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_udp Data } }  }
	{ m_axis_udp_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_udp Keep } }  }
	{ m_axis_udp_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_udp Strb } }  }
	{ m_axis_udp_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_udp Last } }  }
	{ m_axis_tcp_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_tcp Data } }  }
	{ m_axis_tcp_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_tcp Keep } }  }
	{ m_axis_tcp_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_tcp Strb } }  }
	{ m_axis_tcp_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp Last } }  }
	{ m_axis_roce_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_roce Data } }  }
	{ m_axis_roce_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_roce Keep } }  }
	{ m_axis_roce_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_roce Strb } }  }
	{ m_axis_roce_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_roce Last } }  }
	{ myIpAddress int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_raw_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_raw_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_raw_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_raw_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_arp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_arp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_arp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_arp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmpv6_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmpv6_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmpv6_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmpv6_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ipv6udp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ipv6udp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ipv6udp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ipv6udp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_udp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_udp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_udp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_udp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_roce_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_roce_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_roce_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_roce_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ s_axis_raw_TDATA sc_in sc_lv 512 signal 0 } 
	{ s_axis_raw_TKEEP sc_in sc_lv 64 signal 1 } 
	{ s_axis_raw_TSTRB sc_in sc_lv 64 signal 2 } 
	{ s_axis_raw_TLAST sc_in sc_lv 1 signal 3 } 
	{ m_axis_arp_TDATA sc_out sc_lv 512 signal 4 } 
	{ m_axis_arp_TKEEP sc_out sc_lv 64 signal 5 } 
	{ m_axis_arp_TSTRB sc_out sc_lv 64 signal 6 } 
	{ m_axis_arp_TLAST sc_out sc_lv 1 signal 7 } 
	{ m_axis_icmpv6_TDATA sc_out sc_lv 512 signal 8 } 
	{ m_axis_icmpv6_TKEEP sc_out sc_lv 64 signal 9 } 
	{ m_axis_icmpv6_TSTRB sc_out sc_lv 64 signal 10 } 
	{ m_axis_icmpv6_TLAST sc_out sc_lv 1 signal 11 } 
	{ m_axis_ipv6udp_TDATA sc_out sc_lv 512 signal 12 } 
	{ m_axis_ipv6udp_TKEEP sc_out sc_lv 64 signal 13 } 
	{ m_axis_ipv6udp_TSTRB sc_out sc_lv 64 signal 14 } 
	{ m_axis_ipv6udp_TLAST sc_out sc_lv 1 signal 15 } 
	{ m_axis_icmp_TDATA sc_out sc_lv 512 signal 16 } 
	{ m_axis_icmp_TKEEP sc_out sc_lv 64 signal 17 } 
	{ m_axis_icmp_TSTRB sc_out sc_lv 64 signal 18 } 
	{ m_axis_icmp_TLAST sc_out sc_lv 1 signal 19 } 
	{ m_axis_udp_TDATA sc_out sc_lv 512 signal 20 } 
	{ m_axis_udp_TKEEP sc_out sc_lv 64 signal 21 } 
	{ m_axis_udp_TSTRB sc_out sc_lv 64 signal 22 } 
	{ m_axis_udp_TLAST sc_out sc_lv 1 signal 23 } 
	{ m_axis_tcp_TDATA sc_out sc_lv 512 signal 24 } 
	{ m_axis_tcp_TKEEP sc_out sc_lv 64 signal 25 } 
	{ m_axis_tcp_TSTRB sc_out sc_lv 64 signal 26 } 
	{ m_axis_tcp_TLAST sc_out sc_lv 1 signal 27 } 
	{ m_axis_roce_TDATA sc_out sc_lv 512 signal 28 } 
	{ m_axis_roce_TKEEP sc_out sc_lv 64 signal 29 } 
	{ m_axis_roce_TSTRB sc_out sc_lv 64 signal 30 } 
	{ m_axis_roce_TLAST sc_out sc_lv 1 signal 31 } 
	{ myIpAddress sc_in sc_lv 32 signal 32 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_raw_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_raw_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_arp_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_arp_TREADY sc_in sc_logic 1 outacc 7 } 
	{ m_axis_icmpv6_TVALID sc_out sc_logic 1 outvld 11 } 
	{ m_axis_icmpv6_TREADY sc_in sc_logic 1 outacc 11 } 
	{ m_axis_ipv6udp_TVALID sc_out sc_logic 1 outvld 15 } 
	{ m_axis_ipv6udp_TREADY sc_in sc_logic 1 outacc 15 } 
	{ m_axis_icmp_TVALID sc_out sc_logic 1 outvld 19 } 
	{ m_axis_icmp_TREADY sc_in sc_logic 1 outacc 19 } 
	{ m_axis_udp_TVALID sc_out sc_logic 1 outvld 23 } 
	{ m_axis_udp_TREADY sc_in sc_logic 1 outacc 23 } 
	{ m_axis_tcp_TVALID sc_out sc_logic 1 outvld 27 } 
	{ m_axis_tcp_TREADY sc_in sc_logic 1 outacc 27 } 
	{ m_axis_roce_TVALID sc_out sc_logic 1 outvld 31 } 
	{ m_axis_roce_TREADY sc_in sc_logic 1 outacc 31 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "s_axis_raw_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_raw_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_raw_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_raw_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_raw_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_raw_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_raw_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_raw_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_arp_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_arp_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_arp_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_arp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmpv6_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_icmpv6_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_icmpv6_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_icmpv6_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_icmpv6_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_icmpv6_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_icmpv6_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_icmpv6_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_ipv6udp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_ipv6udp_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_ipv6udp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_ipv6udp_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_ipv6udp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_ipv6udp_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_ipv6udp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_ipv6udp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_icmp_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_icmp_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_icmp_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_udp_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_udp_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_udp_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_udp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_tcp_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_roce_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_roce_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_roce_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_roce_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_roce_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_roce_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_roce_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_roce_V_last_V", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_raw_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_raw_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_raw_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_raw_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmpv6_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_icmpv6_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmpv6_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_icmpv6_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_ipv6udp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_ipv6udp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_ipv6udp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_ipv6udp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_udp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_udp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_roce_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_roce_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_roce_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_roce_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "12", "17", "22", "27", "32", "37", "42", "43", "44", "45", "46", "47", "48", "49", "50", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79"],
		"CDFG" : "ip_handler_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "convert_axis_to_net_axis_512_U0"},
			{"ID" : "7", "Name" : "convert_net_axis_to_axis_512_U0"},
			{"ID" : "12", "Name" : "convert_net_axis_to_axis_512_1_U0"},
			{"ID" : "17", "Name" : "convert_net_axis_to_axis_512_2_U0"},
			{"ID" : "22", "Name" : "convert_net_axis_to_axis_512_3_U0"},
			{"ID" : "27", "Name" : "convert_net_axis_to_axis_512_4_U0"},
			{"ID" : "32", "Name" : "convert_net_axis_to_axis_512_5_U0"},
			{"ID" : "37", "Name" : "convert_net_axis_to_axis_512_6_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "convert_net_axis_to_axis_512_U0"},
			{"ID" : "12", "Name" : "convert_net_axis_to_axis_512_1_U0"},
			{"ID" : "17", "Name" : "convert_net_axis_to_axis_512_2_U0"},
			{"ID" : "22", "Name" : "convert_net_axis_to_axis_512_3_U0"},
			{"ID" : "27", "Name" : "convert_net_axis_to_axis_512_4_U0"},
			{"ID" : "32", "Name" : "convert_net_axis_to_axis_512_5_U0"},
			{"ID" : "37", "Name" : "convert_net_axis_to_axis_512_6_U0"},
			{"ID" : "53", "Name" : "detect_ipv6_protocol_512_U0"},
			{"ID" : "54", "Name" : "ip_handler_duplicate_stream_net_axis_512_U0"}],
		"Port" : [
			{"Name" : "s_axis_raw_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_raw_V_data_V"}]},
			{"Name" : "s_axis_raw_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_raw_V_keep_V"}]},
			{"Name" : "s_axis_raw_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_raw_V_strb_V"}]},
			{"Name" : "s_axis_raw_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_raw_V_last_V"}]},
			{"Name" : "m_axis_arp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_arp_V_data_V"}]},
			{"Name" : "m_axis_arp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_arp_V_keep_V"}]},
			{"Name" : "m_axis_arp_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_arp_V_strb_V"}]},
			{"Name" : "m_axis_arp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_arp_V_last_V"}]},
			{"Name" : "m_axis_icmpv6_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_icmpv6_V_data_V"}]},
			{"Name" : "m_axis_icmpv6_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_icmpv6_V_keep_V"}]},
			{"Name" : "m_axis_icmpv6_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_icmpv6_V_strb_V"}]},
			{"Name" : "m_axis_icmpv6_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_icmpv6_V_last_V"}]},
			{"Name" : "m_axis_ipv6udp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_2_U0", "Port" : "m_axis_ipv6udp_V_data_V"}]},
			{"Name" : "m_axis_ipv6udp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_2_U0", "Port" : "m_axis_ipv6udp_V_keep_V"}]},
			{"Name" : "m_axis_ipv6udp_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_2_U0", "Port" : "m_axis_ipv6udp_V_strb_V"}]},
			{"Name" : "m_axis_ipv6udp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_2_U0", "Port" : "m_axis_ipv6udp_V_last_V"}]},
			{"Name" : "m_axis_icmp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "convert_net_axis_to_axis_512_3_U0", "Port" : "m_axis_icmp_V_data_V"}]},
			{"Name" : "m_axis_icmp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "convert_net_axis_to_axis_512_3_U0", "Port" : "m_axis_icmp_V_keep_V"}]},
			{"Name" : "m_axis_icmp_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "convert_net_axis_to_axis_512_3_U0", "Port" : "m_axis_icmp_V_strb_V"}]},
			{"Name" : "m_axis_icmp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "convert_net_axis_to_axis_512_3_U0", "Port" : "m_axis_icmp_V_last_V"}]},
			{"Name" : "m_axis_udp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "convert_net_axis_to_axis_512_4_U0", "Port" : "m_axis_udp_V_data_V"}]},
			{"Name" : "m_axis_udp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "convert_net_axis_to_axis_512_4_U0", "Port" : "m_axis_udp_V_keep_V"}]},
			{"Name" : "m_axis_udp_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "convert_net_axis_to_axis_512_4_U0", "Port" : "m_axis_udp_V_strb_V"}]},
			{"Name" : "m_axis_udp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "convert_net_axis_to_axis_512_4_U0", "Port" : "m_axis_udp_V_last_V"}]},
			{"Name" : "m_axis_tcp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "convert_net_axis_to_axis_512_5_U0", "Port" : "m_axis_tcp_V_data_V"}]},
			{"Name" : "m_axis_tcp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "convert_net_axis_to_axis_512_5_U0", "Port" : "m_axis_tcp_V_keep_V"}]},
			{"Name" : "m_axis_tcp_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "convert_net_axis_to_axis_512_5_U0", "Port" : "m_axis_tcp_V_strb_V"}]},
			{"Name" : "m_axis_tcp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "convert_net_axis_to_axis_512_5_U0", "Port" : "m_axis_tcp_V_last_V"}]},
			{"Name" : "m_axis_roce_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "convert_net_axis_to_axis_512_6_U0", "Port" : "m_axis_roce_V_data_V"}]},
			{"Name" : "m_axis_roce_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "convert_net_axis_to_axis_512_6_U0", "Port" : "m_axis_roce_V_keep_V"}]},
			{"Name" : "m_axis_roce_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "convert_net_axis_to_axis_512_6_U0", "Port" : "m_axis_roce_V_strb_V"}]},
			{"Name" : "m_axis_roce_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "convert_net_axis_to_axis_512_6_U0", "Port" : "m_axis_roce_V_last_V"}]},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_raw_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_raw_internal"},
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "s_axis_raw_internal"}]},
			{"Name" : "m_axis_arp_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_arp_internal"},
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "m_axis_arp_internal"}]},
			{"Name" : "m_axis_icmpv6_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "detect_ipv6_protocol_512_U0", "Port" : "m_axis_icmpv6_internal"},
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_icmpv6_internal"}]},
			{"Name" : "m_axis_ipv6udp_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "detect_ipv6_protocol_512_U0", "Port" : "m_axis_ipv6udp_internal"},
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_2_U0", "Port" : "m_axis_ipv6udp_internal"}]},
			{"Name" : "m_axis_icmp_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "m_axis_icmp_internal"},
					{"ID" : "22", "SubInstance" : "convert_net_axis_to_axis_512_3_U0", "Port" : "m_axis_icmp_internal"}]},
			{"Name" : "m_axis_udp_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "convert_net_axis_to_axis_512_4_U0", "Port" : "m_axis_udp_internal"},
					{"ID" : "54", "SubInstance" : "ip_handler_duplicate_stream_net_axis_512_U0", "Port" : "m_axis_udp_internal"}]},
			{"Name" : "m_axis_tcp_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "m_axis_tcp_internal"},
					{"ID" : "32", "SubInstance" : "convert_net_axis_to_axis_512_5_U0", "Port" : "m_axis_tcp_internal"}]},
			{"Name" : "m_axis_roce_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "convert_net_axis_to_axis_512_6_U0", "Port" : "m_axis_roce_internal"},
					{"ID" : "54", "SubInstance" : "ip_handler_duplicate_stream_net_axis_512_U0", "Port" : "m_axis_roce_internal"}]},
			{"Name" : "header_ready_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "header_ready_1"}]},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "header_idx_1"}]},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "header_header_V_1"}]},
			{"Name" : "metaWritten_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "metaWritten_1"}]},
			{"Name" : "etherTypeFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "etherTypeFifo"},
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "etherTypeFifo"}]},
			{"Name" : "ethDataFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "detect_eth_protocol_512_U0", "Port" : "ethDataFifo"},
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "ethDataFifo"}]},
			{"Name" : "rep_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "rep_fsmState_V"}]},
			{"Name" : "rep_etherType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "rep_etherType_V"}]},
			{"Name" : "ipv4ShiftFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "ipv4ShiftFifo"},
					{"ID" : "44", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Port" : "ipv4ShiftFifo"}]},
			{"Name" : "ipv6ShiftFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "route_by_eth_protocol_512_U0", "Port" : "ipv6ShiftFifo"},
					{"ID" : "45", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Port" : "ipv6ShiftFifo"}]},
			{"Name" : "fsmState_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Port" : "fsmState_1"}]},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Port" : "prevWord_data_V_1"}]},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Port" : "prevWord_keep_V_1"}]},
			{"Name" : "rs_firstWord_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Port" : "rs_firstWord_1"}]},
			{"Name" : "ipDataFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "ipDataFifo"},
					{"ID" : "44", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Port" : "ipDataFifo"}]},
			{"Name" : "fsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Port" : "fsmState"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "rs_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Port" : "rs_firstWord"}]},
			{"Name" : "ipv6DataFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "detect_ipv6_protocol_512_U0", "Port" : "ipv6DataFifo"},
					{"ID" : "45", "SubInstance" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Port" : "ipv6DataFifo"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "header_header_V"}]},
			{"Name" : "ipDataMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "ipDataMetaFifo"},
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "ipDataMetaFifo"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "metaWritten"}]},
			{"Name" : "validIpAddressFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "ip_invalid_dropper_512_U0", "Port" : "validIpAddressFifo"},
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "validIpAddressFifo"}]},
			{"Name" : "ipv4ProtocolFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "ipv4ProtocolFifo"},
					{"ID" : "46", "SubInstance" : "extract_ip_meta_512_U0", "Port" : "ipv4ProtocolFifo"}]},
			{"Name" : "ipDataCheckFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "ip_invalid_dropper_512_U0", "Port" : "ipDataCheckFifo"},
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "ipDataCheckFifo"}]},
			{"Name" : "cics_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_firstWord"}]},
			{"Name" : "cics_ip_sums_sum_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_0"}]},
			{"Name" : "cics_ip_sums_sum_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_1"}]},
			{"Name" : "cics_ip_sums_sum_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_2"}]},
			{"Name" : "cics_ip_sums_sum_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_3"}]},
			{"Name" : "cics_ip_sums_sum_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_4"}]},
			{"Name" : "cics_ip_sums_sum_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_5"}]},
			{"Name" : "cics_ip_sums_sum_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_6"}]},
			{"Name" : "cics_ip_sums_sum_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_7"}]},
			{"Name" : "cics_ip_sums_sum_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_8"}]},
			{"Name" : "cics_ip_sums_sum_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_9"}]},
			{"Name" : "cics_ip_sums_sum_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_10"}]},
			{"Name" : "cics_ip_sums_sum_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_11"}]},
			{"Name" : "cics_ip_sums_sum_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_12"}]},
			{"Name" : "cics_ip_sums_sum_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_13"}]},
			{"Name" : "cics_ip_sums_sum_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_14"}]},
			{"Name" : "cics_ip_sums_sum_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_15"}]},
			{"Name" : "cics_ip_sums_sum_V_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_16"}]},
			{"Name" : "cics_ip_sums_sum_V_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_17"}]},
			{"Name" : "cics_ip_sums_sum_V_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_18"}]},
			{"Name" : "cics_ip_sums_sum_V_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_19"}]},
			{"Name" : "cics_ip_sums_sum_V_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_20"}]},
			{"Name" : "cics_ip_sums_sum_V_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_21"}]},
			{"Name" : "cics_ip_sums_sum_V_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_22"}]},
			{"Name" : "cics_ip_sums_sum_V_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_23"}]},
			{"Name" : "cics_ip_sums_sum_V_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_24"}]},
			{"Name" : "cics_ip_sums_sum_V_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_25"}]},
			{"Name" : "cics_ip_sums_sum_V_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_26"}]},
			{"Name" : "cics_ip_sums_sum_V_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_27"}]},
			{"Name" : "cics_ip_sums_sum_V_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_28"}]},
			{"Name" : "cics_ip_sums_sum_V_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_29"}]},
			{"Name" : "iph_subSumsFifoOut", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "ip_handler_check_ipv4_checksum_32_U0", "Port" : "iph_subSumsFifoOut"},
					{"ID" : "47", "SubInstance" : "ip_handler_compute_ipv4_checksum_U0", "Port" : "iph_subSumsFifoOut"}]},
			{"Name" : "validChecksumFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "ip_invalid_dropper_512_U0", "Port" : "validChecksumFifo"},
					{"ID" : "48", "SubInstance" : "ip_handler_check_ipv4_checksum_32_U0", "Port" : "validChecksumFifo"}]},
			{"Name" : "iid_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "ip_invalid_dropper_512_U0", "Port" : "iid_state"}]},
			{"Name" : "ipv4ValidFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "ipv4ValidFifo"},
					{"ID" : "49", "SubInstance" : "ip_invalid_dropper_512_U0", "Port" : "ipv4ValidFifo"}]},
			{"Name" : "ipDataDropFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "ip_invalid_dropper_512_U0", "Port" : "ipDataDropFifo"},
					{"ID" : "50", "SubInstance" : "cut_length_U0", "Port" : "ipDataDropFifo"}]},
			{"Name" : "cl_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "cut_length_U0", "Port" : "cl_state"}]},
			{"Name" : "ipDataCutFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "ipDataCutFifo"},
					{"ID" : "50", "SubInstance" : "cut_length_U0", "Port" : "ipDataCutFifo"}]},
			{"Name" : "dip_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "dip_state"}]},
			{"Name" : "dip_ipProtocol_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "dip_ipProtocol_V"}]},
			{"Name" : "udpDataFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "detect_ipv4_protocol_512_U0", "Port" : "udpDataFifo"},
					{"ID" : "54", "SubInstance" : "ip_handler_duplicate_stream_net_axis_512_U0", "Port" : "udpDataFifo"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "detect_ipv6_protocol_512_U0", "Port" : "state_V"}]},
			{"Name" : "nextHeader_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "detect_ipv6_protocol_512_U0", "Port" : "nextHeader_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "55", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "convert_axis_to_net_axis_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_raw_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_raw_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_raw_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_raw_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_raw_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_raw_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_raw_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_raw_V_data_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_raw_V_keep_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_raw_V_strb_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_raw_V_last_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11"],
		"CDFG" : "convert_net_axis_to_axis_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_arp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_arp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_arp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_arp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_arp_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_arp_V_data_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_arp_V_keep_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_arp_V_strb_V_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_arp_V_last_V_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16"],
		"CDFG" : "convert_net_axis_to_axis_512_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_icmpv6_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_icmpv6_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_icmpv6_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmpv6_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmpv6_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmpv6_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_icmpv6_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_icmpv6_V_data_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_icmpv6_V_keep_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_icmpv6_V_strb_V_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_icmpv6_V_last_V_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_2_U0", "Parent" : "0", "Child" : ["18", "19", "20", "21"],
		"CDFG" : "convert_net_axis_to_axis_512_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_ipv6udp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_ipv6udp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_ipv6udp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_ipv6udp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_ipv6udp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_ipv6udp_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_ipv6udp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_2_U0.regslice_both_m_axis_ipv6udp_V_data_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_2_U0.regslice_both_m_axis_ipv6udp_V_keep_V_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_2_U0.regslice_both_m_axis_ipv6udp_V_strb_V_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_2_U0.regslice_both_m_axis_ipv6udp_V_last_V_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_3_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26"],
		"CDFG" : "convert_net_axis_to_axis_512_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_icmp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_icmp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_icmp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmp_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_icmp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_3_U0.regslice_both_m_axis_icmp_V_data_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_3_U0.regslice_both_m_axis_icmp_V_keep_V_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_3_U0.regslice_both_m_axis_icmp_V_strb_V_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_3_U0.regslice_both_m_axis_icmp_V_last_V_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_4_U0", "Parent" : "0", "Child" : ["28", "29", "30", "31"],
		"CDFG" : "convert_net_axis_to_axis_512_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_udp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_udp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_udp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_udp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_4_U0.regslice_both_m_axis_udp_V_data_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_4_U0.regslice_both_m_axis_udp_V_keep_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_4_U0.regslice_both_m_axis_udp_V_strb_V_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_4_U0.regslice_both_m_axis_udp_V_last_V_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_5_U0", "Parent" : "0", "Child" : ["33", "34", "35", "36"],
		"CDFG" : "convert_net_axis_to_axis_512_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_tcp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_5_U0.regslice_both_m_axis_tcp_V_data_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_5_U0.regslice_both_m_axis_tcp_V_keep_V_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_5_U0.regslice_both_m_axis_tcp_V_strb_V_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_5_U0.regslice_both_m_axis_tcp_V_last_V_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_6_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41"],
		"CDFG" : "convert_net_axis_to_axis_512_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_roce_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_roce_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_roce_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_roce_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_roce_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_roce_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_roce_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_6_U0.regslice_both_m_axis_roce_V_data_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_6_U0.regslice_both_m_axis_roce_V_keep_V_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_6_U0.regslice_both_m_axis_roce_V_strb_V_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_6_U0.regslice_both_m_axis_roce_V_last_V_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_eth_protocol_512_U0", "Parent" : "0",
		"CDFG" : "detect_eth_protocol_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_raw_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_raw_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "metaWritten_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "etherTypeFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "etherTypeFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethDataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "65", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ethDataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.route_by_eth_protocol_512_U0", "Parent" : "0",
		"CDFG" : "route_by_eth_protocol_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rep_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "etherTypeFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "etherTypeFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethDataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "65", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ethDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rep_etherType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "m_axis_arp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv4ShiftFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["44"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ShiftFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv6ShiftFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv6ShiftFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0", "Parent" : "0",
		"CDFG" : "ip_handler_rshiftWordByOctet_net_axis_512_512_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fsmState_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipv4ShiftFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ShiftFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rs_firstWord_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0", "Parent" : "0",
		"CDFG" : "ip_handler_rshiftWordByOctet_net_axis_512_512_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipv6ShiftFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv6ShiftFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rs_firstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipv6DataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv6DataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extract_ip_meta_512_U0", "Parent" : "0",
		"CDFG" : "extract_ip_meta_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "55", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "validIpAddressFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["49"], "DependentChan" : "71", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validIpAddressFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv4ProtocolFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "72", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ProtocolFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_handler_compute_ipv4_checksum_U0", "Parent" : "0",
		"CDFG" : "ip_handler_compute_ipv4_checksum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ipDataMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataCheckFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["49"], "DependentChan" : "73", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataCheckFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_firstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "iph_subSumsFifoOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "iph_subSumsFifoOut_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_handler_check_ipv4_checksum_32_U0", "Parent" : "0",
		"CDFG" : "ip_handler_check_ipv4_checksum_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "iph_subSumsFifoOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "iph_subSumsFifoOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "validChecksumFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["49"], "DependentChan" : "75", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validChecksumFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_invalid_dropper_512_U0", "Parent" : "0",
		"CDFG" : "ip_invalid_dropper_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "iid_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "validChecksumFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["48"], "DependentChan" : "75", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validChecksumFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "validIpAddressFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "71", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validIpAddressFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv4ValidFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "76", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ValidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataCheckFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "73", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataCheckFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataDropFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["50"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataDropFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cut_length_U0", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "cut_length",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cl_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataDropFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["49"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataCutFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataCutFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cut_length_U0.mux_646_64_1_1_U102", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_ipv4_protocol_512_U0", "Parent" : "0",
		"CDFG" : "detect_ipv4_protocol_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dip_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipv4ProtocolFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "72", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ProtocolFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv4ValidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["49"], "DependentChan" : "76", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ValidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dip_ipProtocol_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataCutFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["50"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataCutFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_icmp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_icmp_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpDataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_ipv6_protocol_512_U0", "Parent" : "0",
		"CDFG" : "detect_ipv6_protocol_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipv6DataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv6DataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nextHeader_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "m_axis_icmpv6_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_icmpv6_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_ipv6udp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_ipv6udp_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_handler_duplicate_stream_net_axis_512_U0", "Parent" : "0",
		"CDFG" : "ip_handler_duplicate_stream_net_axis_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "udpDataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_udp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_udp_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_roce_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["37"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_roce_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axis_raw_internal_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_arp_internal_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_icmpv6_internal_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_ipv6udp_internal_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_icmp_internal_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_udp_internal_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_tcp_internal_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_roce_internal_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.etherTypeFifo_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ethDataFifo_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv4ShiftFifo_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv6ShiftFifo_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataFifo_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv6DataFifo_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataMetaFifo_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.validIpAddressFifo_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv4ProtocolFifo_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataCheckFifo_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iph_subSumsFifoOut_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.validChecksumFifo_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv4ValidFifo_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataDropFifo_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataCutFifo_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpDataFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ip_handler_top {
		s_axis_raw_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_arp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_last_V {Type O LastRead -1 FirstWrite 1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_arp_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_icmpv6_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_ipv6udp_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_icmp_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_udp_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_tcp_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_roce_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready_1 {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		metaWritten_1 {Type IO LastRead -1 FirstWrite -1}
		etherTypeFifo {Type IO LastRead -1 FirstWrite -1}
		ethDataFifo {Type IO LastRead -1 FirstWrite -1}
		rep_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		rep_etherType_V {Type IO LastRead -1 FirstWrite -1}
		ipv4ShiftFifo {Type IO LastRead -1 FirstWrite -1}
		ipv6ShiftFifo {Type IO LastRead -1 FirstWrite -1}
		fsmState_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		rs_firstWord_1 {Type IO LastRead -1 FirstWrite -1}
		ipDataFifo {Type IO LastRead -1 FirstWrite -1}
		fsmState {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		rs_firstWord {Type IO LastRead -1 FirstWrite -1}
		ipv6DataFifo {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		ipDataMetaFifo {Type IO LastRead -1 FirstWrite -1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		validIpAddressFifo {Type IO LastRead -1 FirstWrite -1}
		ipv4ProtocolFifo {Type IO LastRead -1 FirstWrite -1}
		ipDataCheckFifo {Type IO LastRead -1 FirstWrite -1}
		cics_firstWord {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_7 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_8 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_9 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_10 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_11 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_12 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_13 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_14 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_15 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_16 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_17 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_18 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_19 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_20 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_21 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_22 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_23 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_24 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_25 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_26 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_27 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_28 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_29 {Type IO LastRead -1 FirstWrite -1}
		iph_subSumsFifoOut {Type IO LastRead -1 FirstWrite -1}
		validChecksumFifo {Type IO LastRead -1 FirstWrite -1}
		iid_state {Type IO LastRead -1 FirstWrite -1}
		ipv4ValidFifo {Type IO LastRead -1 FirstWrite -1}
		ipDataDropFifo {Type IO LastRead -1 FirstWrite -1}
		cl_state {Type IO LastRead -1 FirstWrite -1}
		ipDataCutFifo {Type IO LastRead -1 FirstWrite -1}
		dip_state {Type IO LastRead -1 FirstWrite -1}
		dip_ipProtocol_V {Type IO LastRead -1 FirstWrite -1}
		udpDataFifo {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		nextHeader_V {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress_c {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_512_s {
		s_axis_raw_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_raw_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_512_s {
		m_axis_arp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_1 {
		m_axis_icmpv6_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmpv6_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_2 {
		m_axis_ipv6udp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_3 {
		m_axis_icmp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_4 {
		m_axis_udp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_5 {
		m_axis_tcp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_6 {
		m_axis_roce_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_internal {Type I LastRead 0 FirstWrite -1}}
	detect_eth_protocol_512_s {
		s_axis_raw_internal {Type I LastRead 0 FirstWrite -1}
		header_ready_1 {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		metaWritten_1 {Type IO LastRead -1 FirstWrite -1}
		etherTypeFifo {Type O LastRead -1 FirstWrite 2}
		ethDataFifo {Type O LastRead -1 FirstWrite 1}}
	route_by_eth_protocol_512_s {
		rep_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		etherTypeFifo {Type I LastRead 0 FirstWrite -1}
		ethDataFifo {Type I LastRead 0 FirstWrite -1}
		rep_etherType_V {Type IO LastRead -1 FirstWrite -1}
		m_axis_arp_internal {Type O LastRead -1 FirstWrite 1}
		ipv4ShiftFifo {Type O LastRead -1 FirstWrite 1}
		ipv6ShiftFifo {Type O LastRead -1 FirstWrite 1}}
	ip_handler_rshiftWordByOctet_net_axis_512_512_1_s {
		fsmState_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		ipv4ShiftFifo {Type I LastRead 0 FirstWrite -1}
		rs_firstWord_1 {Type IO LastRead -1 FirstWrite -1}
		ipDataFifo {Type O LastRead -1 FirstWrite 1}}
	ip_handler_rshiftWordByOctet_net_axis_512_512_3_s {
		fsmState {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		ipv6ShiftFifo {Type I LastRead 0 FirstWrite -1}
		rs_firstWord {Type IO LastRead -1 FirstWrite -1}
		ipv6DataFifo {Type O LastRead -1 FirstWrite 1}}
	extract_ip_meta_512_s {
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		ipDataFifo {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		ipDataMetaFifo {Type O LastRead -1 FirstWrite 1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		validIpAddressFifo {Type O LastRead -1 FirstWrite 1}
		ipv4ProtocolFifo {Type O LastRead -1 FirstWrite 1}}
	ip_handler_compute_ipv4_checksum {
		ipDataMetaFifo {Type I LastRead 0 FirstWrite -1}
		ipDataCheckFifo {Type O LastRead -1 FirstWrite 1}
		cics_firstWord {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_7 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_8 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_9 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_10 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_11 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_12 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_13 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_14 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_15 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_16 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_17 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_18 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_19 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_20 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_21 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_22 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_23 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_24 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_25 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_26 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_27 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_28 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_29 {Type IO LastRead -1 FirstWrite -1}
		iph_subSumsFifoOut {Type O LastRead -1 FirstWrite 2}}
	ip_handler_check_ipv4_checksum_32_s {
		iph_subSumsFifoOut {Type I LastRead 0 FirstWrite -1}
		validChecksumFifo {Type O LastRead -1 FirstWrite 5}}
	ip_invalid_dropper_512_s {
		iid_state {Type IO LastRead -1 FirstWrite -1}
		validChecksumFifo {Type I LastRead 0 FirstWrite -1}
		validIpAddressFifo {Type I LastRead 0 FirstWrite -1}
		ipv4ValidFifo {Type O LastRead -1 FirstWrite 1}
		ipDataCheckFifo {Type I LastRead 0 FirstWrite -1}
		ipDataDropFifo {Type O LastRead -1 FirstWrite 1}}
	cut_length {
		cl_state {Type IO LastRead -1 FirstWrite -1}
		ipDataDropFifo {Type I LastRead 0 FirstWrite -1}
		ipDataCutFifo {Type O LastRead -1 FirstWrite 1}}
	detect_ipv4_protocol_512_s {
		dip_state {Type IO LastRead -1 FirstWrite -1}
		ipv4ProtocolFifo {Type I LastRead 0 FirstWrite -1}
		ipv4ValidFifo {Type I LastRead 0 FirstWrite -1}
		dip_ipProtocol_V {Type IO LastRead -1 FirstWrite -1}
		ipDataCutFifo {Type I LastRead 0 FirstWrite -1}
		m_axis_icmp_internal {Type O LastRead -1 FirstWrite 1}
		udpDataFifo {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_internal {Type O LastRead -1 FirstWrite 1}}
	detect_ipv6_protocol_512_s {
		state_V {Type IO LastRead -1 FirstWrite -1}
		ipv6DataFifo {Type I LastRead 0 FirstWrite -1}
		nextHeader_V {Type IO LastRead -1 FirstWrite -1}
		m_axis_icmpv6_internal {Type O LastRead -1 FirstWrite 1}
		m_axis_ipv6udp_internal {Type O LastRead -1 FirstWrite 1}}
	ip_handler_duplicate_stream_net_axis_512_s {
		udpDataFifo {Type I LastRead 0 FirstWrite -1}
		m_axis_udp_internal {Type O LastRead -1 FirstWrite 1}
		m_axis_roce_internal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27", "Max" : "27"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_raw_V_data_V { axis {  { s_axis_raw_TDATA in_data 0 512 } } }
	s_axis_raw_V_keep_V { axis {  { s_axis_raw_TKEEP in_data 0 64 } } }
	s_axis_raw_V_strb_V { axis {  { s_axis_raw_TSTRB in_data 0 64 } } }
	s_axis_raw_V_last_V { axis {  { s_axis_raw_TLAST in_data 0 1 }  { s_axis_raw_TVALID in_vld 0 1 }  { s_axis_raw_TREADY in_acc 1 1 } } }
	m_axis_arp_V_data_V { axis {  { m_axis_arp_TDATA out_data 1 512 } } }
	m_axis_arp_V_keep_V { axis {  { m_axis_arp_TKEEP out_data 1 64 } } }
	m_axis_arp_V_strb_V { axis {  { m_axis_arp_TSTRB out_data 1 64 } } }
	m_axis_arp_V_last_V { axis {  { m_axis_arp_TLAST out_data 1 1 }  { m_axis_arp_TVALID out_vld 1 1 }  { m_axis_arp_TREADY out_acc 0 1 } } }
	m_axis_icmpv6_V_data_V { axis {  { m_axis_icmpv6_TDATA out_data 1 512 } } }
	m_axis_icmpv6_V_keep_V { axis {  { m_axis_icmpv6_TKEEP out_data 1 64 } } }
	m_axis_icmpv6_V_strb_V { axis {  { m_axis_icmpv6_TSTRB out_data 1 64 } } }
	m_axis_icmpv6_V_last_V { axis {  { m_axis_icmpv6_TLAST out_data 1 1 }  { m_axis_icmpv6_TVALID out_vld 1 1 }  { m_axis_icmpv6_TREADY out_acc 0 1 } } }
	m_axis_ipv6udp_V_data_V { axis {  { m_axis_ipv6udp_TDATA out_data 1 512 } } }
	m_axis_ipv6udp_V_keep_V { axis {  { m_axis_ipv6udp_TKEEP out_data 1 64 } } }
	m_axis_ipv6udp_V_strb_V { axis {  { m_axis_ipv6udp_TSTRB out_data 1 64 } } }
	m_axis_ipv6udp_V_last_V { axis {  { m_axis_ipv6udp_TLAST out_data 1 1 }  { m_axis_ipv6udp_TVALID out_vld 1 1 }  { m_axis_ipv6udp_TREADY out_acc 0 1 } } }
	m_axis_icmp_V_data_V { axis {  { m_axis_icmp_TDATA out_data 1 512 } } }
	m_axis_icmp_V_keep_V { axis {  { m_axis_icmp_TKEEP out_data 1 64 } } }
	m_axis_icmp_V_strb_V { axis {  { m_axis_icmp_TSTRB out_data 1 64 } } }
	m_axis_icmp_V_last_V { axis {  { m_axis_icmp_TLAST out_data 1 1 }  { m_axis_icmp_TVALID out_vld 1 1 }  { m_axis_icmp_TREADY out_acc 0 1 } } }
	m_axis_udp_V_data_V { axis {  { m_axis_udp_TDATA out_data 1 512 } } }
	m_axis_udp_V_keep_V { axis {  { m_axis_udp_TKEEP out_data 1 64 } } }
	m_axis_udp_V_strb_V { axis {  { m_axis_udp_TSTRB out_data 1 64 } } }
	m_axis_udp_V_last_V { axis {  { m_axis_udp_TLAST out_data 1 1 }  { m_axis_udp_TVALID out_vld 1 1 }  { m_axis_udp_TREADY out_acc 0 1 } } }
	m_axis_tcp_V_data_V { axis {  { m_axis_tcp_TDATA out_data 1 512 } } }
	m_axis_tcp_V_keep_V { axis {  { m_axis_tcp_TKEEP out_data 1 64 } } }
	m_axis_tcp_V_strb_V { axis {  { m_axis_tcp_TSTRB out_data 1 64 } } }
	m_axis_tcp_V_last_V { axis {  { m_axis_tcp_TLAST out_data 1 1 }  { m_axis_tcp_TVALID out_vld 1 1 }  { m_axis_tcp_TREADY out_acc 0 1 } } }
	m_axis_roce_V_data_V { axis {  { m_axis_roce_TDATA out_data 1 512 } } }
	m_axis_roce_V_keep_V { axis {  { m_axis_roce_TKEEP out_data 1 64 } } }
	m_axis_roce_V_strb_V { axis {  { m_axis_roce_TSTRB out_data 1 64 } } }
	m_axis_roce_V_last_V { axis {  { m_axis_roce_TLAST out_data 1 1 }  { m_axis_roce_TVALID out_vld 1 1 }  { m_axis_roce_TREADY out_acc 0 1 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
