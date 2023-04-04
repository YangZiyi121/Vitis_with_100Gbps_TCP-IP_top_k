set moduleName read_data_arbiter_512_s
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
set C_modelName {read_data_arbiter<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng_isDDRbypass int 1 regular {fifo 0 volatile } {global 0}  }
	{ txBufferReadDataStitched int 577 regular {fifo 0 volatile } {global 0}  }
	{ txEng_tcpPkgBuffer0 int 577 regular {fifo 1 volatile } {global 1}  }
	{ txApp2txEng_data_stream int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng_isDDRbypass", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txBufferReadDataStitched", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpPkgBuffer0", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txApp2txEng_data_stream", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
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
	{ txBufferReadDataStitched_dout sc_in sc_lv 577 signal 1 } 
	{ txBufferReadDataStitched_empty_n sc_in sc_logic 1 signal 1 } 
	{ txBufferReadDataStitched_read sc_out sc_logic 1 signal 1 } 
	{ txApp2txEng_data_stream_dout sc_in sc_lv 1024 signal 3 } 
	{ txApp2txEng_data_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ txApp2txEng_data_stream_read sc_out sc_logic 1 signal 3 } 
	{ txEng_isDDRbypass_dout sc_in sc_lv 1 signal 0 } 
	{ txEng_isDDRbypass_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng_isDDRbypass_read sc_out sc_logic 1 signal 0 } 
	{ txEng_tcpPkgBuffer0_din sc_out sc_lv 577 signal 2 } 
	{ txEng_tcpPkgBuffer0_full_n sc_in sc_logic 1 signal 2 } 
	{ txEng_tcpPkgBuffer0_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txBufferReadDataStitched_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txBufferReadDataStitched", "role": "dout" }} , 
 	{ "name": "txBufferReadDataStitched_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferReadDataStitched", "role": "empty_n" }} , 
 	{ "name": "txBufferReadDataStitched_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferReadDataStitched", "role": "read" }} , 
 	{ "name": "txApp2txEng_data_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txApp2txEng_data_stream", "role": "dout" }} , 
 	{ "name": "txApp2txEng_data_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2txEng_data_stream", "role": "empty_n" }} , 
 	{ "name": "txApp2txEng_data_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2txEng_data_stream", "role": "read" }} , 
 	{ "name": "txEng_isDDRbypass_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_isDDRbypass", "role": "dout" }} , 
 	{ "name": "txEng_isDDRbypass_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_isDDRbypass", "role": "empty_n" }} , 
 	{ "name": "txEng_isDDRbypass_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_isDDRbypass", "role": "read" }} , 
 	{ "name": "txEng_tcpPkgBuffer0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer0", "role": "din" }} , 
 	{ "name": "txEng_tcpPkgBuffer0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer0", "role": "full_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer0", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "read_data_arbiter_512_s",
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
			{"Name" : "tps_state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng_isDDRbypass", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_isDDRbypass_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txBufferReadDataStitched", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txBufferReadDataStitched_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tcpPkgBuffer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txApp2txEng_data_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2txEng_data_stream_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	read_data_arbiter_512_s {
		tps_state_V {Type IO LastRead -1 FirstWrite -1}
		txEng_isDDRbypass {Type I LastRead 0 FirstWrite -1}
		txBufferReadDataStitched {Type I LastRead 0 FirstWrite -1}
		txEng_tcpPkgBuffer0 {Type O LastRead -1 FirstWrite 1}
		txApp2txEng_data_stream {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng_isDDRbypass { ap_fifo {  { txEng_isDDRbypass_dout fifo_data 0 1 }  { txEng_isDDRbypass_empty_n fifo_status 0 1 }  { txEng_isDDRbypass_read fifo_update 1 1 } } }
	txBufferReadDataStitched { ap_fifo {  { txBufferReadDataStitched_dout fifo_data 0 577 }  { txBufferReadDataStitched_empty_n fifo_status 0 1 }  { txBufferReadDataStitched_read fifo_update 1 1 } } }
	txEng_tcpPkgBuffer0 { ap_fifo {  { txEng_tcpPkgBuffer0_din fifo_data 1 577 }  { txEng_tcpPkgBuffer0_full_n fifo_status 0 1 }  { txEng_tcpPkgBuffer0_write fifo_update 1 1 } } }
	txApp2txEng_data_stream { ap_fifo {  { txApp2txEng_data_stream_dout fifo_data 0 1024 }  { txApp2txEng_data_stream_empty_n fifo_status 0 1 }  { txApp2txEng_data_stream_read fifo_update 1 1 } } }
}
