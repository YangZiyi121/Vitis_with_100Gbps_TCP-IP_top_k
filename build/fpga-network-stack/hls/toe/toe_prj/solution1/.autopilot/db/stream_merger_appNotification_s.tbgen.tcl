set moduleName stream_merger_appNotification_s
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
set C_modelName {stream_merger<appNotification>}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_notification int 88 regular {axi_s 1 volatile  { m_axis_notification Data } }  }
	{ rxEng2rxApp_notification int 81 regular {fifo 0 volatile } {global 0}  }
	{ timer2rxApp_notification int 81 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_notification", "interface" : "axis", "bitwidth" : 88, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rxEng2rxApp_notification", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "timer2rxApp_notification", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY", "extern" : 0} ]}
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
	{ rxEng2rxApp_notification_dout sc_in sc_lv 81 signal 1 } 
	{ rxEng2rxApp_notification_empty_n sc_in sc_logic 1 signal 1 } 
	{ rxEng2rxApp_notification_read sc_out sc_logic 1 signal 1 } 
	{ timer2rxApp_notification_dout sc_in sc_lv 81 signal 2 } 
	{ timer2rxApp_notification_empty_n sc_in sc_logic 1 signal 2 } 
	{ timer2rxApp_notification_read sc_out sc_logic 1 signal 2 } 
	{ m_axis_notification_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_notification_TDATA sc_out sc_lv 88 signal 0 } 
	{ m_axis_notification_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxEng2rxApp_notification_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "rxEng2rxApp_notification", "role": "dout" }} , 
 	{ "name": "rxEng2rxApp_notification_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2rxApp_notification", "role": "empty_n" }} , 
 	{ "name": "rxEng2rxApp_notification_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxEng2rxApp_notification", "role": "read" }} , 
 	{ "name": "timer2rxApp_notification_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "timer2rxApp_notification", "role": "dout" }} , 
 	{ "name": "timer2rxApp_notification_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2rxApp_notification", "role": "empty_n" }} , 
 	{ "name": "timer2rxApp_notification_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2rxApp_notification", "role": "read" }} , 
 	{ "name": "m_axis_notification_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_notification", "role": "TREADY" }} , 
 	{ "name": "m_axis_notification_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":88, "type": "signal", "bundle":{"name": "m_axis_notification", "role": "TDATA" }} , 
 	{ "name": "m_axis_notification_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_notification", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "stream_merger_appNotification_s",
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
			{"Name" : "m_axis_notification", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_notification_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxEng2rxApp_notification", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxEng2rxApp_notification_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timer2rxApp_notification", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timer2rxApp_notification_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_notification_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	stream_merger_appNotification_s {
		m_axis_notification {Type O LastRead -1 FirstWrite 2}
		rxEng2rxApp_notification {Type I LastRead 0 FirstWrite -1}
		timer2rxApp_notification {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_notification { axis {  { m_axis_notification_TREADY out_acc 0 1 }  { m_axis_notification_TDATA out_data 1 88 }  { m_axis_notification_TVALID out_vld 1 1 } } }
	rxEng2rxApp_notification { ap_fifo {  { rxEng2rxApp_notification_dout fifo_data 0 81 }  { rxEng2rxApp_notification_empty_n fifo_status 0 1 }  { rxEng2rxApp_notification_read fifo_update 1 1 } } }
	timer2rxApp_notification { ap_fifo {  { timer2rxApp_notification_dout fifo_data 0 81 }  { timer2rxApp_notification_empty_n fifo_status 0 1 }  { timer2rxApp_notification_read fifo_update 1 1 } } }
}
