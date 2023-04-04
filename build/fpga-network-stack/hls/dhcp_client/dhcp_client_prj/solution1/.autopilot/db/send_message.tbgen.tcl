set moduleName send_message
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {send_message}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_tx_metadata int 96 regular {axi_s 1 volatile  { m_axis_tx_metadata Data } }  }
	{ m_axis_tx_length int 16 regular {axi_s 1 volatile  { m_axis_tx_length Data } }  }
	{ m_axis_tx_data_V_data_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Data } }  }
	{ m_axis_tx_data_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis_tx_data Keep } }  }
	{ m_axis_tx_data_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis_tx_data Strb } }  }
	{ m_axis_tx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tx_data Last } }  }
	{ myMacAddress int 48 regular {fifo 0}  }
	{ dhcp_requestMetaFifo int 72 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_tx_metadata", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_length", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "dhcp_requestMetaFifo", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dhcp_requestMetaFifo_dout sc_in sc_lv 72 signal 7 } 
	{ dhcp_requestMetaFifo_empty_n sc_in sc_logic 1 signal 7 } 
	{ dhcp_requestMetaFifo_read sc_out sc_logic 1 signal 7 } 
	{ myMacAddress_dout sc_in sc_lv 48 signal 6 } 
	{ myMacAddress_empty_n sc_in sc_logic 1 signal 6 } 
	{ myMacAddress_read sc_out sc_logic 1 signal 6 } 
	{ m_axis_tx_data_TREADY sc_in sc_logic 1 outacc 5 } 
	{ m_axis_tx_metadata_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_tx_length_TREADY sc_in sc_logic 1 outacc 1 } 
	{ m_axis_tx_metadata_TDATA sc_out sc_lv 96 signal 0 } 
	{ m_axis_tx_metadata_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_tx_length_TDATA sc_out sc_lv 16 signal 1 } 
	{ m_axis_tx_length_TVALID sc_out sc_logic 1 outvld 1 } 
	{ m_axis_tx_data_TDATA sc_out sc_lv 64 signal 2 } 
	{ m_axis_tx_data_TVALID sc_out sc_logic 1 outvld 5 } 
	{ m_axis_tx_data_TKEEP sc_out sc_lv 8 signal 3 } 
	{ m_axis_tx_data_TSTRB sc_out sc_lv 8 signal 4 } 
	{ m_axis_tx_data_TLAST sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dhcp_requestMetaFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "dhcp_requestMetaFifo", "role": "dout" }} , 
 	{ "name": "dhcp_requestMetaFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcp_requestMetaFifo", "role": "empty_n" }} , 
 	{ "name": "dhcp_requestMetaFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcp_requestMetaFifo", "role": "read" }} , 
 	{ "name": "myMacAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "dout" }} , 
 	{ "name": "myMacAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "empty_n" }} , 
 	{ "name": "myMacAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "read" }} , 
 	{ "name": "m_axis_tx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_metadata_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_length_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_length", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_metadata_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "m_axis_tx_metadata", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_metadata_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_length_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_tx_length", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_length_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_length", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "send_message",
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
			{"Name" : "m_axis_tx_metadata", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_metadata_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_length", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_length_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sm_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_type_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_requestedIpAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dhcp_requestMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dhcp_requestMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_metadata_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_length_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	send_message {
		m_axis_tx_metadata {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_length {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 1 FirstWrite -1}
		sm_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		meta_type_V {Type IO LastRead -1 FirstWrite -1}
		meta_requestedIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		dhcp_requestMetaFifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_tx_metadata { axis {  { m_axis_tx_metadata_TREADY out_acc 0 1 }  { m_axis_tx_metadata_TDATA out_data 1 96 }  { m_axis_tx_metadata_TVALID out_vld 1 1 } } }
	m_axis_tx_length { axis {  { m_axis_tx_length_TREADY out_acc 0 1 }  { m_axis_tx_length_TDATA out_data 1 16 }  { m_axis_tx_length_TVALID out_vld 1 1 } } }
	m_axis_tx_data_V_data_V { axis {  { m_axis_tx_data_TDATA out_data 1 64 } } }
	m_axis_tx_data_V_keep_V { axis {  { m_axis_tx_data_TKEEP out_data 1 8 } } }
	m_axis_tx_data_V_strb_V { axis {  { m_axis_tx_data_TSTRB out_data 1 8 } } }
	m_axis_tx_data_V_last_V { axis {  { m_axis_tx_data_TREADY out_acc 0 1 }  { m_axis_tx_data_TVALID out_vld 1 1 }  { m_axis_tx_data_TLAST out_data 1 1 } } }
	myMacAddress { ap_fifo {  { myMacAddress_dout fifo_data 0 48 }  { myMacAddress_empty_n fifo_status 0 1 }  { myMacAddress_read fifo_update 1 1 } } }
	dhcp_requestMetaFifo { ap_fifo {  { dhcp_requestMetaFifo_dout fifo_data 0 72 }  { dhcp_requestMetaFifo_empty_n fifo_status 0 1 }  { dhcp_requestMetaFifo_read fifo_update 1 1 } } }
}
