set moduleName lookupReplyHandler
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
set C_modelName {lookupReplyHandler}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_session_lup_rsp int 120 regular {axi_s 0 volatile  { s_axis_session_lup_rsp Data } }  }
	{ m_axis_session_lup_req int 96 regular {axi_s 1 volatile  { m_axis_session_lup_req Data } }  }
	{ txApp2sLookup_req int 96 regular {fifo 0 volatile } {global 0}  }
	{ rxEng2sLookup_req int 97 regular {fifo 0 volatile } {global 0}  }
	{ slc_sessionIdFreeList int 14 regular {fifo 0 volatile } {global 0}  }
	{ sessionInsert_req int 160 regular {fifo 1 volatile } {global 1}  }
	{ sLookup2rxEng_rsp int 17 regular {fifo 1 volatile } {global 1}  }
	{ sLookup2txApp_rsp int 17 regular {fifo 1 volatile } {global 1}  }
	{ slc_sessionInsert_rsp int 160 regular {fifo 0 volatile } {global 0}  }
	{ reverseLupInsertFifo int 96 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_session_lup_rsp", "interface" : "axis", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_session_lup_req", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txApp2sLookup_req", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2sLookup_req", "interface" : "fifo", "bitwidth" : 97, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "slc_sessionIdFreeList", "interface" : "fifo", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sessionInsert_req", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2rxEng_rsp", "interface" : "fifo", "bitwidth" : 17, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2txApp_rsp", "interface" : "fifo", "bitwidth" : 17, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "slc_sessionInsert_rsp", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "reverseLupInsertFifo", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_session_lup_rsp_TVALID sc_in sc_logic 1 invld 0 } 
	{ slc_sessionIdFreeList_dout sc_in sc_lv 14 signal 4 } 
	{ slc_sessionIdFreeList_empty_n sc_in sc_logic 1 signal 4 } 
	{ slc_sessionIdFreeList_read sc_out sc_logic 1 signal 4 } 
	{ slc_sessionInsert_rsp_dout sc_in sc_lv 160 signal 8 } 
	{ slc_sessionInsert_rsp_empty_n sc_in sc_logic 1 signal 8 } 
	{ slc_sessionInsert_rsp_read sc_out sc_logic 1 signal 8 } 
	{ rxEng2sLookup_req_dout sc_in sc_lv 97 signal 3 } 
	{ rxEng2sLookup_req_empty_n sc_in sc_logic 1 signal 3 } 
	{ rxEng2sLookup_req_read sc_out sc_logic 1 signal 3 } 
	{ txApp2sLookup_req_dout sc_in sc_lv 96 signal 2 } 
	{ txApp2sLookup_req_empty_n sc_in sc_logic 1 signal 2 } 
	{ txApp2sLookup_req_read sc_out sc_logic 1 signal 2 } 
	{ sessionInsert_req_din sc_out sc_lv 160 signal 5 } 
	{ sessionInsert_req_full_n sc_in sc_logic 1 signal 5 } 
	{ sessionInsert_req_write sc_out sc_logic 1 signal 5 } 
	{ sLookup2txApp_rsp_din sc_out sc_lv 17 signal 7 } 
	{ sLookup2txApp_rsp_full_n sc_in sc_logic 1 signal 7 } 
	{ sLookup2txApp_rsp_write sc_out sc_logic 1 signal 7 } 
	{ sLookup2rxEng_rsp_din sc_out sc_lv 17 signal 6 } 
	{ sLookup2rxEng_rsp_full_n sc_in sc_logic 1 signal 6 } 
	{ sLookup2rxEng_rsp_write sc_out sc_logic 1 signal 6 } 
	{ reverseLupInsertFifo_din sc_out sc_lv 96 signal 9 } 
	{ reverseLupInsertFifo_full_n sc_in sc_logic 1 signal 9 } 
	{ reverseLupInsertFifo_write sc_out sc_logic 1 signal 9 } 
	{ m_axis_session_lup_req_TREADY sc_in sc_logic 1 outacc 1 } 
	{ s_axis_session_lup_rsp_TDATA sc_in sc_lv 120 signal 0 } 
	{ s_axis_session_lup_rsp_TREADY sc_out sc_logic 1 inacc 0 } 
	{ m_axis_session_lup_req_TDATA sc_out sc_lv 96 signal 1 } 
	{ m_axis_session_lup_req_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_session_lup_rsp_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_session_lup_rsp", "role": "TVALID" }} , 
 	{ "name": "slc_sessionIdFreeList_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "slc_sessionIdFreeList", "role": "dout" }} , 
 	{ "name": "slc_sessionIdFreeList_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slc_sessionIdFreeList", "role": "empty_n" }} , 
 	{ "name": "slc_sessionIdFreeList_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slc_sessionIdFreeList", "role": "read" }} , 
 	{ "name": "slc_sessionInsert_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "slc_sessionInsert_rsp", "role": "dout" }} , 
 	{ "name": "slc_sessionInsert_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slc_sessionInsert_rsp", "role": "empty_n" }} , 
 	{ "name": "slc_sessionInsert_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slc_sessionInsert_rsp", "role": "read" }} , 
 	{ "name": "rxEng2sLookup_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "rxEng2sLookup_req", "role": "dout" }} , 
 	{ "name": "rxEng2sLookup_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2sLookup_req", "role": "empty_n" }} , 
 	{ "name": "rxEng2sLookup_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2sLookup_req", "role": "read" }} , 
 	{ "name": "txApp2sLookup_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txApp2sLookup_req", "role": "dout" }} , 
 	{ "name": "txApp2sLookup_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2sLookup_req", "role": "empty_n" }} , 
 	{ "name": "txApp2sLookup_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2sLookup_req", "role": "read" }} , 
 	{ "name": "sessionInsert_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "sessionInsert_req", "role": "din" }} , 
 	{ "name": "sessionInsert_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionInsert_req", "role": "full_n" }} , 
 	{ "name": "sessionInsert_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionInsert_req", "role": "write" }} , 
 	{ "name": "sLookup2txApp_rsp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sLookup2txApp_rsp", "role": "din" }} , 
 	{ "name": "sLookup2txApp_rsp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txApp_rsp", "role": "full_n" }} , 
 	{ "name": "sLookup2txApp_rsp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txApp_rsp", "role": "write" }} , 
 	{ "name": "sLookup2rxEng_rsp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sLookup2rxEng_rsp", "role": "din" }} , 
 	{ "name": "sLookup2rxEng_rsp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2rxEng_rsp", "role": "full_n" }} , 
 	{ "name": "sLookup2rxEng_rsp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2rxEng_rsp", "role": "write" }} , 
 	{ "name": "reverseLupInsertFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "reverseLupInsertFifo", "role": "din" }} , 
 	{ "name": "reverseLupInsertFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reverseLupInsertFifo", "role": "full_n" }} , 
 	{ "name": "reverseLupInsertFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reverseLupInsertFifo", "role": "write" }} , 
 	{ "name": "m_axis_session_lup_req_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_session_lup_req", "role": "TREADY" }} , 
 	{ "name": "s_axis_session_lup_rsp_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "s_axis_session_lup_rsp", "role": "TDATA" }} , 
 	{ "name": "s_axis_session_lup_rsp_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_session_lup_rsp", "role": "TREADY" }} , 
 	{ "name": "m_axis_session_lup_req_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "m_axis_session_lup_req", "role": "TDATA" }} , 
 	{ "name": "m_axis_session_lup_req_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_session_lup_req", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "lookupReplyHandler",
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
			{"Name" : "s_axis_session_lup_rsp", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_session_lup_rsp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_session_lup_req", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_session_lup_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slc_fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txApp2sLookup_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2sLookup_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slc_queryCache", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "rxEng2sLookup_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2sLookup_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slc_sessionIdFreeList", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "slc_sessionIdFreeList_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sessionInsert_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sessionInsert_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slc_insertTuples", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "sLookup2rxEng_rsp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2rxEng_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sLookup2txApp_rsp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2txApp_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slc_sessionInsert_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "slc_sessionInsert_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reverseLupInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "reverseLupInsertFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.slc_insertTuples_fifo_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.slc_queryCache_fifo_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_session_lup_rsp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_session_lup_req_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lookupReplyHandler {
		s_axis_session_lup_rsp {Type I LastRead 0 FirstWrite -1}
		m_axis_session_lup_req {Type O LastRead -1 FirstWrite 1}
		slc_fsmState {Type IO LastRead -1 FirstWrite -1}
		txApp2sLookup_req {Type I LastRead 0 FirstWrite -1}
		slc_queryCache {Type IO LastRead -1 FirstWrite -1}
		rxEng2sLookup_req {Type I LastRead 0 FirstWrite -1}
		slc_sessionIdFreeList {Type I LastRead 0 FirstWrite -1}
		sessionInsert_req {Type O LastRead -1 FirstWrite 1}
		slc_insertTuples {Type IO LastRead -1 FirstWrite -1}
		sLookup2rxEng_rsp {Type O LastRead -1 FirstWrite 1}
		sLookup2txApp_rsp {Type O LastRead -1 FirstWrite 1}
		slc_sessionInsert_rsp {Type I LastRead 0 FirstWrite -1}
		reverseLupInsertFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_session_lup_rsp { axis {  { s_axis_session_lup_rsp_TVALID in_vld 0 1 }  { s_axis_session_lup_rsp_TDATA in_data 0 120 }  { s_axis_session_lup_rsp_TREADY in_acc 1 1 } } }
	m_axis_session_lup_req { axis {  { m_axis_session_lup_req_TREADY out_acc 0 1 }  { m_axis_session_lup_req_TDATA out_data 1 96 }  { m_axis_session_lup_req_TVALID out_vld 1 1 } } }
	txApp2sLookup_req { ap_fifo {  { txApp2sLookup_req_dout fifo_data 0 96 }  { txApp2sLookup_req_empty_n fifo_status 0 1 }  { txApp2sLookup_req_read fifo_update 1 1 } } }
	rxEng2sLookup_req { ap_fifo {  { rxEng2sLookup_req_dout fifo_data 0 97 }  { rxEng2sLookup_req_empty_n fifo_status 0 1 }  { rxEng2sLookup_req_read fifo_update 1 1 } } }
	slc_sessionIdFreeList { ap_fifo {  { slc_sessionIdFreeList_dout fifo_data 0 14 }  { slc_sessionIdFreeList_empty_n fifo_status 0 1 }  { slc_sessionIdFreeList_read fifo_update 1 1 } } }
	sessionInsert_req { ap_fifo {  { sessionInsert_req_din fifo_data 1 160 }  { sessionInsert_req_full_n fifo_status 0 1 }  { sessionInsert_req_write fifo_update 1 1 } } }
	sLookup2rxEng_rsp { ap_fifo {  { sLookup2rxEng_rsp_din fifo_data 1 17 }  { sLookup2rxEng_rsp_full_n fifo_status 0 1 }  { sLookup2rxEng_rsp_write fifo_update 1 1 } } }
	sLookup2txApp_rsp { ap_fifo {  { sLookup2txApp_rsp_din fifo_data 1 17 }  { sLookup2txApp_rsp_full_n fifo_status 0 1 }  { sLookup2txApp_rsp_write fifo_update 1 1 } } }
	slc_sessionInsert_rsp { ap_fifo {  { slc_sessionInsert_rsp_dout fifo_data 0 160 }  { slc_sessionInsert_rsp_empty_n fifo_status 0 1 }  { slc_sessionInsert_rsp_read fifo_update 1 1 } } }
	reverseLupInsertFifo { ap_fifo {  { reverseLupInsertFifo_din fifo_data 1 96 }  { reverseLupInsertFifo_full_n fifo_status 0 1 }  { reverseLupInsertFifo_write fifo_update 1 1 } } }
}
