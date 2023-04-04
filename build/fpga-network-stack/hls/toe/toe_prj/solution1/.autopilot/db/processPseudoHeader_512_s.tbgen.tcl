set moduleName processPseudoHeader_512_s
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
set C_modelName {processPseudoHeader<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng_dataBuffer2 int 577 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_checksumValidFifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer3a int 577 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_headerMetaFifo int 160 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2portTable_check_req int 16 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_tupleBuffer int 96 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_optionalFieldsMetaFifo int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng_dataBuffer2", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_checksumValidFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer3a", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_headerMetaFifo", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2portTable_check_req", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_tupleBuffer", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_optionalFieldsMetaFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rxEng_dataBuffer2_dout sc_in sc_lv 577 signal 0 } 
	{ rxEng_dataBuffer2_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng_dataBuffer2_read sc_out sc_logic 1 signal 0 } 
	{ rxEng_checksumValidFifo_dout sc_in sc_lv 1 signal 1 } 
	{ rxEng_checksumValidFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxEng_checksumValidFifo_read sc_out sc_logic 1 signal 1 } 
	{ rxEng_headerMetaFifo_din sc_out sc_lv 160 signal 3 } 
	{ rxEng_headerMetaFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ rxEng_headerMetaFifo_write sc_out sc_logic 1 signal 3 } 
	{ rxEng2portTable_check_req_din sc_out sc_lv 16 signal 4 } 
	{ rxEng2portTable_check_req_full_n sc_in sc_logic 1 signal 4 } 
	{ rxEng2portTable_check_req_write sc_out sc_logic 1 signal 4 } 
	{ rxEng_tupleBuffer_din sc_out sc_lv 96 signal 5 } 
	{ rxEng_tupleBuffer_full_n sc_in sc_logic 1 signal 5 } 
	{ rxEng_tupleBuffer_write sc_out sc_logic 1 signal 5 } 
	{ rxEng_dataBuffer3a_din sc_out sc_lv 577 signal 2 } 
	{ rxEng_dataBuffer3a_full_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_dataBuffer3a_write sc_out sc_logic 1 signal 2 } 
	{ rxEng_optionalFieldsMetaFifo_din sc_out sc_lv 16 signal 6 } 
	{ rxEng_optionalFieldsMetaFifo_full_n sc_in sc_logic 1 signal 6 } 
	{ rxEng_optionalFieldsMetaFifo_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_dataBuffer2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer2", "role": "dout" }} , 
 	{ "name": "rxEng_dataBuffer2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer2", "role": "empty_n" }} , 
 	{ "name": "rxEng_dataBuffer2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer2", "role": "read" }} , 
 	{ "name": "rxEng_checksumValidFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_checksumValidFifo", "role": "dout" }} , 
 	{ "name": "rxEng_checksumValidFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_checksumValidFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_checksumValidFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_checksumValidFifo", "role": "read" }} , 
 	{ "name": "rxEng_headerMetaFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "rxEng_headerMetaFifo", "role": "din" }} , 
 	{ "name": "rxEng_headerMetaFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_headerMetaFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_headerMetaFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_headerMetaFifo", "role": "write" }} , 
 	{ "name": "rxEng2portTable_check_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxEng2portTable_check_req", "role": "din" }} , 
 	{ "name": "rxEng2portTable_check_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2portTable_check_req", "role": "full_n" }} , 
 	{ "name": "rxEng2portTable_check_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2portTable_check_req", "role": "write" }} , 
 	{ "name": "rxEng_tupleBuffer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "rxEng_tupleBuffer", "role": "din" }} , 
 	{ "name": "rxEng_tupleBuffer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_tupleBuffer", "role": "full_n" }} , 
 	{ "name": "rxEng_tupleBuffer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_tupleBuffer", "role": "write" }} , 
 	{ "name": "rxEng_dataBuffer3a_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3a", "role": "din" }} , 
 	{ "name": "rxEng_dataBuffer3a_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3a", "role": "full_n" }} , 
 	{ "name": "rxEng_dataBuffer3a_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3a", "role": "write" }} , 
 	{ "name": "rxEng_optionalFieldsMetaFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsMetaFifo", "role": "din" }} , 
 	{ "name": "rxEng_optionalFieldsMetaFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsMetaFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_optionalFieldsMetaFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsMetaFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "processPseudoHeader_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rxEng_dataBuffer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "firstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_checksumValidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_checksumValidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pkgValid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_dataBuffer3a", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer3a_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_headerMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_headerMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2portTable_check_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2portTable_check_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_tupleBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_tupleBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_optionalFieldsMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_optionalFieldsMetaFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	processPseudoHeader_512_s {
		rxEng_dataBuffer2 {Type I LastRead 0 FirstWrite -1}
		firstWord {Type IO LastRead -1 FirstWrite -1}
		rxEng_checksumValidFifo {Type I LastRead 0 FirstWrite -1}
		header_ready_1 {Type IO LastRead -1 FirstWrite -1}
		header_idx_2 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_2 {Type IO LastRead -1 FirstWrite -1}
		pkgValid {Type IO LastRead -1 FirstWrite -1}
		rxEng_dataBuffer3a {Type O LastRead -1 FirstWrite 3}
		metaWritten_1 {Type IO LastRead -1 FirstWrite -1}
		rxEng_headerMetaFifo {Type O LastRead -1 FirstWrite 2}
		rxEng2portTable_check_req {Type O LastRead -1 FirstWrite 2}
		rxEng_tupleBuffer {Type O LastRead -1 FirstWrite 2}
		rxEng_optionalFieldsMetaFifo {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng_dataBuffer2 { ap_fifo {  { rxEng_dataBuffer2_dout fifo_data 0 577 }  { rxEng_dataBuffer2_empty_n fifo_status 0 1 }  { rxEng_dataBuffer2_read fifo_update 1 1 } } }
	rxEng_checksumValidFifo { ap_fifo {  { rxEng_checksumValidFifo_dout fifo_data 0 1 }  { rxEng_checksumValidFifo_empty_n fifo_status 0 1 }  { rxEng_checksumValidFifo_read fifo_update 1 1 } } }
	rxEng_dataBuffer3a { ap_fifo {  { rxEng_dataBuffer3a_din fifo_data 1 577 }  { rxEng_dataBuffer3a_full_n fifo_status 0 1 }  { rxEng_dataBuffer3a_write fifo_update 1 1 } } }
	rxEng_headerMetaFifo { ap_fifo {  { rxEng_headerMetaFifo_din fifo_data 1 160 }  { rxEng_headerMetaFifo_full_n fifo_status 0 1 }  { rxEng_headerMetaFifo_write fifo_update 1 1 } } }
	rxEng2portTable_check_req { ap_fifo {  { rxEng2portTable_check_req_din fifo_data 1 16 }  { rxEng2portTable_check_req_full_n fifo_status 0 1 }  { rxEng2portTable_check_req_write fifo_update 1 1 } } }
	rxEng_tupleBuffer { ap_fifo {  { rxEng_tupleBuffer_din fifo_data 1 96 }  { rxEng_tupleBuffer_full_n fifo_status 0 1 }  { rxEng_tupleBuffer_write fifo_update 1 1 } } }
	rxEng_optionalFieldsMetaFifo { ap_fifo {  { rxEng_optionalFieldsMetaFifo_din fifo_data 1 16 }  { rxEng_optionalFieldsMetaFifo_full_n fifo_status 0 1 }  { rxEng_optionalFieldsMetaFifo_write fifo_update 1 1 } } }
}
