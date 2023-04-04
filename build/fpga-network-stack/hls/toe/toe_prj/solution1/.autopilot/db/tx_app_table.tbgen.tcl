set moduleName tx_app_table
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
set C_modelName {tx_app_table}
set C_modelType { void 0 }
set C_modelArgList {
	{ txSar2txApp_ack_push int 53 regular {fifo 0 volatile } {global 0}  }
	{ txApp2txSar_upd_req int 35 regular {fifo 0 volatile } {global 0}  }
	{ txSar2txApp_upd_rsp int 70 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txSar2txApp_ack_push", "interface" : "fifo", "bitwidth" : 53, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txApp2txSar_upd_req", "interface" : "fifo", "bitwidth" : 35, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txSar2txApp_upd_rsp", "interface" : "fifo", "bitwidth" : 70, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ txSar2txApp_ack_push_dout sc_in sc_lv 53 signal 0 } 
	{ txSar2txApp_ack_push_empty_n sc_in sc_logic 1 signal 0 } 
	{ txSar2txApp_ack_push_read sc_out sc_logic 1 signal 0 } 
	{ txApp2txSar_upd_req_dout sc_in sc_lv 35 signal 1 } 
	{ txApp2txSar_upd_req_empty_n sc_in sc_logic 1 signal 1 } 
	{ txApp2txSar_upd_req_read sc_out sc_logic 1 signal 1 } 
	{ txSar2txApp_upd_rsp_din sc_out sc_lv 70 signal 2 } 
	{ txSar2txApp_upd_rsp_full_n sc_in sc_logic 1 signal 2 } 
	{ txSar2txApp_upd_rsp_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txSar2txApp_ack_push_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":53, "type": "signal", "bundle":{"name": "txSar2txApp_ack_push", "role": "dout" }} , 
 	{ "name": "txSar2txApp_ack_push_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2txApp_ack_push", "role": "empty_n" }} , 
 	{ "name": "txSar2txApp_ack_push_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2txApp_ack_push", "role": "read" }} , 
 	{ "name": "txApp2txSar_upd_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "txApp2txSar_upd_req", "role": "dout" }} , 
 	{ "name": "txApp2txSar_upd_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2txSar_upd_req", "role": "empty_n" }} , 
 	{ "name": "txApp2txSar_upd_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2txSar_upd_req", "role": "read" }} , 
 	{ "name": "txSar2txApp_upd_rsp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":70, "type": "signal", "bundle":{"name": "txSar2txApp_upd_rsp", "role": "din" }} , 
 	{ "name": "txSar2txApp_upd_rsp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2txApp_upd_rsp", "role": "full_n" }} , 
 	{ "name": "txSar2txApp_upd_rsp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2txApp_upd_rsp", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "tx_app_table",
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
			{"Name" : "txSar2txApp_ack_push", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txSar2txApp_ack_push_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "app_table_ackd_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "app_table_mempt_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "app_table_min_window_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "txApp2txSar_upd_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2txSar_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txSar2txApp_upd_rsp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txSar2txApp_upd_rsp_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.app_table_ackd_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.app_table_mempt_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.app_table_min_window_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tx_app_table {
		txSar2txApp_ack_push {Type I LastRead 0 FirstWrite -1}
		app_table_ackd_V {Type IO LastRead -1 FirstWrite -1}
		app_table_mempt_V {Type IO LastRead -1 FirstWrite -1}
		app_table_min_window_V {Type IO LastRead -1 FirstWrite -1}
		txApp2txSar_upd_req {Type I LastRead 1 FirstWrite -1}
		txSar2txApp_upd_rsp {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txSar2txApp_ack_push { ap_fifo {  { txSar2txApp_ack_push_dout fifo_data 0 53 }  { txSar2txApp_ack_push_empty_n fifo_status 0 1 }  { txSar2txApp_ack_push_read fifo_update 1 1 } } }
	txApp2txSar_upd_req { ap_fifo {  { txApp2txSar_upd_req_dout fifo_data 0 35 }  { txApp2txSar_upd_req_empty_n fifo_status 0 1 }  { txApp2txSar_upd_req_read fifo_update 1 1 } } }
	txSar2txApp_upd_rsp { ap_fifo {  { txSar2txApp_upd_rsp_din fifo_data 1 70 }  { txSar2txApp_upd_rsp_full_n fifo_status 0 1 }  { txSar2txApp_upd_rsp_write fifo_update 1 1 } } }
}
