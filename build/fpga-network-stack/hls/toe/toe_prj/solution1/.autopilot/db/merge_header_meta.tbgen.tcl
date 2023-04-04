set moduleName merge_header_meta
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
set C_modelName {merge_header_meta}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng_headerMetaFifo int 160 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_metaDataFifo int 108 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_winScaleFifo int 4 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng_headerMetaFifo", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_metaDataFifo", "interface" : "fifo", "bitwidth" : 108, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_winScaleFifo", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} ]}
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
	{ rxEng_headerMetaFifo_dout sc_in sc_lv 160 signal 0 } 
	{ rxEng_headerMetaFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng_headerMetaFifo_read sc_out sc_logic 1 signal 0 } 
	{ rxEng_winScaleFifo_dout sc_in sc_lv 4 signal 2 } 
	{ rxEng_winScaleFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_winScaleFifo_read sc_out sc_logic 1 signal 2 } 
	{ rxEng_metaDataFifo_din sc_out sc_lv 108 signal 1 } 
	{ rxEng_metaDataFifo_full_n sc_in sc_logic 1 signal 1 } 
	{ rxEng_metaDataFifo_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_headerMetaFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "rxEng_headerMetaFifo", "role": "dout" }} , 
 	{ "name": "rxEng_headerMetaFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_headerMetaFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_headerMetaFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_headerMetaFifo", "role": "read" }} , 
 	{ "name": "rxEng_winScaleFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rxEng_winScaleFifo", "role": "dout" }} , 
 	{ "name": "rxEng_winScaleFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_winScaleFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_winScaleFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_winScaleFifo", "role": "read" }} , 
 	{ "name": "rxEng_metaDataFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":108, "type": "signal", "bundle":{"name": "rxEng_metaDataFifo", "role": "din" }} , 
 	{ "name": "rxEng_metaDataFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaDataFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_metaDataFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaDataFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "merge_header_meta",
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
			{"Name" : "state_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_headerMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_headerMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "meta_seqNumb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_ackNumb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_winSize_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_ack_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_rst_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_syn_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_fin_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_dataOffset_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_metaDataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_metaDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_winScaleFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_winScaleFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	merge_header_meta {
		state_V_2 {Type IO LastRead -1 FirstWrite -1}
		rxEng_headerMetaFifo {Type I LastRead 0 FirstWrite -1}
		meta_seqNumb_V {Type IO LastRead -1 FirstWrite -1}
		meta_ackNumb_V {Type IO LastRead -1 FirstWrite -1}
		meta_winSize_V {Type IO LastRead -1 FirstWrite -1}
		meta_length_V {Type IO LastRead -1 FirstWrite -1}
		meta_ack_V {Type IO LastRead -1 FirstWrite -1}
		meta_rst_V {Type IO LastRead -1 FirstWrite -1}
		meta_syn_V {Type IO LastRead -1 FirstWrite -1}
		meta_fin_V {Type IO LastRead -1 FirstWrite -1}
		meta_dataOffset_V {Type IO LastRead -1 FirstWrite -1}
		rxEng_metaDataFifo {Type O LastRead -1 FirstWrite 1}
		rxEng_winScaleFifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng_headerMetaFifo { ap_fifo {  { rxEng_headerMetaFifo_dout fifo_data 0 160 }  { rxEng_headerMetaFifo_empty_n fifo_status 0 1 }  { rxEng_headerMetaFifo_read fifo_update 1 1 } } }
	rxEng_metaDataFifo { ap_fifo {  { rxEng_metaDataFifo_din fifo_data 1 108 }  { rxEng_metaDataFifo_full_n fifo_status 0 1 }  { rxEng_metaDataFifo_write fifo_update 1 1 } } }
	rxEng_winScaleFifo { ap_fifo {  { rxEng_winScaleFifo_dout fifo_data 0 4 }  { rxEng_winScaleFifo_empty_n fifo_status 0 1 }  { rxEng_winScaleFifo_read fifo_update 1 1 } } }
}
