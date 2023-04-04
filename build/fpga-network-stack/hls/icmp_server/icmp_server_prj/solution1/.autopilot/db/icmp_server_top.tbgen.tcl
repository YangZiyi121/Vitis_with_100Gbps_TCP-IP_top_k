set moduleName icmp_server_top
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
set C_modelName {icmp_server_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_V_data_V int 64 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
	{ udpIn_V_data_V int 64 regular {axi_s 0 volatile  { udpIn Data } }  }
	{ udpIn_V_keep_V int 8 regular {axi_s 0 volatile  { udpIn Keep } }  }
	{ udpIn_V_strb_V int 8 regular {axi_s 0 volatile  { udpIn Strb } }  }
	{ udpIn_V_last_V int 1 regular {axi_s 0 volatile  { udpIn Last } }  }
	{ ttlIn_V_data_V int 64 regular {axi_s 0 volatile  { ttlIn Data } }  }
	{ ttlIn_V_keep_V int 8 regular {axi_s 0 volatile  { ttlIn Keep } }  }
	{ ttlIn_V_strb_V int 8 regular {axi_s 0 volatile  { ttlIn Strb } }  }
	{ ttlIn_V_last_V int 1 regular {axi_s 0 volatile  { ttlIn Last } }  }
	{ m_axis_V_data_V int 64 regular {axi_s 1 volatile  { m_axis Data } }  }
	{ m_axis_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis Keep } }  }
	{ m_axis_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis Strb } }  }
	{ m_axis_V_last_V int 1 regular {axi_s 1 volatile  { m_axis Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ttlIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ttlIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ttlIn_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ttlIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ s_axis_TDATA sc_in sc_lv 64 signal 0 } 
	{ s_axis_TKEEP sc_in sc_lv 8 signal 1 } 
	{ s_axis_TSTRB sc_in sc_lv 8 signal 2 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 3 } 
	{ udpIn_TDATA sc_in sc_lv 64 signal 4 } 
	{ udpIn_TKEEP sc_in sc_lv 8 signal 5 } 
	{ udpIn_TSTRB sc_in sc_lv 8 signal 6 } 
	{ udpIn_TLAST sc_in sc_lv 1 signal 7 } 
	{ ttlIn_TDATA sc_in sc_lv 64 signal 8 } 
	{ ttlIn_TKEEP sc_in sc_lv 8 signal 9 } 
	{ ttlIn_TSTRB sc_in sc_lv 8 signal 10 } 
	{ ttlIn_TLAST sc_in sc_lv 1 signal 11 } 
	{ m_axis_TDATA sc_out sc_lv 64 signal 12 } 
	{ m_axis_TKEEP sc_out sc_lv 8 signal 13 } 
	{ m_axis_TSTRB sc_out sc_lv 8 signal 14 } 
	{ m_axis_TLAST sc_out sc_lv 1 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 3 } 
	{ udpIn_TVALID sc_in sc_logic 1 invld 7 } 
	{ udpIn_TREADY sc_out sc_logic 1 inacc 7 } 
	{ ttlIn_TVALID sc_in sc_logic 1 invld 11 } 
	{ ttlIn_TREADY sc_out sc_logic 1 inacc 11 } 
	{ m_axis_TVALID sc_out sc_logic 1 outvld 15 } 
	{ m_axis_TREADY sc_in sc_logic 1 outacc 15 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "udpIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "udpIn_V_data_V", "role": "default" }} , 
 	{ "name": "udpIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "udpIn_V_keep_V", "role": "default" }} , 
 	{ "name": "udpIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "udpIn_V_strb_V", "role": "default" }} , 
 	{ "name": "udpIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "udpIn_V_last_V", "role": "default" }} , 
 	{ "name": "ttlIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ttlIn_V_data_V", "role": "default" }} , 
 	{ "name": "ttlIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ttlIn_V_keep_V", "role": "default" }} , 
 	{ "name": "ttlIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ttlIn_V_strb_V", "role": "default" }} , 
 	{ "name": "ttlIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ttlIn_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "udpIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "udpIn_V_last_V", "role": "default" }} , 
 	{ "name": "udpIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "udpIn_V_last_V", "role": "default" }} , 
 	{ "name": "ttlIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ttlIn_V_last_V", "role": "default" }} , 
 	{ "name": "ttlIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "ttlIn_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "11", "16", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "icmp_server_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "convert_axis_to_net_axis_64_U0"},
			{"ID" : "6", "Name" : "convert_axis_to_net_axis_64_1_U0"},
			{"ID" : "11", "Name" : "convert_axis_to_net_axis_64_2_U0"},
			{"ID" : "16", "Name" : "convert_net_axis_to_axis_64_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "convert_net_axis_to_axis_64_U0"},
			{"ID" : "25", "Name" : "insertChecksum_U0"}],
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "s_axis_V_data_V"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "s_axis_V_keep_V"}]},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "s_axis_V_strb_V"}]},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "s_axis_V_last_V"}]},
			{"Name" : "udpIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convert_axis_to_net_axis_64_1_U0", "Port" : "udpIn_V_data_V"}]},
			{"Name" : "udpIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convert_axis_to_net_axis_64_1_U0", "Port" : "udpIn_V_keep_V"}]},
			{"Name" : "udpIn_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convert_axis_to_net_axis_64_1_U0", "Port" : "udpIn_V_strb_V"}]},
			{"Name" : "udpIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convert_axis_to_net_axis_64_1_U0", "Port" : "udpIn_V_last_V"}]},
			{"Name" : "ttlIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "convert_axis_to_net_axis_64_2_U0", "Port" : "ttlIn_V_data_V"}]},
			{"Name" : "ttlIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "convert_axis_to_net_axis_64_2_U0", "Port" : "ttlIn_V_keep_V"}]},
			{"Name" : "ttlIn_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "convert_axis_to_net_axis_64_2_U0", "Port" : "ttlIn_V_strb_V"}]},
			{"Name" : "ttlIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "convert_axis_to_net_axis_64_2_U0", "Port" : "ttlIn_V_last_V"}]},
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "m_axis_V_data_V"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "m_axis_V_keep_V"}]},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "m_axis_V_strb_V"}]},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "m_axis_V_last_V"}]},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "dataIn_internal"},
					{"ID" : "1", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "dataIn_internal"}]},
			{"Name" : "udpIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convert_axis_to_net_axis_64_1_U0", "Port" : "udpIn_internal"},
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "udpIn_internal"}]},
			{"Name" : "ttlIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "convert_axis_to_net_axis_64_2_U0", "Port" : "ttlIn_internal"},
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "ttlIn_internal"}]},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "dataOut_internal"},
					{"ID" : "16", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "dataOut_internal"}]},
			{"Name" : "cics_writeLastOne", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_writeLastOne"}]},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_prevWord_data_V"}]},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_prevWord_keep_V"}]},
			{"Name" : "cics_prevWord_last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_prevWord_last_V"}]},
			{"Name" : "packageBuffer1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dropper_U0", "Port" : "packageBuffer1"},
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "packageBuffer1"}]},
			{"Name" : "cics_computeCs", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_computeCs"}]},
			{"Name" : "cics_sums_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_sums_V_3"}]},
			{"Name" : "cics_sums_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_sums_V_1"}]},
			{"Name" : "cics_sums_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_sums_V"}]},
			{"Name" : "cics_sums_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_sums_V_2"}]},
			{"Name" : "icmpChecksum_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "icmpChecksum_V"}]},
			{"Name" : "icmpType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "icmpType_V"}]},
			{"Name" : "icmpCode_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "icmpCode_V"}]},
			{"Name" : "cics_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_state"}]},
			{"Name" : "validFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dropper_U0", "Port" : "validFifo"},
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "validFifo"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams"},
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams"}]},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "check_icmp_checksum_U0", "Port" : "cics_wordCount_V"}]},
			{"Name" : "udpState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "udpState"}]},
			{"Name" : "ipWordCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "ipWordCounter_V"}]},
			{"Name" : "streamSource_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "streamSource_V"}]},
			{"Name" : "udpChecksum_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "udpChecksum_V"}]},
			{"Name" : "udpPort2addIpHeader_data", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "udpPort2addIpHeader_data"},
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "udpPort2addIpHeader_data"}]},
			{"Name" : "udpPort2addIpHeader_header", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "udpPort2addIpHeader_header"},
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "udpPort2addIpHeader_header"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1"},
					{"ID" : "22", "SubInstance" : "udpPortUnreachable_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1"}]},
			{"Name" : "addIpState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "addIpState"}]},
			{"Name" : "tempWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "tempWord_data_V"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams"},
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams"}]},
			{"Name" : "tempWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "tempWord_keep_V"}]},
			{"Name" : "sourceIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udpAddIpHeader_U0", "Port" : "sourceIP_V"}]},
			{"Name" : "d_isFirstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dropper_U0", "Port" : "d_isFirstWord"}]},
			{"Name" : "d_drop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dropper_U0", "Port" : "d_drop"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dropper_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1"},
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1"}]},
			{"Name" : "ic_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "ic_wordCount_V"}]},
			{"Name" : "streamSource_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "insertChecksum_U0", "Port" : "streamSource_V_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "convert_axis_to_net_axis_64_s",
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
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_s_axis_V_data_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_s_axis_V_keep_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_s_axis_V_strb_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_s_axis_V_last_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_1_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "convert_axis_to_net_axis_64_1",
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
			{"Name" : "udpIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "udpIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "udpIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "udpIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "udpIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_1_U0.regslice_both_udpIn_V_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_1_U0.regslice_both_udpIn_V_keep_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_1_U0.regslice_both_udpIn_V_strb_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_1_U0.regslice_both_udpIn_V_last_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_2_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "convert_axis_to_net_axis_64_2",
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
			{"Name" : "ttlIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ttlIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ttlIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ttlIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ttlIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ttlIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ttlIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_2_U0.regslice_both_ttlIn_V_data_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_2_U0.regslice_both_ttlIn_V_keep_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_2_U0.regslice_both_ttlIn_V_strb_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_2_U0.regslice_both_ttlIn_V_last_V_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20"],
		"CDFG" : "convert_net_axis_to_axis_64_s",
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
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_m_axis_V_data_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_m_axis_V_keep_V_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_m_axis_V_strb_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_m_axis_V_last_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.check_icmp_checksum_U0", "Parent" : "0",
		"CDFG" : "check_icmp_checksum",
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
			{"Name" : "cics_writeLastOne", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "packageBuffer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "30", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "packageBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_computeCs", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpChecksum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpCode_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "validFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "31", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "32", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpPortUnreachable_U0", "Parent" : "0",
		"CDFG" : "udpPortUnreachable",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "udpIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ttlIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ttlIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipWordCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "streamSource_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpChecksum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpPort2addIpHeader_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "33", "DependentChanDepth" : "192", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpPort2addIpHeader_header", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "34", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_header_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "35", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpAddIpHeader_U0", "Parent" : "0",
		"CDFG" : "udpAddIpHeader",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "addIpState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpPort2addIpHeader_header", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "34", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_header_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "36", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tempWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sourceIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpPort2addIpHeader_data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "33", "DependentChanDepth" : "192", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_data_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dropper_U0", "Parent" : "0",
		"CDFG" : "dropper",
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
			{"Name" : "packageBuffer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "30", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "packageBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_isFirstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "d_drop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "validFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "31", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.insertChecksum_U0", "Parent" : "0",
		"CDFG" : "insertChecksum",
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
			{"Name" : "ic_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "streamSource_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["24"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "36", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataOut_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "32", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "35", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataIn_internal_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpIn_internal_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ttlIn_internal_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataOut_internal_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packageBuffer1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.validFifo_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpPort2addIpHeader_data_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpPort2addIpHeader_header_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	icmp_server_top {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataIn_internal {Type IO LastRead -1 FirstWrite -1}
		udpIn_internal {Type IO LastRead -1 FirstWrite -1}
		ttlIn_internal {Type IO LastRead -1 FirstWrite -1}
		dataOut_internal {Type IO LastRead -1 FirstWrite -1}
		cics_writeLastOne {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		packageBuffer1 {Type IO LastRead -1 FirstWrite -1}
		cics_computeCs {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_2 {Type IO LastRead -1 FirstWrite -1}
		icmpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		icmpType_V {Type IO LastRead -1 FirstWrite -1}
		icmpCode_V {Type IO LastRead -1 FirstWrite -1}
		cics_state {Type IO LastRead -1 FirstWrite -1}
		validFifo {Type IO LastRead -1 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams {Type IO LastRead -1 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		udpState {Type IO LastRead -1 FirstWrite -1}
		ipWordCounter_V {Type IO LastRead -1 FirstWrite -1}
		streamSource_V {Type IO LastRead -1 FirstWrite -1}
		udpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_data {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_header {Type IO LastRead -1 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1 {Type IO LastRead -1 FirstWrite -1}
		addIpState {Type IO LastRead -1 FirstWrite -1}
		tempWord_data_V {Type IO LastRead -1 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams {Type IO LastRead -1 FirstWrite -1}
		tempWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		sourceIP_V {Type IO LastRead -1 FirstWrite -1}
		d_isFirstWord {Type IO LastRead -1 FirstWrite -1}
		d_drop {Type IO LastRead -1 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1 {Type IO LastRead -1 FirstWrite -1}
		ic_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		streamSource_V_1 {Type IO LastRead -1 FirstWrite -1}}
	convert_axis_to_net_axis_64_s {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_axis_to_net_axis_64_1 {
		udpIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		udpIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_axis_to_net_axis_64_2 {
		ttlIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		ttlIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_64_s {
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataOut_internal {Type I LastRead 0 FirstWrite -1}}
	check_icmp_checksum {
		cics_writeLastOne {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		packageBuffer1 {Type O LastRead -1 FirstWrite 2}
		cics_computeCs {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_2 {Type IO LastRead -1 FirstWrite -1}
		icmpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		icmpType_V {Type IO LastRead -1 FirstWrite -1}
		icmpCode_V {Type IO LastRead -1 FirstWrite -1}
		cics_state {Type IO LastRead -1 FirstWrite -1}
		validFifo {Type O LastRead -1 FirstWrite 2}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams {Type O LastRead -1 FirstWrite 2}
		dataIn_internal {Type I LastRead 0 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}}
	udpPortUnreachable {
		udpIn_internal {Type I LastRead 0 FirstWrite -1}
		ttlIn_internal {Type I LastRead 0 FirstWrite -1}
		udpState {Type IO LastRead -1 FirstWrite -1}
		ipWordCounter_V {Type IO LastRead -1 FirstWrite -1}
		streamSource_V {Type IO LastRead -1 FirstWrite -1}
		udpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_data {Type O LastRead 0 FirstWrite 0}
		udpPort2addIpHeader_header {Type O LastRead 0 FirstWrite 0}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1 {Type O LastRead 0 FirstWrite 0}}
	udpAddIpHeader {
		addIpState {Type IO LastRead -1 FirstWrite -1}
		tempWord_data_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_header {Type I LastRead 0 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams {Type O LastRead 0 FirstWrite 0}
		tempWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		sourceIP_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_data {Type I LastRead 0 FirstWrite -1}}
	dropper {
		packageBuffer1 {Type I LastRead 0 FirstWrite -1}
		d_isFirstWord {Type IO LastRead -1 FirstWrite -1}
		d_drop {Type IO LastRead -1 FirstWrite -1}
		validFifo {Type I LastRead 0 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1 {Type O LastRead -1 FirstWrite 1}}
	insertChecksum {
		ic_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		streamSource_V_1 {Type IO LastRead -1 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_1 {Type I LastRead 0 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams {Type I LastRead 0 FirstWrite -1}
		dataOut_internal {Type O LastRead -1 FirstWrite 1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams {Type I LastRead 0 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_V_data_V { axis {  { s_axis_TDATA in_data 0 64 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 8 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 8 } } }
	s_axis_V_last_V { axis {  { s_axis_TLAST in_data 0 1 }  { s_axis_TVALID in_vld 0 1 }  { s_axis_TREADY in_acc 1 1 } } }
	udpIn_V_data_V { axis {  { udpIn_TDATA in_data 0 64 } } }
	udpIn_V_keep_V { axis {  { udpIn_TKEEP in_data 0 8 } } }
	udpIn_V_strb_V { axis {  { udpIn_TSTRB in_data 0 8 } } }
	udpIn_V_last_V { axis {  { udpIn_TLAST in_data 0 1 }  { udpIn_TVALID in_vld 0 1 }  { udpIn_TREADY in_acc 1 1 } } }
	ttlIn_V_data_V { axis {  { ttlIn_TDATA in_data 0 64 } } }
	ttlIn_V_keep_V { axis {  { ttlIn_TKEEP in_data 0 8 } } }
	ttlIn_V_strb_V { axis {  { ttlIn_TSTRB in_data 0 8 } } }
	ttlIn_V_last_V { axis {  { ttlIn_TLAST in_data 0 1 }  { ttlIn_TVALID in_vld 0 1 }  { ttlIn_TREADY in_acc 1 1 } } }
	m_axis_V_data_V { axis {  { m_axis_TDATA out_data 1 64 } } }
	m_axis_V_keep_V { axis {  { m_axis_TKEEP out_data 1 8 } } }
	m_axis_V_strb_V { axis {  { m_axis_TSTRB out_data 1 8 } } }
	m_axis_V_last_V { axis {  { m_axis_TLAST out_data 1 1 }  { m_axis_TVALID out_vld 1 1 }  { m_axis_TREADY out_acc 0 1 } } }
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
