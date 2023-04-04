set moduleName generate_ipv4_512_s
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
set C_modelName {generate_ipv4<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng_ipMetaFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ txEng_ipTupleFifo int 64 regular {fifo 0 volatile } {global 0}  }
	{ ipTxData_internal int 1024 regular {fifo 1 volatile } {global 1}  }
	{ txEng_tcpPkgBuffer6 int 577 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng_ipMetaFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_ipTupleFifo", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ipTxData_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpPkgBuffer6", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} ]}
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
	{ txEng_tcpPkgBuffer6_dout sc_in sc_lv 577 signal 3 } 
	{ txEng_tcpPkgBuffer6_empty_n sc_in sc_logic 1 signal 3 } 
	{ txEng_tcpPkgBuffer6_read sc_out sc_logic 1 signal 3 } 
	{ txEng_ipMetaFifo_dout sc_in sc_lv 16 signal 0 } 
	{ txEng_ipMetaFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng_ipMetaFifo_read sc_out sc_logic 1 signal 0 } 
	{ txEng_ipTupleFifo_dout sc_in sc_lv 64 signal 1 } 
	{ txEng_ipTupleFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ txEng_ipTupleFifo_read sc_out sc_logic 1 signal 1 } 
	{ ipTxData_internal_din sc_out sc_lv 1024 signal 2 } 
	{ ipTxData_internal_full_n sc_in sc_logic 1 signal 2 } 
	{ ipTxData_internal_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txEng_tcpPkgBuffer6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer6", "role": "dout" }} , 
 	{ "name": "txEng_tcpPkgBuffer6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer6", "role": "empty_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer6", "role": "read" }} , 
 	{ "name": "txEng_ipMetaFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "txEng_ipMetaFifo", "role": "dout" }} , 
 	{ "name": "txEng_ipMetaFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_ipMetaFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_ipMetaFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_ipMetaFifo", "role": "read" }} , 
 	{ "name": "txEng_ipTupleFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txEng_ipTupleFifo", "role": "dout" }} , 
 	{ "name": "txEng_ipTupleFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_ipTupleFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_ipTupleFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_ipTupleFifo", "role": "read" }} , 
 	{ "name": "ipTxData_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ipTxData_internal", "role": "din" }} , 
 	{ "name": "ipTxData_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipTxData_internal", "role": "full_n" }} , 
 	{ "name": "ipTxData_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipTxData_internal", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_ipv4_512_s",
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
			{"Name" : "gi_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng_ipMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_ipMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_ipTupleFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_ipTupleFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipTxData_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipTxData_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tcpPkgBuffer6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer6_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	generate_ipv4_512_s {
		gi_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_3 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_3 {Type IO LastRead -1 FirstWrite -1}
		txEng_ipMetaFifo {Type I LastRead 0 FirstWrite -1}
		txEng_ipTupleFifo {Type I LastRead 0 FirstWrite -1}
		ipTxData_internal {Type O LastRead -1 FirstWrite 1}
		txEng_tcpPkgBuffer6 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng_ipMetaFifo { ap_fifo {  { txEng_ipMetaFifo_dout fifo_data 0 16 }  { txEng_ipMetaFifo_empty_n fifo_status 0 1 }  { txEng_ipMetaFifo_read fifo_update 1 1 } } }
	txEng_ipTupleFifo { ap_fifo {  { txEng_ipTupleFifo_dout fifo_data 0 64 }  { txEng_ipTupleFifo_empty_n fifo_status 0 1 }  { txEng_ipTupleFifo_read fifo_update 1 1 } } }
	ipTxData_internal { ap_fifo {  { ipTxData_internal_din fifo_data 1 1024 }  { ipTxData_internal_full_n fifo_status 0 1 }  { ipTxData_internal_write fifo_update 1 1 } } }
	txEng_tcpPkgBuffer6 { ap_fifo {  { txEng_tcpPkgBuffer6_dout fifo_data 0 577 }  { txEng_tcpPkgBuffer6_empty_n fifo_status 0 1 }  { txEng_tcpPkgBuffer6_read fifo_update 1 1 } } }
}
