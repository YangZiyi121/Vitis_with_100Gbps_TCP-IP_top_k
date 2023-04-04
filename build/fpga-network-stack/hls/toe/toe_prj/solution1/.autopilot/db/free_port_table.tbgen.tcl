set moduleName free_port_table
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
set C_modelName {free_port_table}
set C_modelType { void 0 }
set C_modelArgList {
	{ sLookup2portTable_releasePort int 16 regular {fifo 0 volatile } {global 0}  }
	{ pt_portCheckUsed_req_fifo int 15 regular {fifo 0 volatile } {global 0}  }
	{ pt_portCheckUsed_rsp_fifo int 1 regular {fifo 1 volatile } {global 1}  }
	{ portTable2txApp_port_rsp int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sLookup2portTable_releasePort", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "pt_portCheckUsed_req_fifo", "interface" : "fifo", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "pt_portCheckUsed_rsp_fifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "portTable2txApp_port_rsp", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sLookup2portTable_releasePort_dout sc_in sc_lv 16 signal 0 } 
	{ sLookup2portTable_releasePort_empty_n sc_in sc_logic 1 signal 0 } 
	{ sLookup2portTable_releasePort_read sc_out sc_logic 1 signal 0 } 
	{ pt_portCheckUsed_req_fifo_dout sc_in sc_lv 15 signal 1 } 
	{ pt_portCheckUsed_req_fifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ pt_portCheckUsed_req_fifo_read sc_out sc_logic 1 signal 1 } 
	{ portTable2txApp_port_rsp_din sc_out sc_lv 16 signal 3 } 
	{ portTable2txApp_port_rsp_full_n sc_in sc_logic 1 signal 3 } 
	{ portTable2txApp_port_rsp_write sc_out sc_logic 1 signal 3 } 
	{ pt_portCheckUsed_rsp_fifo_din sc_out sc_lv 1 signal 2 } 
	{ pt_portCheckUsed_rsp_fifo_full_n sc_in sc_logic 1 signal 2 } 
	{ pt_portCheckUsed_rsp_fifo_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sLookup2portTable_releasePort_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sLookup2portTable_releasePort", "role": "dout" }} , 
 	{ "name": "sLookup2portTable_releasePort_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2portTable_releasePort", "role": "empty_n" }} , 
 	{ "name": "sLookup2portTable_releasePort_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sLookup2portTable_releasePort", "role": "read" }} , 
 	{ "name": "pt_portCheckUsed_req_fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pt_portCheckUsed_req_fifo", "role": "dout" }} , 
 	{ "name": "pt_portCheckUsed_req_fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_req_fifo", "role": "empty_n" }} , 
 	{ "name": "pt_portCheckUsed_req_fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_req_fifo", "role": "read" }} , 
 	{ "name": "portTable2txApp_port_rsp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "portTable2txApp_port_rsp", "role": "din" }} , 
 	{ "name": "portTable2txApp_port_rsp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2txApp_port_rsp", "role": "full_n" }} , 
 	{ "name": "portTable2txApp_port_rsp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2txApp_port_rsp", "role": "write" }} , 
 	{ "name": "pt_portCheckUsed_rsp_fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_rsp_fifo", "role": "din" }} , 
 	{ "name": "pt_portCheckUsed_rsp_fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_rsp_fifo", "role": "full_n" }} , 
 	{ "name": "pt_portCheckUsed_rsp_fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_rsp_fifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "free_port_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "2", "FromAddress" : "freePortTable_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "freePortTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "2", "FromAddress" : "freePortTable_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "3", "ToAddress" : "freePortTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "2", "FromAddress" : "freePortTable_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "4", "ToAddress" : "freePortTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "3", "FromAddress" : "freePortTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "2", "ToAddress" : "freePortTable_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "3", "FromAddress" : "freePortTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "4", "ToAddress" : "freePortTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "3", "FromAddress" : "freePortTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "2", "ToAddress" : "freePortTable_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "3", "FromAddress" : "freePortTable_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "4", "ToAddress" : "freePortTable_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "4", "FromAddress" : "freePortTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "freePortTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "4", "FromAddress" : "freePortTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "3", "ToAddress" : "freePortTable_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "4", "FromAddress" : "freePortTable_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "2", "ToAddress" : "freePortTable_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "15", "II" : "1", "Pragma" : "(/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/fpga-network-stack/hls/toe/port_table/port_table.cpp:105:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "sLookup2portTable_releasePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sLookup2portTable_releasePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pt_cursor", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "freePortTable", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pt_portCheckUsed_req_fifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pt_portCheckUsed_req_fifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pt_portCheckUsed_rsp_fifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pt_portCheckUsed_rsp_fifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "portTable2txApp_port_rsp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "portTable2txApp_port_rsp_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.freePortTable_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	free_port_table {
		sLookup2portTable_releasePort {Type I LastRead 0 FirstWrite -1}
		pt_cursor {Type IO LastRead -1 FirstWrite -1}
		freePortTable {Type IO LastRead -1 FirstWrite -1}
		pt_portCheckUsed_req_fifo {Type I LastRead 1 FirstWrite -1}
		pt_portCheckUsed_rsp_fifo {Type O LastRead -1 FirstWrite 4}
		portTable2txApp_port_rsp {Type O LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sLookup2portTable_releasePort { ap_fifo {  { sLookup2portTable_releasePort_dout fifo_data 0 16 }  { sLookup2portTable_releasePort_empty_n fifo_status 0 1 }  { sLookup2portTable_releasePort_read fifo_update 1 1 } } }
	pt_portCheckUsed_req_fifo { ap_fifo {  { pt_portCheckUsed_req_fifo_dout fifo_data 0 15 }  { pt_portCheckUsed_req_fifo_empty_n fifo_status 0 1 }  { pt_portCheckUsed_req_fifo_read fifo_update 1 1 } } }
	pt_portCheckUsed_rsp_fifo { ap_fifo {  { pt_portCheckUsed_rsp_fifo_din fifo_data 1 1 }  { pt_portCheckUsed_rsp_fifo_full_n fifo_status 0 1 }  { pt_portCheckUsed_rsp_fifo_write fifo_update 1 1 } } }
	portTable2txApp_port_rsp { ap_fifo {  { portTable2txApp_port_rsp_din fifo_data 1 16 }  { portTable2txApp_port_rsp_full_n fifo_status 0 1 }  { portTable2txApp_port_rsp_write fifo_update 1 1 } } }
}
