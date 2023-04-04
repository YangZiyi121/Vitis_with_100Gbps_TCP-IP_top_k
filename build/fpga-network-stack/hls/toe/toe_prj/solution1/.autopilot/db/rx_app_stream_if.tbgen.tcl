set moduleName rx_app_stream_if
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
set C_modelName {rx_app_stream_if}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_rx_data_req int 32 regular {axi_s 0 volatile  { s_axis_rx_data_req Data } }  }
	{ m_axis_rx_data_rsp_metadata int 16 regular {axi_s 1 volatile  { m_axis_rx_data_rsp_metadata Data } }  }
	{ rxApp2rxSar_upd_req int 35 regular {fifo 1 volatile } {global 1}  }
	{ rxSar2rxApp_upd_rsp int 35 regular {fifo 0 volatile } {global 0}  }
	{ rxBufferReadCmd int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_rx_data_req", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_rx_data_rsp_metadata", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rxApp2rxSar_upd_req", "interface" : "fifo", "bitwidth" : 35, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rxSar2rxApp_upd_rsp", "interface" : "fifo", "bitwidth" : 35, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rxBufferReadCmd", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ s_axis_rx_data_req_TVALID sc_in sc_logic 1 invld 0 } 
	{ rxSar2rxApp_upd_rsp_dout sc_in sc_lv 35 signal 3 } 
	{ rxSar2rxApp_upd_rsp_empty_n sc_in sc_logic 1 signal 3 } 
	{ rxSar2rxApp_upd_rsp_read sc_out sc_logic 1 signal 3 } 
	{ rxApp2rxSar_upd_req_din sc_out sc_lv 35 signal 2 } 
	{ rxApp2rxSar_upd_req_full_n sc_in sc_logic 1 signal 2 } 
	{ rxApp2rxSar_upd_req_write sc_out sc_logic 1 signal 2 } 
	{ m_axis_rx_data_rsp_metadata_TREADY sc_in sc_logic 1 outacc 1 } 
	{ rxBufferReadCmd_din sc_out sc_lv 1 signal 4 } 
	{ rxBufferReadCmd_full_n sc_in sc_logic 1 signal 4 } 
	{ rxBufferReadCmd_write sc_out sc_logic 1 signal 4 } 
	{ s_axis_rx_data_req_TDATA sc_in sc_lv 32 signal 0 } 
	{ s_axis_rx_data_req_TREADY sc_out sc_logic 1 inacc 0 } 
	{ m_axis_rx_data_rsp_metadata_TDATA sc_out sc_lv 16 signal 1 } 
	{ m_axis_rx_data_rsp_metadata_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_req_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_req", "role": "TVALID" }} , 
 	{ "name": "rxSar2rxApp_upd_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "rxSar2rxApp_upd_rsp", "role": "dout" }} , 
 	{ "name": "rxSar2rxApp_upd_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxSar2rxApp_upd_rsp", "role": "empty_n" }} , 
 	{ "name": "rxSar2rxApp_upd_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxSar2rxApp_upd_rsp", "role": "read" }} , 
 	{ "name": "rxApp2rxSar_upd_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "rxApp2rxSar_upd_req", "role": "din" }} , 
 	{ "name": "rxApp2rxSar_upd_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxApp2rxSar_upd_req", "role": "full_n" }} , 
 	{ "name": "rxApp2rxSar_upd_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxApp2rxSar_upd_req", "role": "write" }} , 
 	{ "name": "m_axis_rx_data_rsp_metadata_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_rx_data_rsp_metadata", "role": "TREADY" }} , 
 	{ "name": "rxBufferReadCmd_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxBufferReadCmd", "role": "din" }} , 
 	{ "name": "rxBufferReadCmd_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxBufferReadCmd", "role": "full_n" }} , 
 	{ "name": "rxBufferReadCmd_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rxBufferReadCmd", "role": "write" }} , 
 	{ "name": "s_axis_rx_data_req_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_rx_data_req", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_req_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_req", "role": "TREADY" }} , 
 	{ "name": "m_axis_rx_data_rsp_metadata_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_rx_data_rsp_metadata", "role": "TDATA" }} , 
 	{ "name": "m_axis_rx_data_rsp_metadata_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_rx_data_rsp_metadata", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "rx_app_stream_if",
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
			{"Name" : "s_axis_rx_data_req", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_rx_data_rsp_metadata", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_rx_data_rsp_metadata_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rasi_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxApp2rxSar_upd_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxApp2rxSar_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rasi_readLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxSar2rxApp_upd_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxSar2rxApp_upd_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxBufferReadCmd", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxBufferReadCmd_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_req_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_rx_data_rsp_metadata_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rx_app_stream_if {
		s_axis_rx_data_req {Type I LastRead 0 FirstWrite -1}
		m_axis_rx_data_rsp_metadata {Type O LastRead -1 FirstWrite 1}
		rasi_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		rxApp2rxSar_upd_req {Type O LastRead -1 FirstWrite 1}
		rasi_readLength_V {Type IO LastRead -1 FirstWrite -1}
		rxSar2rxApp_upd_rsp {Type I LastRead 0 FirstWrite -1}
		rxBufferReadCmd {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_rx_data_req { axis {  { s_axis_rx_data_req_TVALID in_vld 0 1 }  { s_axis_rx_data_req_TDATA in_data 0 32 }  { s_axis_rx_data_req_TREADY in_acc 1 1 } } }
	m_axis_rx_data_rsp_metadata { axis {  { m_axis_rx_data_rsp_metadata_TREADY out_acc 0 1 }  { m_axis_rx_data_rsp_metadata_TDATA out_data 1 16 }  { m_axis_rx_data_rsp_metadata_TVALID out_vld 1 1 } } }
	rxApp2rxSar_upd_req { ap_fifo {  { rxApp2rxSar_upd_req_din fifo_data 1 35 }  { rxApp2rxSar_upd_req_full_n fifo_status 0 1 }  { rxApp2rxSar_upd_req_write fifo_update 1 1 } } }
	rxSar2rxApp_upd_rsp { ap_fifo {  { rxSar2rxApp_upd_rsp_dout fifo_data 0 35 }  { rxSar2rxApp_upd_rsp_empty_n fifo_status 0 1 }  { rxSar2rxApp_upd_rsp_read fifo_update 1 1 } } }
	rxBufferReadCmd { ap_fifo {  { rxBufferReadCmd_din fifo_data 1 1 }  { rxBufferReadCmd_full_n fifo_status 0 1 }  { rxBufferReadCmd_write fifo_update 1 1 } } }
}
