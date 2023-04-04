set moduleName ipv4_generate_ipv4_512_s
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
set C_modelName {ipv4_generate_ipv4<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_tx_meta int 48 regular {axi_s 0 volatile  { s_axis_tx_meta Data } }  }
	{ local_ipv4_address int 32 regular {fifo 0}  }
	{ protocol int 8 regular {fifo 0}  }
	{ m_axis_tx_data_internal int 1024 regular {fifo 1 volatile } {global 1}  }
	{ tx_shift2ipv4Fifo int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_tx_meta", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "local_ipv4_address", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "protocol", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tx_data_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tx_shift2ipv4Fifo", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ protocol_dout sc_in sc_lv 8 signal 2 } 
	{ protocol_empty_n sc_in sc_logic 1 signal 2 } 
	{ protocol_read sc_out sc_logic 1 signal 2 } 
	{ local_ipv4_address_dout sc_in sc_lv 32 signal 1 } 
	{ local_ipv4_address_empty_n sc_in sc_logic 1 signal 1 } 
	{ local_ipv4_address_read sc_out sc_logic 1 signal 1 } 
	{ tx_shift2ipv4Fifo_dout sc_in sc_lv 1024 signal 4 } 
	{ tx_shift2ipv4Fifo_empty_n sc_in sc_logic 1 signal 4 } 
	{ tx_shift2ipv4Fifo_read sc_out sc_logic 1 signal 4 } 
	{ s_axis_tx_meta_TVALID sc_in sc_logic 1 invld 0 } 
	{ m_axis_tx_data_internal_din sc_out sc_lv 1024 signal 3 } 
	{ m_axis_tx_data_internal_full_n sc_in sc_logic 1 signal 3 } 
	{ m_axis_tx_data_internal_write sc_out sc_logic 1 signal 3 } 
	{ s_axis_tx_meta_TDATA sc_in sc_lv 48 signal 0 } 
	{ s_axis_tx_meta_TREADY sc_out sc_logic 1 inacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "protocol_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "protocol", "role": "dout" }} , 
 	{ "name": "protocol_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "protocol", "role": "empty_n" }} , 
 	{ "name": "protocol_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "protocol", "role": "read" }} , 
 	{ "name": "local_ipv4_address_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_ipv4_address", "role": "dout" }} , 
 	{ "name": "local_ipv4_address_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ipv4_address", "role": "empty_n" }} , 
 	{ "name": "local_ipv4_address_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ipv4_address", "role": "read" }} , 
 	{ "name": "tx_shift2ipv4Fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "tx_shift2ipv4Fifo", "role": "dout" }} , 
 	{ "name": "tx_shift2ipv4Fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_shift2ipv4Fifo", "role": "empty_n" }} , 
 	{ "name": "tx_shift2ipv4Fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_shift2ipv4Fifo", "role": "read" }} , 
 	{ "name": "s_axis_tx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_meta", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_data_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "m_axis_tx_data_internal", "role": "din" }} , 
 	{ "name": "m_axis_tx_data_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_internal", "role": "full_n" }} , 
 	{ "name": "m_axis_tx_data_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_internal", "role": "write" }} , 
 	{ "name": "s_axis_tx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "s_axis_tx_meta", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_meta", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "local_ipv4_address", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "local_ipv4_address_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "protocol", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "protocol_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gi_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "m_axis_tx_data_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_shift2ipv4Fifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_shift2ipv4Fifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tx_meta_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_tx_meta { axis {  { s_axis_tx_meta_TVALID in_vld 0 1 }  { s_axis_tx_meta_TDATA in_data 0 48 }  { s_axis_tx_meta_TREADY in_acc 1 1 } } }
	local_ipv4_address { ap_fifo {  { local_ipv4_address_dout fifo_data 0 32 }  { local_ipv4_address_empty_n fifo_status 0 1 }  { local_ipv4_address_read fifo_update 1 1 } } }
	protocol { ap_fifo {  { protocol_dout fifo_data 0 8 }  { protocol_empty_n fifo_status 0 1 }  { protocol_read fifo_update 1 1 } } }
	m_axis_tx_data_internal { ap_fifo {  { m_axis_tx_data_internal_din fifo_data 1 1024 }  { m_axis_tx_data_internal_full_n fifo_status 0 1 }  { m_axis_tx_data_internal_write fifo_update 1 1 } } }
	tx_shift2ipv4Fifo { ap_fifo {  { tx_shift2ipv4Fifo_dout fifo_data 0 1024 }  { tx_shift2ipv4Fifo_empty_n fifo_status 0 1 }  { tx_shift2ipv4Fifo_read fifo_update 1 1 } } }
}
