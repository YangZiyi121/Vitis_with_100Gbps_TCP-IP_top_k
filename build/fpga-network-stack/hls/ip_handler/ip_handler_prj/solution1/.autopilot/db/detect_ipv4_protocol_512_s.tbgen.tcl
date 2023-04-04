set moduleName detect_ipv4_protocol_512_s
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
set C_modelName {detect_ipv4_protocol<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ ipv4ProtocolFifo int 8 regular {fifo 0 volatile } {global 0}  }
	{ ipv4ValidFifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ ipDataCutFifo int 577 regular {fifo 0 volatile } {global 0}  }
	{ m_axis_icmp_internal int 1024 regular {fifo 1 volatile } {global 1}  }
	{ udpDataFifo int 577 regular {fifo 1 volatile } {global 1}  }
	{ m_axis_tcp_internal int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ipv4ProtocolFifo", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ipv4ValidFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ipDataCutFifo", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "m_axis_icmp_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "udpDataFifo", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "m_axis_tcp_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ipv4ProtocolFifo_dout sc_in sc_lv 8 signal 0 } 
	{ ipv4ProtocolFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ ipv4ProtocolFifo_read sc_out sc_logic 1 signal 0 } 
	{ ipv4ValidFifo_dout sc_in sc_lv 1 signal 1 } 
	{ ipv4ValidFifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ ipv4ValidFifo_read sc_out sc_logic 1 signal 1 } 
	{ ipDataCutFifo_dout sc_in sc_lv 577 signal 2 } 
	{ ipDataCutFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ ipDataCutFifo_read sc_out sc_logic 1 signal 2 } 
	{ m_axis_tcp_internal_din sc_out sc_lv 1024 signal 5 } 
	{ m_axis_tcp_internal_full_n sc_in sc_logic 1 signal 5 } 
	{ m_axis_tcp_internal_write sc_out sc_logic 1 signal 5 } 
	{ udpDataFifo_din sc_out sc_lv 577 signal 4 } 
	{ udpDataFifo_full_n sc_in sc_logic 1 signal 4 } 
	{ udpDataFifo_write sc_out sc_logic 1 signal 4 } 
	{ m_axis_icmp_internal_din sc_out sc_lv 1024 signal 3 } 
	{ m_axis_icmp_internal_full_n sc_in sc_logic 1 signal 3 } 
	{ m_axis_icmp_internal_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ipv4ProtocolFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ipv4ProtocolFifo", "role": "dout" }} , 
 	{ "name": "ipv4ProtocolFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ProtocolFifo", "role": "empty_n" }} , 
 	{ "name": "ipv4ProtocolFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ProtocolFifo", "role": "read" }} , 
 	{ "name": "ipv4ValidFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ValidFifo", "role": "dout" }} , 
 	{ "name": "ipv4ValidFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ValidFifo", "role": "empty_n" }} , 
 	{ "name": "ipv4ValidFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipv4ValidFifo", "role": "read" }} , 
 	{ "name": "ipDataCutFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ipDataCutFifo", "role": "dout" }} , 
 	{ "name": "ipDataCutFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataCutFifo", "role": "empty_n" }} , 
 	{ "name": "ipDataCutFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataCutFifo", "role": "read" }} , 
 	{ "name": "m_axis_tcp_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "m_axis_tcp_internal", "role": "din" }} , 
 	{ "name": "m_axis_tcp_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_internal", "role": "full_n" }} , 
 	{ "name": "m_axis_tcp_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_internal", "role": "write" }} , 
 	{ "name": "udpDataFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "udpDataFifo", "role": "din" }} , 
 	{ "name": "udpDataFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpDataFifo", "role": "full_n" }} , 
 	{ "name": "udpDataFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpDataFifo", "role": "write" }} , 
 	{ "name": "m_axis_icmp_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "m_axis_icmp_internal", "role": "din" }} , 
 	{ "name": "m_axis_icmp_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_icmp_internal", "role": "full_n" }} , 
 	{ "name": "m_axis_icmp_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_icmp_internal", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "detect_ipv4_protocol_512_s",
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
			{"Name" : "dip_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipv4ProtocolFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ProtocolFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ipv4ValidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipv4ValidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dip_ipProtocol_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataCutFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataCutFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_icmp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_icmp_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpDataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpDataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_internal_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	detect_ipv4_protocol_512_s {
		dip_state {Type IO LastRead -1 FirstWrite -1}
		ipv4ProtocolFifo {Type I LastRead 0 FirstWrite -1}
		ipv4ValidFifo {Type I LastRead 0 FirstWrite -1}
		dip_ipProtocol_V {Type IO LastRead -1 FirstWrite -1}
		ipDataCutFifo {Type I LastRead 0 FirstWrite -1}
		m_axis_icmp_internal {Type O LastRead -1 FirstWrite 1}
		udpDataFifo {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_internal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ipv4ProtocolFifo { ap_fifo {  { ipv4ProtocolFifo_dout fifo_data 0 8 }  { ipv4ProtocolFifo_empty_n fifo_status 0 1 }  { ipv4ProtocolFifo_read fifo_update 1 1 } } }
	ipv4ValidFifo { ap_fifo {  { ipv4ValidFifo_dout fifo_data 0 1 }  { ipv4ValidFifo_empty_n fifo_status 0 1 }  { ipv4ValidFifo_read fifo_update 1 1 } } }
	ipDataCutFifo { ap_fifo {  { ipDataCutFifo_dout fifo_data 0 577 }  { ipDataCutFifo_empty_n fifo_status 0 1 }  { ipDataCutFifo_read fifo_update 1 1 } } }
	m_axis_icmp_internal { ap_fifo {  { m_axis_icmp_internal_din fifo_data 1 1024 }  { m_axis_icmp_internal_full_n fifo_status 0 1 }  { m_axis_icmp_internal_write fifo_update 1 1 } } }
	udpDataFifo { ap_fifo {  { udpDataFifo_din fifo_data 1 577 }  { udpDataFifo_full_n fifo_status 0 1 }  { udpDataFifo_write fifo_update 1 1 } } }
	m_axis_tcp_internal { ap_fifo {  { m_axis_tcp_internal_din fifo_data 1 1024 }  { m_axis_tcp_internal_full_n fifo_status 0 1 }  { m_axis_tcp_internal_write fifo_update 1 1 } } }
}
