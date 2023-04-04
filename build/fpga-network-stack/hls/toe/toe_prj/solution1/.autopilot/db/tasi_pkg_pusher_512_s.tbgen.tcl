set moduleName tasi_pkg_pusher_512_s
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
set C_modelName {tasi_pkg_pusher<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_txwrite_cmd int 72 regular {axi_s 1 volatile  { m_axis_txwrite_cmd Data } }  }
	{ tasi_meta2pkgPushCmd int 72 regular {fifo 0 volatile } {global 0}  }
	{ tasi_dataFifo int 577 regular {fifo 0 volatile } {global 0}  }
	{ txBufferWriteData_internal int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_txwrite_cmd", "interface" : "axis", "bitwidth" : 72, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tasi_meta2pkgPushCmd", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tasi_dataFifo", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txBufferWriteData_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ tasi_dataFifo_dout sc_in sc_lv 577 signal 2 } 
	{ tasi_dataFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ tasi_dataFifo_read sc_out sc_logic 1 signal 2 } 
	{ tasi_meta2pkgPushCmd_dout sc_in sc_lv 72 signal 1 } 
	{ tasi_meta2pkgPushCmd_empty_n sc_in sc_logic 1 signal 1 } 
	{ tasi_meta2pkgPushCmd_read sc_out sc_logic 1 signal 1 } 
	{ txBufferWriteData_internal_din sc_out sc_lv 1024 signal 3 } 
	{ txBufferWriteData_internal_full_n sc_in sc_logic 1 signal 3 } 
	{ txBufferWriteData_internal_write sc_out sc_logic 1 signal 3 } 
	{ m_axis_txwrite_cmd_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_txwrite_cmd_TDATA sc_out sc_lv 72 signal 0 } 
	{ m_axis_txwrite_cmd_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tasi_dataFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "tasi_dataFifo", "role": "dout" }} , 
 	{ "name": "tasi_dataFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tasi_dataFifo", "role": "empty_n" }} , 
 	{ "name": "tasi_dataFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tasi_dataFifo", "role": "read" }} , 
 	{ "name": "tasi_meta2pkgPushCmd_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "tasi_meta2pkgPushCmd", "role": "dout" }} , 
 	{ "name": "tasi_meta2pkgPushCmd_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tasi_meta2pkgPushCmd", "role": "empty_n" }} , 
 	{ "name": "tasi_meta2pkgPushCmd_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tasi_meta2pkgPushCmd", "role": "read" }} , 
 	{ "name": "txBufferWriteData_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txBufferWriteData_internal", "role": "din" }} , 
 	{ "name": "txBufferWriteData_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferWriteData_internal", "role": "full_n" }} , 
 	{ "name": "txBufferWriteData_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferWriteData_internal", "role": "write" }} , 
 	{ "name": "m_axis_txwrite_cmd_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_txwrite_cmd", "role": "TREADY" }} , 
 	{ "name": "m_axis_txwrite_cmd_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "m_axis_txwrite_cmd", "role": "TDATA" }} , 
 	{ "name": "m_axis_txwrite_cmd_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_txwrite_cmd", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "tasi_pkg_pusher_512_s",
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
			{"Name" : "m_axis_txwrite_cmd", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_txwrite_cmd_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tasiPkgPushState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_bbt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_type_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_dsa_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_eof_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_drr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_saddr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_tag_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmd_rsvd_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lengthFirstPkg_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tasi_meta2pkgPushCmd", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tasi_meta2pkgPushCmd_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tasi_dataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tasi_dataFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txBufferWriteData_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txBufferWriteData_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_64_1_1_U365", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_txwrite_cmd_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tasi_pkg_pusher_512_s {
		m_axis_txwrite_cmd {Type O LastRead -1 FirstWrite 1}
		tasiPkgPushState {Type IO LastRead -1 FirstWrite -1}
		cmd_bbt_V {Type IO LastRead -1 FirstWrite -1}
		cmd_type_V {Type IO LastRead -1 FirstWrite -1}
		cmd_dsa_V {Type IO LastRead -1 FirstWrite -1}
		cmd_eof_V {Type IO LastRead -1 FirstWrite -1}
		cmd_drr_V {Type IO LastRead -1 FirstWrite -1}
		cmd_saddr_V {Type IO LastRead -1 FirstWrite -1}
		cmd_tag_V {Type IO LastRead -1 FirstWrite -1}
		cmd_rsvd_V {Type IO LastRead -1 FirstWrite -1}
		lengthFirstPkg_V {Type IO LastRead -1 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		offset_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		tasi_meta2pkgPushCmd {Type I LastRead 0 FirstWrite -1}
		tasi_dataFifo {Type I LastRead 0 FirstWrite -1}
		txBufferWriteData_internal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_txwrite_cmd { axis {  { m_axis_txwrite_cmd_TREADY out_acc 0 1 }  { m_axis_txwrite_cmd_TDATA out_data 1 72 }  { m_axis_txwrite_cmd_TVALID out_vld 1 1 } } }
	tasi_meta2pkgPushCmd { ap_fifo {  { tasi_meta2pkgPushCmd_dout fifo_data 0 72 }  { tasi_meta2pkgPushCmd_empty_n fifo_status 0 1 }  { tasi_meta2pkgPushCmd_read fifo_update 1 1 } } }
	tasi_dataFifo { ap_fifo {  { tasi_dataFifo_dout fifo_data 0 577 }  { tasi_dataFifo_empty_n fifo_status 0 1 }  { tasi_dataFifo_read fifo_update 1 1 } } }
	txBufferWriteData_internal { ap_fifo {  { txBufferWriteData_internal_din fifo_data 1 1024 }  { txBufferWriteData_internal_full_n fifo_status 0 1 }  { txBufferWriteData_internal_write fifo_update 1 1 } } }
}
