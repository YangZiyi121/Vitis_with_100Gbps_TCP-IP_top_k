set moduleName client_512_s
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
set C_modelName {client<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_open_connection int 48 regular {axi_s 1 volatile  { m_axis_open_connection Data } }  }
	{ runExperiment int 1 regular {fifo 0}  }
	{ useConn int 16 regular {fifo 0}  }
	{ useIpAddr int 16 regular {fifo 0}  }
	{ pkgWordCount int 16 regular {fifo 0}  }
	{ regBasePort int 16 regular {fifo 0}  }
	{ expectedRespInKB int 16 regular {fifo 0}  }
	{ clientPkgNum int 32 regular {fifo 0}  }
	{ regIpAddress0 int 32 regular {fifo 0}  }
	{ regIpAddress1 int 32 regular {fifo 0}  }
	{ regIpAddress2 int 32 regular {fifo 0}  }
	{ regIpAddress3 int 32 regular {fifo 0}  }
	{ regIpAddress4 int 32 regular {fifo 0}  }
	{ regIpAddress5 int 32 regular {fifo 0}  }
	{ regIpAddress6 int 32 regular {fifo 0}  }
	{ regIpAddress7 int 32 regular {fifo 0}  }
	{ regIpAddress8 int 32 regular {fifo 0}  }
	{ regIpAddress9 int 32 regular {fifo 0}  }
	{ regIpAddress10 int 32 regular {fifo 0}  }
	{ openConStatusBuffer int 96 regular {fifo 0 volatile } {global 0}  }
	{ txMetaDataBuffer int 32 regular {fifo 1 volatile } {global 1}  }
	{ txStatusBuffer int 96 regular {fifo 0 volatile } {global 0}  }
	{ txDataBuffer int 1024 regular {fifo 1 volatile } {global 1}  }
	{ closeConnectionBuffer int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_open_connection", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "runExperiment", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "useConn", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "useIpAddr", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pkgWordCount", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "regBasePort", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "expectedRespInKB", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "clientPkgNum", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress8", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress9", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress10", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "openConStatusBuffer", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txMetaDataBuffer", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txStatusBuffer", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txDataBuffer", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "closeConnectionBuffer", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ regIpAddress10_dout sc_in sc_lv 32 signal 18 } 
	{ regIpAddress10_empty_n sc_in sc_logic 1 signal 18 } 
	{ regIpAddress10_read sc_out sc_logic 1 signal 18 } 
	{ regIpAddress9_dout sc_in sc_lv 32 signal 17 } 
	{ regIpAddress9_empty_n sc_in sc_logic 1 signal 17 } 
	{ regIpAddress9_read sc_out sc_logic 1 signal 17 } 
	{ regIpAddress8_dout sc_in sc_lv 32 signal 16 } 
	{ regIpAddress8_empty_n sc_in sc_logic 1 signal 16 } 
	{ regIpAddress8_read sc_out sc_logic 1 signal 16 } 
	{ regIpAddress7_dout sc_in sc_lv 32 signal 15 } 
	{ regIpAddress7_empty_n sc_in sc_logic 1 signal 15 } 
	{ regIpAddress7_read sc_out sc_logic 1 signal 15 } 
	{ regIpAddress6_dout sc_in sc_lv 32 signal 14 } 
	{ regIpAddress6_empty_n sc_in sc_logic 1 signal 14 } 
	{ regIpAddress6_read sc_out sc_logic 1 signal 14 } 
	{ regIpAddress5_dout sc_in sc_lv 32 signal 13 } 
	{ regIpAddress5_empty_n sc_in sc_logic 1 signal 13 } 
	{ regIpAddress5_read sc_out sc_logic 1 signal 13 } 
	{ regIpAddress4_dout sc_in sc_lv 32 signal 12 } 
	{ regIpAddress4_empty_n sc_in sc_logic 1 signal 12 } 
	{ regIpAddress4_read sc_out sc_logic 1 signal 12 } 
	{ regIpAddress3_dout sc_in sc_lv 32 signal 11 } 
	{ regIpAddress3_empty_n sc_in sc_logic 1 signal 11 } 
	{ regIpAddress3_read sc_out sc_logic 1 signal 11 } 
	{ regIpAddress2_dout sc_in sc_lv 32 signal 10 } 
	{ regIpAddress2_empty_n sc_in sc_logic 1 signal 10 } 
	{ regIpAddress2_read sc_out sc_logic 1 signal 10 } 
	{ regIpAddress1_dout sc_in sc_lv 32 signal 9 } 
	{ regIpAddress1_empty_n sc_in sc_logic 1 signal 9 } 
	{ regIpAddress1_read sc_out sc_logic 1 signal 9 } 
	{ regIpAddress0_dout sc_in sc_lv 32 signal 8 } 
	{ regIpAddress0_empty_n sc_in sc_logic 1 signal 8 } 
	{ regIpAddress0_read sc_out sc_logic 1 signal 8 } 
	{ clientPkgNum_dout sc_in sc_lv 32 signal 7 } 
	{ clientPkgNum_empty_n sc_in sc_logic 1 signal 7 } 
	{ clientPkgNum_read sc_out sc_logic 1 signal 7 } 
	{ expectedRespInKB_dout sc_in sc_lv 16 signal 6 } 
	{ expectedRespInKB_empty_n sc_in sc_logic 1 signal 6 } 
	{ expectedRespInKB_read sc_out sc_logic 1 signal 6 } 
	{ regBasePort_dout sc_in sc_lv 16 signal 5 } 
	{ regBasePort_empty_n sc_in sc_logic 1 signal 5 } 
	{ regBasePort_read sc_out sc_logic 1 signal 5 } 
	{ pkgWordCount_dout sc_in sc_lv 16 signal 4 } 
	{ pkgWordCount_empty_n sc_in sc_logic 1 signal 4 } 
	{ pkgWordCount_read sc_out sc_logic 1 signal 4 } 
	{ useIpAddr_dout sc_in sc_lv 16 signal 3 } 
	{ useIpAddr_empty_n sc_in sc_logic 1 signal 3 } 
	{ useIpAddr_read sc_out sc_logic 1 signal 3 } 
	{ useConn_dout sc_in sc_lv 16 signal 2 } 
	{ useConn_empty_n sc_in sc_logic 1 signal 2 } 
	{ useConn_read sc_out sc_logic 1 signal 2 } 
	{ runExperiment_dout sc_in sc_lv 1 signal 1 } 
	{ runExperiment_empty_n sc_in sc_logic 1 signal 1 } 
	{ runExperiment_read sc_out sc_logic 1 signal 1 } 
	{ txStatusBuffer_dout sc_in sc_lv 96 signal 21 } 
	{ txStatusBuffer_empty_n sc_in sc_logic 1 signal 21 } 
	{ txStatusBuffer_read sc_out sc_logic 1 signal 21 } 
	{ openConStatusBuffer_dout sc_in sc_lv 96 signal 19 } 
	{ openConStatusBuffer_empty_n sc_in sc_logic 1 signal 19 } 
	{ openConStatusBuffer_read sc_out sc_logic 1 signal 19 } 
	{ txMetaDataBuffer_din sc_out sc_lv 32 signal 20 } 
	{ txMetaDataBuffer_full_n sc_in sc_logic 1 signal 20 } 
	{ txMetaDataBuffer_write sc_out sc_logic 1 signal 20 } 
	{ txDataBuffer_din sc_out sc_lv 1024 signal 22 } 
	{ txDataBuffer_full_n sc_in sc_logic 1 signal 22 } 
	{ txDataBuffer_write sc_out sc_logic 1 signal 22 } 
	{ m_axis_open_connection_TREADY sc_in sc_logic 1 outacc 0 } 
	{ closeConnectionBuffer_din sc_out sc_lv 16 signal 23 } 
	{ closeConnectionBuffer_full_n sc_in sc_logic 1 signal 23 } 
	{ closeConnectionBuffer_write sc_out sc_logic 1 signal 23 } 
	{ m_axis_open_connection_TDATA sc_out sc_lv 48 signal 0 } 
	{ m_axis_open_connection_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "regIpAddress10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress10", "role": "dout" }} , 
 	{ "name": "regIpAddress10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress10", "role": "empty_n" }} , 
 	{ "name": "regIpAddress10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress10", "role": "read" }} , 
 	{ "name": "regIpAddress9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress9", "role": "dout" }} , 
 	{ "name": "regIpAddress9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress9", "role": "empty_n" }} , 
 	{ "name": "regIpAddress9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress9", "role": "read" }} , 
 	{ "name": "regIpAddress8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress8", "role": "dout" }} , 
 	{ "name": "regIpAddress8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress8", "role": "empty_n" }} , 
 	{ "name": "regIpAddress8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress8", "role": "read" }} , 
 	{ "name": "regIpAddress7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress7", "role": "dout" }} , 
 	{ "name": "regIpAddress7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress7", "role": "empty_n" }} , 
 	{ "name": "regIpAddress7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress7", "role": "read" }} , 
 	{ "name": "regIpAddress6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress6", "role": "dout" }} , 
 	{ "name": "regIpAddress6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress6", "role": "empty_n" }} , 
 	{ "name": "regIpAddress6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress6", "role": "read" }} , 
 	{ "name": "regIpAddress5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress5", "role": "dout" }} , 
 	{ "name": "regIpAddress5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress5", "role": "empty_n" }} , 
 	{ "name": "regIpAddress5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress5", "role": "read" }} , 
 	{ "name": "regIpAddress4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress4", "role": "dout" }} , 
 	{ "name": "regIpAddress4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress4", "role": "empty_n" }} , 
 	{ "name": "regIpAddress4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress4", "role": "read" }} , 
 	{ "name": "regIpAddress3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress3", "role": "dout" }} , 
 	{ "name": "regIpAddress3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress3", "role": "empty_n" }} , 
 	{ "name": "regIpAddress3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress3", "role": "read" }} , 
 	{ "name": "regIpAddress2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress2", "role": "dout" }} , 
 	{ "name": "regIpAddress2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress2", "role": "empty_n" }} , 
 	{ "name": "regIpAddress2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress2", "role": "read" }} , 
 	{ "name": "regIpAddress1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress1", "role": "dout" }} , 
 	{ "name": "regIpAddress1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress1", "role": "empty_n" }} , 
 	{ "name": "regIpAddress1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress1", "role": "read" }} , 
 	{ "name": "regIpAddress0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress0", "role": "dout" }} , 
 	{ "name": "regIpAddress0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress0", "role": "empty_n" }} , 
 	{ "name": "regIpAddress0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress0", "role": "read" }} , 
 	{ "name": "clientPkgNum_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clientPkgNum", "role": "dout" }} , 
 	{ "name": "clientPkgNum_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clientPkgNum", "role": "empty_n" }} , 
 	{ "name": "clientPkgNum_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clientPkgNum", "role": "read" }} , 
 	{ "name": "expectedRespInKB_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "expectedRespInKB", "role": "dout" }} , 
 	{ "name": "expectedRespInKB_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRespInKB", "role": "empty_n" }} , 
 	{ "name": "expectedRespInKB_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRespInKB", "role": "read" }} , 
 	{ "name": "regBasePort_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regBasePort", "role": "dout" }} , 
 	{ "name": "regBasePort_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regBasePort", "role": "empty_n" }} , 
 	{ "name": "regBasePort_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regBasePort", "role": "read" }} , 
 	{ "name": "pkgWordCount_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pkgWordCount", "role": "dout" }} , 
 	{ "name": "pkgWordCount_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pkgWordCount", "role": "empty_n" }} , 
 	{ "name": "pkgWordCount_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pkgWordCount", "role": "read" }} , 
 	{ "name": "useIpAddr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useIpAddr", "role": "dout" }} , 
 	{ "name": "useIpAddr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useIpAddr", "role": "empty_n" }} , 
 	{ "name": "useIpAddr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useIpAddr", "role": "read" }} , 
 	{ "name": "useConn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useConn", "role": "dout" }} , 
 	{ "name": "useConn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "empty_n" }} , 
 	{ "name": "useConn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "read" }} , 
 	{ "name": "runExperiment_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment", "role": "dout" }} , 
 	{ "name": "runExperiment_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment", "role": "empty_n" }} , 
 	{ "name": "runExperiment_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment", "role": "read" }} , 
 	{ "name": "txStatusBuffer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txStatusBuffer", "role": "dout" }} , 
 	{ "name": "txStatusBuffer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txStatusBuffer", "role": "empty_n" }} , 
 	{ "name": "txStatusBuffer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txStatusBuffer", "role": "read" }} , 
 	{ "name": "openConStatusBuffer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "openConStatusBuffer", "role": "dout" }} , 
 	{ "name": "openConStatusBuffer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "openConStatusBuffer", "role": "empty_n" }} , 
 	{ "name": "openConStatusBuffer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "openConStatusBuffer", "role": "read" }} , 
 	{ "name": "txMetaDataBuffer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "txMetaDataBuffer", "role": "din" }} , 
 	{ "name": "txMetaDataBuffer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txMetaDataBuffer", "role": "full_n" }} , 
 	{ "name": "txMetaDataBuffer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txMetaDataBuffer", "role": "write" }} , 
 	{ "name": "txDataBuffer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txDataBuffer", "role": "din" }} , 
 	{ "name": "txDataBuffer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txDataBuffer", "role": "full_n" }} , 
 	{ "name": "txDataBuffer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txDataBuffer", "role": "write" }} , 
 	{ "name": "m_axis_open_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_open_connection", "role": "TREADY" }} , 
 	{ "name": "closeConnectionBuffer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "closeConnectionBuffer", "role": "din" }} , 
 	{ "name": "closeConnectionBuffer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "closeConnectionBuffer", "role": "full_n" }} , 
 	{ "name": "closeConnectionBuffer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "closeConnectionBuffer", "role": "write" }} , 
 	{ "name": "m_axis_open_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_open_connection", "role": "TDATA" }} , 
 	{ "name": "m_axis_open_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_open_connection", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "client_512_s",
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
			{"Name" : "m_axis_open_connection", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_open_connection_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "runExperiment", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useIpAddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useIpAddr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pkgWordCount", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pkgWordCount_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRespInKB", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRespInKB_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "clientPkgNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "clientPkgNum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scatterFsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sessionIt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "closeIt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "numConnections_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipAddressIdx_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currentPort_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "clientPkgCnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sentFirstWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "openConStatusBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "openConStatusBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txMetaDataBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txMetaDataBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txStatusBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txStatusBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "currentSessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txDataBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txDataBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "closeConnectionBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "closeConnectionBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_open_connection_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	client_512_s {
		m_axis_open_connection {Type O LastRead -1 FirstWrite 2}
		runExperiment {Type I LastRead 0 FirstWrite -1}
		useConn {Type I LastRead 0 FirstWrite -1}
		useIpAddr {Type I LastRead 0 FirstWrite -1}
		pkgWordCount {Type I LastRead 0 FirstWrite -1}
		regBasePort {Type I LastRead 0 FirstWrite -1}
		expectedRespInKB {Type I LastRead 0 FirstWrite -1}
		clientPkgNum {Type I LastRead 0 FirstWrite -1}
		regIpAddress0 {Type I LastRead 0 FirstWrite -1}
		regIpAddress1 {Type I LastRead 0 FirstWrite -1}
		regIpAddress2 {Type I LastRead 0 FirstWrite -1}
		regIpAddress3 {Type I LastRead 0 FirstWrite -1}
		regIpAddress4 {Type I LastRead 0 FirstWrite -1}
		regIpAddress5 {Type I LastRead 0 FirstWrite -1}
		regIpAddress6 {Type I LastRead 0 FirstWrite -1}
		regIpAddress7 {Type I LastRead 0 FirstWrite -1}
		regIpAddress8 {Type I LastRead 0 FirstWrite -1}
		regIpAddress9 {Type I LastRead 0 FirstWrite -1}
		regIpAddress10 {Type I LastRead 0 FirstWrite -1}
		scatterFsmState {Type IO LastRead -1 FirstWrite -1}
		sessionIt_V {Type IO LastRead -1 FirstWrite -1}
		closeIt_V {Type IO LastRead -1 FirstWrite -1}
		numConnections_V {Type IO LastRead -1 FirstWrite -1}
		ipAddressIdx_V {Type IO LastRead -1 FirstWrite -1}
		currentPort_V_1 {Type IO LastRead -1 FirstWrite -1}
		clientPkgCnt_V {Type IO LastRead -1 FirstWrite -1}
		sentFirstWord {Type IO LastRead -1 FirstWrite -1}
		openConStatusBuffer {Type I LastRead 1 FirstWrite -1}
		txMetaDataBuffer {Type O LastRead -1 FirstWrite 2}
		txStatusBuffer {Type I LastRead 1 FirstWrite -1}
		currentSessionID_V {Type IO LastRead -1 FirstWrite -1}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		txDataBuffer {Type O LastRead -1 FirstWrite 2}
		closeConnectionBuffer {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_open_connection { axis {  { m_axis_open_connection_TREADY out_acc 0 1 }  { m_axis_open_connection_TDATA out_data 1 48 }  { m_axis_open_connection_TVALID out_vld 1 1 } } }
	runExperiment { ap_fifo {  { runExperiment_dout fifo_data 0 1 }  { runExperiment_empty_n fifo_status 0 1 }  { runExperiment_read fifo_update 1 1 } } }
	useConn { ap_fifo {  { useConn_dout fifo_data 0 16 }  { useConn_empty_n fifo_status 0 1 }  { useConn_read fifo_update 1 1 } } }
	useIpAddr { ap_fifo {  { useIpAddr_dout fifo_data 0 16 }  { useIpAddr_empty_n fifo_status 0 1 }  { useIpAddr_read fifo_update 1 1 } } }
	pkgWordCount { ap_fifo {  { pkgWordCount_dout fifo_data 0 16 }  { pkgWordCount_empty_n fifo_status 0 1 }  { pkgWordCount_read fifo_update 1 1 } } }
	regBasePort { ap_fifo {  { regBasePort_dout fifo_data 0 16 }  { regBasePort_empty_n fifo_status 0 1 }  { regBasePort_read fifo_update 1 1 } } }
	expectedRespInKB { ap_fifo {  { expectedRespInKB_dout fifo_data 0 16 }  { expectedRespInKB_empty_n fifo_status 0 1 }  { expectedRespInKB_read fifo_update 1 1 } } }
	clientPkgNum { ap_fifo {  { clientPkgNum_dout fifo_data 0 32 }  { clientPkgNum_empty_n fifo_status 0 1 }  { clientPkgNum_read fifo_update 1 1 } } }
	regIpAddress0 { ap_fifo {  { regIpAddress0_dout fifo_data 0 32 }  { regIpAddress0_empty_n fifo_status 0 1 }  { regIpAddress0_read fifo_update 1 1 } } }
	regIpAddress1 { ap_fifo {  { regIpAddress1_dout fifo_data 0 32 }  { regIpAddress1_empty_n fifo_status 0 1 }  { regIpAddress1_read fifo_update 1 1 } } }
	regIpAddress2 { ap_fifo {  { regIpAddress2_dout fifo_data 0 32 }  { regIpAddress2_empty_n fifo_status 0 1 }  { regIpAddress2_read fifo_update 1 1 } } }
	regIpAddress3 { ap_fifo {  { regIpAddress3_dout fifo_data 0 32 }  { regIpAddress3_empty_n fifo_status 0 1 }  { regIpAddress3_read fifo_update 1 1 } } }
	regIpAddress4 { ap_fifo {  { regIpAddress4_dout fifo_data 0 32 }  { regIpAddress4_empty_n fifo_status 0 1 }  { regIpAddress4_read fifo_update 1 1 } } }
	regIpAddress5 { ap_fifo {  { regIpAddress5_dout fifo_data 0 32 }  { regIpAddress5_empty_n fifo_status 0 1 }  { regIpAddress5_read fifo_update 1 1 } } }
	regIpAddress6 { ap_fifo {  { regIpAddress6_dout fifo_data 0 32 }  { regIpAddress6_empty_n fifo_status 0 1 }  { regIpAddress6_read fifo_update 1 1 } } }
	regIpAddress7 { ap_fifo {  { regIpAddress7_dout fifo_data 0 32 }  { regIpAddress7_empty_n fifo_status 0 1 }  { regIpAddress7_read fifo_update 1 1 } } }
	regIpAddress8 { ap_fifo {  { regIpAddress8_dout fifo_data 0 32 }  { regIpAddress8_empty_n fifo_status 0 1 }  { regIpAddress8_read fifo_update 1 1 } } }
	regIpAddress9 { ap_fifo {  { regIpAddress9_dout fifo_data 0 32 }  { regIpAddress9_empty_n fifo_status 0 1 }  { regIpAddress9_read fifo_update 1 1 } } }
	regIpAddress10 { ap_fifo {  { regIpAddress10_dout fifo_data 0 32 }  { regIpAddress10_empty_n fifo_status 0 1 }  { regIpAddress10_read fifo_update 1 1 } } }
	openConStatusBuffer { ap_fifo {  { openConStatusBuffer_dout fifo_data 0 96 }  { openConStatusBuffer_empty_n fifo_status 0 1 }  { openConStatusBuffer_read fifo_update 1 1 } } }
	txMetaDataBuffer { ap_fifo {  { txMetaDataBuffer_din fifo_data 1 32 }  { txMetaDataBuffer_full_n fifo_status 0 1 }  { txMetaDataBuffer_write fifo_update 1 1 } } }
	txStatusBuffer { ap_fifo {  { txStatusBuffer_dout fifo_data 0 96 }  { txStatusBuffer_empty_n fifo_status 0 1 }  { txStatusBuffer_read fifo_update 1 1 } } }
	txDataBuffer { ap_fifo {  { txDataBuffer_din fifo_data 1 1024 }  { txDataBuffer_full_n fifo_status 0 1 }  { txDataBuffer_write fifo_update 1 1 } } }
	closeConnectionBuffer { ap_fifo {  { closeConnectionBuffer_din fifo_data 1 16 }  { closeConnectionBuffer_full_n fifo_status 0 1 }  { closeConnectionBuffer_write fifo_update 1 1 } } }
}
