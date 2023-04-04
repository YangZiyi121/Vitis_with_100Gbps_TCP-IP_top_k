set moduleName drop_optional_ip_header_512_s
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
set C_modelName {drop_optional_ip_header<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rx_process2dropLengthFifo int 4 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer0 int 577 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer4 int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rx_process2dropLengthFifo", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer0", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer4", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ rxEng_dataBuffer0_dout sc_in sc_lv 577 signal 1 } 
	{ rxEng_dataBuffer0_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxEng_dataBuffer0_read sc_out sc_logic 1 signal 1 } 
	{ rx_process2dropLengthFifo_dout sc_in sc_lv 4 signal 0 } 
	{ rx_process2dropLengthFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ rx_process2dropLengthFifo_read sc_out sc_logic 1 signal 0 } 
	{ rxEng_dataBuffer4_din sc_out sc_lv 1024 signal 2 } 
	{ rxEng_dataBuffer4_full_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_dataBuffer4_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_dataBuffer0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer0", "role": "dout" }} , 
 	{ "name": "rxEng_dataBuffer0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer0", "role": "empty_n" }} , 
 	{ "name": "rxEng_dataBuffer0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer0", "role": "read" }} , 
 	{ "name": "rx_process2dropLengthFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rx_process2dropLengthFifo", "role": "dout" }} , 
 	{ "name": "rx_process2dropLengthFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_process2dropLengthFifo", "role": "empty_n" }} , 
 	{ "name": "rx_process2dropLengthFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_process2dropLengthFifo", "role": "read" }} , 
 	{ "name": "rxEng_dataBuffer4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "rxEng_dataBuffer4", "role": "din" }} , 
 	{ "name": "rxEng_dataBuffer4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer4", "role": "full_n" }} , 
 	{ "name": "rxEng_dataBuffer4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "drop_optional_ip_header_512_s",
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
			{"Name" : "prevWord_data_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_process2dropLengthFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rx_process2dropLengthFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_dataBuffer0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_dataBuffer4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer4_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	drop_optional_ip_header_512_s {
		doh_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_2 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_5 {Type IO LastRead -1 FirstWrite -1}
		rx_process2dropLengthFifo {Type I LastRead 0 FirstWrite -1}
		rxEng_dataBuffer0 {Type I LastRead 0 FirstWrite -1}
		length_V {Type IO LastRead -1 FirstWrite -1}
		rxEng_dataBuffer4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rx_process2dropLengthFifo { ap_fifo {  { rx_process2dropLengthFifo_dout fifo_data 0 4 }  { rx_process2dropLengthFifo_empty_n fifo_status 0 1 }  { rx_process2dropLengthFifo_read fifo_update 1 1 } } }
	rxEng_dataBuffer0 { ap_fifo {  { rxEng_dataBuffer0_dout fifo_data 0 577 }  { rxEng_dataBuffer0_empty_n fifo_status 0 1 }  { rxEng_dataBuffer0_read fifo_update 1 1 } } }
	rxEng_dataBuffer4 { ap_fifo {  { rxEng_dataBuffer4_din fifo_data 1 1024 }  { rxEng_dataBuffer4_full_n fifo_status 0 1 }  { rxEng_dataBuffer4_write fifo_update 1 1 } } }
}
