set moduleName rxTcpFSM
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
set C_modelName {rxTcpFSM}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxbuffer_data_count int 16 regular {fifo 0}  }
	{ rxbuffer_max_data_count int 16 regular {fifo 0}  }
	{ rxEng_fsmMetaDataFifo int 188 regular {fifo 0 volatile } {global 0}  }
	{ rxEng2stateTable_upd_req int 49 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2rxSar_upd_req int 119 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2txSar_upd_req int 91 regular {fifo 1 volatile } {global 1}  }
	{ stateTable2rxEng_upd_rsp int 32 regular {fifo 0 volatile } {global 0}  }
	{ rxSar2rxEng_upd_rsp int 119 regular {fifo 0 volatile } {global 0}  }
	{ txSar2rxEng_upd_rsp int 103 regular {fifo 0 volatile } {global 0}  }
	{ rxEng2timer_clearRetransmitTimer int 17 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2timer_clearProbeTimer int 16 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2rxApp_notification int 81 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_fsmDropFifo int 1 regular {fifo 1 volatile } {global 1}  }
	{ rxEng_fsmEventFifo int 85 regular {fifo 1 volatile } {global 1}  }
	{ rxEng2timer_setCloseTimer int 16 regular {fifo 1 volatile } {global 1}  }
	{ conEstablishedFifo int 72 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxbuffer_data_count", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rxbuffer_max_data_count", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rxEng_fsmMetaDataFifo", "interface" : "fifo", "bitwidth" : 188, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2stateTable_upd_req", "interface" : "fifo", "bitwidth" : 49, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2rxSar_upd_req", "interface" : "fifo", "bitwidth" : 119, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2txSar_upd_req", "interface" : "fifo", "bitwidth" : 91, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "stateTable2rxEng_upd_rsp", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxSar2rxEng_upd_rsp", "interface" : "fifo", "bitwidth" : 119, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txSar2rxEng_upd_rsp", "interface" : "fifo", "bitwidth" : 103, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2timer_clearRetransmitTimer", "interface" : "fifo", "bitwidth" : 17, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2timer_clearProbeTimer", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2rxApp_notification", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_fsmDropFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng_fsmEventFifo", "interface" : "fifo", "bitwidth" : 85, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2timer_setCloseTimer", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conEstablishedFifo", "interface" : "fifo", "bitwidth" : 72, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rxbuffer_max_data_count_dout sc_in sc_lv 16 signal 1 } 
	{ rxbuffer_max_data_count_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxbuffer_max_data_count_read sc_out sc_logic 1 signal 1 } 
	{ rxbuffer_data_count_dout sc_in sc_lv 16 signal 0 } 
	{ rxbuffer_data_count_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxbuffer_data_count_read sc_out sc_logic 1 signal 0 } 
	{ rxEng_fsmMetaDataFifo_dout sc_in sc_lv 188 signal 2 } 
	{ rxEng_fsmMetaDataFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ rxEng_fsmMetaDataFifo_read sc_out sc_logic 1 signal 2 } 
	{ stateTable2rxEng_upd_rsp_dout sc_in sc_lv 32 signal 6 } 
	{ stateTable2rxEng_upd_rsp_empty_n sc_in sc_logic 1 signal 6 } 
	{ stateTable2rxEng_upd_rsp_read sc_out sc_logic 1 signal 6 } 
	{ rxSar2rxEng_upd_rsp_dout sc_in sc_lv 119 signal 7 } 
	{ rxSar2rxEng_upd_rsp_empty_n sc_in sc_logic 1 signal 7 } 
	{ rxSar2rxEng_upd_rsp_read sc_out sc_logic 1 signal 7 } 
	{ txSar2rxEng_upd_rsp_dout sc_in sc_lv 103 signal 8 } 
	{ txSar2rxEng_upd_rsp_empty_n sc_in sc_logic 1 signal 8 } 
	{ txSar2rxEng_upd_rsp_read sc_out sc_logic 1 signal 8 } 
	{ rxEng2stateTable_upd_req_din sc_out sc_lv 49 signal 3 } 
	{ rxEng2stateTable_upd_req_full_n sc_in sc_logic 1 signal 3 } 
	{ rxEng2stateTable_upd_req_write sc_out sc_logic 1 signal 3 } 
	{ rxEng2rxSar_upd_req_din sc_out sc_lv 119 signal 4 } 
	{ rxEng2rxSar_upd_req_full_n sc_in sc_logic 1 signal 4 } 
	{ rxEng2rxSar_upd_req_write sc_out sc_logic 1 signal 4 } 
	{ rxEng2txSar_upd_req_din sc_out sc_lv 91 signal 5 } 
	{ rxEng2txSar_upd_req_full_n sc_in sc_logic 1 signal 5 } 
	{ rxEng2txSar_upd_req_write sc_out sc_logic 1 signal 5 } 
	{ rxEng2timer_clearRetransmitTimer_din sc_out sc_lv 17 signal 9 } 
	{ rxEng2timer_clearRetransmitTimer_full_n sc_in sc_logic 1 signal 9 } 
	{ rxEng2timer_clearRetransmitTimer_write sc_out sc_logic 1 signal 9 } 
	{ rxEng_fsmEventFifo_din sc_out sc_lv 85 signal 13 } 
	{ rxEng_fsmEventFifo_full_n sc_in sc_logic 1 signal 13 } 
	{ rxEng_fsmEventFifo_write sc_out sc_logic 1 signal 13 } 
	{ rxEng_fsmDropFifo_din sc_out sc_lv 1 signal 12 } 
	{ rxEng_fsmDropFifo_full_n sc_in sc_logic 1 signal 12 } 
	{ rxEng_fsmDropFifo_write sc_out sc_logic 1 signal 12 } 
	{ rxEng2timer_clearProbeTimer_din sc_out sc_lv 16 signal 10 } 
	{ rxEng2timer_clearProbeTimer_full_n sc_in sc_logic 1 signal 10 } 
	{ rxEng2timer_clearProbeTimer_write sc_out sc_logic 1 signal 10 } 
	{ rxEng2rxApp_notification_din sc_out sc_lv 81 signal 11 } 
	{ rxEng2rxApp_notification_full_n sc_in sc_logic 1 signal 11 } 
	{ rxEng2rxApp_notification_write sc_out sc_logic 1 signal 11 } 
	{ rxEng2timer_setCloseTimer_din sc_out sc_lv 16 signal 14 } 
	{ rxEng2timer_setCloseTimer_full_n sc_in sc_logic 1 signal 14 } 
	{ rxEng2timer_setCloseTimer_write sc_out sc_logic 1 signal 14 } 
	{ conEstablishedFifo_din sc_out sc_lv 72 signal 15 } 
	{ conEstablishedFifo_full_n sc_in sc_logic 1 signal 15 } 
	{ conEstablishedFifo_write sc_out sc_logic 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxbuffer_max_data_count_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxbuffer_max_data_count", "role": "dout" }} , 
 	{ "name": "rxbuffer_max_data_count_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxbuffer_max_data_count", "role": "empty_n" }} , 
 	{ "name": "rxbuffer_max_data_count_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxbuffer_max_data_count", "role": "read" }} , 
 	{ "name": "rxbuffer_data_count_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxbuffer_data_count", "role": "dout" }} , 
 	{ "name": "rxbuffer_data_count_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxbuffer_data_count", "role": "empty_n" }} , 
 	{ "name": "rxbuffer_data_count_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxbuffer_data_count", "role": "read" }} , 
 	{ "name": "rxEng_fsmMetaDataFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":188, "type": "signal", "bundle":{"name": "rxEng_fsmMetaDataFifo", "role": "dout" }} , 
 	{ "name": "rxEng_fsmMetaDataFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmMetaDataFifo", "role": "empty_n" }} , 
 	{ "name": "rxEng_fsmMetaDataFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmMetaDataFifo", "role": "read" }} , 
 	{ "name": "stateTable2rxEng_upd_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateTable2rxEng_upd_rsp", "role": "dout" }} , 
 	{ "name": "stateTable2rxEng_upd_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2rxEng_upd_rsp", "role": "empty_n" }} , 
 	{ "name": "stateTable2rxEng_upd_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2rxEng_upd_rsp", "role": "read" }} , 
 	{ "name": "rxSar2rxEng_upd_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "rxSar2rxEng_upd_rsp", "role": "dout" }} , 
 	{ "name": "rxSar2rxEng_upd_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxSar2rxEng_upd_rsp", "role": "empty_n" }} , 
 	{ "name": "rxSar2rxEng_upd_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxSar2rxEng_upd_rsp", "role": "read" }} , 
 	{ "name": "txSar2rxEng_upd_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":103, "type": "signal", "bundle":{"name": "txSar2rxEng_upd_rsp", "role": "dout" }} , 
 	{ "name": "txSar2rxEng_upd_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2rxEng_upd_rsp", "role": "empty_n" }} , 
 	{ "name": "txSar2rxEng_upd_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2rxEng_upd_rsp", "role": "read" }} , 
 	{ "name": "rxEng2stateTable_upd_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "rxEng2stateTable_upd_req", "role": "din" }} , 
 	{ "name": "rxEng2stateTable_upd_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2stateTable_upd_req", "role": "full_n" }} , 
 	{ "name": "rxEng2stateTable_upd_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2stateTable_upd_req", "role": "write" }} , 
 	{ "name": "rxEng2rxSar_upd_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "rxEng2rxSar_upd_req", "role": "din" }} , 
 	{ "name": "rxEng2rxSar_upd_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2rxSar_upd_req", "role": "full_n" }} , 
 	{ "name": "rxEng2rxSar_upd_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2rxSar_upd_req", "role": "write" }} , 
 	{ "name": "rxEng2txSar_upd_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":91, "type": "signal", "bundle":{"name": "rxEng2txSar_upd_req", "role": "din" }} , 
 	{ "name": "rxEng2txSar_upd_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2txSar_upd_req", "role": "full_n" }} , 
 	{ "name": "rxEng2txSar_upd_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2txSar_upd_req", "role": "write" }} , 
 	{ "name": "rxEng2timer_clearRetransmitTimer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "rxEng2timer_clearRetransmitTimer", "role": "din" }} , 
 	{ "name": "rxEng2timer_clearRetransmitTimer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearRetransmitTimer", "role": "full_n" }} , 
 	{ "name": "rxEng2timer_clearRetransmitTimer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearRetransmitTimer", "role": "write" }} , 
 	{ "name": "rxEng_fsmEventFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":85, "type": "signal", "bundle":{"name": "rxEng_fsmEventFifo", "role": "din" }} , 
 	{ "name": "rxEng_fsmEventFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmEventFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_fsmEventFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmEventFifo", "role": "write" }} , 
 	{ "name": "rxEng_fsmDropFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmDropFifo", "role": "din" }} , 
 	{ "name": "rxEng_fsmDropFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmDropFifo", "role": "full_n" }} , 
 	{ "name": "rxEng_fsmDropFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng_fsmDropFifo", "role": "write" }} , 
 	{ "name": "rxEng2timer_clearProbeTimer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxEng2timer_clearProbeTimer", "role": "din" }} , 
 	{ "name": "rxEng2timer_clearProbeTimer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearProbeTimer", "role": "full_n" }} , 
 	{ "name": "rxEng2timer_clearProbeTimer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearProbeTimer", "role": "write" }} , 
 	{ "name": "rxEng2rxApp_notification_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "rxEng2rxApp_notification", "role": "din" }} , 
 	{ "name": "rxEng2rxApp_notification_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2rxApp_notification", "role": "full_n" }} , 
 	{ "name": "rxEng2rxApp_notification_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2rxApp_notification", "role": "write" }} , 
 	{ "name": "rxEng2timer_setCloseTimer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxEng2timer_setCloseTimer", "role": "din" }} , 
 	{ "name": "rxEng2timer_setCloseTimer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_setCloseTimer", "role": "full_n" }} , 
 	{ "name": "rxEng2timer_setCloseTimer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_setCloseTimer", "role": "write" }} , 
 	{ "name": "conEstablishedFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "conEstablishedFifo", "role": "din" }} , 
 	{ "name": "conEstablishedFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conEstablishedFifo", "role": "full_n" }} , 
 	{ "name": "conEstablishedFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conEstablishedFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "rxTcpFSM",
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
			{"Name" : "rxbuffer_data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rxbuffer_data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxbuffer_max_data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rxbuffer_max_data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_sessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_srcIpAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_dstIpPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_seqNumb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_ackNumb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_winSize_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_winScale_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_srcIpPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_txSarRequest", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng_fsmMetaDataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_fsmMetaDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fsm_meta_meta_ack_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_rst_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_syn_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fsm_meta_meta_fin_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng2stateTable_upd_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2stateTable_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2rxSar_upd_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2rxSar_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2txSar_upd_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2txSar_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stateTable2rxEng_upd_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stateTable2rxEng_upd_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxSar2rxEng_upd_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxSar2rxEng_upd_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txSar2rxEng_upd_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txSar2rxEng_upd_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2timer_clearRetransmitTimer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2timer_clearRetransmitTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2timer_clearProbeTimer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2timer_clearProbeTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2rxApp_notification", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2rxApp_notification_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_fsmDropFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_fsmDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng_fsmEventFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng_fsmEventFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2timer_setCloseTimer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2timer_setCloseTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conEstablishedFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conEstablishedFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	rxTcpFSM {
		rxbuffer_data_count {Type I LastRead 0 FirstWrite -1}
		rxbuffer_max_data_count {Type I LastRead 0 FirstWrite -1}
		fsm_state {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_sessionID_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_srcIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_dstIpPort_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_seqNumb_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_ackNumb_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_winSize_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_winScale_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_length_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_srcIpPort_V {Type IO LastRead -1 FirstWrite -1}
		fsm_txSarRequest {Type IO LastRead -1 FirstWrite -1}
		rxEng_fsmMetaDataFifo {Type I LastRead 0 FirstWrite -1}
		fsm_meta_meta_ack_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_rst_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_syn_V {Type IO LastRead -1 FirstWrite -1}
		fsm_meta_meta_fin_V {Type IO LastRead -1 FirstWrite -1}
		rxEng2stateTable_upd_req {Type O LastRead -1 FirstWrite 2}
		rxEng2rxSar_upd_req {Type O LastRead -1 FirstWrite 2}
		rxEng2txSar_upd_req {Type O LastRead -1 FirstWrite 2}
		stateTable2rxEng_upd_rsp {Type I LastRead 0 FirstWrite -1}
		rxSar2rxEng_upd_rsp {Type I LastRead 0 FirstWrite -1}
		txSar2rxEng_upd_rsp {Type I LastRead 0 FirstWrite -1}
		rxEng2timer_clearRetransmitTimer {Type O LastRead -1 FirstWrite 2}
		rxEng2timer_clearProbeTimer {Type O LastRead -1 FirstWrite 2}
		rxEng2rxApp_notification {Type O LastRead -1 FirstWrite 2}
		rxEng_fsmDropFifo {Type O LastRead -1 FirstWrite 2}
		rxEng_fsmEventFifo {Type O LastRead -1 FirstWrite 2}
		rxEng2timer_setCloseTimer {Type O LastRead -1 FirstWrite 2}
		conEstablishedFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxbuffer_data_count { ap_fifo {  { rxbuffer_data_count_dout fifo_data 0 16 }  { rxbuffer_data_count_empty_n fifo_status 0 1 }  { rxbuffer_data_count_read fifo_update 1 1 } } }
	rxbuffer_max_data_count { ap_fifo {  { rxbuffer_max_data_count_dout fifo_data 0 16 }  { rxbuffer_max_data_count_empty_n fifo_status 0 1 }  { rxbuffer_max_data_count_read fifo_update 1 1 } } }
	rxEng_fsmMetaDataFifo { ap_fifo {  { rxEng_fsmMetaDataFifo_dout fifo_data 0 188 }  { rxEng_fsmMetaDataFifo_empty_n fifo_status 0 1 }  { rxEng_fsmMetaDataFifo_read fifo_update 1 1 } } }
	rxEng2stateTable_upd_req { ap_fifo {  { rxEng2stateTable_upd_req_din fifo_data 1 49 }  { rxEng2stateTable_upd_req_full_n fifo_status 0 1 }  { rxEng2stateTable_upd_req_write fifo_update 1 1 } } }
	rxEng2rxSar_upd_req { ap_fifo {  { rxEng2rxSar_upd_req_din fifo_data 1 119 }  { rxEng2rxSar_upd_req_full_n fifo_status 0 1 }  { rxEng2rxSar_upd_req_write fifo_update 1 1 } } }
	rxEng2txSar_upd_req { ap_fifo {  { rxEng2txSar_upd_req_din fifo_data 1 91 }  { rxEng2txSar_upd_req_full_n fifo_status 0 1 }  { rxEng2txSar_upd_req_write fifo_update 1 1 } } }
	stateTable2rxEng_upd_rsp { ap_fifo {  { stateTable2rxEng_upd_rsp_dout fifo_data 0 32 }  { stateTable2rxEng_upd_rsp_empty_n fifo_status 0 1 }  { stateTable2rxEng_upd_rsp_read fifo_update 1 1 } } }
	rxSar2rxEng_upd_rsp { ap_fifo {  { rxSar2rxEng_upd_rsp_dout fifo_data 0 119 }  { rxSar2rxEng_upd_rsp_empty_n fifo_status 0 1 }  { rxSar2rxEng_upd_rsp_read fifo_update 1 1 } } }
	txSar2rxEng_upd_rsp { ap_fifo {  { txSar2rxEng_upd_rsp_dout fifo_data 0 103 }  { txSar2rxEng_upd_rsp_empty_n fifo_status 0 1 }  { txSar2rxEng_upd_rsp_read fifo_update 1 1 } } }
	rxEng2timer_clearRetransmitTimer { ap_fifo {  { rxEng2timer_clearRetransmitTimer_din fifo_data 1 17 }  { rxEng2timer_clearRetransmitTimer_full_n fifo_status 0 1 }  { rxEng2timer_clearRetransmitTimer_write fifo_update 1 1 } } }
	rxEng2timer_clearProbeTimer { ap_fifo {  { rxEng2timer_clearProbeTimer_din fifo_data 1 16 }  { rxEng2timer_clearProbeTimer_full_n fifo_status 0 1 }  { rxEng2timer_clearProbeTimer_write fifo_update 1 1 } } }
	rxEng2rxApp_notification { ap_fifo {  { rxEng2rxApp_notification_din fifo_data 1 81 }  { rxEng2rxApp_notification_full_n fifo_status 0 1 }  { rxEng2rxApp_notification_write fifo_update 1 1 } } }
	rxEng_fsmDropFifo { ap_fifo {  { rxEng_fsmDropFifo_din fifo_data 1 1 }  { rxEng_fsmDropFifo_full_n fifo_status 0 1 }  { rxEng_fsmDropFifo_write fifo_update 1 1 } } }
	rxEng_fsmEventFifo { ap_fifo {  { rxEng_fsmEventFifo_din fifo_data 1 85 }  { rxEng_fsmEventFifo_full_n fifo_status 0 1 }  { rxEng_fsmEventFifo_write fifo_update 1 1 } } }
	rxEng2timer_setCloseTimer { ap_fifo {  { rxEng2timer_setCloseTimer_din fifo_data 1 16 }  { rxEng2timer_setCloseTimer_full_n fifo_status 0 1 }  { rxEng2timer_setCloseTimer_write fifo_update 1 1 } } }
	conEstablishedFifo { ap_fifo {  { conEstablishedFifo_din fifo_data 1 72 }  { conEstablishedFifo_full_n fifo_status 0 1 }  { conEstablishedFifo_write fifo_update 1 1 } } }
}
