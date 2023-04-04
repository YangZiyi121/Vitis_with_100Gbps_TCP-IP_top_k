set moduleName tupleSplitter
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
set C_modelName {tupleSplitter}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng_isLookUpFifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ sLookup2txEng_rev_rsp int 96 regular {fifo 0 volatile } {global 0}  }
	{ txEng_ipTupleFifo int 64 regular {fifo 1 volatile } {global 1}  }
	{ txEng_tcpTupleFifo int 96 regular {fifo 1 volatile } {global 1}  }
	{ txEng_tupleShortCutFifo int 96 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng_isLookUpFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2txEng_rev_rsp", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_ipTupleFifo", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpTupleFifo", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tupleShortCutFifo", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} ]}
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
	{ txEng_tupleShortCutFifo_dout sc_in sc_lv 96 signal 4 } 
	{ txEng_tupleShortCutFifo_empty_n sc_in sc_logic 1 signal 4 } 
	{ txEng_tupleShortCutFifo_read sc_out sc_logic 1 signal 4 } 
	{ sLookup2txEng_rev_rsp_dout sc_in sc_lv 96 signal 1 } 
	{ sLookup2txEng_rev_rsp_empty_n sc_in sc_logic 1 signal 1 } 
	{ sLookup2txEng_rev_rsp_read sc_out sc_logic 1 signal 1 } 
	{ txEng_isLookUpFifo_dout sc_in sc_lv 1 signal 0 } 
	{ txEng_isLookUpFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng_isLookUpFifo_read sc_out sc_logic 1 signal 0 } 
	{ txEng_ipTupleFifo_din sc_out sc_lv 64 signal 2 } 
	{ txEng_ipTupleFifo_full_n sc_in sc_logic 1 signal 2 } 
	{ txEng_ipTupleFifo_write sc_out sc_logic 1 signal 2 } 
	{ txEng_tcpTupleFifo_din sc_out sc_lv 96 signal 3 } 
	{ txEng_tcpTupleFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ txEng_tcpTupleFifo_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txEng_tupleShortCutFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txEng_tupleShortCutFifo", "role": "dout" }} , 
 	{ "name": "txEng_tupleShortCutFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tupleShortCutFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_tupleShortCutFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tupleShortCutFifo", "role": "read" }} , 
 	{ "name": "sLookup2txEng_rev_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "sLookup2txEng_rev_rsp", "role": "dout" }} , 
 	{ "name": "sLookup2txEng_rev_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txEng_rev_rsp", "role": "empty_n" }} , 
 	{ "name": "sLookup2txEng_rev_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txEng_rev_rsp", "role": "read" }} , 
 	{ "name": "txEng_isLookUpFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_isLookUpFifo", "role": "dout" }} , 
 	{ "name": "txEng_isLookUpFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_isLookUpFifo", "role": "empty_n" }} , 
 	{ "name": "txEng_isLookUpFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_isLookUpFifo", "role": "read" }} , 
 	{ "name": "txEng_ipTupleFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txEng_ipTupleFifo", "role": "din" }} , 
 	{ "name": "txEng_ipTupleFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_ipTupleFifo", "role": "full_n" }} , 
 	{ "name": "txEng_ipTupleFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_ipTupleFifo", "role": "write" }} , 
 	{ "name": "txEng_tcpTupleFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txEng_tcpTupleFifo", "role": "din" }} , 
 	{ "name": "txEng_tcpTupleFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpTupleFifo", "role": "full_n" }} , 
 	{ "name": "txEng_tcpTupleFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpTupleFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "tupleSplitter",
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
			{"Name" : "ts_getMeta", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ts_isLookUp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng_isLookUpFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_isLookUpFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sLookup2txEng_rev_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2txEng_rev_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_ipTupleFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_ipTupleFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tcpTupleFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpTupleFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tupleShortCutFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tupleShortCutFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	tupleSplitter {
		ts_getMeta {Type IO LastRead -1 FirstWrite -1}
		ts_isLookUp {Type IO LastRead -1 FirstWrite -1}
		txEng_isLookUpFifo {Type I LastRead 0 FirstWrite -1}
		sLookup2txEng_rev_rsp {Type I LastRead 0 FirstWrite -1}
		txEng_ipTupleFifo {Type O LastRead -1 FirstWrite 1}
		txEng_tcpTupleFifo {Type O LastRead -1 FirstWrite 1}
		txEng_tupleShortCutFifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng_isLookUpFifo { ap_fifo {  { txEng_isLookUpFifo_dout fifo_data 0 1 }  { txEng_isLookUpFifo_empty_n fifo_status 0 1 }  { txEng_isLookUpFifo_read fifo_update 1 1 } } }
	sLookup2txEng_rev_rsp { ap_fifo {  { sLookup2txEng_rev_rsp_dout fifo_data 0 96 }  { sLookup2txEng_rev_rsp_empty_n fifo_status 0 1 }  { sLookup2txEng_rev_rsp_read fifo_update 1 1 } } }
	txEng_ipTupleFifo { ap_fifo {  { txEng_ipTupleFifo_din fifo_data 1 64 }  { txEng_ipTupleFifo_full_n fifo_status 0 1 }  { txEng_ipTupleFifo_write fifo_update 1 1 } } }
	txEng_tcpTupleFifo { ap_fifo {  { txEng_tcpTupleFifo_din fifo_data 1 96 }  { txEng_tcpTupleFifo_full_n fifo_status 0 1 }  { txEng_tcpTupleFifo_write fifo_update 1 1 } } }
	txEng_tupleShortCutFifo { ap_fifo {  { txEng_tupleShortCutFifo_dout fifo_data 0 96 }  { txEng_tupleShortCutFifo_empty_n fifo_status 0 1 }  { txEng_tupleShortCutFifo_read fifo_update 1 1 } } }
}
