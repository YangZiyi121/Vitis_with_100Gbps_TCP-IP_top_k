set moduleName mac_ip_encode_top
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
set C_modelName {mac_ip_encode_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_ip_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_ip Data } }  }
	{ s_axis_ip_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_ip Keep } }  }
	{ s_axis_ip_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_ip Strb } }  }
	{ s_axis_ip_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_ip Last } }  }
	{ s_axis_arp_lookup_reply int 56 regular {axi_s 0 volatile  { s_axis_arp_lookup_reply Data } }  }
	{ m_axis_ip_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_ip Data } }  }
	{ m_axis_ip_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_ip Keep } }  }
	{ m_axis_ip_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_ip Strb } }  }
	{ m_axis_ip_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_ip Last } }  }
	{ m_axis_arp_lookup_request int 32 regular {axi_s 1 volatile  { m_axis_arp_lookup_request Data } }  }
	{ myMacAddress int 48 regular  }
	{ regSubNetMask int 32 regular  }
	{ regDefaultGateway int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_ip_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_ip_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_ip_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_ip_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_arp_lookup_reply", "interface" : "axis", "bitwidth" : 56, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_ip_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ip_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ip_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_ip_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_arp_lookup_request", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "regSubNetMask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regDefaultGateway", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ s_axis_ip_TDATA sc_in sc_lv 512 signal 0 } 
	{ s_axis_ip_TKEEP sc_in sc_lv 64 signal 1 } 
	{ s_axis_ip_TSTRB sc_in sc_lv 64 signal 2 } 
	{ s_axis_ip_TLAST sc_in sc_lv 1 signal 3 } 
	{ s_axis_arp_lookup_reply_TDATA sc_in sc_lv 56 signal 4 } 
	{ m_axis_ip_TDATA sc_out sc_lv 512 signal 5 } 
	{ m_axis_ip_TKEEP sc_out sc_lv 64 signal 6 } 
	{ m_axis_ip_TSTRB sc_out sc_lv 64 signal 7 } 
	{ m_axis_ip_TLAST sc_out sc_lv 1 signal 8 } 
	{ m_axis_arp_lookup_request_TDATA sc_out sc_lv 32 signal 9 } 
	{ myMacAddress sc_in sc_lv 48 signal 10 } 
	{ regSubNetMask sc_in sc_lv 32 signal 11 } 
	{ regDefaultGateway sc_in sc_lv 32 signal 12 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_ip_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_ip_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_ip_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_ip_TREADY sc_in sc_logic 1 outacc 8 } 
	{ m_axis_arp_lookup_request_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_arp_lookup_request_TREADY sc_in sc_logic 1 outacc 9 } 
	{ s_axis_arp_lookup_reply_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_arp_lookup_reply_TREADY sc_out sc_logic 1 inacc 4 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "s_axis_ip_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_ip_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_ip_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_ip_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_ip_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_ip_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_ip_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_ip_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_arp_lookup_reply_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":56, "type": "signal", "bundle":{"name": "s_axis_arp_lookup_reply", "role": "TDATA" }} , 
 	{ "name": "m_axis_ip_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_ip_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_ip_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_ip_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_ip_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_ip_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_ip_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_ip_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_lookup_request_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_arp_lookup_request", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "regSubNetMask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regSubNetMask", "role": "default" }} , 
 	{ "name": "regDefaultGateway", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regDefaultGateway", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_ip_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_ip_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_ip_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_ip_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_ip_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_ip_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_ip_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_ip_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_lookup_request_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_lookup_request", "role": "TVALID" }} , 
 	{ "name": "m_axis_arp_lookup_request_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_lookup_request", "role": "TREADY" }} , 
 	{ "name": "s_axis_arp_lookup_reply_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_arp_lookup_reply", "role": "TVALID" }} , 
 	{ "name": "s_axis_arp_lookup_reply_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_arp_lookup_reply", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "12", "14", "15", "16", "17", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "mac_ip_encode_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
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
			{"ID" : "7", "Name" : "convert_net_axis_to_axis_512_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "convert_net_axis_to_axis_512_U0"},
			{"ID" : "20", "Name" : "insert_ethernet_header_512_U0"}],
		"Port" : [
			{"Name" : "s_axis_ip_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_ip_V_data_V"}]},
			{"Name" : "s_axis_ip_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_ip_V_keep_V"}]},
			{"Name" : "s_axis_ip_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_ip_V_strb_V"}]},
			{"Name" : "s_axis_ip_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_ip_V_last_V"}]},
			{"Name" : "s_axis_arp_lookup_reply", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "handle_arp_reply_512_U0", "Port" : "s_axis_arp_lookup_reply"}]},
			{"Name" : "m_axis_ip_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_ip_V_data_V"}]},
			{"Name" : "m_axis_ip_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_ip_V_keep_V"}]},
			{"Name" : "m_axis_ip_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_ip_V_strb_V"}]},
			{"Name" : "m_axis_ip_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_ip_V_last_V"}]},
			{"Name" : "m_axis_arp_lookup_request", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "m_axis_arp_lookup_request"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "regSubNetMask", "Type" : "None", "Direction" : "I"},
			{"Name" : "regDefaultGateway", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "dataIn_internal"},
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "dataIn_internal"}]},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "dataOut_internal"},
					{"ID" : "20", "SubInstance" : "insert_ethernet_header_512_U0", "Port" : "dataOut_internal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "header_header_V"}]},
			{"Name" : "dataStreamBuffer0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "dataStreamBuffer0"},
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "dataStreamBuffer0"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "extract_ip_address_512_U0", "Port" : "metaWritten"}]},
			{"Name" : "dataStreamBuffer1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "insert_ip_checksum_512_U0", "Port" : "dataStreamBuffer1"},
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "dataStreamBuffer1"}]},
			{"Name" : "cics_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_firstWord"}]},
			{"Name" : "cics_ip_sums_sum_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_0"}]},
			{"Name" : "cics_ip_sums_sum_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_1"}]},
			{"Name" : "cics_ip_sums_sum_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_2"}]},
			{"Name" : "cics_ip_sums_sum_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_3"}]},
			{"Name" : "cics_ip_sums_sum_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_4"}]},
			{"Name" : "cics_ip_sums_sum_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_6"}]},
			{"Name" : "cics_ip_sums_sum_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_7"}]},
			{"Name" : "cics_ip_sums_sum_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_8"}]},
			{"Name" : "cics_ip_sums_sum_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_9"}]},
			{"Name" : "cics_ip_sums_sum_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_10"}]},
			{"Name" : "cics_ip_sums_sum_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_11"}]},
			{"Name" : "cics_ip_sums_sum_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_12"}]},
			{"Name" : "cics_ip_sums_sum_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_13"}]},
			{"Name" : "cics_ip_sums_sum_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_14"}]},
			{"Name" : "cics_ip_sums_sum_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_15"}]},
			{"Name" : "cics_ip_sums_sum_V_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_16"}]},
			{"Name" : "cics_ip_sums_sum_V_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_17"}]},
			{"Name" : "cics_ip_sums_sum_V_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_18"}]},
			{"Name" : "cics_ip_sums_sum_V_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_19"}]},
			{"Name" : "cics_ip_sums_sum_V_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_20"}]},
			{"Name" : "cics_ip_sums_sum_V_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_21"}]},
			{"Name" : "cics_ip_sums_sum_V_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_22"}]},
			{"Name" : "cics_ip_sums_sum_V_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_23"}]},
			{"Name" : "cics_ip_sums_sum_V_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_24"}]},
			{"Name" : "cics_ip_sums_sum_V_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_25"}]},
			{"Name" : "cics_ip_sums_sum_V_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_26"}]},
			{"Name" : "cics_ip_sums_sum_V_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_27"}]},
			{"Name" : "cics_ip_sums_sum_V_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_28"}]},
			{"Name" : "cics_ip_sums_sum_V_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "cics_ip_sums_sum_V_29"}]},
			{"Name" : "subSumFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "mac_finalize_ipv4_checksum_32_U0", "Port" : "subSumFifo"},
					{"ID" : "14", "SubInstance" : "mac_compute_ipv4_checksum_U0", "Port" : "subSumFifo"}]},
			{"Name" : "checksumFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "mac_finalize_ipv4_checksum_32_U0", "Port" : "checksumFifo"},
					{"ID" : "16", "SubInstance" : "insert_ip_checksum_512_U0", "Port" : "checksumFifo"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "insert_ip_checksum_512_U0", "Port" : "wordCount_V"}]},
			{"Name" : "dataStreamBuffer2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "handle_arp_reply_512_U0", "Port" : "dataStreamBuffer2"},
					{"ID" : "16", "SubInstance" : "insert_ip_checksum_512_U0", "Port" : "dataStreamBuffer2"}]},
			{"Name" : "har_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "handle_arp_reply_512_U0", "Port" : "har_state"}]},
			{"Name" : "headerFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "insert_ethernet_header_512_U0", "Port" : "headerFifo"},
					{"ID" : "17", "SubInstance" : "handle_arp_reply_512_U0", "Port" : "headerFifo"}]},
			{"Name" : "dataStreamBuffer3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "mac_lshiftWordByOctet_512_1_U0", "Port" : "dataStreamBuffer3"},
					{"ID" : "17", "SubInstance" : "handle_arp_reply_512_U0", "Port" : "dataStreamBuffer3"}]},
			{"Name" : "ls_writeRemainder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "mac_lshiftWordByOctet_512_1_U0", "Port" : "ls_writeRemainder"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "mac_lshiftWordByOctet_512_1_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "mac_lshiftWordByOctet_512_1_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "dataStreamBuffer4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "insert_ethernet_header_512_U0", "Port" : "dataStreamBuffer4"},
					{"ID" : "19", "SubInstance" : "mac_lshiftWordByOctet_512_1_U0", "Port" : "dataStreamBuffer4"}]},
			{"Name" : "ls_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "mac_lshiftWordByOctet_512_1_U0", "Port" : "ls_firstWord"}]},
			{"Name" : "ge_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "insert_ethernet_header_512_U0", "Port" : "ge_state"}]}]},
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
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "21", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSubNetMask", "Type" : "None", "Direction" : "I"},
			{"Name" : "regSubNetMask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regSubNetMask_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regDefaultGateway", "Type" : "None", "Direction" : "I"},
			{"Name" : "regDefaultGateway_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regDefaultGateway_c_blk_n", "Type" : "RtlSignal"}]}]},
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
			{"Name" : "s_axis_ip_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_ip_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_ip_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_ip_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_ip_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_ip_V_data_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_ip_V_keep_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_ip_V_strb_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_ip_V_last_V_U", "Parent" : "2"},
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
			{"Name" : "m_axis_ip_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_ip_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_ip_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_ip_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_ip_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_ip_V_data_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_ip_V_keep_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_ip_V_strb_V_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_ip_V_last_V_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extract_ip_address_512_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "extract_ip_address_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_arp_lookup_request", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_lookup_request_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSubNetMask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regSubNetMask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regDefaultGateway", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regDefaultGateway_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreamBuffer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extract_ip_address_512_U0.regslice_both_m_axis_arp_lookup_request_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_compute_ipv4_checksum_U0", "Parent" : "0",
		"CDFG" : "mac_compute_ipv4_checksum",
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
			{"Name" : "dataStreamBuffer0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreamBuffer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "27", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_firstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_4", "Type" : "OVld", "Direction" : "IO"},
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
			{"Name" : "subSumFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "subSumFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_finalize_ipv4_checksum_32_U0", "Parent" : "0",
		"CDFG" : "mac_finalize_ipv4_checksum_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "subSumFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "subSumFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checksumFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "29", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "checksumFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.insert_ip_checksum_512_U0", "Parent" : "0",
		"CDFG" : "insert_ip_checksum_512_s",
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
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreamBuffer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "27", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checksumFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "29", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "checksumFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreamBuffer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.handle_arp_reply_512_U0", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "handle_arp_reply_512_s",
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
			{"Name" : "s_axis_arp_lookup_reply", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_arp_lookup_reply_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "21", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "har_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreamBuffer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "headerFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "headerFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreamBuffer3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_arp_reply_512_U0.regslice_both_s_axis_arp_lookup_reply_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_lshiftWordByOctet_512_1_U0", "Parent" : "0",
		"CDFG" : "mac_lshiftWordByOctet_512_1_s",
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
			{"Name" : "ls_writeRemainder", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreamBuffer4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreamBuffer3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ls_firstWord", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.insert_ethernet_header_512_U0", "Parent" : "0",
		"CDFG" : "insert_ethernet_header_512_s",
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
			{"Name" : "ge_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headerFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "headerFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreamBuffer4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regSubNetMask_c_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regDefaultGateway_c_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataIn_internal_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataOut_internal_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataStreamBuffer0_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataStreamBuffer1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.subSumFifo_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.checksumFifo_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataStreamBuffer2_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.headerFifo_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataStreamBuffer3_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataStreamBuffer4_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mac_ip_encode_top {
		s_axis_ip_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_ip_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_ip_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_ip_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_arp_lookup_reply {Type I LastRead 0 FirstWrite -1}
		m_axis_ip_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ip_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ip_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ip_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_lookup_request {Type O LastRead -1 FirstWrite 2}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		regSubNetMask {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway {Type I LastRead 0 FirstWrite -1}
		dataIn_internal {Type IO LastRead -1 FirstWrite -1}
		dataOut_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer0 {Type IO LastRead -1 FirstWrite -1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer1 {Type IO LastRead -1 FirstWrite -1}
		cics_firstWord {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_4 {Type IO LastRead -1 FirstWrite -1}
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
		subSumFifo {Type IO LastRead -1 FirstWrite -1}
		checksumFifo {Type IO LastRead -1 FirstWrite -1}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer2 {Type IO LastRead -1 FirstWrite -1}
		har_state {Type IO LastRead -1 FirstWrite -1}
		headerFifo {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer3 {Type IO LastRead -1 FirstWrite -1}
		ls_writeRemainder {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer4 {Type IO LastRead -1 FirstWrite -1}
		ls_firstWord {Type IO LastRead -1 FirstWrite -1}
		ge_state {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_c {Type O LastRead -1 FirstWrite 0}
		regSubNetMask {Type I LastRead 0 FirstWrite -1}
		regSubNetMask_c {Type O LastRead -1 FirstWrite 0}
		regDefaultGateway {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway_c {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_512_s {
		s_axis_ip_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_ip_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_ip_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_ip_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_512_s {
		m_axis_ip_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ip_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ip_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_ip_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataOut_internal {Type I LastRead 0 FirstWrite -1}}
	extract_ip_address_512_s {
		m_axis_arp_lookup_request {Type O LastRead -1 FirstWrite 2}
		regSubNetMask {Type I LastRead 1 FirstWrite -1}
		regDefaultGateway {Type I LastRead 1 FirstWrite -1}
		dataIn_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer0 {Type O LastRead -1 FirstWrite 1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}}
	mac_compute_ipv4_checksum {
		dataStreamBuffer0 {Type I LastRead 0 FirstWrite -1}
		dataStreamBuffer1 {Type O LastRead -1 FirstWrite 1}
		cics_firstWord {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_4 {Type IO LastRead -1 FirstWrite -1}
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
		subSumFifo {Type O LastRead -1 FirstWrite 2}}
	mac_finalize_ipv4_checksum_32_s {
		subSumFifo {Type I LastRead 0 FirstWrite -1}
		checksumFifo {Type O LastRead -1 FirstWrite 4}}
	insert_ip_checksum_512_s {
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer1 {Type I LastRead 0 FirstWrite -1}
		checksumFifo {Type I LastRead 0 FirstWrite -1}
		dataStreamBuffer2 {Type O LastRead -1 FirstWrite 1}}
	handle_arp_reply_512_s {
		s_axis_arp_lookup_reply {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 1 FirstWrite -1}
		har_state {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer2 {Type I LastRead 0 FirstWrite -1}
		headerFifo {Type O LastRead -1 FirstWrite 1}
		dataStreamBuffer3 {Type O LastRead -1 FirstWrite 1}}
	mac_lshiftWordByOctet_512_1_s {
		ls_writeRemainder {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer4 {Type O LastRead -1 FirstWrite 1}
		dataStreamBuffer3 {Type I LastRead 0 FirstWrite -1}
		ls_firstWord {Type IO LastRead -1 FirstWrite -1}}
	insert_ethernet_header_512_s {
		ge_state {Type IO LastRead -1 FirstWrite -1}
		headerFifo {Type I LastRead 0 FirstWrite -1}
		dataStreamBuffer4 {Type I LastRead 0 FirstWrite -1}
		dataOut_internal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_ip_V_data_V { axis {  { s_axis_ip_TDATA in_data 0 512 } } }
	s_axis_ip_V_keep_V { axis {  { s_axis_ip_TKEEP in_data 0 64 } } }
	s_axis_ip_V_strb_V { axis {  { s_axis_ip_TSTRB in_data 0 64 } } }
	s_axis_ip_V_last_V { axis {  { s_axis_ip_TLAST in_data 0 1 }  { s_axis_ip_TVALID in_vld 0 1 }  { s_axis_ip_TREADY in_acc 1 1 } } }
	s_axis_arp_lookup_reply { axis {  { s_axis_arp_lookup_reply_TDATA in_data 0 56 }  { s_axis_arp_lookup_reply_TVALID in_vld 0 1 }  { s_axis_arp_lookup_reply_TREADY in_acc 1 1 } } }
	m_axis_ip_V_data_V { axis {  { m_axis_ip_TDATA out_data 1 512 } } }
	m_axis_ip_V_keep_V { axis {  { m_axis_ip_TKEEP out_data 1 64 } } }
	m_axis_ip_V_strb_V { axis {  { m_axis_ip_TSTRB out_data 1 64 } } }
	m_axis_ip_V_last_V { axis {  { m_axis_ip_TLAST out_data 1 1 }  { m_axis_ip_TVALID out_vld 1 1 }  { m_axis_ip_TREADY out_acc 0 1 } } }
	m_axis_arp_lookup_request { axis {  { m_axis_arp_lookup_request_TDATA out_data 1 32 }  { m_axis_arp_lookup_request_TVALID out_vld 1 1 }  { m_axis_arp_lookup_request_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	regSubNetMask { ap_none {  { regSubNetMask in_data 0 32 } } }
	regDefaultGateway { ap_none {  { regDefaultGateway in_data 0 32 } } }
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
