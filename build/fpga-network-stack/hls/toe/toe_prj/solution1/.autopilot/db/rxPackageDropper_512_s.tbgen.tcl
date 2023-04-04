set moduleName rxPackageDropper_512_s
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
set C_modelName {rxPackageDropper<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng_metaHandlerDropFifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_fsmDropFifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer3 int 577 regular {fifo 0 volatile } {global 0}  }
	{ rxBufferWriteData_internal int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng_metaHandlerDropFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_fsmDropFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer3", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxBufferWriteData_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ rxEng_dataBuffer3_dout sc_in sc_lv 577 signal 2 } 
	{ rxEng_dataBuffer3_empty_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_dataBuffer3_read sc_out sc_logic 1 signal 2 } 
	{ rxEng_fsmDropFifo_dout sc_in sc_lv 1 signal 1 } 
	{ rxEng_fsmDropFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxEng_fsmDropFifo_read sc_out sc_logic 1 signal 1 } 
	{ rxEng_metaHandlerDropFifo_dout sc_in sc_lv 1 signal 0 } 
	{ rxEng_metaHandlerDropFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng_metaHandlerDropFifo_read sc_out sc_logic 1 signal 0 } 
	{ rxBufferWriteData_internal_din sc_out sc_lv 1024 signal 3 } 
	{ rxBufferWriteData_internal_full_n sc_in sc_logic 1 signal 3 } 
	{ rxBufferWriteData_internal_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_dataBuffer3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3", "role": "dout" }} , 
 	{ "name": "rxEng_dataBuffer3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3", "role": "empty_n" }} , 
 	{ "name": "rxEng_dataBuffer3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3", "role": "read" }} , 
 	{ "name": "rxEng_fsmDropFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmDropFifo", "role": "dout" }} , 
 	{ "name": "rxEng_fsmDropFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmDropFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_fsmDropFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmDropFifo", "role": "read" }} , 
 	{ "name": "rxEng_metaHandlerDropFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerDropFifo", "role": "dout" }} , 
 	{ "name": "rxEng_metaHandlerDropFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerDropFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_metaHandlerDropFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerDropFifo", "role": "read" }} , 
 	{ "name": "rxBufferWriteData_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "rxBufferWriteData_internal", "role": "din" }} , 
 	{ "name": "rxBufferWriteData_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxBufferWriteData_internal", "role": "full_n" }} , 
 	{ "name": "rxBufferWriteData_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxBufferWriteData_internal", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "rxPackageDropper_512_s",
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
			{"Name" : "tpf_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_metaHandlerDropFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_metaHandlerDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_fsmDropFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_fsmDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_dataBuffer3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxBufferWriteData_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxBufferWriteData_internal_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	rxPackageDropper_512_s {
		tpf_state {Type IO LastRead -1 FirstWrite -1}
		rxEng_metaHandlerDropFifo {Type I LastRead 0 FirstWrite -1}
		rxEng_fsmDropFifo {Type I LastRead 0 FirstWrite -1}
		rxEng_dataBuffer3 {Type I LastRead 0 FirstWrite -1}
		rxBufferWriteData_internal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng_metaHandlerDropFifo { ap_fifo {  { rxEng_metaHandlerDropFifo_dout fifo_data 0 1 }  { rxEng_metaHandlerDropFifo_empty_n fifo_status 0 1 }  { rxEng_metaHandlerDropFifo_read fifo_update 1 1 } } }
	rxEng_fsmDropFifo { ap_fifo {  { rxEng_fsmDropFifo_dout fifo_data 0 1 }  { rxEng_fsmDropFifo_empty_n fifo_status 0 1 }  { rxEng_fsmDropFifo_read fifo_update 1 1 } } }
	rxEng_dataBuffer3 { ap_fifo {  { rxEng_dataBuffer3_dout fifo_data 0 577 }  { rxEng_dataBuffer3_empty_n fifo_status 0 1 }  { rxEng_dataBuffer3_read fifo_update 1 1 } } }
	rxBufferWriteData_internal { ap_fifo {  { rxBufferWriteData_internal_din fifo_data 1 1024 }  { rxBufferWriteData_internal_full_n fifo_status 0 1 }  { rxBufferWriteData_internal_write fifo_update 1 1 } } }
}
