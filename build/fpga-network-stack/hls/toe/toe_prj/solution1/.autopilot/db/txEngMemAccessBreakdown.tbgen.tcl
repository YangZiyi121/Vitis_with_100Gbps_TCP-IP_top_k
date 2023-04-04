set moduleName txEngMemAccessBreakdown
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
set C_modelName {txEngMemAccessBreakdown}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_txread_cmd int 72 regular {axi_s 1 volatile  { m_axis_txread_cmd Data } }  }
	{ txMetaloader2memAccessBreakdown int 72 regular {fifo 0 volatile } {global 0}  }
	{ memAccessBreakdown2txPkgStitcher int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_txread_cmd", "interface" : "axis", "bitwidth" : 72, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txMetaloader2memAccessBreakdown", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "memAccessBreakdown2txPkgStitcher", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ txMetaloader2memAccessBreakdown_dout sc_in sc_lv 72 signal 1 } 
	{ txMetaloader2memAccessBreakdown_empty_n sc_in sc_logic 1 signal 1 } 
	{ txMetaloader2memAccessBreakdown_read sc_out sc_logic 1 signal 1 } 
	{ memAccessBreakdown2txPkgStitcher_din sc_out sc_lv 1 signal 2 } 
	{ memAccessBreakdown2txPkgStitcher_full_n sc_in sc_logic 1 signal 2 } 
	{ memAccessBreakdown2txPkgStitcher_write sc_out sc_logic 1 signal 2 } 
	{ m_axis_txread_cmd_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_txread_cmd_TDATA sc_out sc_lv 72 signal 0 } 
	{ m_axis_txread_cmd_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txMetaloader2memAccessBreakdown_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "txMetaloader2memAccessBreakdown", "role": "dout" }} , 
 	{ "name": "txMetaloader2memAccessBreakdown_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txMetaloader2memAccessBreakdown", "role": "empty_n" }} , 
 	{ "name": "txMetaloader2memAccessBreakdown_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txMetaloader2memAccessBreakdown", "role": "read" }} , 
 	{ "name": "memAccessBreakdown2txPkgStitcher_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memAccessBreakdown2txPkgStitcher", "role": "din" }} , 
 	{ "name": "memAccessBreakdown2txPkgStitcher_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memAccessBreakdown2txPkgStitcher", "role": "full_n" }} , 
 	{ "name": "memAccessBreakdown2txPkgStitcher_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memAccessBreakdown2txPkgStitcher", "role": "write" }} , 
 	{ "name": "m_axis_txread_cmd_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_txread_cmd", "role": "TREADY" }} , 
 	{ "name": "m_axis_txread_cmd_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "m_axis_txread_cmd", "role": "TDATA" }} , 
 	{ "name": "m_axis_txread_cmd_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_txread_cmd", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "txEngMemAccessBreakdown",
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
			{"Name" : "m_axis_txread_cmd", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_txread_cmd_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEngBreakdownState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txMetaloader2memAccessBreakdown", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txMetaloader2memAccessBreakdown_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmd_bbt_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lengthFirstAccess_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memAccessBreakdown2txPkgStitcher", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "memAccessBreakdown2txPkgStitcher_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_txread_cmd_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	txEngMemAccessBreakdown {
		m_axis_txread_cmd {Type O LastRead -1 FirstWrite 1}
		txEngBreakdownState_V {Type IO LastRead -1 FirstWrite -1}
		txMetaloader2memAccessBreakdown {Type I LastRead 0 FirstWrite -1}
		cmd_bbt_V_1 {Type IO LastRead -1 FirstWrite -1}
		lengthFirstAccess_V {Type IO LastRead -1 FirstWrite -1}
		memAccessBreakdown2txPkgStitcher {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_txread_cmd { axis {  { m_axis_txread_cmd_TREADY out_acc 0 1 }  { m_axis_txread_cmd_TDATA out_data 1 72 }  { m_axis_txread_cmd_TVALID out_vld 1 1 } } }
	txMetaloader2memAccessBreakdown { ap_fifo {  { txMetaloader2memAccessBreakdown_dout fifo_data 0 72 }  { txMetaloader2memAccessBreakdown_empty_n fifo_status 0 1 }  { txMetaloader2memAccessBreakdown_read fifo_update 1 1 } } }
	memAccessBreakdown2txPkgStitcher { ap_fifo {  { memAccessBreakdown2txPkgStitcher_din fifo_data 1 1 }  { memAccessBreakdown2txPkgStitcher_full_n fifo_status 0 1 }  { memAccessBreakdown2txPkgStitcher_write fifo_update 1 1 } } }
}
