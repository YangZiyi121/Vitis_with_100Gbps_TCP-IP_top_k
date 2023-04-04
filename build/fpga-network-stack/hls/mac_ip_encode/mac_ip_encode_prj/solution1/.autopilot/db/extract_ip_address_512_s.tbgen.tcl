set moduleName extract_ip_address_512_s
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
set C_modelName {extract_ip_address<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_arp_lookup_request int 32 regular {axi_s 1 volatile  { m_axis_arp_lookup_request Data } }  }
	{ regSubNetMask int 32 regular {fifo 0}  }
	{ regDefaultGateway int 32 regular {fifo 0}  }
	{ dataIn_internal int 1024 regular {fifo 0 volatile } {global 0}  }
	{ dataStreamBuffer0 int 577 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_arp_lookup_request", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regSubNetMask", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regDefaultGateway", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreamBuffer0", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ dataIn_internal_dout sc_in sc_lv 1024 signal 3 } 
	{ dataIn_internal_empty_n sc_in sc_logic 1 signal 3 } 
	{ dataIn_internal_read sc_out sc_logic 1 signal 3 } 
	{ regDefaultGateway_dout sc_in sc_lv 32 signal 2 } 
	{ regDefaultGateway_empty_n sc_in sc_logic 1 signal 2 } 
	{ regDefaultGateway_read sc_out sc_logic 1 signal 2 } 
	{ regSubNetMask_dout sc_in sc_lv 32 signal 1 } 
	{ regSubNetMask_empty_n sc_in sc_logic 1 signal 1 } 
	{ regSubNetMask_read sc_out sc_logic 1 signal 1 } 
	{ dataStreamBuffer0_din sc_out sc_lv 577 signal 4 } 
	{ dataStreamBuffer0_full_n sc_in sc_logic 1 signal 4 } 
	{ dataStreamBuffer0_write sc_out sc_logic 1 signal 4 } 
	{ m_axis_arp_lookup_request_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_arp_lookup_request_TDATA sc_out sc_lv 32 signal 0 } 
	{ m_axis_arp_lookup_request_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataIn_internal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "dataIn_internal", "role": "dout" }} , 
 	{ "name": "dataIn_internal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_internal", "role": "empty_n" }} , 
 	{ "name": "dataIn_internal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_internal", "role": "read" }} , 
 	{ "name": "regDefaultGateway_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regDefaultGateway", "role": "dout" }} , 
 	{ "name": "regDefaultGateway_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regDefaultGateway", "role": "empty_n" }} , 
 	{ "name": "regDefaultGateway_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regDefaultGateway", "role": "read" }} , 
 	{ "name": "regSubNetMask_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regSubNetMask", "role": "dout" }} , 
 	{ "name": "regSubNetMask_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regSubNetMask", "role": "empty_n" }} , 
 	{ "name": "regSubNetMask_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regSubNetMask", "role": "read" }} , 
 	{ "name": "dataStreamBuffer0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "dataStreamBuffer0", "role": "din" }} , 
 	{ "name": "dataStreamBuffer0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreamBuffer0", "role": "full_n" }} , 
 	{ "name": "dataStreamBuffer0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreamBuffer0", "role": "write" }} , 
 	{ "name": "m_axis_arp_lookup_request_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_lookup_request", "role": "TREADY" }} , 
 	{ "name": "m_axis_arp_lookup_request_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_arp_lookup_request", "role": "TDATA" }} , 
 	{ "name": "m_axis_arp_lookup_request_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_lookup_request", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "extract_ip_address_512_s",
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
		"Port" : [
			{"Name" : "m_axis_arp_lookup_request", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_lookup_request_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSubNetMask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regSubNetMask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regDefaultGateway", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regDefaultGateway_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreamBuffer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreamBuffer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metaWritten", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_arp_lookup_request_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	extract_ip_address_512_s {
		m_axis_arp_lookup_request {Type O LastRead -1 FirstWrite 2}
		regSubNetMask {Type I LastRead 1 FirstWrite -1}
		regDefaultGateway {Type I LastRead 1 FirstWrite -1}
		dataIn_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		dataStreamBuffer0 {Type O LastRead -1 FirstWrite 1}
		metaWritten {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_arp_lookup_request { axis {  { m_axis_arp_lookup_request_TREADY out_acc 0 1 }  { m_axis_arp_lookup_request_TDATA out_data 1 32 }  { m_axis_arp_lookup_request_TVALID out_vld 1 1 } } }
	regSubNetMask { ap_fifo {  { regSubNetMask_dout fifo_data 0 32 }  { regSubNetMask_empty_n fifo_status 0 1 }  { regSubNetMask_read fifo_update 1 1 } } }
	regDefaultGateway { ap_fifo {  { regDefaultGateway_dout fifo_data 0 32 }  { regDefaultGateway_empty_n fifo_status 0 1 }  { regDefaultGateway_read fifo_update 1 1 } } }
	dataIn_internal { ap_fifo {  { dataIn_internal_dout fifo_data 0 1024 }  { dataIn_internal_empty_n fifo_status 0 1 }  { dataIn_internal_read fifo_update 1 1 } } }
	dataStreamBuffer0 { ap_fifo {  { dataStreamBuffer0_din fifo_data 1 577 }  { dataStreamBuffer0_full_n fifo_status 0 1 }  { dataStreamBuffer0_write fifo_update 1 1 } } }
}
