set moduleName extract_ip_meta_512_s
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
set C_modelName {extract_ip_meta<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ myIpAddress int 32 regular {fifo 0}  }
	{ ipDataFifo int 577 regular {fifo 0 volatile } {global 0}  }
	{ ipDataMetaFifo int 1024 regular {fifo 1 volatile } {global 1}  }
	{ validIpAddressFifo int 1 regular {fifo 1 volatile } {global 1}  }
	{ ipv4ProtocolFifo int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ipDataFifo", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ipDataMetaFifo", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "validIpAddressFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ipv4ProtocolFifo", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ myIpAddress_dout sc_in sc_lv 32 signal 0 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 0 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 0 } 
	{ ipDataFifo_dout sc_in sc_lv 577 signal 1 } 
	{ ipDataFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ ipDataFifo_read sc_out sc_logic 1 signal 1 } 
	{ ipDataMetaFifo_din sc_out sc_lv 1024 signal 2 } 
	{ ipDataMetaFifo_full_n sc_in sc_logic 1 signal 2 } 
	{ ipDataMetaFifo_write sc_out sc_logic 1 signal 2 } 
	{ validIpAddressFifo_din sc_out sc_lv 1 signal 3 } 
	{ validIpAddressFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ validIpAddressFifo_write sc_out sc_logic 1 signal 3 } 
	{ ipv4ProtocolFifo_din sc_out sc_lv 8 signal 4 } 
	{ ipv4ProtocolFifo_full_n sc_in sc_logic 1 signal 4 } 
	{ ipv4ProtocolFifo_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "ipDataFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ipDataFifo", "role": "dout" }} , 
 	{ "name": "ipDataFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo", "role": "empty_n" }} , 
 	{ "name": "ipDataFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo", "role": "read" }} , 
 	{ "name": "ipDataMetaFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ipDataMetaFifo", "role": "din" }} , 
 	{ "name": "ipDataMetaFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataMetaFifo", "role": "full_n" }} , 
 	{ "name": "ipDataMetaFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataMetaFifo", "role": "write" }} , 
 	{ "name": "validIpAddressFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "validIpAddressFifo", "role": "din" }} , 
 	{ "name": "validIpAddressFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "validIpAddressFifo", "role": "full_n" }} , 
 	{ "name": "validIpAddressFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "validIpAddressFifo", "role": "write" }} , 
 	{ "name": "ipv4ProtocolFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ipv4ProtocolFifo", "role": "din" }} , 
 	{ "name": "ipv4ProtocolFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ProtocolFifo", "role": "full_n" }} , 
 	{ "name": "ipv4ProtocolFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ProtocolFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extract_ip_meta_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipDataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "validIpAddressFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "validIpAddressFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv4ProtocolFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ProtocolFifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	extract_ip_meta_512_s {
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		ipDataFifo {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		ipDataMetaFifo {Type O LastRead -1 FirstWrite 1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}
		validIpAddressFifo {Type O LastRead -1 FirstWrite 1}
		ipv4ProtocolFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	ipDataFifo { ap_fifo {  { ipDataFifo_dout fifo_data 0 577 }  { ipDataFifo_empty_n fifo_status 0 1 }  { ipDataFifo_read fifo_update 1 1 } } }
	ipDataMetaFifo { ap_fifo {  { ipDataMetaFifo_din fifo_data 1 1024 }  { ipDataMetaFifo_full_n fifo_status 0 1 }  { ipDataMetaFifo_write fifo_update 1 1 } } }
	validIpAddressFifo { ap_fifo {  { validIpAddressFifo_din fifo_data 1 1 }  { validIpAddressFifo_full_n fifo_status 0 1 }  { validIpAddressFifo_write fifo_update 1 1 } } }
	ipv4ProtocolFifo { ap_fifo {  { ipv4ProtocolFifo_din fifo_data 1 8 }  { ipv4ProtocolFifo_full_n fifo_status 0 1 }  { ipv4ProtocolFifo_write fifo_update 1 1 } } }
}
