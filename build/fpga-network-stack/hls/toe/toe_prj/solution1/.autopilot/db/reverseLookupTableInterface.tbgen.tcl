set moduleName reverseLookupTableInterface
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
set C_modelName {reverseLookupTableInterface}
set C_modelType { void 0 }
set C_modelArgList {
	{ myIpAddress int 32 regular {fifo 0}  }
	{ myIpAddress_c int 32 regular {fifo 1}  }
	{ reverseLupInsertFifo int 96 regular {fifo 0 volatile } {global 0}  }
	{ stateTable2sLookup_releaseSession int 16 regular {fifo 0 volatile } {global 0}  }
	{ sLookup2portTable_releasePort int 16 regular {fifo 1 volatile } {global 1}  }
	{ sessionDelete_req int 160 regular {fifo 1 volatile } {global 1}  }
	{ txEng2sLookup_rev_req int 16 regular {fifo 0 volatile } {global 0}  }
	{ sLookup2txEng_rev_rsp int 96 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reverseLupInsertFifo", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "stateTable2sLookup_releaseSession", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2portTable_releasePort", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sessionDelete_req", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txEng2sLookup_rev_req", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sLookup2txEng_rev_rsp", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ reverseLupInsertFifo_dout sc_in sc_lv 96 signal 2 } 
	{ reverseLupInsertFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ reverseLupInsertFifo_read sc_out sc_logic 1 signal 2 } 
	{ stateTable2sLookup_releaseSession_dout sc_in sc_lv 16 signal 3 } 
	{ stateTable2sLookup_releaseSession_empty_n sc_in sc_logic 1 signal 3 } 
	{ stateTable2sLookup_releaseSession_read sc_out sc_logic 1 signal 3 } 
	{ txEng2sLookup_rev_req_dout sc_in sc_lv 16 signal 6 } 
	{ txEng2sLookup_rev_req_empty_n sc_in sc_logic 1 signal 6 } 
	{ txEng2sLookup_rev_req_read sc_out sc_logic 1 signal 6 } 
	{ myIpAddress_dout sc_in sc_lv 32 signal 0 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 0 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 0 } 
	{ myIpAddress_c_din sc_out sc_lv 32 signal 1 } 
	{ myIpAddress_c_full_n sc_in sc_logic 1 signal 1 } 
	{ myIpAddress_c_write sc_out sc_logic 1 signal 1 } 
	{ sLookup2txEng_rev_rsp_din sc_out sc_lv 96 signal 7 } 
	{ sLookup2txEng_rev_rsp_full_n sc_in sc_logic 1 signal 7 } 
	{ sLookup2txEng_rev_rsp_write sc_out sc_logic 1 signal 7 } 
	{ sLookup2portTable_releasePort_din sc_out sc_lv 16 signal 4 } 
	{ sLookup2portTable_releasePort_full_n sc_in sc_logic 1 signal 4 } 
	{ sLookup2portTable_releasePort_write sc_out sc_logic 1 signal 4 } 
	{ sessionDelete_req_din sc_out sc_lv 160 signal 5 } 
	{ sessionDelete_req_full_n sc_in sc_logic 1 signal 5 } 
	{ sessionDelete_req_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reverseLupInsertFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "reverseLupInsertFifo", "role": "dout" }} , 
 	{ "name": "reverseLupInsertFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reverseLupInsertFifo", "role": "empty_n" }} , 
 	{ "name": "reverseLupInsertFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reverseLupInsertFifo", "role": "read" }} , 
 	{ "name": "stateTable2sLookup_releaseSession_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stateTable2sLookup_releaseSession", "role": "dout" }} , 
 	{ "name": "stateTable2sLookup_releaseSession_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2sLookup_releaseSession", "role": "empty_n" }} , 
 	{ "name": "stateTable2sLookup_releaseSession_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2sLookup_releaseSession", "role": "read" }} , 
 	{ "name": "txEng2sLookup_rev_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "txEng2sLookup_rev_req", "role": "dout" }} , 
 	{ "name": "txEng2sLookup_rev_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng2sLookup_rev_req", "role": "empty_n" }} , 
 	{ "name": "txEng2sLookup_rev_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng2sLookup_rev_req", "role": "read" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "myIpAddress_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "din" }} , 
 	{ "name": "myIpAddress_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "full_n" }} , 
 	{ "name": "myIpAddress_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "write" }} , 
 	{ "name": "sLookup2txEng_rev_rsp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "sLookup2txEng_rev_rsp", "role": "din" }} , 
 	{ "name": "sLookup2txEng_rev_rsp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txEng_rev_rsp", "role": "full_n" }} , 
 	{ "name": "sLookup2txEng_rev_rsp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2txEng_rev_rsp", "role": "write" }} , 
 	{ "name": "sLookup2portTable_releasePort_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sLookup2portTable_releasePort", "role": "din" }} , 
 	{ "name": "sLookup2portTable_releasePort_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2portTable_releasePort", "role": "full_n" }} , 
 	{ "name": "sLookup2portTable_releasePort_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2portTable_releasePort", "role": "write" }} , 
 	{ "name": "sessionDelete_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "sessionDelete_req", "role": "din" }} , 
 	{ "name": "sessionDelete_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionDelete_req", "role": "full_n" }} , 
 	{ "name": "sessionDelete_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sessionDelete_req", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "reverseLookupTableInterface",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_22", "FromFinalSV" : "1", "FromAddress" : "tupleValid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_21", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_30", "ToFinalSV" : "2", "ToAddress" : "tupleValid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:257:2)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_22", "FromFinalSV" : "1", "FromAddress" : "tupleValid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_26", "ToFinalSV" : "1", "ToAddress" : "tupleValid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:257:2)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_26", "FromFinalSV" : "1", "FromAddress" : "tupleValid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_21", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_30", "ToFinalSV" : "2", "ToAddress" : "tupleValid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:257:2)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_26", "FromFinalSV" : "1", "FromAddress" : "tupleValid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_22", "ToFinalSV" : "1", "ToAddress" : "tupleValid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:257:2)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_21", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_30", "FromFinalSV" : "2", "FromAddress" : "tupleValid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_22", "ToFinalSV" : "1", "ToAddress" : "tupleValid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:257:2)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_21", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_30", "FromFinalSV" : "2", "FromAddress" : "tupleValid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_26", "ToFinalSV" : "1", "ToAddress" : "tupleValid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:257:2)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_42", "FromFinalSV" : "3", "FromAddress" : "reverseLookupTable_theirIp_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_48", "ToFinalSV" : "4", "ToAddress" : "reverseLookupTable_theirIp_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_42", "FromFinalSV" : "3", "FromAddress" : "reverseLookupTable_theirIp_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_52", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_91", "ToFinalSV" : "5", "ToAddress" : "reverseLookupTable_theirIp_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_44", "FromFinalSV" : "3", "FromAddress" : "reverseLookupTable_myPort_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "4", "ToAddress" : "reverseLookupTable_myPort_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_44", "FromFinalSV" : "3", "FromAddress" : "reverseLookupTable_myPort_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "4", "ToAddress" : "reverseLookupTable_myPort_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "3", "FromAddress" : "reverseLookupTable_theirPort_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "4", "ToAddress" : "reverseLookupTable_theirPort_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "3", "FromAddress" : "reverseLookupTable_theirPort_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "5", "ToAddress" : "reverseLookupTable_theirPort_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_48", "FromFinalSV" : "4", "FromAddress" : "reverseLookupTable_theirIp_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_42", "ToFinalSV" : "3", "ToAddress" : "reverseLookupTable_theirIp_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "4", "FromAddress" : "reverseLookupTable_myPort_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_44", "ToFinalSV" : "3", "ToAddress" : "reverseLookupTable_myPort_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "4", "FromAddress" : "reverseLookupTable_theirPort_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "3", "ToAddress" : "reverseLookupTable_theirPort_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "4", "FromAddress" : "reverseLookupTable_myPort_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_44", "ToFinalSV" : "3", "ToAddress" : "reverseLookupTable_myPort_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_52", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_91", "FromFinalSV" : "5", "FromAddress" : "reverseLookupTable_theirIp_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_42", "ToFinalSV" : "3", "ToAddress" : "reverseLookupTable_theirIp_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "5", "FromAddress" : "reverseLookupTable_theirPort_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "3", "ToAddress" : "reverseLookupTable_theirPort_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/session_lookup_controller/session_lookup_controller.cpp:255:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "14", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reverseLupInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "reverseLupInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reverseLookupTable_theirIp_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reverseLookupTable_myPort_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reverseLookupTable_theirPort_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tupleValid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "stateTable2sLookup_releaseSession", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stateTable2sLookup_releaseSession_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sLookup2portTable_releasePort", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2portTable_releasePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sessionDelete_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sessionDelete_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng2sLookup_rev_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng2sLookup_rev_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sLookup2txEng_rev_rsp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2txEng_rev_rsp_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reverseLookupTable_theirIp_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reverseLookupTable_myPort_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reverseLookupTable_theirPort_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tupleValid_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	reverseLookupTableInterface {
		myIpAddress {Type I LastRead 5 FirstWrite -1}
		myIpAddress_c {Type O LastRead -1 FirstWrite 5}
		reverseLupInsertFifo {Type I LastRead 0 FirstWrite -1}
		reverseLookupTable_theirIp_V {Type IO LastRead -1 FirstWrite -1}
		reverseLookupTable_myPort_V {Type IO LastRead -1 FirstWrite -1}
		reverseLookupTable_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		tupleValid {Type IO LastRead -1 FirstWrite -1}
		stateTable2sLookup_releaseSession {Type I LastRead 1 FirstWrite -1}
		sLookup2portTable_releasePort {Type O LastRead -1 FirstWrite 5}
		sessionDelete_req {Type O LastRead -1 FirstWrite 5}
		txEng2sLookup_rev_req {Type I LastRead 2 FirstWrite -1}
		sLookup2txEng_rev_rsp {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	myIpAddress_c { ap_fifo {  { myIpAddress_c_din fifo_data 1 32 }  { myIpAddress_c_full_n fifo_status 0 1 }  { myIpAddress_c_write fifo_update 1 1 } } }
	reverseLupInsertFifo { ap_fifo {  { reverseLupInsertFifo_dout fifo_data 0 96 }  { reverseLupInsertFifo_empty_n fifo_status 0 1 }  { reverseLupInsertFifo_read fifo_update 1 1 } } }
	stateTable2sLookup_releaseSession { ap_fifo {  { stateTable2sLookup_releaseSession_dout fifo_data 0 16 }  { stateTable2sLookup_releaseSession_empty_n fifo_status 0 1 }  { stateTable2sLookup_releaseSession_read fifo_update 1 1 } } }
	sLookup2portTable_releasePort { ap_fifo {  { sLookup2portTable_releasePort_din fifo_data 1 16 }  { sLookup2portTable_releasePort_full_n fifo_status 0 1 }  { sLookup2portTable_releasePort_write fifo_update 1 1 } } }
	sessionDelete_req { ap_fifo {  { sessionDelete_req_din fifo_data 1 160 }  { sessionDelete_req_full_n fifo_status 0 1 }  { sessionDelete_req_write fifo_update 1 1 } } }
	txEng2sLookup_rev_req { ap_fifo {  { txEng2sLookup_rev_req_dout fifo_data 0 16 }  { txEng2sLookup_rev_req_empty_n fifo_status 0 1 }  { txEng2sLookup_rev_req_read fifo_update 1 1 } } }
	sLookup2txEng_rev_rsp { ap_fifo {  { sLookup2txEng_rev_rsp_din fifo_data 1 96 }  { sLookup2txEng_rev_rsp_full_n fifo_status 0 1 }  { sLookup2txEng_rev_rsp_write fifo_update 1 1 } } }
}
