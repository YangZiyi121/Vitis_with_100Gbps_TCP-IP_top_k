set moduleName check_icmp_checksum
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
set C_modelName {check_icmp_checksum}
set C_modelType { void 0 }
set C_modelArgList {
	{ packageBuffer1 int 73 regular {fifo 1 volatile } {global 1}  }
	{ validFifo int 1 regular {fifo 1 volatile } {global 1}  }
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams int 16 regular {fifo 1 volatile } {global 1}  }
	{ dataIn_internal int 128 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "packageBuffer1", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "validFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "dataIn_internal", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} ]}
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
	{ dataIn_internal_dout sc_in sc_lv 128 signal 3 } 
	{ dataIn_internal_empty_n sc_in sc_logic 1 signal 3 } 
	{ dataIn_internal_read sc_out sc_logic 1 signal 3 } 
	{ packageBuffer1_din sc_out sc_lv 73 signal 0 } 
	{ packageBuffer1_full_n sc_in sc_logic 1 signal 0 } 
	{ packageBuffer1_write sc_out sc_logic 1 signal 0 } 
	{ validFifo_din sc_out sc_lv 1 signal 1 } 
	{ validFifo_full_n sc_in sc_logic 1 signal 1 } 
	{ validFifo_write sc_out sc_logic 1 signal 1 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_din sc_out sc_lv 16 signal 2 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_full_n sc_in sc_logic 1 signal 2 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataIn_internal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "dataIn_internal", "role": "dout" }} , 
 	{ "name": "dataIn_internal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_internal", "role": "empty_n" }} , 
 	{ "name": "dataIn_internal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_internal", "role": "read" }} , 
 	{ "name": "packageBuffer1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "packageBuffer1", "role": "din" }} , 
 	{ "name": "packageBuffer1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packageBuffer1", "role": "full_n" }} , 
 	{ "name": "packageBuffer1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packageBuffer1", "role": "write" }} , 
 	{ "name": "validFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "validFifo", "role": "din" }} , 
 	{ "name": "validFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "validFifo", "role": "full_n" }} , 
 	{ "name": "validFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "validFifo", "role": "write" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "role": "din" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "role": "full_n" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "check_icmp_checksum",
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
			{"Name" : "cics_writeLastOne", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "packageBuffer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "packageBuffer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_computeCs", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_sums_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpChecksum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpCode_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "validFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	check_icmp_checksum {
		cics_writeLastOne {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		packageBuffer1 {Type O LastRead -1 FirstWrite 2}
		cics_computeCs {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_3 {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_1 {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V {Type IO LastRead -1 FirstWrite -1}
		cics_sums_V_2 {Type IO LastRead -1 FirstWrite -1}
		icmpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		icmpType_V {Type IO LastRead -1 FirstWrite -1}
		icmpCode_V {Type IO LastRead -1 FirstWrite -1}
		cics_state {Type IO LastRead -1 FirstWrite -1}
		validFifo {Type O LastRead -1 FirstWrite 2}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams {Type O LastRead -1 FirstWrite 2}
		dataIn_internal {Type I LastRead 0 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	packageBuffer1 { ap_fifo {  { packageBuffer1_din fifo_data 1 73 }  { packageBuffer1_full_n fifo_status 0 1 }  { packageBuffer1_write fifo_update 1 1 } } }
	validFifo { ap_fifo {  { validFifo_din fifo_data 1 1 }  { validFifo_full_n fifo_status 0 1 }  { validFifo_write fifo_update 1 1 } } }
	icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams { ap_fifo {  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_din fifo_data 1 16 }  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_full_n fifo_status 0 1 }  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_write fifo_update 1 1 } } }
	dataIn_internal { ap_fifo {  { dataIn_internal_dout fifo_data 0 128 }  { dataIn_internal_empty_n fifo_status 0 1 }  { dataIn_internal_read fifo_update 1 1 } } }
}
