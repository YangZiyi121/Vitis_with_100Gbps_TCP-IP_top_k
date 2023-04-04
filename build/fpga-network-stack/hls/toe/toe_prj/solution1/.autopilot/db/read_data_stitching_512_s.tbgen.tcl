set moduleName read_data_stitching_512_s
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
set C_modelName {read_data_stitching<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ memAccessBreakdown2txPkgStitcher int 1 regular {fifo 0 volatile } {global 0}  }
	{ txBufferReadData_internal int 1024 regular {fifo 0 volatile } {global 0}  }
	{ txBufferReadDataStitched int 577 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memAccessBreakdown2txPkgStitcher", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txBufferReadData_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txBufferReadDataStitched", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ txBufferReadData_internal_dout sc_in sc_lv 1024 signal 1 } 
	{ txBufferReadData_internal_empty_n sc_in sc_logic 1 signal 1 } 
	{ txBufferReadData_internal_read sc_out sc_logic 1 signal 1 } 
	{ memAccessBreakdown2txPkgStitcher_dout sc_in sc_lv 1 signal 0 } 
	{ memAccessBreakdown2txPkgStitcher_empty_n sc_in sc_logic 1 signal 0 } 
	{ memAccessBreakdown2txPkgStitcher_read sc_out sc_logic 1 signal 0 } 
	{ txBufferReadDataStitched_din sc_out sc_lv 577 signal 2 } 
	{ txBufferReadDataStitched_full_n sc_in sc_logic 1 signal 2 } 
	{ txBufferReadDataStitched_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txBufferReadData_internal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txBufferReadData_internal", "role": "dout" }} , 
 	{ "name": "txBufferReadData_internal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferReadData_internal", "role": "empty_n" }} , 
 	{ "name": "txBufferReadData_internal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferReadData_internal", "role": "read" }} , 
 	{ "name": "memAccessBreakdown2txPkgStitcher_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memAccessBreakdown2txPkgStitcher", "role": "dout" }} , 
 	{ "name": "memAccessBreakdown2txPkgStitcher_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memAccessBreakdown2txPkgStitcher", "role": "empty_n" }} , 
 	{ "name": "memAccessBreakdown2txPkgStitcher_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memAccessBreakdown2txPkgStitcher", "role": "read" }} , 
 	{ "name": "txBufferReadDataStitched_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txBufferReadDataStitched", "role": "din" }} , 
 	{ "name": "txBufferReadDataStitched_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferReadDataStitched", "role": "full_n" }} , 
 	{ "name": "txBufferReadDataStitched_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferReadDataStitched", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "read_data_stitching_512_s",
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
			{"Name" : "pkgNeedsMerge", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memAccessBreakdown2txPkgStitcher", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "memAccessBreakdown2txPkgStitcher_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txBufferReadData_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txBufferReadData_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txBufferReadDataStitched", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txBufferReadDataStitched_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	read_data_stitching_512_s {
		state {Type IO LastRead -1 FirstWrite -1}
		pkgNeedsMerge {Type IO LastRead -1 FirstWrite -1}
		offset_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_6 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		memAccessBreakdown2txPkgStitcher {Type I LastRead 0 FirstWrite -1}
		txBufferReadData_internal {Type I LastRead 0 FirstWrite -1}
		txBufferReadDataStitched {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	memAccessBreakdown2txPkgStitcher { ap_fifo {  { memAccessBreakdown2txPkgStitcher_dout fifo_data 0 1 }  { memAccessBreakdown2txPkgStitcher_empty_n fifo_status 0 1 }  { memAccessBreakdown2txPkgStitcher_read fifo_update 1 1 } } }
	txBufferReadData_internal { ap_fifo {  { txBufferReadData_internal_dout fifo_data 0 1024 }  { txBufferReadData_internal_empty_n fifo_status 0 1 }  { txBufferReadData_internal_read fifo_update 1 1 } } }
	txBufferReadDataStitched { ap_fifo {  { txBufferReadDataStitched_din fifo_data 1 577 }  { txBufferReadDataStitched_full_n fifo_status 0 1 }  { txBufferReadDataStitched_write fifo_update 1 1 } } }
}
