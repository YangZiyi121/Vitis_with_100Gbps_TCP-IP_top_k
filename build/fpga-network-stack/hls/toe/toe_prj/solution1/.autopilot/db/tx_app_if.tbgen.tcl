set moduleName tx_app_if
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
set C_modelName {tx_app_if}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_open_conn_req int 48 regular {axi_s 0 volatile  { s_axis_open_conn_req Data } }  }
	{ s_axis_close_conn_req int 16 regular {axi_s 0 volatile  { s_axis_close_conn_req Data } }  }
	{ m_axis_open_conn_rsp int 72 regular {axi_s 1 volatile  { m_axis_open_conn_rsp Data } }  }
	{ myIpAddress int 32 regular {fifo 0}  }
	{ portTable2txApp_port_rsp int 16 regular {fifo 0 volatile } {global 0}  }
	{ txApp2sLookup_req int 96 regular {fifo 1 volatile } {global 1}  }
	{ sLookup2txApp_rsp int 17 regular {fifo 0 volatile } {global 0}  }
	{ txApp2eventEng_mergeEvent int 85 regular {fifo 1 volatile } {global 1}  }
	{ txApp2stateTable_upd_req int 49 regular {fifo 1 volatile } {global 1}  }
	{ conEstablishedFifo int 72 regular {fifo 0 volatile } {global 0}  }
	{ timer2txApp_notification int 72 regular {fifo 0 volatile } {global 0}  }
	{ stateTable2txApp_upd_rsp int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_open_conn_req", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_close_conn_req", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_open_conn_rsp", "interface" : "axis", "bitwidth" : 72, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "portTable2txApp_port_rsp", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txApp2sLookup_req", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2txApp_rsp", "interface" : "fifo", "bitwidth" : 17, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txApp2eventEng_mergeEvent", "interface" : "fifo", "bitwidth" : 85, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txApp2stateTable_upd_req", "interface" : "fifo", "bitwidth" : 49, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conEstablishedFifo", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "timer2txApp_notification", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "stateTable2txApp_upd_rsp", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_open_conn_req_TVALID sc_in sc_logic 1 invld 0 } 
	{ portTable2txApp_port_rsp_dout sc_in sc_lv 16 signal 4 } 
	{ portTable2txApp_port_rsp_empty_n sc_in sc_logic 1 signal 4 } 
	{ portTable2txApp_port_rsp_read sc_out sc_logic 1 signal 4 } 
	{ s_axis_close_conn_req_TVALID sc_in sc_logic 1 invld 1 } 
	{ timer2txApp_notification_dout sc_in sc_lv 72 signal 10 } 
	{ timer2txApp_notification_empty_n sc_in sc_logic 1 signal 10 } 
	{ timer2txApp_notification_read sc_out sc_logic 1 signal 10 } 
	{ conEstablishedFifo_dout sc_in sc_lv 72 signal 9 } 
	{ conEstablishedFifo_empty_n sc_in sc_logic 1 signal 9 } 
	{ conEstablishedFifo_read sc_out sc_logic 1 signal 9 } 
	{ sLookup2txApp_rsp_dout sc_in sc_lv 17 signal 6 } 
	{ sLookup2txApp_rsp_empty_n sc_in sc_logic 1 signal 6 } 
	{ sLookup2txApp_rsp_read sc_out sc_logic 1 signal 6 } 
	{ stateTable2txApp_upd_rsp_dout sc_in sc_lv 32 signal 11 } 
	{ stateTable2txApp_upd_rsp_empty_n sc_in sc_logic 1 signal 11 } 
	{ stateTable2txApp_upd_rsp_read sc_out sc_logic 1 signal 11 } 
	{ myIpAddress_dout sc_in sc_lv 32 signal 3 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 3 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 3 } 
	{ txApp2sLookup_req_din sc_out sc_lv 96 signal 5 } 
	{ txApp2sLookup_req_full_n sc_in sc_logic 1 signal 5 } 
	{ txApp2sLookup_req_write sc_out sc_logic 1 signal 5 } 
	{ m_axis_open_conn_rsp_TREADY sc_in sc_logic 1 outacc 2 } 
	{ txApp2stateTable_upd_req_din sc_out sc_lv 49 signal 8 } 
	{ txApp2stateTable_upd_req_full_n sc_in sc_logic 1 signal 8 } 
	{ txApp2stateTable_upd_req_write sc_out sc_logic 1 signal 8 } 
	{ txApp2eventEng_mergeEvent_din sc_out sc_lv 85 signal 7 } 
	{ txApp2eventEng_mergeEvent_full_n sc_in sc_logic 1 signal 7 } 
	{ txApp2eventEng_mergeEvent_write sc_out sc_logic 1 signal 7 } 
	{ s_axis_open_conn_req_TDATA sc_in sc_lv 48 signal 0 } 
	{ s_axis_open_conn_req_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axis_close_conn_req_TDATA sc_in sc_lv 16 signal 1 } 
	{ s_axis_close_conn_req_TREADY sc_out sc_logic 1 inacc 1 } 
	{ m_axis_open_conn_rsp_TDATA sc_out sc_lv 72 signal 2 } 
	{ m_axis_open_conn_rsp_TVALID sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_open_conn_req_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_open_conn_req", "role": "TVALID" }} , 
 	{ "name": "portTable2txApp_port_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "portTable2txApp_port_rsp", "role": "dout" }} , 
 	{ "name": "portTable2txApp_port_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2txApp_port_rsp", "role": "empty_n" }} , 
 	{ "name": "portTable2txApp_port_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2txApp_port_rsp", "role": "read" }} , 
 	{ "name": "s_axis_close_conn_req_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_close_conn_req", "role": "TVALID" }} , 
 	{ "name": "timer2txApp_notification_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "timer2txApp_notification", "role": "dout" }} , 
 	{ "name": "timer2txApp_notification_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2txApp_notification", "role": "empty_n" }} , 
 	{ "name": "timer2txApp_notification_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2txApp_notification", "role": "read" }} , 
 	{ "name": "conEstablishedFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "conEstablishedFifo", "role": "dout" }} , 
 	{ "name": "conEstablishedFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conEstablishedFifo", "role": "empty_n" }} , 
 	{ "name": "conEstablishedFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conEstablishedFifo", "role": "read" }} , 
 	{ "name": "sLookup2txApp_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sLookup2txApp_rsp", "role": "dout" }} , 
 	{ "name": "sLookup2txApp_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txApp_rsp", "role": "empty_n" }} , 
 	{ "name": "sLookup2txApp_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txApp_rsp", "role": "read" }} , 
 	{ "name": "stateTable2txApp_upd_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateTable2txApp_upd_rsp", "role": "dout" }} , 
 	{ "name": "stateTable2txApp_upd_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2txApp_upd_rsp", "role": "empty_n" }} , 
 	{ "name": "stateTable2txApp_upd_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2txApp_upd_rsp", "role": "read" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "txApp2sLookup_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txApp2sLookup_req", "role": "din" }} , 
 	{ "name": "txApp2sLookup_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2sLookup_req", "role": "full_n" }} , 
 	{ "name": "txApp2sLookup_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2sLookup_req", "role": "write" }} , 
 	{ "name": "m_axis_open_conn_rsp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_open_conn_rsp", "role": "TREADY" }} , 
 	{ "name": "txApp2stateTable_upd_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "txApp2stateTable_upd_req", "role": "din" }} , 
 	{ "name": "txApp2stateTable_upd_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2stateTable_upd_req", "role": "full_n" }} , 
 	{ "name": "txApp2stateTable_upd_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2stateTable_upd_req", "role": "write" }} , 
 	{ "name": "txApp2eventEng_mergeEvent_din", "direction": "out", "datatype": "sc_lv", "bitwidth":85, "type": "signal", "bundle":{"name": "txApp2eventEng_mergeEvent", "role": "din" }} , 
 	{ "name": "txApp2eventEng_mergeEvent_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2eventEng_mergeEvent", "role": "full_n" }} , 
 	{ "name": "txApp2eventEng_mergeEvent_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2eventEng_mergeEvent", "role": "write" }} , 
 	{ "name": "s_axis_open_conn_req_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "s_axis_open_conn_req", "role": "TDATA" }} , 
 	{ "name": "s_axis_open_conn_req_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_open_conn_req", "role": "TREADY" }} , 
 	{ "name": "s_axis_close_conn_req_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_close_conn_req", "role": "TDATA" }} , 
 	{ "name": "s_axis_close_conn_req_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_close_conn_req", "role": "TREADY" }} , 
 	{ "name": "m_axis_open_conn_rsp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "m_axis_open_conn_rsp", "role": "TDATA" }} , 
 	{ "name": "m_axis_open_conn_rsp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_open_conn_rsp", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "tx_app_if",
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
			{"Name" : "s_axis_open_conn_req", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_open_conn_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_close_conn_req", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_close_conn_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_open_conn_rsp", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_open_conn_rsp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "14", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "portTable2txApp_port_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "portTable2txApp_port_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txApp2sLookup_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2sLookup_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tai_fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sLookup2txApp_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2txApp_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txApp2eventEng_mergeEvent", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2eventEng_mergeEvent_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txApp2stateTable_upd_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2stateTable_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conEstablishedFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conEstablishedFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timer2txApp_notification", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timer2txApp_notification_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tai_closeSessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "stateTable2txApp_upd_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stateTable2txApp_upd_rsp_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_open_conn_req_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_close_conn_req_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_open_conn_rsp_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tx_app_if {
		s_axis_open_conn_req {Type I LastRead 0 FirstWrite -1}
		s_axis_close_conn_req {Type I LastRead 0 FirstWrite -1}
		m_axis_open_conn_rsp {Type O LastRead -1 FirstWrite 1}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		portTable2txApp_port_rsp {Type I LastRead 0 FirstWrite -1}
		txApp2sLookup_req {Type O LastRead -1 FirstWrite 1}
		tai_fsmState {Type IO LastRead -1 FirstWrite -1}
		sLookup2txApp_rsp {Type I LastRead 0 FirstWrite -1}
		txApp2eventEng_mergeEvent {Type O LastRead -1 FirstWrite 2}
		txApp2stateTable_upd_req {Type O LastRead -1 FirstWrite 2}
		conEstablishedFifo {Type I LastRead 0 FirstWrite -1}
		timer2txApp_notification {Type I LastRead 0 FirstWrite -1}
		tai_closeSessionID_V {Type IO LastRead -1 FirstWrite -1}
		stateTable2txApp_upd_rsp {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_open_conn_req { axis {  { s_axis_open_conn_req_TVALID in_vld 0 1 }  { s_axis_open_conn_req_TDATA in_data 0 48 }  { s_axis_open_conn_req_TREADY in_acc 1 1 } } }
	s_axis_close_conn_req { axis {  { s_axis_close_conn_req_TVALID in_vld 0 1 }  { s_axis_close_conn_req_TDATA in_data 0 16 }  { s_axis_close_conn_req_TREADY in_acc 1 1 } } }
	m_axis_open_conn_rsp { axis {  { m_axis_open_conn_rsp_TREADY out_acc 0 1 }  { m_axis_open_conn_rsp_TDATA out_data 1 72 }  { m_axis_open_conn_rsp_TVALID out_vld 1 1 } } }
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	portTable2txApp_port_rsp { ap_fifo {  { portTable2txApp_port_rsp_dout fifo_data 0 16 }  { portTable2txApp_port_rsp_empty_n fifo_status 0 1 }  { portTable2txApp_port_rsp_read fifo_update 1 1 } } }
	txApp2sLookup_req { ap_fifo {  { txApp2sLookup_req_din fifo_data 1 96 }  { txApp2sLookup_req_full_n fifo_status 0 1 }  { txApp2sLookup_req_write fifo_update 1 1 } } }
	sLookup2txApp_rsp { ap_fifo {  { sLookup2txApp_rsp_dout fifo_data 0 17 }  { sLookup2txApp_rsp_empty_n fifo_status 0 1 }  { sLookup2txApp_rsp_read fifo_update 1 1 } } }
	txApp2eventEng_mergeEvent { ap_fifo {  { txApp2eventEng_mergeEvent_din fifo_data 1 85 }  { txApp2eventEng_mergeEvent_full_n fifo_status 0 1 }  { txApp2eventEng_mergeEvent_write fifo_update 1 1 } } }
	txApp2stateTable_upd_req { ap_fifo {  { txApp2stateTable_upd_req_din fifo_data 1 49 }  { txApp2stateTable_upd_req_full_n fifo_status 0 1 }  { txApp2stateTable_upd_req_write fifo_update 1 1 } } }
	conEstablishedFifo { ap_fifo {  { conEstablishedFifo_dout fifo_data 0 72 }  { conEstablishedFifo_empty_n fifo_status 0 1 }  { conEstablishedFifo_read fifo_update 1 1 } } }
	timer2txApp_notification { ap_fifo {  { timer2txApp_notification_dout fifo_data 0 72 }  { timer2txApp_notification_empty_n fifo_status 0 1 }  { timer2txApp_notification_read fifo_update 1 1 } } }
	stateTable2txApp_upd_rsp { ap_fifo {  { stateTable2txApp_upd_rsp_dout fifo_data 0 32 }  { stateTable2txApp_upd_rsp_empty_n fifo_status 0 1 }  { stateTable2txApp_upd_rsp_read fifo_update 1 1 } } }
}
