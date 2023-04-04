set moduleName udp_top
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
set C_modelName {udp_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_rx_meta int 48 regular {axi_s 0 volatile  { s_axis_rx_meta Data } }  }
	{ s_axis_rx_data_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_rx_data Data } }  }
	{ s_axis_rx_data_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Keep } }  }
	{ s_axis_rx_data_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Strb } }  }
	{ s_axis_rx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_rx_data Last } }  }
	{ m_axis_rx_meta int 176 regular {axi_s 1 volatile  { m_axis_rx_meta Data } }  }
	{ m_axis_rx_data_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_rx_data Data } }  }
	{ m_axis_rx_data_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_rx_data Keep } }  }
	{ m_axis_rx_data_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_rx_data Strb } }  }
	{ m_axis_rx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_rx_data Last } }  }
	{ s_axis_tx_meta int 176 regular {axi_s 0 volatile  { s_axis_tx_meta Data } }  }
	{ s_axis_tx_data_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_tx_data Data } }  }
	{ s_axis_tx_data_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_tx_data Keep } }  }
	{ s_axis_tx_data_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_tx_data Strb } }  }
	{ s_axis_tx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tx_data Last } }  }
	{ m_axis_tx_meta int 48 regular {axi_s 1 volatile  { m_axis_tx_meta Data } }  }
	{ m_axis_tx_data_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_tx_data Data } }  }
	{ m_axis_tx_data_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Keep } }  }
	{ m_axis_tx_data_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Strb } }  }
	{ m_axis_tx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tx_data Last } }  }
	{ reg_ip_address int 128 unused  }
	{ reg_listen_port int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_rx_meta", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_rx_meta", "interface" : "axis", "bitwidth" : 176, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_tx_meta", "interface" : "axis", "bitwidth" : 176, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tx_meta", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_ip_address", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "reg_listen_port", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ s_axis_rx_meta_TDATA sc_in sc_lv 48 signal 0 } 
	{ s_axis_rx_data_TDATA sc_in sc_lv 512 signal 1 } 
	{ s_axis_rx_data_TKEEP sc_in sc_lv 64 signal 2 } 
	{ s_axis_rx_data_TSTRB sc_in sc_lv 64 signal 3 } 
	{ s_axis_rx_data_TLAST sc_in sc_lv 1 signal 4 } 
	{ m_axis_rx_meta_TDATA sc_out sc_lv 176 signal 5 } 
	{ m_axis_rx_data_TDATA sc_out sc_lv 512 signal 6 } 
	{ m_axis_rx_data_TKEEP sc_out sc_lv 64 signal 7 } 
	{ m_axis_rx_data_TSTRB sc_out sc_lv 64 signal 8 } 
	{ m_axis_rx_data_TLAST sc_out sc_lv 1 signal 9 } 
	{ s_axis_tx_meta_TDATA sc_in sc_lv 176 signal 10 } 
	{ s_axis_tx_data_TDATA sc_in sc_lv 512 signal 11 } 
	{ s_axis_tx_data_TKEEP sc_in sc_lv 64 signal 12 } 
	{ s_axis_tx_data_TSTRB sc_in sc_lv 64 signal 13 } 
	{ s_axis_tx_data_TLAST sc_in sc_lv 1 signal 14 } 
	{ m_axis_tx_meta_TDATA sc_out sc_lv 48 signal 15 } 
	{ m_axis_tx_data_TDATA sc_out sc_lv 512 signal 16 } 
	{ m_axis_tx_data_TKEEP sc_out sc_lv 64 signal 17 } 
	{ m_axis_tx_data_TSTRB sc_out sc_lv 64 signal 18 } 
	{ m_axis_tx_data_TLAST sc_out sc_lv 1 signal 19 } 
	{ reg_ip_address sc_in sc_lv 128 signal 20 } 
	{ reg_listen_port sc_in sc_lv 16 signal 21 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_rx_data_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_rx_data_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_tx_data_TVALID sc_in sc_logic 1 invld 14 } 
	{ s_axis_tx_data_TREADY sc_out sc_logic 1 inacc 14 } 
	{ m_axis_rx_data_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_rx_data_TREADY sc_in sc_logic 1 outacc 9 } 
	{ m_axis_tx_data_TVALID sc_out sc_logic 1 outvld 19 } 
	{ m_axis_tx_data_TREADY sc_in sc_logic 1 outacc 19 } 
	{ s_axis_rx_meta_TVALID sc_in sc_logic 1 invld 0 } 
	{ s_axis_rx_meta_TREADY sc_out sc_logic 1 inacc 0 } 
	{ m_axis_rx_meta_TVALID sc_out sc_logic 1 outvld 5 } 
	{ m_axis_rx_meta_TREADY sc_in sc_logic 1 outacc 5 } 
	{ s_axis_tx_meta_TVALID sc_in sc_logic 1 invld 10 } 
	{ s_axis_tx_meta_TREADY sc_out sc_logic 1 inacc 10 } 
	{ m_axis_tx_meta_TVALID sc_out sc_logic 1 outvld 15 } 
	{ m_axis_tx_meta_TREADY sc_in sc_logic 1 outacc 15 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "s_axis_rx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "s_axis_rx_meta", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":176, "type": "signal", "bundle":{"name": "m_axis_rx_meta", "role": "TDATA" }} , 
 	{ "name": "m_axis_rx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_rx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":176, "type": "signal", "bundle":{"name": "s_axis_tx_meta", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_tx_meta", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "reg_ip_address", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "reg_ip_address", "role": "default" }} , 
 	{ "name": "reg_listen_port", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_listen_port", "role": "default" }} , 
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
 	{ "name": "s_axis_rx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_meta", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_meta", "role": "TREADY" }} , 
 	{ "name": "m_axis_rx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_rx_meta", "role": "TVALID" }} , 
 	{ "name": "m_axis_rx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_rx_meta", "role": "TREADY" }} , 
 	{ "name": "s_axis_tx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_meta", "role": "TVALID" }} , 
 	{ "name": "s_axis_tx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_meta", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_meta", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_meta", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "12", "17", "22", "23", "24", "27", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "udp_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
			{"ID" : "17", "Name" : "convert_net_axis_to_axis_512_1_U0"},
			{"ID" : "27", "Name" : "split_tx_meta_U0"}],
		"OutputProcess" : [
			{"ID" : "12", "Name" : "convert_net_axis_to_axis_512_U0"},
			{"ID" : "17", "Name" : "convert_net_axis_to_axis_512_1_U0"},
			{"ID" : "23", "Name" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0"},
			{"ID" : "24", "Name" : "merge_rx_meta_U0"},
			{"ID" : "31", "Name" : "generate_udp_512_U0"}],
		"Port" : [
			{"Name" : "s_axis_rx_meta", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "merge_rx_meta_U0", "Port" : "s_axis_rx_meta"}]},
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
					{"ID" : "24", "SubInstance" : "merge_rx_meta_U0", "Port" : "m_axis_rx_meta"}]},
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
					{"ID" : "27", "SubInstance" : "split_tx_meta_U0", "Port" : "s_axis_tx_meta"}]},
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
			{"Name" : "m_axis_tx_meta", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "split_tx_meta_U0", "Port" : "m_axis_tx_meta"}]},
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
			{"Name" : "reg_ip_address", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_listen_port", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "convert_axis_to_net_axis_512_U0", "Port" : "s_axis_rx_data_internal"},
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "s_axis_rx_data_internal"}]},
			{"Name" : "s_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "udp_lshiftWordByOctet_512_1_U0", "Port" : "s_axis_tx_data_internal"},
					{"ID" : "7", "SubInstance" : "convert_axis_to_net_axis_512_1_U0", "Port" : "s_axis_tx_data_internal"}]},
			{"Name" : "m_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Port" : "m_axis_rx_data_internal"},
					{"ID" : "12", "SubInstance" : "convert_net_axis_to_axis_512_U0", "Port" : "m_axis_rx_data_internal"}]},
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "generate_udp_512_U0", "Port" : "m_axis_tx_data_internal"},
					{"ID" : "17", "SubInstance" : "convert_net_axis_to_axis_512_1_U0", "Port" : "m_axis_tx_data_internal"}]},
			{"Name" : "pu_header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "pu_header_ready"}]},
			{"Name" : "pu_header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "pu_header_idx"}]},
			{"Name" : "pu_header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "pu_header_header_V"}]},
			{"Name" : "rx_udp2shiftFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Port" : "rx_udp2shiftFifo"},
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "rx_udp2shiftFifo"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "metaWritten"}]},
			{"Name" : "rx_udpMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "merge_rx_meta_U0", "Port" : "rx_udpMetaFifo"},
					{"ID" : "22", "SubInstance" : "process_udp_512_U0", "Port" : "rx_udpMetaFifo"}]},
			{"Name" : "fsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Port" : "fsmState"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "rs_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Port" : "rs_firstWord"}]},
			{"Name" : "tx_udpMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "generate_udp_512_U0", "Port" : "tx_udpMetaFifo"},
					{"ID" : "27", "SubInstance" : "split_tx_meta_U0", "Port" : "tx_udpMetaFifo"}]},
			{"Name" : "ls_writeRemainder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "udp_lshiftWordByOctet_512_1_U0", "Port" : "ls_writeRemainder"}]},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "udp_lshiftWordByOctet_512_1_U0", "Port" : "prevWord_data_V_1"}]},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "udp_lshiftWordByOctet_512_1_U0", "Port" : "prevWord_keep_V_1"}]},
			{"Name" : "tx_shift2udpFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "generate_udp_512_U0", "Port" : "tx_shift2udpFifo"},
					{"ID" : "30", "SubInstance" : "udp_lshiftWordByOctet_512_1_U0", "Port" : "tx_shift2udpFifo"}]},
			{"Name" : "ls_firstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "udp_lshiftWordByOctet_512_1_U0", "Port" : "ls_firstWord"}]},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "generate_udp_512_U0", "Port" : "state"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "generate_udp_512_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "generate_udp_512_U0", "Port" : "header_header_V"}]}]},
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
			{"Name" : "reg_listen_port", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_listen_port_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "32", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "reg_listen_port_c_blk_n", "Type" : "RtlSignal"}]}]},
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
			{"Name" : "s_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
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
			{"Name" : "s_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "0",
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
			{"Name" : "m_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0",
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
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_data_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_keep_V_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_strb_V_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_512_1_U0.regslice_both_m_axis_tx_data_V_last_V_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_udp_512_U0", "Parent" : "0",
		"CDFG" : "process_udp_512_s",
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
			{"Name" : "regListenPort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "32", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regListenPort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pu_header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pu_header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pu_header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_udp2shiftFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_udp2shiftFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_udpMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_udpMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_rshiftWordByOctet_net_axis_512_512_2_U0", "Parent" : "0",
		"CDFG" : "udp_rshiftWordByOctet_net_axis_512_512_2_s",
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
			{"Name" : "rx_udp2shiftFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_udp2shiftFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rs_firstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "m_axis_rx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_data_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merge_rx_meta_U0", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "merge_rx_meta",
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
			{"Name" : "s_axis_rx_meta", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_rx_meta", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_udpMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_udpMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_rx_meta_U0.regslice_both_s_axis_rx_meta_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_rx_meta_U0.regslice_both_m_axis_rx_meta_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_tx_meta_U0", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "split_tx_meta",
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
			{"Name" : "s_axis_tx_meta", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_meta", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_udpMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_udpMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_tx_meta_U0.regslice_both_s_axis_tx_meta_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_tx_meta_U0.regslice_both_m_axis_tx_meta_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_lshiftWordByOctet_512_1_U0", "Parent" : "0",
		"CDFG" : "udp_lshiftWordByOctet_512_1_s",
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
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tx_shift2udpFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_shift2udpFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ls_firstWord", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.generate_udp_512_U0", "Parent" : "0",
		"CDFG" : "generate_udp_512_s",
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
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tx_udpMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_udpMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_shift2udpFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_shift2udpFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reg_listen_port_c_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axis_rx_data_internal_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axis_tx_data_internal_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_rx_data_internal_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_axis_tx_data_internal_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_udp2shiftFifo_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_udpMetaFifo_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx_udpMetaFifo_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx_shift2udpFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udp_top {
		s_axis_rx_meta {Type I LastRead 0 FirstWrite -1}
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
		m_axis_tx_meta {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		reg_ip_address {Type I LastRead -1 FirstWrite -1}
		reg_listen_port {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_internal {Type IO LastRead -1 FirstWrite -1}
		s_axis_tx_data_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_rx_data_internal {Type IO LastRead -1 FirstWrite -1}
		m_axis_tx_data_internal {Type IO LastRead -1 FirstWrite -1}
		pu_header_ready {Type IO LastRead -1 FirstWrite -1}
		pu_header_idx {Type IO LastRead -1 FirstWrite -1}
		pu_header_header_V {Type IO LastRead -1 FirstWrite -1}
		rx_udp2shiftFifo {Type IO LastRead -1 FirstWrite -1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		rx_udpMetaFifo {Type IO LastRead -1 FirstWrite -1}
		fsmState {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		rs_firstWord {Type IO LastRead -1 FirstWrite -1}
		tx_udpMetaFifo {Type IO LastRead -1 FirstWrite -1}
		ls_writeRemainder {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		tx_shift2udpFifo {Type IO LastRead -1 FirstWrite -1}
		ls_firstWord {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		reg_listen_port {Type I LastRead 0 FirstWrite -1}
		reg_listen_port_c {Type O LastRead -1 FirstWrite 0}}
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
	process_udp_512_s {
		regListenPort {Type I LastRead 1 FirstWrite -1}
		s_axis_rx_data_internal {Type I LastRead 0 FirstWrite -1}
		pu_header_ready {Type IO LastRead -1 FirstWrite -1}
		pu_header_idx {Type IO LastRead -1 FirstWrite -1}
		pu_header_header_V {Type IO LastRead -1 FirstWrite -1}
		rx_udp2shiftFifo {Type O LastRead -1 FirstWrite 3}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		rx_udpMetaFifo {Type O LastRead -1 FirstWrite 2}}
	udp_rshiftWordByOctet_net_axis_512_512_2_s {
		fsmState {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		rx_udp2shiftFifo {Type I LastRead 0 FirstWrite -1}
		rs_firstWord {Type IO LastRead -1 FirstWrite -1}
		m_axis_rx_data_internal {Type O LastRead -1 FirstWrite 1}}
	merge_rx_meta {
		s_axis_rx_meta {Type I LastRead 0 FirstWrite -1}
		m_axis_rx_meta {Type O LastRead -1 FirstWrite 1}
		rx_udpMetaFifo {Type I LastRead 0 FirstWrite -1}}
	split_tx_meta {
		s_axis_tx_meta {Type I LastRead 0 FirstWrite -1}
		m_axis_tx_meta {Type O LastRead -1 FirstWrite 1}
		tx_udpMetaFifo {Type O LastRead -1 FirstWrite 1}}
	udp_lshiftWordByOctet_512_1_s {
		ls_writeRemainder {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		tx_shift2udpFifo {Type O LastRead -1 FirstWrite 1}
		s_axis_tx_data_internal {Type I LastRead 0 FirstWrite -1}
		ls_firstWord {Type IO LastRead -1 FirstWrite -1}}
	generate_udp_512_s {
		state {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		tx_udpMetaFifo {Type I LastRead 0 FirstWrite -1}
		m_axis_tx_data_internal {Type O LastRead -1 FirstWrite 1}
		tx_shift2udpFifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_rx_meta { axis {  { s_axis_rx_meta_TDATA in_data 0 48 }  { s_axis_rx_meta_TVALID in_vld 0 1 }  { s_axis_rx_meta_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V_data_V { axis {  { s_axis_rx_data_TDATA in_data 0 512 } } }
	s_axis_rx_data_V_keep_V { axis {  { s_axis_rx_data_TKEEP in_data 0 64 } } }
	s_axis_rx_data_V_strb_V { axis {  { s_axis_rx_data_TSTRB in_data 0 64 } } }
	s_axis_rx_data_V_last_V { axis {  { s_axis_rx_data_TLAST in_data 0 1 }  { s_axis_rx_data_TVALID in_vld 0 1 }  { s_axis_rx_data_TREADY in_acc 1 1 } } }
	m_axis_rx_meta { axis {  { m_axis_rx_meta_TDATA out_data 1 176 }  { m_axis_rx_meta_TVALID out_vld 1 1 }  { m_axis_rx_meta_TREADY out_acc 0 1 } } }
	m_axis_rx_data_V_data_V { axis {  { m_axis_rx_data_TDATA out_data 1 512 } } }
	m_axis_rx_data_V_keep_V { axis {  { m_axis_rx_data_TKEEP out_data 1 64 } } }
	m_axis_rx_data_V_strb_V { axis {  { m_axis_rx_data_TSTRB out_data 1 64 } } }
	m_axis_rx_data_V_last_V { axis {  { m_axis_rx_data_TLAST out_data 1 1 }  { m_axis_rx_data_TVALID out_vld 1 1 }  { m_axis_rx_data_TREADY out_acc 0 1 } } }
	s_axis_tx_meta { axis {  { s_axis_tx_meta_TDATA in_data 0 176 }  { s_axis_tx_meta_TVALID in_vld 0 1 }  { s_axis_tx_meta_TREADY in_acc 1 1 } } }
	s_axis_tx_data_V_data_V { axis {  { s_axis_tx_data_TDATA in_data 0 512 } } }
	s_axis_tx_data_V_keep_V { axis {  { s_axis_tx_data_TKEEP in_data 0 64 } } }
	s_axis_tx_data_V_strb_V { axis {  { s_axis_tx_data_TSTRB in_data 0 64 } } }
	s_axis_tx_data_V_last_V { axis {  { s_axis_tx_data_TLAST in_data 0 1 }  { s_axis_tx_data_TVALID in_vld 0 1 }  { s_axis_tx_data_TREADY in_acc 1 1 } } }
	m_axis_tx_meta { axis {  { m_axis_tx_meta_TDATA out_data 1 48 }  { m_axis_tx_meta_TVALID out_vld 1 1 }  { m_axis_tx_meta_TREADY out_acc 0 1 } } }
	m_axis_tx_data_V_data_V { axis {  { m_axis_tx_data_TDATA out_data 1 512 } } }
	m_axis_tx_data_V_keep_V { axis {  { m_axis_tx_data_TKEEP out_data 1 64 } } }
	m_axis_tx_data_V_strb_V { axis {  { m_axis_tx_data_TSTRB out_data 1 64 } } }
	m_axis_tx_data_V_last_V { axis {  { m_axis_tx_data_TLAST out_data 1 1 }  { m_axis_tx_data_TVALID out_vld 1 1 }  { m_axis_tx_data_TREADY out_acc 0 1 } } }
	reg_ip_address { ap_none {  { reg_ip_address in_data 0 128 } } }
	reg_listen_port { ap_none {  { reg_listen_port in_data 0 16 } } }
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
