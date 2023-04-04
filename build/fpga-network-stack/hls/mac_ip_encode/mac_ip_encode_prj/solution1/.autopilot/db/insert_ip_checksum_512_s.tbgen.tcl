set moduleName insert_ip_checksum_512_s
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
set C_modelName {insert_ip_checksum<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataStreamBuffer1 int 577 regular {fifo 0 volatile } {global 0}  }
	{ checksumFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ dataStreamBuffer2 int 577 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataStreamBuffer1", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "checksumFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreamBuffer2", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ dataStreamBuffer1_dout sc_in sc_lv 577 signal 0 } 
	{ dataStreamBuffer1_empty_n sc_in sc_logic 1 signal 0 } 
	{ dataStreamBuffer1_read sc_out sc_logic 1 signal 0 } 
	{ checksumFifo_dout sc_in sc_lv 16 signal 1 } 
	{ checksumFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ checksumFifo_read sc_out sc_logic 1 signal 1 } 
	{ dataStreamBuffer2_din sc_out sc_lv 577 signal 2 } 
	{ dataStreamBuffer2_full_n sc_in sc_logic 1 signal 2 } 
	{ dataStreamBuffer2_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataStreamBuffer1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "dataStreamBuffer1", "role": "dout" }} , 
 	{ "name": "dataStreamBuffer1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreamBuffer1", "role": "empty_n" }} , 
 	{ "name": "dataStreamBuffer1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreamBuffer1", "role": "read" }} , 
 	{ "name": "checksumFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checksumFifo", "role": "dout" }} , 
 	{ "name": "checksumFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checksumFifo", "role": "empty_n" }} , 
 	{ "name": "checksumFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checksumFifo", "role": "read" }} , 
 	{ "name": "dataStreamBuffer2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "dataStreamBuffer2", "role": "din" }} , 
 	{ "name": "dataStreamBuffer2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreamBuffer2", "role": "full_n" }} , 
 	{ "name": "dataStreamBuffer2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreamBuffer2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "insert_ip_checksum_512_s",
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
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreamBuffer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checksumFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "checksumFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreamBuffer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer2_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	insert_ip_checksum_512_s {
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer1 {Type I LastRead 0 FirstWrite -1}
		checksumFifo {Type I LastRead 0 FirstWrite -1}
		dataStreamBuffer2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dataStreamBuffer1 { ap_fifo {  { dataStreamBuffer1_dout fifo_data 0 577 }  { dataStreamBuffer1_empty_n fifo_status 0 1 }  { dataStreamBuffer1_read fifo_update 1 1 } } }
	checksumFifo { ap_fifo {  { checksumFifo_dout fifo_data 0 16 }  { checksumFifo_empty_n fifo_status 0 1 }  { checksumFifo_read fifo_update 1 1 } } }
	dataStreamBuffer2 { ap_fifo {  { dataStreamBuffer2_din fifo_data 1 577 }  { dataStreamBuffer2_full_n fifo_status 0 1 }  { dataStreamBuffer2_write fifo_update 1 1 } } }
}
