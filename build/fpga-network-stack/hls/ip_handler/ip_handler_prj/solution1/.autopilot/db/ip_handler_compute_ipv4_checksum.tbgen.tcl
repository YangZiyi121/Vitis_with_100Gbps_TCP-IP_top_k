set moduleName ip_handler_compute_ipv4_checksum
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
set C_modelName {ip_handler_compute_ipv4_checksum}
set C_modelType { void 0 }
set C_modelArgList {
	{ ipDataMetaFifo int 1024 regular {fifo 0 volatile } {global 0}  }
	{ ipDataCheckFifo int 577 regular {fifo 1 volatile } {global 1}  }
	{ iph_subSumsFifoOut int 544 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ipDataMetaFifo", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ipDataCheckFifo", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "iph_subSumsFifoOut", "interface" : "fifo", "bitwidth" : 544, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ ipDataMetaFifo_dout sc_in sc_lv 1024 signal 0 } 
	{ ipDataMetaFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ ipDataMetaFifo_read sc_out sc_logic 1 signal 0 } 
	{ ipDataCheckFifo_din sc_out sc_lv 577 signal 1 } 
	{ ipDataCheckFifo_full_n sc_in sc_logic 1 signal 1 } 
	{ ipDataCheckFifo_write sc_out sc_logic 1 signal 1 } 
	{ iph_subSumsFifoOut_din sc_out sc_lv 544 signal 2 } 
	{ iph_subSumsFifoOut_full_n sc_in sc_logic 1 signal 2 } 
	{ iph_subSumsFifoOut_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ipDataMetaFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ipDataMetaFifo", "role": "dout" }} , 
 	{ "name": "ipDataMetaFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataMetaFifo", "role": "empty_n" }} , 
 	{ "name": "ipDataMetaFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataMetaFifo", "role": "read" }} , 
 	{ "name": "ipDataCheckFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ipDataCheckFifo", "role": "din" }} , 
 	{ "name": "ipDataCheckFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataCheckFifo", "role": "full_n" }} , 
 	{ "name": "ipDataCheckFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataCheckFifo", "role": "write" }} , 
 	{ "name": "iph_subSumsFifoOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":544, "type": "signal", "bundle":{"name": "iph_subSumsFifoOut", "role": "din" }} , 
 	{ "name": "iph_subSumsFifoOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iph_subSumsFifoOut", "role": "full_n" }} , 
 	{ "name": "iph_subSumsFifoOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iph_subSumsFifoOut", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ip_handler_compute_ipv4_checksum",
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
			{"Name" : "ipDataMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataCheckFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataCheckFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_firstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_ip_sums_sum_V_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "iph_subSumsFifoOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "iph_subSumsFifoOut_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ip_handler_compute_ipv4_checksum {
		ipDataMetaFifo {Type I LastRead 0 FirstWrite -1}
		ipDataCheckFifo {Type O LastRead -1 FirstWrite 1}
		cics_firstWord {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_7 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_8 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_9 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_10 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_11 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_12 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_13 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_14 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_15 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_16 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_17 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_18 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_19 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_20 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_21 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_22 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_23 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_24 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_25 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_26 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_27 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_28 {Type IO LastRead -1 FirstWrite -1}
		cics_ip_sums_sum_V_29 {Type IO LastRead -1 FirstWrite -1}
		iph_subSumsFifoOut {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ipDataMetaFifo { ap_fifo {  { ipDataMetaFifo_dout fifo_data 0 1024 }  { ipDataMetaFifo_empty_n fifo_status 0 1 }  { ipDataMetaFifo_read fifo_update 1 1 } } }
	ipDataCheckFifo { ap_fifo {  { ipDataCheckFifo_din fifo_data 1 577 }  { ipDataCheckFifo_full_n fifo_status 0 1 }  { ipDataCheckFifo_write fifo_update 1 1 } } }
	iph_subSumsFifoOut { ap_fifo {  { iph_subSumsFifoOut_din fifo_data 1 544 }  { iph_subSumsFifoOut_full_n fifo_status 0 1 }  { iph_subSumsFifoOut_write fifo_update 1 1 } } }
}
