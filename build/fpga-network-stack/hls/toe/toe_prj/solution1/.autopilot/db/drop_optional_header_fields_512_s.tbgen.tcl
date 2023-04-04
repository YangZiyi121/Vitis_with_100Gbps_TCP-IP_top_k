set moduleName drop_optional_header_fields_512_s
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
set C_modelName {drop_optional_header_fields<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng_optionalFieldsMetaFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer3b int 577 regular {fifo 0 volatile } {global 0}  }
	{ rxEng_dataBuffer3 int 577 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_dataOffsetFifo int 4 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_optionalFieldsFifo int 320 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng_optionalFieldsMetaFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer3b", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataBuffer3", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_dataOffsetFifo", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_optionalFieldsFifo", "interface" : "fifo", "bitwidth" : 320, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ rxEng_dataBuffer3b_dout sc_in sc_lv 577 signal 1 } 
	{ rxEng_dataBuffer3b_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxEng_dataBuffer3b_read sc_out sc_logic 1 signal 1 } 
	{ rxEng_optionalFieldsMetaFifo_dout sc_in sc_lv 16 signal 0 } 
	{ rxEng_optionalFieldsMetaFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng_optionalFieldsMetaFifo_read sc_out sc_logic 1 signal 0 } 
	{ rxEng_optionalFieldsFifo_din sc_out sc_lv 320 signal 4 } 
	{ rxEng_optionalFieldsFifo_full_n sc_in sc_logic 1 signal 4 } 
	{ rxEng_optionalFieldsFifo_write sc_out sc_logic 1 signal 4 } 
	{ rxEng_dataBuffer3_din sc_out sc_lv 577 signal 2 } 
	{ rxEng_dataBuffer3_full_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_dataBuffer3_write sc_out sc_logic 1 signal 2 } 
	{ rxEng_dataOffsetFifo_din sc_out sc_lv 4 signal 3 } 
	{ rxEng_dataOffsetFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ rxEng_dataOffsetFifo_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng_dataBuffer3b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3b", "role": "dout" }} , 
 	{ "name": "rxEng_dataBuffer3b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3b", "role": "empty_n" }} , 
 	{ "name": "rxEng_dataBuffer3b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3b", "role": "read" }} , 
 	{ "name": "rxEng_optionalFieldsMetaFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsMetaFifo", "role": "dout" }} , 
 	{ "name": "rxEng_optionalFieldsMetaFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsMetaFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_optionalFieldsMetaFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsMetaFifo", "role": "read" }} , 
 	{ "name": "rxEng_optionalFieldsFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":320, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsFifo", "role": "din" }} , 
 	{ "name": "rxEng_optionalFieldsFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_optionalFieldsFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_optionalFieldsFifo", "role": "write" }} , 
 	{ "name": "rxEng_dataBuffer3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3", "role": "din" }} , 
 	{ "name": "rxEng_dataBuffer3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3", "role": "full_n" }} , 
 	{ "name": "rxEng_dataBuffer3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataBuffer3", "role": "write" }} , 
 	{ "name": "rxEng_dataOffsetFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rxEng_dataOffsetFifo", "role": "din" }} , 
 	{ "name": "rxEng_dataOffsetFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataOffsetFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_dataOffsetFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_dataOffsetFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "drop_optional_header_fields_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataOffset_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "optionalHeader_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "optionalHeader_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "optionalHeader_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "parseHeader", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headerWritten", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_optionalFieldsMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_optionalFieldsMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_dataBuffer3b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer3b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_dataBuffer3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataBuffer3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_dataOffsetFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_dataOffsetFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_optionalFieldsFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_optionalFieldsFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	drop_optional_header_fields_512_s {
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dataOffset_V {Type IO LastRead -1 FirstWrite -1}
		optionalHeader_header_V {Type IO LastRead -1 FirstWrite -1}
		optionalHeader_ready {Type IO LastRead -1 FirstWrite -1}
		optionalHeader_idx {Type IO LastRead -1 FirstWrite -1}
		parseHeader {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_3 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_6 {Type IO LastRead -1 FirstWrite -1}
		headerWritten {Type IO LastRead -1 FirstWrite -1}
		rxEng_optionalFieldsMetaFifo {Type I LastRead 0 FirstWrite -1}
		rxEng_dataBuffer3b {Type I LastRead 0 FirstWrite -1}
		rxEng_dataBuffer3 {Type O LastRead -1 FirstWrite 2}
		rxEng_dataOffsetFifo {Type O LastRead -1 FirstWrite 2}
		rxEng_optionalFieldsFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng_optionalFieldsMetaFifo { ap_fifo {  { rxEng_optionalFieldsMetaFifo_dout fifo_data 0 16 }  { rxEng_optionalFieldsMetaFifo_empty_n fifo_status 0 1 }  { rxEng_optionalFieldsMetaFifo_read fifo_update 1 1 } } }
	rxEng_dataBuffer3b { ap_fifo {  { rxEng_dataBuffer3b_dout fifo_data 0 577 }  { rxEng_dataBuffer3b_empty_n fifo_status 0 1 }  { rxEng_dataBuffer3b_read fifo_update 1 1 } } }
	rxEng_dataBuffer3 { ap_fifo {  { rxEng_dataBuffer3_din fifo_data 1 577 }  { rxEng_dataBuffer3_full_n fifo_status 0 1 }  { rxEng_dataBuffer3_write fifo_update 1 1 } } }
	rxEng_dataOffsetFifo { ap_fifo {  { rxEng_dataOffsetFifo_din fifo_data 1 4 }  { rxEng_dataOffsetFifo_full_n fifo_status 0 1 }  { rxEng_dataOffsetFifo_write fifo_update 1 1 } } }
	rxEng_optionalFieldsFifo { ap_fifo {  { rxEng_optionalFieldsFifo_din fifo_data 1 320 }  { rxEng_optionalFieldsFifo_full_n fifo_status 0 1 }  { rxEng_optionalFieldsFifo_write fifo_update 1 1 } } }
}
