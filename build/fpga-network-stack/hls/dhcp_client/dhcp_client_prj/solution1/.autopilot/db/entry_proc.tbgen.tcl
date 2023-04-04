set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ dhcpEnable int 1 regular {pointer 0}  }
	{ dhcpEnable_c int 1 regular {fifo 1}  }
	{ inputIpAddress int 32 regular {pointer 0}  }
	{ inputIpAddress_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dhcpEnable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dhcpEnable_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inputIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inputIpAddress_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dhcpEnable sc_in sc_lv 1 signal 0 } 
	{ dhcpEnable_c_din sc_out sc_lv 1 signal 1 } 
	{ dhcpEnable_c_full_n sc_in sc_logic 1 signal 1 } 
	{ dhcpEnable_c_write sc_out sc_logic 1 signal 1 } 
	{ inputIpAddress sc_in sc_lv 32 signal 2 } 
	{ inputIpAddress_c_din sc_out sc_lv 32 signal 3 } 
	{ inputIpAddress_c_full_n sc_in sc_logic 1 signal 3 } 
	{ inputIpAddress_c_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dhcpEnable", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable", "role": "default" }} , 
 	{ "name": "dhcpEnable_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable_c", "role": "din" }} , 
 	{ "name": "dhcpEnable_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable_c", "role": "full_n" }} , 
 	{ "name": "dhcpEnable_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable_c", "role": "write" }} , 
 	{ "name": "inputIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputIpAddress", "role": "default" }} , 
 	{ "name": "inputIpAddress_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputIpAddress_c", "role": "din" }} , 
 	{ "name": "inputIpAddress_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputIpAddress_c", "role": "full_n" }} , 
 	{ "name": "inputIpAddress_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputIpAddress_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dhcpEnable", "Type" : "None", "Direction" : "I"},
			{"Name" : "dhcpEnable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputIpAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		dhcpEnable {Type I LastRead 0 FirstWrite -1}
		dhcpEnable_c {Type O LastRead -1 FirstWrite 0}
		inputIpAddress {Type I LastRead 0 FirstWrite -1}
		inputIpAddress_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dhcpEnable { ap_none {  { dhcpEnable in_data 0 1 } } }
	dhcpEnable_c { ap_fifo {  { dhcpEnable_c_din fifo_data 1 1 }  { dhcpEnable_c_full_n fifo_status 0 1 }  { dhcpEnable_c_write fifo_update 1 1 } } }
	inputIpAddress { ap_none {  { inputIpAddress in_data 0 32 } } }
	inputIpAddress_c { ap_fifo {  { inputIpAddress_c_din fifo_data 1 32 }  { inputIpAddress_c_full_n fifo_status 0 1 }  { inputIpAddress_c_write fifo_update 1 1 } } }
}
