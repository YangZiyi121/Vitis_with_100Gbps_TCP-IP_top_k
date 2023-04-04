set moduleName ipv4_top
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
set C_modelName {ipv4_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_rx_data_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_rx_data Data } }  }
	{ s_axis_rx_data_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Keep } }  }
	{ s_axis_rx_data_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Strb } }  }
	{ s_axis_rx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_rx_data Last } }  }
	{ m_axis_rx_meta int 48 regular {axi_s 1 volatile  { m_axis_rx_meta Data } }  }
	{ m_axis_rx_data_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_rx_data Data } }  }
	{ m_axis_rx_data_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_rx_data Keep } }  }
	{ m_axis_rx_data_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_rx_data Strb } }  }
	{ m_axis_rx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_rx_data Last } }  }
	{ s_axis_tx_meta int 48 regular {axi_s 0 volatile  { s_axis_tx_meta Data } }  }
	{ s_axis_tx_data_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_tx_data Data } }  }
	{ s_axis_tx_data_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_tx_data Keep } }  }
	{ s_axis_tx_data_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_tx_data Strb } }  }
	{ s_axis_tx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tx_data Last } }  }
	{ m_axis_tx_data_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_tx_data Data } }  }
	{ m_axis_tx_data_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Keep } }  }
	{ m_axis_tx_data_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Strb } }  }
	{ m_axis_tx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tx_data Last } }  }
	{ local_ipv4_address int 32 regular  }
	{ protocol int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_rx_meta", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_tx_meta", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_ipv4_address", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "protocol", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ s_axis_rx_data_TDATA sc_in sc_lv 512 signal 0 } 
	{ s_axis_rx_data_TKEEP sc_in sc_lv 64 signal 1 } 
	{ s_axis_rx_data_TSTRB sc_in sc_lv 64 signal 2 } 
	{ s_axis_rx_data_TLAST sc_in sc_lv 1 signal 3 } 
	{ m_axis_rx_meta_TDATA sc_out sc_lv 48 signal 4 } 
	{ m_axis_rx_data_TDATA sc_out sc_lv 512 signal 5 } 
	{ m_axis_rx_data_TKEEP sc_out sc_lv 64 signal 6 } 
	{ m_axis_rx_data_TSTRB sc_out sc_lv 64 signal 7 } 
	{ m_axis_rx_data_TLAST sc_out sc_lv 1 signal 8 } 
	{ s_axis_tx_meta_TDATA sc_in sc_lv 48 signal 9 } 
	{ s_axis_tx_data_TDATA sc_in sc_lv 512 signal 10 } 
	{ s_axis_tx_data_TKEEP sc_in sc_lv 64 signal 11 } 
	{ s_axis_tx_data_TSTRB sc_in sc_lv 64 signal 12 } 
	{ s_axis_tx_data_TLAST sc_in sc_lv 1 signal 13 } 
	{ m_axis_tx_data_TDATA sc_out sc_lv 512 signal 14 } 
	{ m_axis_tx_data_TKEEP sc_out sc_lv 64 signal 15 } 
	{ m_axis_tx_data_TSTRB sc_out sc_lv 64 signal 16 } 
	{ m_axis_tx_data_TLAST sc_out sc_lv 1 signal 17 } 
	{ local_ipv4_address sc_in sc_lv 32 signal 18 } 
	{ protocol sc_in sc_lv 8 signal 19 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_rx_data_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_rx_data_TREADY sc_out sc_logic 1 inacc 3 } 
	{ s_axis_tx_data_TVALID sc_in sc_logic 1 invld 13 } 
	{ s_axis_tx_data_TREADY sc_out sc_logic 1 inacc 13 } 
	{ m_axis_rx_data_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_rx_data_TREADY sc_in sc_logic 1 outacc 8 } 
	{ m_axis_tx_data_TVALID sc_out sc_logic 1 outvld 17 } 
	{ m_axis_tx_data_TREADY sc_in sc_logic 1 outacc 17 } 
	{ m_axis_rx_meta_TVALID sc_out sc_logic 1 outvld 4 } 
	{ m_axis_rx_meta_TREADY sc_in sc_logic 1 outacc 4 } 
	{ s_axis_tx_meta_TVALID sc_in sc_logic 1 invld 9 } 
	{ s_axis_tx_meta_TREADY sc_out sc_logic 1 inacc 9 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_rx_meta", "role": "TDATA" }} , 
 	{ "name": "m_axis_rx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "s_axis_tx_meta", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "local_ipv4_address", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_ipv4_address", "role": "default" }} , 
 	{ "name": "protocol", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "protocol", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_rx_meta", "role": "TVALID" }} , 
 	{ "name": "m_axis_rx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_rx_meta", "role": "TREADY" }} , 
 	{ "name": "s_axis_tx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_meta", "role": "TVALID" }} , 
 	{ "name": "s_axis_tx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_meta", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "12", "17", "22", "24", "25", "26", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "ipv4_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
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
			{"ID" : "7", "Name" : "convert_axis_to_net_axis_512_1_U0"},
			{"ID" : "12", "Name" : "convert_net_axis_to_axis_512_U0"},
			{"ID" : "17", "Name" : "convert_net_axis_to_axis_512_1_U0"}],
		"OutputProcess" : [
			{"ID" : "12", "Name" : "convert_net_axis_to_axis_512_U0"},
			{"ID" : "17", "Name" : "convert_net_axis_to_axis_512_1_U0"},
			{"ID" : "24", "Name" : "ipv4_drop_optional_ip_header_512_U0"},
			{"ID" : "26", "Name" : "ipv4_generate_ipv4_512_U0"}],
		"Port" : [
			{"Name" : "s_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_rx_data_V_data_V"}]},
			{"Name" : "s_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_rx_data_V_keep_V"}]},
			{"Name" : "s_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_rx_data_V_strb_V"}]},
			{"Name" : "s_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_rx_data_V_last_V"}]},
			{"Name" : "m_axis_rx_meta", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "m_axis_rx_meta"}]},
			{"Name" : "m_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_rx_data_V_data_V"}]},
			{"Name" : "m_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_rx_data_V_keep_V"}]},
			{"Name" : "m_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_rx_data_V_strb_V"}]},
			{"Name" : "m_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_rx_data_V_last_V"}]},
			{"Name" : "s_axis_tx_meta", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "ipv4_generate_ipv4_512_U0", "Port" : "s_axis_tx_meta"}]},
			{"Name" : "s_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_axis_to_net_axis_512_1_U0", "Port" : "s_axis_tx_data_V_data_V"}]},
			{"Name" : "s_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_axis_to_net_axis_512_1_U0", "Port" : "s_axis_tx_data_V_keep_V"}]},
			{"Name" : "s_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_axis_to_net_axis_512_1_U0", "Port" : "s_axis_tx_data_V_strb_V"}]},
			{"Name" : "s_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convert_axis_to_net_axis_512_1_U0", "Port" : "s_axis_tx_data_V_last_V"}]},
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_tx_data_V_data_V"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_tx_data_V_keep_V"}]},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_tx_data_V_strb_V"}]},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_tx_data_V_last_V"}]},
			{"Name" : "local_ipv4_address", "Type" : "None", "Direction" : "I"},
			{"Name" : "protocol", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "s_axis_rx_data_internal"},
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_rx_data_internal"}]},
			{"Name" : "s_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "ipv4_lshiftWordByOctet_512_2_U0", "Port" : "s_axis_tx_data_internal"},
					{"ID" : "7", "SubInstance" : "convert_axis_to_net_axis_512_1_U0", "Port" : "s_axis_tx_data_internal"}]},
			{"Name" : "m_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "m_axis_rx_data_internal"},
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_rx_data_internal"}]},
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "ipv4_generate_ipv4_512_U0", "Port" : "m_axis_tx_data_internal"},
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_tx_data_internal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "header_header_V"}]},
			{"Name" : "rx_process2dropFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "rx_process2dropFifo"},
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "rx_process2dropFifo"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "metaWritten"}]},
			{"Name" : "rx_process2dropLengthFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_ipv4_512_U0", "Port" : "rx_process2dropLengthFifo"},
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "rx_process2dropLengthFifo"}]},
			{"Name" : "doh_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "doh_state"}]},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "prevWord_data_V_1"}]},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "prevWord_keep_V_1"}]},
			{"Name" : "length_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "ipv4_drop_optional_ip_header_512_U0", "Port" : "length_V"}]},
			{"Name" : "ls_writeRemainder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "ipv4_lshiftWordByOctet_512_2_U0", "Port" : "ls_writeRemainder"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "ipv4_lshiftWordByOctet_512_2_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "ipv4_lshiftWordByOctet_512_2_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "tx_shift2ipv4Fifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "ipv4_lshiftWordByOctet_512_2_U0", "Port" : "tx_shift2ipv4Fifo"},
					{"ID" : "26", "SubInstance" : "ipv4_generate_ipv4_512_U0", "Port" : "tx_shift2ipv4Fifo"}]},
			{"Name" : "ls_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "ipv4_lshiftWordByOctet_512_2_U0", "Port" : "ls_firstWord"}]},
			{"Name" : "gi_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "ipv4_generate_ipv4_512_U0", "Port" : "gi_state"}]},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "ipv4_generate_ipv4_512_U0", "Port" : "header_idx_1"}]},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "ipv4_generate_ipv4_512_U0", "Port" : "header_header_V_1"}]}]},
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
			{"Name" : "local_ipv4_address", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_ipv4_address_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "local_ipv4_address_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "protocol", "Type" : "None", "Direction" : "I"},
			{"Name" : "protocol_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "29", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "protocol_c_blk_n", "Type" : "RtlSignal"}]}]},
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
			{"Name" : "s_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_rx_data_V_data_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_rx_data_V_keep_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_rx_data_V_strb_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_U0.regslice_both_s_axis_rx_data_V_last_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_1_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11"],
		"CDFG" : "convert_axis_to_net_axis_512_1",
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
			{"Name" : "s_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_1_U0.regslice_both_s_axis_tx_data_V_data_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_1_U0.regslice_both_s_axis_tx_data_V_keep_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_1_U0.regslice_both_s_axis_tx_data_V_strb_V_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_512_1_U0.regslice_both_s_axis_tx_data_V_last_V_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16"],
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
			{"Name" : "m_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["24"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_rx_data_V_data_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_rx_data_V_keep_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_rx_data_V_strb_V_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_U0.regslice_both_m_axis_rx_data_V_last_V_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0", "Parent" : "0", "Child" : ["18", "19", "20", "21"],
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
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["26"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_data_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_keep_V_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_strb_V_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_last_V_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_ipv4_512_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "process_ipv4_512_s",
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
			{"Name" : "m_axis_rx_meta", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_process2dropFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "34", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_process2dropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_process2dropLengthFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_process2dropLengthFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_ipv4_512_U0.regslice_both_m_axis_rx_meta_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv4_drop_optional_ip_header_512_U0", "Parent" : "0",
		"CDFG" : "ipv4_drop_optional_ip_header_512_s",
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
			{"Name" : "doh_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_process2dropLengthFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_process2dropLengthFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_process2dropFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "34", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_process2dropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "m_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv4_lshiftWordByOctet_512_2_U0", "Parent" : "0",
		"CDFG" : "ipv4_lshiftWordByOctet_512_2_s",
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
			{"Name" : "tx_shift2ipv4Fifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "36", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_shift2ipv4Fifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ls_firstWord", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipv4_generate_ipv4_512_U0", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "ipv4_generate_ipv4_512_s",
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
			{"Name" : "s_axis_tx_meta", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "local_ipv4_address", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "local_ipv4_address_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "protocol", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "29", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "protocol_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gi_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_shift2ipv4Fifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "36", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_shift2ipv4Fifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ipv4_generate_ipv4_512_U0.regslice_both_s_axis_tx_meta_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_ipv4_address_c_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.protocol_c_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axis_rx_data_internal_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axis_tx_data_internal_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_rx_data_internal_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_tx_data_internal_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_process2dropFifo_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_process2dropLengthFifo_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx_shift2ipv4Fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ipv4_top {
		s_axis_rx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_rx_meta {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		s_axis_tx_meta {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		local_ipv4_address {Type I LastRead 0 FirstWrite -1}
		protocol {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_internal {Type IO LastRead -1 FirstWrite -1}
		s_axis_tx_data_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_rx_data_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_tx_data_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		rx_process2dropFifo {Type IO LastRead -1 FirstWrite -1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		rx_process2dropLengthFifo {Type IO LastRead -1 FirstWrite -1}
		doh_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		length_V {Type IO LastRead -1 FirstWrite -1}
		ls_writeRemainder {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		tx_shift2ipv4Fifo {Type IO LastRead -1 FirstWrite -1}
		ls_firstWord {Type IO LastRead -1 FirstWrite -1}
		gi_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		local_ipv4_address {Type I LastRead 0 FirstWrite -1}
		local_ipv4_address_c {Type O LastRead -1 FirstWrite 0}
		protocol {Type I LastRead 0 FirstWrite -1}
		protocol_c {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_512_s {
		s_axis_rx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_internal {Type O LastRead -1 FirstWrite 1}}
	convert_axis_to_net_axis_512_1 {
		s_axis_tx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tx_data_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_512_s {
		m_axis_rx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_rx_data_internal {Type I LastRead 0 FirstWrite -1}}
	convert_net_axis_to_axis_512_1 {
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_internal {Type I LastRead 0 FirstWrite -1}}
	process_ipv4_512_s {
		m_axis_rx_meta {Type O LastRead -1 FirstWrite 1}
		s_axis_rx_data_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		rx_process2dropFifo {Type O LastRead -1 FirstWrite 1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		rx_process2dropLengthFifo {Type O LastRead -1 FirstWrite 2}}
	ipv4_drop_optional_ip_header_512_s {
		doh_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		rx_process2dropLengthFifo {Type I LastRead 0 FirstWrite -1}
		rx_process2dropFifo {Type I LastRead 0 FirstWrite -1}
		length_V {Type IO LastRead -1 FirstWrite -1}
		m_axis_rx_data_internal {Type O LastRead -1 FirstWrite 1}}
	ipv4_lshiftWordByOctet_512_2_s {
		ls_writeRemainder {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		tx_shift2ipv4Fifo {Type O LastRead -1 FirstWrite 1}
		s_axis_tx_data_internal {Type I LastRead 0 FirstWrite -1}
		ls_firstWord {Type IO LastRead -1 FirstWrite -1}}
	ipv4_generate_ipv4_512_s {
		s_axis_tx_meta {Type I LastRead 0 FirstWrite -1}
		local_ipv4_address {Type I LastRead 0 FirstWrite -1}
		protocol {Type I LastRead 0 FirstWrite -1}
		gi_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		m_axis_tx_data_internal {Type O LastRead -1 FirstWrite 1}
		tx_shift2ipv4Fifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_rx_data_V_data_V { axis {  { s_axis_rx_data_TDATA in_data 0 512 } } }
	s_axis_rx_data_V_keep_V { axis {  { s_axis_rx_data_TKEEP in_data 0 64 } } }
	s_axis_rx_data_V_strb_V { axis {  { s_axis_rx_data_TSTRB in_data 0 64 } } }
	s_axis_rx_data_V_last_V { axis {  { s_axis_rx_data_TLAST in_data 0 1 }  { s_axis_rx_data_TVALID in_vld 0 1 }  { s_axis_rx_data_TREADY in_acc 1 1 } } }
	m_axis_rx_meta { axis {  { m_axis_rx_meta_TDATA out_data 1 48 }  { m_axis_rx_meta_TVALID out_vld 1 1 }  { m_axis_rx_meta_TREADY out_acc 0 1 } } }
	m_axis_rx_data_V_data_V { axis {  { m_axis_rx_data_TDATA out_data 1 512 } } }
	m_axis_rx_data_V_keep_V { axis {  { m_axis_rx_data_TKEEP out_data 1 64 } } }
	m_axis_rx_data_V_strb_V { axis {  { m_axis_rx_data_TSTRB out_data 1 64 } } }
	m_axis_rx_data_V_last_V { axis {  { m_axis_rx_data_TLAST out_data 1 1 }  { m_axis_rx_data_TVALID out_vld 1 1 }  { m_axis_rx_data_TREADY out_acc 0 1 } } }
	s_axis_tx_meta { axis {  { s_axis_tx_meta_TDATA in_data 0 48 }  { s_axis_tx_meta_TVALID in_vld 0 1 }  { s_axis_tx_meta_TREADY in_acc 1 1 } } }
	s_axis_tx_data_V_data_V { axis {  { s_axis_tx_data_TDATA in_data 0 512 } } }
	s_axis_tx_data_V_keep_V { axis {  { s_axis_tx_data_TKEEP in_data 0 64 } } }
	s_axis_tx_data_V_strb_V { axis {  { s_axis_tx_data_TSTRB in_data 0 64 } } }
	s_axis_tx_data_V_last_V { axis {  { s_axis_tx_data_TLAST in_data 0 1 }  { s_axis_tx_data_TVALID in_vld 0 1 }  { s_axis_tx_data_TREADY in_acc 1 1 } } }
	m_axis_tx_data_V_data_V { axis {  { m_axis_tx_data_TDATA out_data 1 512 } } }
	m_axis_tx_data_V_keep_V { axis {  { m_axis_tx_data_TKEEP out_data 1 64 } } }
	m_axis_tx_data_V_strb_V { axis {  { m_axis_tx_data_TSTRB out_data 1 64 } } }
	m_axis_tx_data_V_last_V { axis {  { m_axis_tx_data_TLAST out_data 1 1 }  { m_axis_tx_data_TVALID out_vld 1 1 }  { m_axis_tx_data_TREADY out_acc 0 1 } } }
	local_ipv4_address { ap_none {  { local_ipv4_address in_data 0 32 } } }
	protocol { ap_none {  { protocol in_data 0 8 } } }
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
