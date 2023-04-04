set moduleName split_tx_meta
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
set C_modelName {split_tx_meta}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_tx_meta int 176 regular {axi_s 0 volatile  { s_axis_tx_meta Data } }  }
	{ m_axis_tx_meta int 48 regular {axi_s 1 volatile  { m_axis_tx_meta Data } }  }
	{ tx_udpMetaFifo int 64 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_tx_meta", "interface" : "axis", "bitwidth" : 176, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tx_meta", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_udpMetaFifo", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ s_axis_tx_meta_TVALID sc_in sc_logic 1 invld 0 } 
	{ m_axis_tx_meta_TREADY sc_in sc_logic 1 outacc 1 } 
	{ tx_udpMetaFifo_din sc_out sc_lv 64 signal 2 } 
	{ tx_udpMetaFifo_full_n sc_in sc_logic 1 signal 2 } 
	{ tx_udpMetaFifo_write sc_out sc_logic 1 signal 2 } 
	{ s_axis_tx_meta_TDATA sc_in sc_lv 176 signal 0 } 
	{ s_axis_tx_meta_TREADY sc_out sc_logic 1 inacc 0 } 
	{ m_axis_tx_meta_TDATA sc_out sc_lv 48 signal 1 } 
	{ m_axis_tx_meta_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_tx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_meta", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_meta", "role": "TREADY" }} , 
 	{ "name": "tx_udpMetaFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx_udpMetaFifo", "role": "din" }} , 
 	{ "name": "tx_udpMetaFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_udpMetaFifo", "role": "full_n" }} , 
 	{ "name": "tx_udpMetaFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_udpMetaFifo", "role": "write" }} , 
 	{ "name": "s_axis_tx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":176, "type": "signal", "bundle":{"name": "s_axis_tx_meta", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_meta", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_tx_meta", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_meta", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "split_tx_meta",
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
			{"Name" : "s_axis_tx_meta", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_meta", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_udpMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tx_udpMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tx_meta_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_meta_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	split_tx_meta {
		s_axis_tx_meta {Type I LastRead 0 FirstWrite -1}
		m_axis_tx_meta {Type O LastRead -1 FirstWrite 1}
		tx_udpMetaFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_tx_meta { axis {  { s_axis_tx_meta_TVALID in_vld 0 1 }  { s_axis_tx_meta_TDATA in_data 0 176 }  { s_axis_tx_meta_TREADY in_acc 1 1 } } }
	m_axis_tx_meta { axis {  { m_axis_tx_meta_TREADY out_acc 0 1 }  { m_axis_tx_meta_TDATA out_data 1 48 }  { m_axis_tx_meta_TVALID out_vld 1 1 } } }
	tx_udpMetaFifo { ap_fifo {  { tx_udpMetaFifo_din fifo_data 1 64 }  { tx_udpMetaFifo_full_n fifo_status 0 1 }  { tx_udpMetaFifo_write fifo_update 1 1 } } }
}
