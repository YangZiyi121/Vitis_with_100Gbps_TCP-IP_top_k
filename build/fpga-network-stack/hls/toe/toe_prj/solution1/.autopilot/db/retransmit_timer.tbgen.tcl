set moduleName retransmit_timer
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
set C_modelName {retransmit_timer}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxEng2timer_clearRetransmitTimer int 17 regular {fifo 0 volatile } {global 0}  }
	{ txEng2timer_setRetransmitTimer int 48 regular {fifo 0 volatile } {global 0}  }
	{ rtTimer2eventEng_setEvent int 85 regular {fifo 1 volatile } {global 1}  }
	{ rtTimer2stateTable_releaseState int 16 regular {fifo 1 volatile } {global 1}  }
	{ timer2txApp_notification int 72 regular {fifo 1 volatile } {global 1}  }
	{ timer2rxApp_notification int 81 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxEng2timer_clearRetransmitTimer", "interface" : "fifo", "bitwidth" : 17, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng2timer_setRetransmitTimer", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rtTimer2eventEng_setEvent", "interface" : "fifo", "bitwidth" : 85, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rtTimer2stateTable_releaseState", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "timer2txApp_notification", "interface" : "fifo", "bitwidth" : 72, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "timer2rxApp_notification", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rxEng2timer_clearRetransmitTimer_dout sc_in sc_lv 17 signal 0 } 
	{ rxEng2timer_clearRetransmitTimer_empty_n sc_in sc_logic 1 signal 0 } 
	{ rxEng2timer_clearRetransmitTimer_read sc_out sc_logic 1 signal 0 } 
	{ txEng2timer_setRetransmitTimer_dout sc_in sc_lv 48 signal 1 } 
	{ txEng2timer_setRetransmitTimer_empty_n sc_in sc_logic 1 signal 1 } 
	{ txEng2timer_setRetransmitTimer_read sc_out sc_logic 1 signal 1 } 
	{ rtTimer2eventEng_setEvent_din sc_out sc_lv 85 signal 2 } 
	{ rtTimer2eventEng_setEvent_full_n sc_in sc_logic 1 signal 2 } 
	{ rtTimer2eventEng_setEvent_write sc_out sc_logic 1 signal 2 } 
	{ rtTimer2stateTable_releaseState_din sc_out sc_lv 16 signal 3 } 
	{ rtTimer2stateTable_releaseState_full_n sc_in sc_logic 1 signal 3 } 
	{ rtTimer2stateTable_releaseState_write sc_out sc_logic 1 signal 3 } 
	{ timer2rxApp_notification_din sc_out sc_lv 81 signal 5 } 
	{ timer2rxApp_notification_full_n sc_in sc_logic 1 signal 5 } 
	{ timer2rxApp_notification_write sc_out sc_logic 1 signal 5 } 
	{ timer2txApp_notification_din sc_out sc_lv 72 signal 4 } 
	{ timer2txApp_notification_full_n sc_in sc_logic 1 signal 4 } 
	{ timer2txApp_notification_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng2timer_clearRetransmitTimer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "rxEng2timer_clearRetransmitTimer", "role": "dout" }} , 
 	{ "name": "rxEng2timer_clearRetransmitTimer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearRetransmitTimer", "role": "empty_n" }} , 
 	{ "name": "rxEng2timer_clearRetransmitTimer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearRetransmitTimer", "role": "read" }} , 
 	{ "name": "txEng2timer_setRetransmitTimer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "txEng2timer_setRetransmitTimer", "role": "dout" }} , 
 	{ "name": "txEng2timer_setRetransmitTimer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng2timer_setRetransmitTimer", "role": "empty_n" }} , 
 	{ "name": "txEng2timer_setRetransmitTimer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng2timer_setRetransmitTimer", "role": "read" }} , 
 	{ "name": "rtTimer2eventEng_setEvent_din", "direction": "out", "datatype": "sc_lv", "bitwidth":85, "type": "signal", "bundle":{"name": "rtTimer2eventEng_setEvent", "role": "din" }} , 
 	{ "name": "rtTimer2eventEng_setEvent_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rtTimer2eventEng_setEvent", "role": "full_n" }} , 
 	{ "name": "rtTimer2eventEng_setEvent_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rtTimer2eventEng_setEvent", "role": "write" }} , 
 	{ "name": "rtTimer2stateTable_releaseState_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rtTimer2stateTable_releaseState", "role": "din" }} , 
 	{ "name": "rtTimer2stateTable_releaseState_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rtTimer2stateTable_releaseState", "role": "full_n" }} , 
 	{ "name": "rtTimer2stateTable_releaseState_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rtTimer2stateTable_releaseState", "role": "write" }} , 
 	{ "name": "timer2rxApp_notification_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "timer2rxApp_notification", "role": "din" }} , 
 	{ "name": "timer2rxApp_notification_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2rxApp_notification", "role": "full_n" }} , 
 	{ "name": "timer2rxApp_notification_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2rxApp_notification", "role": "write" }} , 
 	{ "name": "timer2txApp_notification_din", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "timer2txApp_notification", "role": "din" }} , 
 	{ "name": "timer2txApp_notification_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2txApp_notification", "role": "full_n" }} , 
 	{ "name": "timer2txApp_notification_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2txApp_notification", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "retransmit_timer",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "retransmitTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "2", "ToAddress" : "retransmitTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "retransmitTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_129", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_129", "ToFinalSV" : "2", "ToAddress" : "retransmitTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_82", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "retransmitTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "2", "ToAddress" : "retransmitTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_82", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "retransmitTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_129", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_129", "ToFinalSV" : "2", "ToAddress" : "retransmitTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "2", "FromAddress" : "retransmitTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "retransmitTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "2", "FromAddress" : "retransmitTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_82", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "retransmitTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "2", "FromAddress" : "retransmitTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_129", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_129", "ToFinalSV" : "2", "ToAddress" : "retransmitTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_129", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_129", "FromFinalSV" : "2", "FromAddress" : "retransmitTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "retransmitTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_129", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_129", "FromFinalSV" : "2", "FromAddress" : "retransmitTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_82", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "retransmitTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_129", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_129", "FromFinalSV" : "2", "FromAddress" : "retransmitTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "2", "ToAddress" : "retransmitTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/retransmit_timer/retransmit_timer.cpp:67:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "rt_waitForWrite", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rt_update_sessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rt_prevPosition_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rt_update_stop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng2timer_clearRetransmitTimer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2timer_clearRetransmitTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "retransmitTimerTable", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "rt_position_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng2timer_setRetransmitTimer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng2timer_setRetransmitTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rtTimer2eventEng_setEvent", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rtTimer2eventEng_setEvent_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rtTimer2stateTable_releaseState", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rtTimer2stateTable_releaseState_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timer2txApp_notification", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timer2txApp_notification_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timer2rxApp_notification", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timer2rxApp_notification_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.retransmitTimerTable_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	retransmit_timer {
		rt_waitForWrite {Type IO LastRead -1 FirstWrite -1}
		rt_update_sessionID_V {Type IO LastRead -1 FirstWrite -1}
		rt_prevPosition_V {Type IO LastRead -1 FirstWrite -1}
		rt_update_stop {Type IO LastRead -1 FirstWrite -1}
		rxEng2timer_clearRetransmitTimer {Type I LastRead 0 FirstWrite -1}
		retransmitTimerTable {Type IO LastRead -1 FirstWrite -1}
		rt_position_V {Type IO LastRead -1 FirstWrite -1}
		txEng2timer_setRetransmitTimer {Type I LastRead 0 FirstWrite -1}
		rtTimer2eventEng_setEvent {Type O LastRead 2 FirstWrite 2}
		rtTimer2stateTable_releaseState {Type O LastRead -1 FirstWrite 3}
		timer2txApp_notification {Type O LastRead -1 FirstWrite 3}
		timer2rxApp_notification {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rxEng2timer_clearRetransmitTimer { ap_fifo {  { rxEng2timer_clearRetransmitTimer_dout fifo_data 0 17 }  { rxEng2timer_clearRetransmitTimer_empty_n fifo_status 0 1 }  { rxEng2timer_clearRetransmitTimer_read fifo_update 1 1 } } }
	txEng2timer_setRetransmitTimer { ap_fifo {  { txEng2timer_setRetransmitTimer_dout fifo_data 0 48 }  { txEng2timer_setRetransmitTimer_empty_n fifo_status 0 1 }  { txEng2timer_setRetransmitTimer_read fifo_update 1 1 } } }
	rtTimer2eventEng_setEvent { ap_fifo {  { rtTimer2eventEng_setEvent_din fifo_data 1 85 }  { rtTimer2eventEng_setEvent_full_n fifo_status 0 1 }  { rtTimer2eventEng_setEvent_write fifo_update 1 1 } } }
	rtTimer2stateTable_releaseState { ap_fifo {  { rtTimer2stateTable_releaseState_din fifo_data 1 16 }  { rtTimer2stateTable_releaseState_full_n fifo_status 0 1 }  { rtTimer2stateTable_releaseState_write fifo_update 1 1 } } }
	timer2txApp_notification { ap_fifo {  { timer2txApp_notification_din fifo_data 1 72 }  { timer2txApp_notification_full_n fifo_status 0 1 }  { timer2txApp_notification_write fifo_update 1 1 } } }
	timer2rxApp_notification { ap_fifo {  { timer2rxApp_notification_din fifo_data 1 81 }  { timer2rxApp_notification_full_n fifo_status 0 1 }  { timer2rxApp_notification_write fifo_update 1 1 } } }
}
