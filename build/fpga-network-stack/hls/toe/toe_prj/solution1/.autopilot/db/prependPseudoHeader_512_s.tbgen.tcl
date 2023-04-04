set moduleName prependPseudoHeader_512_s
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
set C_modelName {prependPseudoHeader<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng_pseudoHeaderFifo int 1024 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer1 int 577 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_dataBuffer5 int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng_pseudoHeaderFifo", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer1", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer5", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
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
	{ rxEng_pseudoHeaderFifo_dout sc_in sc_lv 1024 signal 0 } 
	{ rxEng_pseudoHeaderFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng_pseudoHeaderFifo_read sc_out sc_logic 1 signal 0 } 
	{ rxEng_dataBuffer5_dout sc_in sc_lv 1024 signal 2 } 
	{ rxEng_dataBuffer5_empty_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_dataBuffer5_read sc_out sc_logic 1 signal 2 } 
	{ rxEng_dataBuffer1_din sc_out sc_lv 577 signal 1 } 
	{ rxEng_dataBuffer1_full_n sc_in sc_logic 1 signal 1 } 
	{ rxEng_dataBuffer1_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_pseudoHeaderFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "rxEng_pseudoHeaderFifo", "role": "dout" }} , 
 	{ "name": "rxEng_pseudoHeaderFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_pseudoHeaderFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_pseudoHeaderFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_pseudoHeaderFifo", "role": "read" }} , 
 	{ "name": "rxEng_dataBuffer5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "rxEng_dataBuffer5", "role": "dout" }} , 
 	{ "name": "rxEng_dataBuffer5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer5", "role": "empty_n" }} , 
 	{ "name": "rxEng_dataBuffer5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer5", "role": "read" }} , 
 	{ "name": "rxEng_dataBuffer1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer1", "role": "din" }} , 
 	{ "name": "rxEng_dataBuffer1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer1", "role": "full_n" }} , 
 	{ "name": "rxEng_dataBuffer1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "prependPseudoHeader_512_s",
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
			{"Name" : "state_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "firstPayload", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_pseudoHeaderFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_pseudoHeaderFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "prevWord_data_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_dataBuffer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_dataBuffer5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer5_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	prependPseudoHeader_512_s {
		state_2 {Type IO LastRead -1 FirstWrite -1}
		firstPayload {Type IO LastRead -1 FirstWrite -1}
		rxEng_pseudoHeaderFifo {Type I LastRead 0 FirstWrite -1}
		prevWord_data_V_7 {Type IO LastRead -1 FirstWrite -1}
		rxEng_dataBuffer1 {Type O LastRead -1 FirstWrite 1}
		rxEng_dataBuffer5 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng_pseudoHeaderFifo { ap_fifo {  { rxEng_pseudoHeaderFifo_dout fifo_data 0 1024 }  { rxEng_pseudoHeaderFifo_empty_n fifo_status 0 1 }  { rxEng_pseudoHeaderFifo_read fifo_update 1 1 } } }
	rxEng_dataBuffer1 { ap_fifo {  { rxEng_dataBuffer1_din fifo_data 1 577 }  { rxEng_dataBuffer1_full_n fifo_status 0 1 }  { rxEng_dataBuffer1_write fifo_update 1 1 } } }
	rxEng_dataBuffer5 { ap_fifo {  { rxEng_dataBuffer5_dout fifo_data 0 1024 }  { rxEng_dataBuffer5_empty_n fifo_status 0 1 }  { rxEng_dataBuffer5_read fifo_update 1 1 } } }
}
