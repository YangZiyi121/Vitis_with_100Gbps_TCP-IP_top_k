set moduleName probe_timer
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
set C_modelName {probe_timer}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng2timer_setProbeTimer int 16 regular {fifo 0 volatile } {global 0}  }
	{ rxEng2timer_clearProbeTimer int 16 regular {fifo 0 volatile } {global 0}  }
	{ probeTimer2eventEng_setEvent int 85 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng2timer_setProbeTimer", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxEng2timer_clearProbeTimer", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "probeTimer2eventEng_setEvent", "interface" : "fifo", "bitwidth" : 85, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ rxEng2timer_clearProbeTimer_dout sc_in sc_lv 16 signal 1 } 
	{ rxEng2timer_clearProbeTimer_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxEng2timer_clearProbeTimer_read sc_out sc_logic 1 signal 1 } 
	{ txEng2timer_setProbeTimer_dout sc_in sc_lv 16 signal 0 } 
	{ txEng2timer_setProbeTimer_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng2timer_setProbeTimer_read sc_out sc_logic 1 signal 0 } 
	{ probeTimer2eventEng_setEvent_din sc_out sc_lv 85 signal 2 } 
	{ probeTimer2eventEng_setEvent_full_n sc_in sc_logic 1 signal 2 } 
	{ probeTimer2eventEng_setEvent_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng2timer_clearProbeTimer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rxEng2timer_clearProbeTimer", "role": "dout" }} , 
 	{ "name": "rxEng2timer_clearProbeTimer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearProbeTimer", "role": "empty_n" }} , 
 	{ "name": "rxEng2timer_clearProbeTimer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2timer_clearProbeTimer", "role": "read" }} , 
 	{ "name": "txEng2timer_setProbeTimer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "txEng2timer_setProbeTimer", "role": "dout" }} , 
 	{ "name": "txEng2timer_setProbeTimer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng2timer_setProbeTimer", "role": "empty_n" }} , 
 	{ "name": "txEng2timer_setProbeTimer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng2timer_setProbeTimer", "role": "read" }} , 
 	{ "name": "probeTimer2eventEng_setEvent_din", "direction": "out", "datatype": "sc_lv", "bitwidth":85, "type": "signal", "bundle":{"name": "probeTimer2eventEng_setEvent", "role": "din" }} , 
 	{ "name": "probeTimer2eventEng_setEvent_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "probeTimer2eventEng_setEvent", "role": "full_n" }} , 
 	{ "name": "probeTimer2eventEng_setEvent_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "probeTimer2eventEng_setEvent", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "probe_timer",
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
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_54", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "1", "FromAddress" : "probeTimerTable_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "2", "ToAddress" : "probeTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_54", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "1", "FromAddress" : "probeTimerTable_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_68", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_68", "ToFinalSV" : "3", "ToAddress" : "probeTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_54", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "1", "FromAddress" : "probeTimerTable_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_70", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_70", "ToFinalSV" : "3", "ToAddress" : "probeTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "2", "FromAddress" : "probeTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_54", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "1", "ToAddress" : "probeTimerTable_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "2", "FromAddress" : "probeTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_68", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_68", "ToFinalSV" : "3", "ToAddress" : "probeTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "2", "FromAddress" : "probeTimerTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_70", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_70", "ToFinalSV" : "3", "ToAddress" : "probeTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_68", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_68", "FromFinalSV" : "3", "FromAddress" : "probeTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "2", "ToAddress" : "probeTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_68", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_68", "FromFinalSV" : "3", "FromAddress" : "probeTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_54", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "1", "ToAddress" : "probeTimerTable_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_68", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_68", "FromFinalSV" : "3", "FromAddress" : "probeTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_70", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_70", "ToFinalSV" : "3", "ToAddress" : "probeTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_70", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_70", "FromFinalSV" : "3", "FromAddress" : "probeTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "2", "ToAddress" : "probeTimerTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_70", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_70", "FromFinalSV" : "3", "FromAddress" : "probeTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_54", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "1", "ToAddress" : "probeTimerTable_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_70", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_70", "FromFinalSV" : "3", "FromAddress" : "probeTimerTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_68", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_68", "ToFinalSV" : "3", "ToAddress" : "probeTimerTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/probe_timer/probe_timer.cpp:52:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "pt_WaitForWrite", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pt_updSessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pt_prevSessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "probeTimerTable", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "txEng2timer_setProbeTimer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng2timer_setProbeTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pt_currSessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxEng2timer_clearProbeTimer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2timer_clearProbeTimer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "probeTimer2eventEng_setEvent", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "probeTimer2eventEng_setEvent_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.probeTimerTable_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	probe_timer {
		pt_WaitForWrite {Type IO LastRead -1 FirstWrite -1}
		pt_updSessionID_V {Type IO LastRead -1 FirstWrite -1}
		pt_prevSessionID_V {Type IO LastRead -1 FirstWrite -1}
		probeTimerTable {Type IO LastRead -1 FirstWrite -1}
		txEng2timer_setProbeTimer {Type I LastRead 0 FirstWrite -1}
		pt_currSessionID_V {Type IO LastRead -1 FirstWrite -1}
		rxEng2timer_clearProbeTimer {Type I LastRead 0 FirstWrite -1}
		probeTimer2eventEng_setEvent {Type O LastRead 3 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng2timer_setProbeTimer { ap_fifo {  { txEng2timer_setProbeTimer_dout fifo_data 0 16 }  { txEng2timer_setProbeTimer_empty_n fifo_status 0 1 }  { txEng2timer_setProbeTimer_read fifo_update 1 1 } } }
	rxEng2timer_clearProbeTimer { ap_fifo {  { rxEng2timer_clearProbeTimer_dout fifo_data 0 16 }  { rxEng2timer_clearProbeTimer_empty_n fifo_status 0 1 }  { rxEng2timer_clearProbeTimer_read fifo_update 1 1 } } }
	probeTimer2eventEng_setEvent { ap_fifo {  { probeTimer2eventEng_setEvent_din fifo_data 1 85 }  { probeTimer2eventEng_setEvent_full_n fifo_status 0 1 }  { probeTimer2eventEng_setEvent_write fifo_update 1 1 } } }
}
