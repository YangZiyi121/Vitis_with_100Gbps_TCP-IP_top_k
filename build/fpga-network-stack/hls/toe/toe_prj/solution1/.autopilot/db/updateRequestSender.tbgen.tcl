set moduleName updateRequestSender
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
set C_modelName {updateRequestSender}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_session_upd_req int 144 regular {axi_s 1 volatile  { m_axis_session_upd_req Data } }  }
	{ regSessionCount int 16 regular {pointer 1}  }
	{ sessionInsert_req int 160 regular {fifo 0 volatile } {global 0}  }
	{ sessionDelete_req int 160 regular {fifo 0 volatile } {global 0}  }
	{ slc_sessionIdFinFifo int 14 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_session_upd_req", "interface" : "axis", "bitwidth" : 144, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regSessionCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sessionInsert_req", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sessionDelete_req", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "slc_sessionIdFinFifo", "interface" : "fifo", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sessionInsert_req_dout sc_in sc_lv 160 signal 2 } 
	{ sessionInsert_req_empty_n sc_in sc_logic 1 signal 2 } 
	{ sessionInsert_req_read sc_out sc_logic 1 signal 2 } 
	{ sessionDelete_req_dout sc_in sc_lv 160 signal 3 } 
	{ sessionDelete_req_empty_n sc_in sc_logic 1 signal 3 } 
	{ sessionDelete_req_read sc_out sc_logic 1 signal 3 } 
	{ m_axis_session_upd_req_TREADY sc_in sc_logic 1 outacc 0 } 
	{ slc_sessionIdFinFifo_din sc_out sc_lv 14 signal 4 } 
	{ slc_sessionIdFinFifo_full_n sc_in sc_logic 1 signal 4 } 
	{ slc_sessionIdFinFifo_write sc_out sc_logic 1 signal 4 } 
	{ m_axis_session_upd_req_TDATA sc_out sc_lv 144 signal 0 } 
	{ m_axis_session_upd_req_TVALID sc_out sc_logic 1 outvld 0 } 
	{ regSessionCount sc_out sc_lv 16 signal 1 } 
	{ regSessionCount_ap_vld sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sessionInsert_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "sessionInsert_req", "role": "dout" }} , 
 	{ "name": "sessionInsert_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionInsert_req", "role": "empty_n" }} , 
 	{ "name": "sessionInsert_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionInsert_req", "role": "read" }} , 
 	{ "name": "sessionDelete_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "sessionDelete_req", "role": "dout" }} , 
 	{ "name": "sessionDelete_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionDelete_req", "role": "empty_n" }} , 
 	{ "name": "sessionDelete_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionDelete_req", "role": "read" }} , 
 	{ "name": "m_axis_session_upd_req_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_session_upd_req", "role": "TREADY" }} , 
 	{ "name": "slc_sessionIdFinFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "slc_sessionIdFinFifo", "role": "din" }} , 
 	{ "name": "slc_sessionIdFinFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slc_sessionIdFinFifo", "role": "full_n" }} , 
 	{ "name": "slc_sessionIdFinFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slc_sessionIdFinFifo", "role": "write" }} , 
 	{ "name": "m_axis_session_upd_req_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":144, "type": "signal", "bundle":{"name": "m_axis_session_upd_req", "role": "TDATA" }} , 
 	{ "name": "m_axis_session_upd_req_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_session_upd_req", "role": "TVALID" }} , 
 	{ "name": "regSessionCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regSessionCount", "role": "default" }} , 
 	{ "name": "regSessionCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regSessionCount", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "updateRequestSender",
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
			{"Name" : "m_axis_session_upd_req", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_session_upd_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSessionCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sessionInsert_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sessionInsert_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "usedSessionIDs_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sessionDelete_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sessionDelete_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slc_sessionIdFinFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "slc_sessionIdFinFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_session_upd_req_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	updateRequestSender {
		m_axis_session_upd_req {Type O LastRead -1 FirstWrite 2}
		regSessionCount {Type O LastRead -1 FirstWrite 3}
		sessionInsert_req {Type I LastRead 0 FirstWrite -1}
		usedSessionIDs_V {Type IO LastRead -1 FirstWrite -1}
		sessionDelete_req {Type I LastRead 1 FirstWrite -1}
		slc_sessionIdFinFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_session_upd_req { axis {  { m_axis_session_upd_req_TREADY out_acc 0 1 }  { m_axis_session_upd_req_TDATA out_data 1 144 }  { m_axis_session_upd_req_TVALID out_vld 1 1 } } }
	regSessionCount { ap_vld {  { regSessionCount out_data 1 16 }  { regSessionCount_ap_vld out_vld 1 1 } } }
	sessionInsert_req { ap_fifo {  { sessionInsert_req_dout fifo_data 0 160 }  { sessionInsert_req_empty_n fifo_status 0 1 }  { sessionInsert_req_read fifo_update 1 1 } } }
	sessionDelete_req { ap_fifo {  { sessionDelete_req_dout fifo_data 0 160 }  { sessionDelete_req_empty_n fifo_status 0 1 }  { sessionDelete_req_read fifo_update 1 1 } } }
	slc_sessionIdFinFifo { ap_fifo {  { slc_sessionIdFinFifo_din fifo_data 1 14 }  { slc_sessionIdFinFifo_full_n fifo_status 0 1 }  { slc_sessionIdFinFifo_write fifo_update 1 1 } } }
}
