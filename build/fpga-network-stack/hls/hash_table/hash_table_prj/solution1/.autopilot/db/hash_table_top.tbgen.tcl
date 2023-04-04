set moduleName hash_table_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hash_table_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_lup_req int 96 regular {axi_s 0 volatile  { s_axis_lup_req Data } }  }
	{ s_axis_upd_req int 144 regular {axi_s 0 volatile  { s_axis_upd_req Data } }  }
	{ m_axis_lup_rsp int 120 regular {axi_s 1 volatile  { m_axis_lup_rsp Data } }  }
	{ m_axis_upd_rsp int 152 regular {axi_s 1 volatile  { m_axis_upd_rsp Data } }  }
	{ regInsertFailureCount int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_lup_req", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_upd_req", "interface" : "axis", "bitwidth" : 144, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_lup_rsp", "interface" : "axis", "bitwidth" : 120, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_upd_rsp", "interface" : "axis", "bitwidth" : 152, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regInsertFailureCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_lup_req_TDATA sc_in sc_lv 96 signal 0 } 
	{ s_axis_lup_req_TVALID sc_in sc_logic 1 invld 0 } 
	{ s_axis_lup_req_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axis_upd_req_TDATA sc_in sc_lv 144 signal 1 } 
	{ s_axis_upd_req_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_upd_req_TREADY sc_out sc_logic 1 inacc 1 } 
	{ m_axis_lup_rsp_TDATA sc_out sc_lv 120 signal 2 } 
	{ m_axis_lup_rsp_TVALID sc_out sc_logic 1 outvld 2 } 
	{ m_axis_lup_rsp_TREADY sc_in sc_logic 1 outacc 2 } 
	{ m_axis_upd_rsp_TDATA sc_out sc_lv 152 signal 3 } 
	{ m_axis_upd_rsp_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_upd_rsp_TREADY sc_in sc_logic 1 outacc 3 } 
	{ regInsertFailureCount sc_out sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_lup_req_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_lup_req", "role": "TDATA" }} , 
 	{ "name": "s_axis_lup_req_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_lup_req", "role": "TVALID" }} , 
 	{ "name": "s_axis_lup_req_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_lup_req", "role": "TREADY" }} , 
 	{ "name": "s_axis_upd_req_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":144, "type": "signal", "bundle":{"name": "s_axis_upd_req", "role": "TDATA" }} , 
 	{ "name": "s_axis_upd_req_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_upd_req", "role": "TVALID" }} , 
 	{ "name": "s_axis_upd_req_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_upd_req", "role": "TREADY" }} , 
 	{ "name": "m_axis_lup_rsp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "m_axis_lup_rsp", "role": "TDATA" }} , 
 	{ "name": "m_axis_lup_rsp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_lup_rsp", "role": "TVALID" }} , 
 	{ "name": "m_axis_lup_rsp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_lup_rsp", "role": "TREADY" }} , 
 	{ "name": "m_axis_upd_rsp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":152, "type": "signal", "bundle":{"name": "m_axis_upd_rsp", "role": "TDATA" }} , 
 	{ "name": "m_axis_upd_rsp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_upd_rsp", "role": "TVALID" }} , 
 	{ "name": "m_axis_upd_rsp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_upd_rsp", "role": "TREADY" }} , 
 	{ "name": "regInsertFailureCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regInsertFailureCount", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "hash_table_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "86",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_lup_req", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_lup_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_upd_req", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_upd_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_lup_rsp", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_lup_rsp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_upd_rsp", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_upd_rsp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regInsertFailureCount", "Type" : "None", "Direction" : "O"},
			{"Name" : "cuckooTables", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_9", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_18", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_1", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_10", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_19", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_2", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_11", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_20", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_3", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_12", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_21", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_4", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_13", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_22", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_5", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_14", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_23", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_6", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_15", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_24", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_7", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_16", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_25", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_8", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_17", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "cuckooTables_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hash_table_top_Pipeline_insertLoop_fu_781", "Port" : "cuckooTables_26", "Inst_start_state" : "1", "Inst_end_state" : "7"}]},
			{"Name" : "insertFailureCounter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "victimBit_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_9_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_18_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_10_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_19_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_11_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_20_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_12_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_21_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_22_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_5_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_14_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_23_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_6_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_15_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_24_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_7_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_16_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_25_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_17_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hash_table_top_Pipeline_insertLoop_fu_781", "Parent" : "0", "Child" : ["29", "30", "31", "32", "33"],
		"CDFG" : "hash_table_top_Pipeline_insertLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "victimBit_V_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "request_key_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "request_value_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xor_ln885_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cuckooTables", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_26", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "insertLoop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state9", "ap_ST_fsm_state10"]}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_table_top_Pipeline_insertLoop_fu_781.call_ret2_calculate_hashes_fu_1647", "Parent" : "28",
		"CDFG" : "calculate_hashes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_table_top_Pipeline_insertLoop_fu_781.mux_98_6_1_1_U2", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_table_top_Pipeline_insertLoop_fu_781.mux_94_64_1_1_U3", "Parent" : "28"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_table_top_Pipeline_insertLoop_fu_781.mux_94_16_1_1_U4", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_table_top_Pipeline_insertLoop_fu_781.mux_94_1_1_1_U5", "Parent" : "28"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_hashes_fu_844", "Parent" : "0",
		"CDFG" : "calculate_hashes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_932_16_1_1_U42", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_lup_req_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_upd_req_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_lup_rsp_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_upd_rsp_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hash_table_top {
		s_axis_lup_req {Type I LastRead 0 FirstWrite -1}
		s_axis_upd_req {Type I LastRead 0 FirstWrite -1}
		m_axis_lup_rsp {Type O LastRead -1 FirstWrite 5}
		m_axis_upd_rsp {Type O LastRead -1 FirstWrite 3}
		regInsertFailureCount {Type O LastRead -1 FirstWrite 2}
		cuckooTables {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_9 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_18 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_1 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_10 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_19 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_2 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_11 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_20 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_3 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_12 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_21 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_4 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_13 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_22 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_5 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_14 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_23 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_6 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_15 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_24 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_7 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_16 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_25 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_8 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_17 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_26 {Type IO LastRead -1 FirstWrite -1}
		insertFailureCounter {Type IO LastRead -1 FirstWrite -1}
		victimBit_V {Type IO LastRead -1 FirstWrite -1}}
	hash_table_top_Pipeline_insertLoop {
		victimBit_V_load {Type I LastRead 0 FirstWrite -1}
		request_key_V_1 {Type I LastRead 0 FirstWrite -1}
		request_value_V {Type I LastRead 0 FirstWrite -1}
		rhs_out {Type O LastRead -1 FirstWrite 6}
		xor_ln885_out {Type O LastRead -1 FirstWrite 8}
		cuckooTables {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_9 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_18 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_1 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_10 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_19 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_2 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_11 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_20 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_3 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_12 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_21 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_4 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_13 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_22 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_5 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_14 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_23 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_6 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_15 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_24 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_7 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_16 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_25 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_8 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_17 {Type IO LastRead 3 FirstWrite 7}
		cuckooTables_26 {Type IO LastRead 3 FirstWrite 7}}
	calculate_hashes {
		key {Type I LastRead 0 FirstWrite -1}}
	calculate_hashes {
		key {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "86"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "87"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_lup_req { axis {  { s_axis_lup_req_TDATA in_data 0 96 }  { s_axis_lup_req_TVALID in_vld 0 1 }  { s_axis_lup_req_TREADY in_acc 1 1 } } }
	s_axis_upd_req { axis {  { s_axis_upd_req_TDATA in_data 0 144 }  { s_axis_upd_req_TVALID in_vld 0 1 }  { s_axis_upd_req_TREADY in_acc 1 1 } } }
	m_axis_lup_rsp { axis {  { m_axis_lup_rsp_TDATA out_data 1 120 }  { m_axis_lup_rsp_TVALID out_vld 1 1 }  { m_axis_lup_rsp_TREADY out_acc 0 1 } } }
	m_axis_upd_rsp { axis {  { m_axis_upd_rsp_TDATA out_data 1 152 }  { m_axis_upd_rsp_TVALID out_vld 1 1 }  { m_axis_upd_rsp_TREADY out_acc 0 1 } } }
	regInsertFailureCount { ap_none {  { regInsertFailureCount out_data 1 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
