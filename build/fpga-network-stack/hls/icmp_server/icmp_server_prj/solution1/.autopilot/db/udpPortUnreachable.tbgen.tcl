set moduleName udpPortUnreachable
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {udpPortUnreachable}
set C_modelType { void 0 }
set C_modelArgList {
	{ udpIn_internal int 128 regular {fifo 0 volatile } {global 0}  }
	{ ttlIn_internal int 128 regular {fifo 0 volatile } {global 0}  }
	{ udpPort2addIpHeader_data int 128 regular {fifo 1 volatile } {global 1}  }
	{ udpPort2addIpHeader_header int 64 regular {fifo 1 volatile } {global 1}  }
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1 int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "udpIn_internal", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ttlIn_internal", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "udpPort2addIpHeader_data", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "udpPort2addIpHeader_header", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ udpIn_internal_dout sc_in sc_lv 128 signal 0 } 
	{ udpIn_internal_empty_n sc_in sc_logic 1 signal 0 } 
	{ udpIn_internal_read sc_out sc_logic 1 signal 0 } 
	{ ttlIn_internal_dout sc_in sc_lv 128 signal 1 } 
	{ ttlIn_internal_empty_n sc_in sc_logic 1 signal 1 } 
	{ ttlIn_internal_read sc_out sc_logic 1 signal 1 } 
	{ udpPort2addIpHeader_data_din sc_out sc_lv 128 signal 2 } 
	{ udpPort2addIpHeader_data_full_n sc_in sc_logic 1 signal 2 } 
	{ udpPort2addIpHeader_data_write sc_out sc_logic 1 signal 2 } 
	{ udpPort2addIpHeader_header_din sc_out sc_lv 64 signal 3 } 
	{ udpPort2addIpHeader_header_full_n sc_in sc_logic 1 signal 3 } 
	{ udpPort2addIpHeader_header_write sc_out sc_logic 1 signal 3 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_din sc_out sc_lv 16 signal 4 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_full_n sc_in sc_logic 1 signal 4 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "udpIn_internal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "udpIn_internal", "role": "dout" }} , 
 	{ "name": "udpIn_internal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpIn_internal", "role": "empty_n" }} , 
 	{ "name": "udpIn_internal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpIn_internal", "role": "read" }} , 
 	{ "name": "ttlIn_internal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ttlIn_internal", "role": "dout" }} , 
 	{ "name": "ttlIn_internal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ttlIn_internal", "role": "empty_n" }} , 
 	{ "name": "ttlIn_internal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ttlIn_internal", "role": "read" }} , 
 	{ "name": "udpPort2addIpHeader_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_data", "role": "din" }} , 
 	{ "name": "udpPort2addIpHeader_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_data", "role": "full_n" }} , 
 	{ "name": "udpPort2addIpHeader_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_data", "role": "write" }} , 
 	{ "name": "udpPort2addIpHeader_header_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_header", "role": "din" }} , 
 	{ "name": "udpPort2addIpHeader_header_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_header", "role": "full_n" }} , 
 	{ "name": "udpPort2addIpHeader_header_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_header", "role": "write" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "role": "din" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "role": "full_n" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "udpPortUnreachable",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "udpIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ttlIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ttlIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipWordCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "streamSource_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpChecksum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpPort2addIpHeader_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "192", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpPort2addIpHeader_header", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_header_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	udpPortUnreachable {
		udpIn_internal {Type I LastRead 0 FirstWrite -1}
		ttlIn_internal {Type I LastRead 0 FirstWrite -1}
		udpState {Type IO LastRead -1 FirstWrite -1}
		ipWordCounter_V {Type IO LastRead -1 FirstWrite -1}
		streamSource_V {Type IO LastRead -1 FirstWrite -1}
		udpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_data {Type O LastRead 0 FirstWrite 0}
		udpPort2addIpHeader_header {Type O LastRead 0 FirstWrite 0}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1 {Type O LastRead 0 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	udpIn_internal { ap_fifo {  { udpIn_internal_dout fifo_data 0 128 }  { udpIn_internal_empty_n fifo_status 0 1 }  { udpIn_internal_read fifo_update 1 1 } } }
	ttlIn_internal { ap_fifo {  { ttlIn_internal_dout fifo_data 0 128 }  { ttlIn_internal_empty_n fifo_status 0 1 }  { ttlIn_internal_read fifo_update 1 1 } } }
	udpPort2addIpHeader_data { ap_fifo {  { udpPort2addIpHeader_data_din fifo_data 1 128 }  { udpPort2addIpHeader_data_full_n fifo_status 0 1 }  { udpPort2addIpHeader_data_write fifo_update 1 1 } } }
	udpPort2addIpHeader_header { ap_fifo {  { udpPort2addIpHeader_header_din fifo_data 1 64 }  { udpPort2addIpHeader_header_full_n fifo_status 0 1 }  { udpPort2addIpHeader_header_write fifo_update 1 1 } } }
	icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1 { ap_fifo {  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_din fifo_data 1 16 }  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_full_n fifo_status 0 1 }  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_checksumStreams_1_write fifo_update 1 1 } } }
}
