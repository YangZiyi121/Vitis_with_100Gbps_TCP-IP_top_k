set moduleName convert_axis_to_net_axis_64_1
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
set C_modelName {convert_axis_to_net_axis<64>.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ udpIn_V_data_V int 64 regular {axi_s 0 volatile  { udpIn Data } }  }
	{ udpIn_V_keep_V int 8 regular {axi_s 0 volatile  { udpIn Keep } }  }
	{ udpIn_V_strb_V int 8 regular {axi_s 0 volatile  { udpIn Strb } }  }
	{ udpIn_V_last_V int 1 regular {axi_s 0 volatile  { udpIn Last } }  }
	{ udpIn_internal int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "udpIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "udpIn_internal", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ udpIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ udpIn_internal_din sc_out sc_lv 128 signal 4 } 
	{ udpIn_internal_full_n sc_in sc_logic 1 signal 4 } 
	{ udpIn_internal_write sc_out sc_logic 1 signal 4 } 
	{ udpIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ udpIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ udpIn_TKEEP sc_in sc_lv 8 signal 1 } 
	{ udpIn_TSTRB sc_in sc_lv 8 signal 2 } 
	{ udpIn_TLAST sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "udpIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "udpIn_V_last_V", "role": "default" }} , 
 	{ "name": "udpIn_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "udpIn_internal", "role": "din" }} , 
 	{ "name": "udpIn_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpIn_internal", "role": "full_n" }} , 
 	{ "name": "udpIn_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udpIn_internal", "role": "write" }} , 
 	{ "name": "udpIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "udpIn_V_data_V", "role": "default" }} , 
 	{ "name": "udpIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "udpIn_V_last_V", "role": "default" }} , 
 	{ "name": "udpIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "udpIn_V_keep_V", "role": "default" }} , 
 	{ "name": "udpIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "udpIn_V_strb_V", "role": "default" }} , 
 	{ "name": "udpIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "udpIn_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "convert_axis_to_net_axis_64_1",
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
			{"Name" : "udpIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "udpIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "udpIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "udpIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "udpIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "udpIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "udpIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_udpIn_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_udpIn_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_udpIn_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_udpIn_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convert_axis_to_net_axis_64_1 {
		udpIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		udpIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		udpIn_internal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	udpIn_V_data_V { axis {  { udpIn_TDATA in_data 0 64 } } }
	udpIn_V_keep_V { axis {  { udpIn_TKEEP in_data 0 8 } } }
	udpIn_V_strb_V { axis {  { udpIn_TSTRB in_data 0 8 } } }
	udpIn_V_last_V { axis {  { udpIn_TVALID in_vld 0 1 }  { udpIn_TREADY in_acc 1 1 }  { udpIn_TLAST in_data 0 1 } } }
	udpIn_internal { ap_fifo {  { udpIn_internal_din fifo_data 1 128 }  { udpIn_internal_full_n fifo_status 0 1 }  { udpIn_internal_write fifo_update 1 1 } } }
}
