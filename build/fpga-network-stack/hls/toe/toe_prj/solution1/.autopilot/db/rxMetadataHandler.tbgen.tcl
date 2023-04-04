set moduleName rxMetadataHandler
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
set C_modelName {rxMetadataHandler}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng_metaDataFifo int 108 regular {fifo 0 volatile } {global 0}  }
	{ portTable2rxEng_check_rsp int 1 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_tupleBuffer int 96 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_metaHandlerEventFifo int 181 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_metaHandlerDropFifo int 1 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2sLookup_req int 97 regular {fifo 1 volatile } {global 1}  }
	{ sLookup2rxEng_rsp int 17 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_fsmMetaDataFifo int 188 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng_metaDataFifo", "interface" : "fifo", "bitwidth" : 108, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "portTable2rxEng_check_rsp", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_tupleBuffer", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_metaHandlerEventFifo", "interface" : "fifo", "bitwidth" : 181, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_metaHandlerDropFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2sLookup_req", "interface" : "fifo", "bitwidth" : 97, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2rxEng_rsp", "interface" : "fifo", "bitwidth" : 17, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_fsmMetaDataFifo", "interface" : "fifo", "bitwidth" : 188, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rxEng_metaDataFifo_dout sc_in sc_lv 108 signal 0 } 
	{ rxEng_metaDataFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng_metaDataFifo_read sc_out sc_logic 1 signal 0 } 
	{ portTable2rxEng_check_rsp_dout sc_in sc_lv 1 signal 1 } 
	{ portTable2rxEng_check_rsp_empty_n sc_in sc_logic 1 signal 1 } 
	{ portTable2rxEng_check_rsp_read sc_out sc_logic 1 signal 1 } 
	{ rxEng_tupleBuffer_dout sc_in sc_lv 96 signal 2 } 
	{ rxEng_tupleBuffer_empty_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_tupleBuffer_read sc_out sc_logic 1 signal 2 } 
	{ sLookup2rxEng_rsp_dout sc_in sc_lv 17 signal 6 } 
	{ sLookup2rxEng_rsp_empty_n sc_in sc_logic 1 signal 6 } 
	{ sLookup2rxEng_rsp_read sc_out sc_logic 1 signal 6 } 
	{ rxEng_metaHandlerEventFifo_din sc_out sc_lv 181 signal 3 } 
	{ rxEng_metaHandlerEventFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ rxEng_metaHandlerEventFifo_write sc_out sc_logic 1 signal 3 } 
	{ rxEng_metaHandlerDropFifo_din sc_out sc_lv 1 signal 4 } 
	{ rxEng_metaHandlerDropFifo_full_n sc_in sc_logic 1 signal 4 } 
	{ rxEng_metaHandlerDropFifo_write sc_out sc_logic 1 signal 4 } 
	{ rxEng2sLookup_req_din sc_out sc_lv 97 signal 5 } 
	{ rxEng2sLookup_req_full_n sc_in sc_logic 1 signal 5 } 
	{ rxEng2sLookup_req_write sc_out sc_logic 1 signal 5 } 
	{ rxEng_fsmMetaDataFifo_din sc_out sc_lv 188 signal 7 } 
	{ rxEng_fsmMetaDataFifo_full_n sc_in sc_logic 1 signal 7 } 
	{ rxEng_fsmMetaDataFifo_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_metaDataFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":108, "type": "signal", "bundle":{"name": "rxEng_metaDataFifo", "role": "dout" }} , 
 	{ "name": "rxEng_metaDataFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaDataFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_metaDataFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaDataFifo", "role": "read" }} , 
 	{ "name": "portTable2rxEng_check_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2rxEng_check_rsp", "role": "dout" }} , 
 	{ "name": "portTable2rxEng_check_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2rxEng_check_rsp", "role": "empty_n" }} , 
 	{ "name": "portTable2rxEng_check_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2rxEng_check_rsp", "role": "read" }} , 
 	{ "name": "rxEng_tupleBuffer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "rxEng_tupleBuffer", "role": "dout" }} , 
 	{ "name": "rxEng_tupleBuffer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_tupleBuffer", "role": "empty_n" }} , 
 	{ "name": "rxEng_tupleBuffer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_tupleBuffer", "role": "read" }} , 
 	{ "name": "sLookup2rxEng_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sLookup2rxEng_rsp", "role": "dout" }} , 
 	{ "name": "sLookup2rxEng_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2rxEng_rsp", "role": "empty_n" }} , 
 	{ "name": "sLookup2rxEng_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2rxEng_rsp", "role": "read" }} , 
 	{ "name": "rxEng_metaHandlerEventFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":181, "type": "signal", "bundle":{"name": "rxEng_metaHandlerEventFifo", "role": "din" }} , 
 	{ "name": "rxEng_metaHandlerEventFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerEventFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_metaHandlerEventFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerEventFifo", "role": "write" }} , 
 	{ "name": "rxEng_metaHandlerDropFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerDropFifo", "role": "din" }} , 
 	{ "name": "rxEng_metaHandlerDropFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerDropFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_metaHandlerDropFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_metaHandlerDropFifo", "role": "write" }} , 
 	{ "name": "rxEng2sLookup_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "rxEng2sLookup_req", "role": "din" }} , 
 	{ "name": "rxEng2sLookup_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2sLookup_req", "role": "full_n" }} , 
 	{ "name": "rxEng2sLookup_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2sLookup_req", "role": "write" }} , 
 	{ "name": "rxEng_fsmMetaDataFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":188, "type": "signal", "bundle":{"name": "rxEng_fsmMetaDataFifo", "role": "din" }} , 
 	{ "name": "rxEng_fsmMetaDataFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmMetaDataFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_fsmMetaDataFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmMetaDataFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "rxMetadataHandler",
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
			{"Name" : "mh_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_metaDataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_metaDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "portTable2rxEng_check_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "portTable2rxEng_check_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_tupleBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_tupleBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mh_meta_seqNumb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_ackNumb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_winSize_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_winScale_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_ack_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_rst_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_syn_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_fin_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_meta_dataOffset_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_srcIpAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_dstIpPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mh_srcIpPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_metaHandlerEventFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_metaHandlerEventFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_metaHandlerDropFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_metaHandlerDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2sLookup_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2sLookup_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sLookup2rxEng_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2rxEng_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_fsmMetaDataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_fsmMetaDataFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	rxMetadataHandler {
		mh_state {Type IO LastRead -1 FirstWrite -1}
		mh_meta_length_V {Type IO LastRead -1 FirstWrite -1}
		rxEng_metaDataFifo {Type I LastRead 0 FirstWrite -1}
		portTable2rxEng_check_rsp {Type I LastRead 0 FirstWrite -1}
		rxEng_tupleBuffer {Type I LastRead 0 FirstWrite -1}
		mh_meta_seqNumb_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_ackNumb_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_winSize_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_winScale_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_ack_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_rst_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_syn_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_fin_V {Type IO LastRead -1 FirstWrite -1}
		mh_meta_dataOffset_V {Type IO LastRead -1 FirstWrite -1}
		mh_srcIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		mh_dstIpPort_V {Type IO LastRead -1 FirstWrite -1}
		mh_srcIpPort_V {Type IO LastRead -1 FirstWrite -1}
		rxEng_metaHandlerEventFifo {Type O LastRead -1 FirstWrite 1}
		rxEng_metaHandlerDropFifo {Type O LastRead -1 FirstWrite 1}
		rxEng2sLookup_req {Type O LastRead -1 FirstWrite 1}
		sLookup2rxEng_rsp {Type I LastRead 0 FirstWrite -1}
		rxEng_fsmMetaDataFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng_metaDataFifo { ap_fifo {  { rxEng_metaDataFifo_dout fifo_data 0 108 }  { rxEng_metaDataFifo_empty_n fifo_status 0 1 }  { rxEng_metaDataFifo_read fifo_update 1 1 } } }
	portTable2rxEng_check_rsp { ap_fifo {  { portTable2rxEng_check_rsp_dout fifo_data 0 1 }  { portTable2rxEng_check_rsp_empty_n fifo_status 0 1 }  { portTable2rxEng_check_rsp_read fifo_update 1 1 } } }
	rxEng_tupleBuffer { ap_fifo {  { rxEng_tupleBuffer_dout fifo_data 0 96 }  { rxEng_tupleBuffer_empty_n fifo_status 0 1 }  { rxEng_tupleBuffer_read fifo_update 1 1 } } }
	rxEng_metaHandlerEventFifo { ap_fifo {  { rxEng_metaHandlerEventFifo_din fifo_data 1 181 }  { rxEng_metaHandlerEventFifo_full_n fifo_status 0 1 }  { rxEng_metaHandlerEventFifo_write fifo_update 1 1 } } }
	rxEng_metaHandlerDropFifo { ap_fifo {  { rxEng_metaHandlerDropFifo_din fifo_data 1 1 }  { rxEng_metaHandlerDropFifo_full_n fifo_status 0 1 }  { rxEng_metaHandlerDropFifo_write fifo_update 1 1 } } }
	rxEng2sLookup_req { ap_fifo {  { rxEng2sLookup_req_din fifo_data 1 97 }  { rxEng2sLookup_req_full_n fifo_status 0 1 }  { rxEng2sLookup_req_write fifo_update 1 1 } } }
	sLookup2rxEng_rsp { ap_fifo {  { sLookup2rxEng_rsp_dout fifo_data 0 17 }  { sLookup2rxEng_rsp_empty_n fifo_status 0 1 }  { sLookup2rxEng_rsp_read fifo_update 1 1 } } }
	rxEng_fsmMetaDataFifo { ap_fifo {  { rxEng_fsmMetaDataFifo_din fifo_data 1 188 }  { rxEng_fsmMetaDataFifo_full_n fifo_status 0 1 }  { rxEng_fsmMetaDataFifo_write fifo_update 1 1 } } }
}
