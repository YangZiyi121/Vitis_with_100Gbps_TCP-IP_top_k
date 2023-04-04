set moduleName udpAddIpHeader
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
set C_modelName {udpAddIpHeader}
set C_modelType { void 0 }
set C_modelArgList {
	{ udpPort2addIpHeader_header int 64 regular {fifo 0 volatile } {global 0}  }
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams int 128 regular {fifo 1 volatile } {global 1}  }
	{ udpPort2addIpHeader_data int 128 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "udpPort2addIpHeader_header", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "udpPort2addIpHeader_data", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} ]}
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
	{ udpPort2addIpHeader_header_dout sc_in sc_lv 64 signal 0 } 
	{ udpPort2addIpHeader_header_empty_n sc_in sc_logic 1 signal 0 } 
	{ udpPort2addIpHeader_header_read sc_out sc_logic 1 signal 0 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_din sc_out sc_lv 128 signal 1 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_full_n sc_in sc_logic 1 signal 1 } 
	{ icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_write sc_out sc_logic 1 signal 1 } 
	{ udpPort2addIpHeader_data_dout sc_in sc_lv 128 signal 2 } 
	{ udpPort2addIpHeader_data_empty_n sc_in sc_logic 1 signal 2 } 
	{ udpPort2addIpHeader_data_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "udpPort2addIpHeader_header_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_header", "role": "dout" }} , 
 	{ "name": "udpPort2addIpHeader_header_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_header", "role": "empty_n" }} , 
 	{ "name": "udpPort2addIpHeader_header_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_header", "role": "read" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "role": "din" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "role": "full_n" }} , 
 	{ "name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "role": "write" }} , 
 	{ "name": "udpPort2addIpHeader_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_data", "role": "dout" }} , 
 	{ "name": "udpPort2addIpHeader_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_data", "role": "empty_n" }} , 
 	{ "name": "udpPort2addIpHeader_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpPort2addIpHeader_data", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "udpAddIpHeader",
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
			{"Name" : "addIpState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpPort2addIpHeader_header", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_header_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tempWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sourceIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udpPort2addIpHeader_data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "192", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpPort2addIpHeader_data_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	udpAddIpHeader {
		addIpState {Type IO LastRead -1 FirstWrite -1}
		tempWord_data_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_header {Type I LastRead 0 FirstWrite -1}
		icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams {Type O LastRead 0 FirstWrite 0}
		tempWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		sourceIP_V {Type IO LastRead -1 FirstWrite -1}
		udpPort2addIpHeader_data {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	udpPort2addIpHeader_header { ap_fifo {  { udpPort2addIpHeader_header_dout fifo_data 0 64 }  { udpPort2addIpHeader_header_empty_n fifo_status 0 1 }  { udpPort2addIpHeader_header_read fifo_update 1 1 } } }
	icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams { ap_fifo {  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_din fifo_data 1 128 }  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_full_n fifo_status 0 1 }  { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_write fifo_update 1 1 } } }
	udpPort2addIpHeader_data { ap_fifo {  { udpPort2addIpHeader_data_dout fifo_data 0 128 }  { udpPort2addIpHeader_data_empty_n fifo_status 0 1 }  { udpPort2addIpHeader_data_read fifo_update 1 1 } } }
}
