set moduleName pseudoHeaderConstructionNew_512_s
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
set C_modelName {pseudoHeaderConstructionNew<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng_tcpMetaFifo int 104 regular {fifo 0 volatile } {global 0}  }
	{ txEng_tcpTupleFifo int 96 regular {fifo 0 volatile } {global 0}  }
	{ txEng_tcpPkgBuffer1 int 577 regular {fifo 1 volatile } {global 1}  }
	{ txEng_shift2pseudoFifo int 577 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng_tcpMetaFifo", "interface" : "fifo", "bitwidth" : 104, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpTupleFifo", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpPkgBuffer1", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txEng_shift2pseudoFifo", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ txEng_shift2pseudoFifo_dout sc_in sc_lv 577 signal 3 } 
	{ txEng_shift2pseudoFifo_empty_n sc_in sc_logic 1 signal 3 } 
	{ txEng_shift2pseudoFifo_read sc_out sc_logic 1 signal 3 } 
	{ txEng_tcpMetaFifo_dout sc_in sc_lv 104 signal 0 } 
	{ txEng_tcpMetaFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng_tcpMetaFifo_read sc_out sc_logic 1 signal 0 } 
	{ txEng_tcpTupleFifo_dout sc_in sc_lv 96 signal 1 } 
	{ txEng_tcpTupleFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ txEng_tcpTupleFifo_read sc_out sc_logic 1 signal 1 } 
	{ txEng_tcpPkgBuffer1_din sc_out sc_lv 577 signal 2 } 
	{ txEng_tcpPkgBuffer1_full_n sc_in sc_logic 1 signal 2 } 
	{ txEng_tcpPkgBuffer1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txEng_shift2pseudoFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txEng_shift2pseudoFifo", "role": "dout" }} , 
 	{ "name": "txEng_shift2pseudoFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_shift2pseudoFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_shift2pseudoFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_shift2pseudoFifo", "role": "read" }} , 
 	{ "name": "txEng_tcpMetaFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":104, "type": "signal", "bundle":{"name": "txEng_tcpMetaFifo", "role": "dout" }} , 
 	{ "name": "txEng_tcpMetaFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpMetaFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_tcpMetaFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpMetaFifo", "role": "read" }} , 
 	{ "name": "txEng_tcpTupleFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txEng_tcpTupleFifo", "role": "dout" }} , 
 	{ "name": "txEng_tcpTupleFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpTupleFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_tcpTupleFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpTupleFifo", "role": "read" }} , 
 	{ "name": "txEng_tcpPkgBuffer1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer1", "role": "din" }} , 
 	{ "name": "txEng_tcpPkgBuffer1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer1", "role": "full_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pseudoHeaderConstructionNew_512_s",
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
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hasBody", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng_tcpMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tcpTupleFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpTupleFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "win_shift_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "isSYN", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng_tcpPkgBuffer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_shift2pseudoFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_shift2pseudoFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	pseudoHeaderConstructionNew_512_s {
		state_1 {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		hasBody {Type IO LastRead -1 FirstWrite -1}
		txEng_tcpMetaFifo {Type I LastRead 0 FirstWrite -1}
		txEng_tcpTupleFifo {Type I LastRead 0 FirstWrite -1}
		win_shift_V {Type IO LastRead -1 FirstWrite -1}
		isSYN {Type IO LastRead -1 FirstWrite -1}
		txEng_tcpPkgBuffer1 {Type O LastRead -1 FirstWrite 1}
		txEng_shift2pseudoFifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng_tcpMetaFifo { ap_fifo {  { txEng_tcpMetaFifo_dout fifo_data 0 104 }  { txEng_tcpMetaFifo_empty_n fifo_status 0 1 }  { txEng_tcpMetaFifo_read fifo_update 1 1 } } }
	txEng_tcpTupleFifo { ap_fifo {  { txEng_tcpTupleFifo_dout fifo_data 0 96 }  { txEng_tcpTupleFifo_empty_n fifo_status 0 1 }  { txEng_tcpTupleFifo_read fifo_update 1 1 } } }
	txEng_tcpPkgBuffer1 { ap_fifo {  { txEng_tcpPkgBuffer1_din fifo_data 1 577 }  { txEng_tcpPkgBuffer1_full_n fifo_status 0 1 }  { txEng_tcpPkgBuffer1_write fifo_update 1 1 } } }
	txEng_shift2pseudoFifo { ap_fifo {  { txEng_shift2pseudoFifo_dout fifo_data 0 577 }  { txEng_shift2pseudoFifo_empty_n fifo_status 0 1 }  { txEng_shift2pseudoFifo_read fifo_update 1 1 } } }
}
