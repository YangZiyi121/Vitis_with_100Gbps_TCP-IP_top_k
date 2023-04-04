set moduleName two_complement_subchecksums_512_22_s
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
set C_modelName {two_complement_subchecksums<512, 22>}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng_tcpPkgBuffer1 int 577 regular {fifo 0 volatile } {global 0}  }
	{ txEng_tcpPkgBuffer2 int 577 regular {fifo 1 volatile } {global 1}  }
	{ txEng_subChecksumsFifo int 544 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng_tcpPkgBuffer1", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpPkgBuffer2", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txEng_subChecksumsFifo", "interface" : "fifo", "bitwidth" : 544, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ txEng_tcpPkgBuffer1_dout sc_in sc_lv 577 signal 0 } 
	{ txEng_tcpPkgBuffer1_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng_tcpPkgBuffer1_read sc_out sc_logic 1 signal 0 } 
	{ txEng_tcpPkgBuffer2_din sc_out sc_lv 577 signal 1 } 
	{ txEng_tcpPkgBuffer2_full_n sc_in sc_logic 1 signal 1 } 
	{ txEng_tcpPkgBuffer2_write sc_out sc_logic 1 signal 1 } 
	{ txEng_subChecksumsFifo_din sc_out sc_lv 544 signal 2 } 
	{ txEng_subChecksumsFifo_full_n sc_in sc_logic 1 signal 2 } 
	{ txEng_subChecksumsFifo_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txEng_tcpPkgBuffer1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer1", "role": "dout" }} , 
 	{ "name": "txEng_tcpPkgBuffer1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer1", "role": "empty_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer1", "role": "read" }} , 
 	{ "name": "txEng_tcpPkgBuffer2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer2", "role": "din" }} , 
 	{ "name": "txEng_tcpPkgBuffer2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer2", "role": "full_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer2", "role": "write" }} , 
 	{ "name": "txEng_subChecksumsFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":544, "type": "signal", "bundle":{"name": "txEng_subChecksumsFifo", "role": "din" }} , 
 	{ "name": "txEng_subChecksumsFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_subChecksumsFifo", "role": "full_n" }} , 
 	{ "name": "txEng_subChecksumsFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_subChecksumsFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "two_complement_subchecksums_512_22_s",
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
			{"Name" : "txEng_tcpPkgBuffer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tcpPkgBuffer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tcts_tcp_sums_sum_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tcts_tcp_sums_sum_V_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txEng_subChecksumsFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_subChecksumsFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	two_complement_subchecksums_512_22_s {
		txEng_tcpPkgBuffer1 {Type I LastRead 0 FirstWrite -1}
		txEng_tcpPkgBuffer2 {Type O LastRead -1 FirstWrite 1}
		tcts_tcp_sums_sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_7 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_8 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_9 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_10 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_11 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_12 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_13 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_14 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_15 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_16 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_17 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_18 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_19 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_20 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_21 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_22 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_23 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_24 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_25 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_26 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_27 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_28 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_29 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_30 {Type IO LastRead -1 FirstWrite -1}
		tcts_tcp_sums_sum_V_31 {Type IO LastRead -1 FirstWrite -1}
		txEng_subChecksumsFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng_tcpPkgBuffer1 { ap_fifo {  { txEng_tcpPkgBuffer1_dout fifo_data 0 577 }  { txEng_tcpPkgBuffer1_empty_n fifo_status 0 1 }  { txEng_tcpPkgBuffer1_read fifo_update 1 1 } } }
	txEng_tcpPkgBuffer2 { ap_fifo {  { txEng_tcpPkgBuffer2_din fifo_data 1 577 }  { txEng_tcpPkgBuffer2_full_n fifo_status 0 1 }  { txEng_tcpPkgBuffer2_write fifo_update 1 1 } } }
	txEng_subChecksumsFifo { ap_fifo {  { txEng_subChecksumsFifo_din fifo_data 1 544 }  { txEng_subChecksumsFifo_full_n fifo_status 0 1 }  { txEng_subChecksumsFifo_write fifo_update 1 1 } } }
}
