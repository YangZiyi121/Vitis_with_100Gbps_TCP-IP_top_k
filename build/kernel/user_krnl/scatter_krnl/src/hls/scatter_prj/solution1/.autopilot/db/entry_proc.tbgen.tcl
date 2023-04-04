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
	{ runExperiment int 1 regular  }
	{ runExperiment_c int 1 regular {fifo 1}  }
	{ runExperiment_c40 int 1 regular {fifo 1}  }
	{ useConn int 16 regular  }
	{ useConn_c int 16 regular {fifo 1}  }
	{ useIpAddr int 16 regular  }
	{ useIpAddr_c int 16 regular {fifo 1}  }
	{ pkgWordCount int 16 regular  }
	{ pkgWordCount_c int 16 regular {fifo 1}  }
	{ regBasePort int 16 regular  }
	{ regBasePort_c int 16 regular {fifo 1}  }
	{ regBasePort_c41 int 16 regular {fifo 1}  }
	{ usePort int 16 regular  }
	{ usePort_c int 16 regular {fifo 1}  }
	{ expectedRespInKB int 16 regular  }
	{ expectedRespInKB_c int 16 regular {fifo 1}  }
	{ clientPkgNum int 32 regular  }
	{ clientPkgNum_c int 32 regular {fifo 1}  }
	{ regIpAddress0 int 32 regular  }
	{ regIpAddress0_c int 32 regular {fifo 1}  }
	{ regIpAddress1 int 32 regular  }
	{ regIpAddress1_c int 32 regular {fifo 1}  }
	{ regIpAddress2 int 32 regular  }
	{ regIpAddress2_c int 32 regular {fifo 1}  }
	{ regIpAddress3 int 32 regular  }
	{ regIpAddress3_c int 32 regular {fifo 1}  }
	{ regIpAddress4 int 32 regular  }
	{ regIpAddress4_c int 32 regular {fifo 1}  }
	{ regIpAddress5 int 32 regular  }
	{ regIpAddress5_c int 32 regular {fifo 1}  }
	{ regIpAddress6 int 32 regular  }
	{ regIpAddress6_c int 32 regular {fifo 1}  }
	{ regIpAddress7 int 32 regular  }
	{ regIpAddress7_c int 32 regular {fifo 1}  }
	{ regIpAddress8 int 32 regular  }
	{ regIpAddress8_c int 32 regular {fifo 1}  }
	{ regIpAddress9 int 32 regular  }
	{ regIpAddress9_c int 32 regular {fifo 1}  }
	{ regIpAddress10 int 32 regular  }
	{ regIpAddress10_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "runExperiment", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "runExperiment_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "runExperiment_c40", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "useConn", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "useConn_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "useIpAddr", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "useIpAddr_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pkgWordCount", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pkgWordCount_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regBasePort", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "regBasePort_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regBasePort_c41", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "usePort", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "usePort_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "expectedRespInKB", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "expectedRespInKB_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clientPkgNum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "clientPkgNum_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress0_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress1_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress3_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress4_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress5_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress6_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress7_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress8_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress9_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regIpAddress10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress10_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 89
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ runExperiment sc_in sc_lv 1 signal 0 } 
	{ runExperiment_c_din sc_out sc_lv 1 signal 1 } 
	{ runExperiment_c_full_n sc_in sc_logic 1 signal 1 } 
	{ runExperiment_c_write sc_out sc_logic 1 signal 1 } 
	{ runExperiment_c40_din sc_out sc_lv 1 signal 2 } 
	{ runExperiment_c40_full_n sc_in sc_logic 1 signal 2 } 
	{ runExperiment_c40_write sc_out sc_logic 1 signal 2 } 
	{ useConn sc_in sc_lv 16 signal 3 } 
	{ useConn_c_din sc_out sc_lv 16 signal 4 } 
	{ useConn_c_full_n sc_in sc_logic 1 signal 4 } 
	{ useConn_c_write sc_out sc_logic 1 signal 4 } 
	{ useIpAddr sc_in sc_lv 16 signal 5 } 
	{ useIpAddr_c_din sc_out sc_lv 16 signal 6 } 
	{ useIpAddr_c_full_n sc_in sc_logic 1 signal 6 } 
	{ useIpAddr_c_write sc_out sc_logic 1 signal 6 } 
	{ pkgWordCount sc_in sc_lv 16 signal 7 } 
	{ pkgWordCount_c_din sc_out sc_lv 16 signal 8 } 
	{ pkgWordCount_c_full_n sc_in sc_logic 1 signal 8 } 
	{ pkgWordCount_c_write sc_out sc_logic 1 signal 8 } 
	{ regBasePort sc_in sc_lv 16 signal 9 } 
	{ regBasePort_c_din sc_out sc_lv 16 signal 10 } 
	{ regBasePort_c_full_n sc_in sc_logic 1 signal 10 } 
	{ regBasePort_c_write sc_out sc_logic 1 signal 10 } 
	{ regBasePort_c41_din sc_out sc_lv 16 signal 11 } 
	{ regBasePort_c41_full_n sc_in sc_logic 1 signal 11 } 
	{ regBasePort_c41_write sc_out sc_logic 1 signal 11 } 
	{ usePort sc_in sc_lv 16 signal 12 } 
	{ usePort_c_din sc_out sc_lv 16 signal 13 } 
	{ usePort_c_full_n sc_in sc_logic 1 signal 13 } 
	{ usePort_c_write sc_out sc_logic 1 signal 13 } 
	{ expectedRespInKB sc_in sc_lv 16 signal 14 } 
	{ expectedRespInKB_c_din sc_out sc_lv 16 signal 15 } 
	{ expectedRespInKB_c_full_n sc_in sc_logic 1 signal 15 } 
	{ expectedRespInKB_c_write sc_out sc_logic 1 signal 15 } 
	{ clientPkgNum sc_in sc_lv 32 signal 16 } 
	{ clientPkgNum_c_din sc_out sc_lv 32 signal 17 } 
	{ clientPkgNum_c_full_n sc_in sc_logic 1 signal 17 } 
	{ clientPkgNum_c_write sc_out sc_logic 1 signal 17 } 
	{ regIpAddress0 sc_in sc_lv 32 signal 18 } 
	{ regIpAddress0_c_din sc_out sc_lv 32 signal 19 } 
	{ regIpAddress0_c_full_n sc_in sc_logic 1 signal 19 } 
	{ regIpAddress0_c_write sc_out sc_logic 1 signal 19 } 
	{ regIpAddress1 sc_in sc_lv 32 signal 20 } 
	{ regIpAddress1_c_din sc_out sc_lv 32 signal 21 } 
	{ regIpAddress1_c_full_n sc_in sc_logic 1 signal 21 } 
	{ regIpAddress1_c_write sc_out sc_logic 1 signal 21 } 
	{ regIpAddress2 sc_in sc_lv 32 signal 22 } 
	{ regIpAddress2_c_din sc_out sc_lv 32 signal 23 } 
	{ regIpAddress2_c_full_n sc_in sc_logic 1 signal 23 } 
	{ regIpAddress2_c_write sc_out sc_logic 1 signal 23 } 
	{ regIpAddress3 sc_in sc_lv 32 signal 24 } 
	{ regIpAddress3_c_din sc_out sc_lv 32 signal 25 } 
	{ regIpAddress3_c_full_n sc_in sc_logic 1 signal 25 } 
	{ regIpAddress3_c_write sc_out sc_logic 1 signal 25 } 
	{ regIpAddress4 sc_in sc_lv 32 signal 26 } 
	{ regIpAddress4_c_din sc_out sc_lv 32 signal 27 } 
	{ regIpAddress4_c_full_n sc_in sc_logic 1 signal 27 } 
	{ regIpAddress4_c_write sc_out sc_logic 1 signal 27 } 
	{ regIpAddress5 sc_in sc_lv 32 signal 28 } 
	{ regIpAddress5_c_din sc_out sc_lv 32 signal 29 } 
	{ regIpAddress5_c_full_n sc_in sc_logic 1 signal 29 } 
	{ regIpAddress5_c_write sc_out sc_logic 1 signal 29 } 
	{ regIpAddress6 sc_in sc_lv 32 signal 30 } 
	{ regIpAddress6_c_din sc_out sc_lv 32 signal 31 } 
	{ regIpAddress6_c_full_n sc_in sc_logic 1 signal 31 } 
	{ regIpAddress6_c_write sc_out sc_logic 1 signal 31 } 
	{ regIpAddress7 sc_in sc_lv 32 signal 32 } 
	{ regIpAddress7_c_din sc_out sc_lv 32 signal 33 } 
	{ regIpAddress7_c_full_n sc_in sc_logic 1 signal 33 } 
	{ regIpAddress7_c_write sc_out sc_logic 1 signal 33 } 
	{ regIpAddress8 sc_in sc_lv 32 signal 34 } 
	{ regIpAddress8_c_din sc_out sc_lv 32 signal 35 } 
	{ regIpAddress8_c_full_n sc_in sc_logic 1 signal 35 } 
	{ regIpAddress8_c_write sc_out sc_logic 1 signal 35 } 
	{ regIpAddress9 sc_in sc_lv 32 signal 36 } 
	{ regIpAddress9_c_din sc_out sc_lv 32 signal 37 } 
	{ regIpAddress9_c_full_n sc_in sc_logic 1 signal 37 } 
	{ regIpAddress9_c_write sc_out sc_logic 1 signal 37 } 
	{ regIpAddress10 sc_in sc_lv 32 signal 38 } 
	{ regIpAddress10_c_din sc_out sc_lv 32 signal 39 } 
	{ regIpAddress10_c_full_n sc_in sc_logic 1 signal 39 } 
	{ regIpAddress10_c_write sc_out sc_logic 1 signal 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "runExperiment", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment", "role": "default" }} , 
 	{ "name": "runExperiment_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment_c", "role": "din" }} , 
 	{ "name": "runExperiment_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment_c", "role": "full_n" }} , 
 	{ "name": "runExperiment_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment_c", "role": "write" }} , 
 	{ "name": "runExperiment_c40_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment_c40", "role": "din" }} , 
 	{ "name": "runExperiment_c40_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment_c40", "role": "full_n" }} , 
 	{ "name": "runExperiment_c40_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment_c40", "role": "write" }} , 
 	{ "name": "useConn", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useConn", "role": "default" }} , 
 	{ "name": "useConn_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useConn_c", "role": "din" }} , 
 	{ "name": "useConn_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn_c", "role": "full_n" }} , 
 	{ "name": "useConn_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn_c", "role": "write" }} , 
 	{ "name": "useIpAddr", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useIpAddr", "role": "default" }} , 
 	{ "name": "useIpAddr_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useIpAddr_c", "role": "din" }} , 
 	{ "name": "useIpAddr_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useIpAddr_c", "role": "full_n" }} , 
 	{ "name": "useIpAddr_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useIpAddr_c", "role": "write" }} , 
 	{ "name": "pkgWordCount", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pkgWordCount", "role": "default" }} , 
 	{ "name": "pkgWordCount_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pkgWordCount_c", "role": "din" }} , 
 	{ "name": "pkgWordCount_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pkgWordCount_c", "role": "full_n" }} , 
 	{ "name": "pkgWordCount_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pkgWordCount_c", "role": "write" }} , 
 	{ "name": "regBasePort", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regBasePort", "role": "default" }} , 
 	{ "name": "regBasePort_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regBasePort_c", "role": "din" }} , 
 	{ "name": "regBasePort_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regBasePort_c", "role": "full_n" }} , 
 	{ "name": "regBasePort_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regBasePort_c", "role": "write" }} , 
 	{ "name": "regBasePort_c41_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regBasePort_c41", "role": "din" }} , 
 	{ "name": "regBasePort_c41_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regBasePort_c41", "role": "full_n" }} , 
 	{ "name": "regBasePort_c41_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regBasePort_c41", "role": "write" }} , 
 	{ "name": "usePort", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usePort", "role": "default" }} , 
 	{ "name": "usePort_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usePort_c", "role": "din" }} , 
 	{ "name": "usePort_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usePort_c", "role": "full_n" }} , 
 	{ "name": "usePort_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usePort_c", "role": "write" }} , 
 	{ "name": "expectedRespInKB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "expectedRespInKB", "role": "default" }} , 
 	{ "name": "expectedRespInKB_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "expectedRespInKB_c", "role": "din" }} , 
 	{ "name": "expectedRespInKB_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRespInKB_c", "role": "full_n" }} , 
 	{ "name": "expectedRespInKB_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRespInKB_c", "role": "write" }} , 
 	{ "name": "clientPkgNum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clientPkgNum", "role": "default" }} , 
 	{ "name": "clientPkgNum_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clientPkgNum_c", "role": "din" }} , 
 	{ "name": "clientPkgNum_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clientPkgNum_c", "role": "full_n" }} , 
 	{ "name": "clientPkgNum_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clientPkgNum_c", "role": "write" }} , 
 	{ "name": "regIpAddress0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress0", "role": "default" }} , 
 	{ "name": "regIpAddress0_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress0_c", "role": "din" }} , 
 	{ "name": "regIpAddress0_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress0_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress0_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress0_c", "role": "write" }} , 
 	{ "name": "regIpAddress1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress1", "role": "default" }} , 
 	{ "name": "regIpAddress1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress1_c", "role": "din" }} , 
 	{ "name": "regIpAddress1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress1_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress1_c", "role": "write" }} , 
 	{ "name": "regIpAddress2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress2", "role": "default" }} , 
 	{ "name": "regIpAddress2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress2_c", "role": "din" }} , 
 	{ "name": "regIpAddress2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress2_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress2_c", "role": "write" }} , 
 	{ "name": "regIpAddress3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress3", "role": "default" }} , 
 	{ "name": "regIpAddress3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress3_c", "role": "din" }} , 
 	{ "name": "regIpAddress3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress3_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress3_c", "role": "write" }} , 
 	{ "name": "regIpAddress4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress4", "role": "default" }} , 
 	{ "name": "regIpAddress4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress4_c", "role": "din" }} , 
 	{ "name": "regIpAddress4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress4_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress4_c", "role": "write" }} , 
 	{ "name": "regIpAddress5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress5", "role": "default" }} , 
 	{ "name": "regIpAddress5_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress5_c", "role": "din" }} , 
 	{ "name": "regIpAddress5_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress5_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress5_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress5_c", "role": "write" }} , 
 	{ "name": "regIpAddress6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress6", "role": "default" }} , 
 	{ "name": "regIpAddress6_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress6_c", "role": "din" }} , 
 	{ "name": "regIpAddress6_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress6_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress6_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress6_c", "role": "write" }} , 
 	{ "name": "regIpAddress7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress7", "role": "default" }} , 
 	{ "name": "regIpAddress7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress7_c", "role": "din" }} , 
 	{ "name": "regIpAddress7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress7_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress7_c", "role": "write" }} , 
 	{ "name": "regIpAddress8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress8", "role": "default" }} , 
 	{ "name": "regIpAddress8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress8_c", "role": "din" }} , 
 	{ "name": "regIpAddress8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress8_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress8_c", "role": "write" }} , 
 	{ "name": "regIpAddress9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress9", "role": "default" }} , 
 	{ "name": "regIpAddress9_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress9_c", "role": "din" }} , 
 	{ "name": "regIpAddress9_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress9_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress9_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress9_c", "role": "write" }} , 
 	{ "name": "regIpAddress10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress10", "role": "default" }} , 
 	{ "name": "regIpAddress10_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress10_c", "role": "din" }} , 
 	{ "name": "regIpAddress10_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress10_c", "role": "full_n" }} , 
 	{ "name": "regIpAddress10_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regIpAddress10_c", "role": "write" }}  ]}

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
			{"Name" : "runExperiment", "Type" : "None", "Direction" : "I"},
			{"Name" : "runExperiment_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "runExperiment_c40", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_c40_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn", "Type" : "None", "Direction" : "I"},
			{"Name" : "useConn_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useIpAddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "useIpAddr_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useIpAddr_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pkgWordCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "pkgWordCount_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pkgWordCount_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "regBasePort_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort_c41", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_c41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "usePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "usePort_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "usePort_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRespInKB", "Type" : "None", "Direction" : "I"},
			{"Name" : "expectedRespInKB_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRespInKB_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "clientPkgNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "clientPkgNum_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "clientPkgNum_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress0", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress0_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress0_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress2", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress4", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress5", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress6", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress7", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress8", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress9", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress10", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress10_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress10_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		runExperiment {Type I LastRead 0 FirstWrite -1}
		runExperiment_c {Type O LastRead -1 FirstWrite 0}
		runExperiment_c40 {Type O LastRead -1 FirstWrite 0}
		useConn {Type I LastRead 0 FirstWrite -1}
		useConn_c {Type O LastRead -1 FirstWrite 0}
		useIpAddr {Type I LastRead 0 FirstWrite -1}
		useIpAddr_c {Type O LastRead -1 FirstWrite 0}
		pkgWordCount {Type I LastRead 0 FirstWrite -1}
		pkgWordCount_c {Type O LastRead -1 FirstWrite 0}
		regBasePort {Type I LastRead 0 FirstWrite -1}
		regBasePort_c {Type O LastRead -1 FirstWrite 0}
		regBasePort_c41 {Type O LastRead -1 FirstWrite 0}
		usePort {Type I LastRead 0 FirstWrite -1}
		usePort_c {Type O LastRead -1 FirstWrite 0}
		expectedRespInKB {Type I LastRead 0 FirstWrite -1}
		expectedRespInKB_c {Type O LastRead -1 FirstWrite 0}
		clientPkgNum {Type I LastRead 0 FirstWrite -1}
		clientPkgNum_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress0 {Type I LastRead 0 FirstWrite -1}
		regIpAddress0_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress1 {Type I LastRead 0 FirstWrite -1}
		regIpAddress1_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress2 {Type I LastRead 0 FirstWrite -1}
		regIpAddress2_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress3 {Type I LastRead 0 FirstWrite -1}
		regIpAddress3_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress4 {Type I LastRead 0 FirstWrite -1}
		regIpAddress4_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress5 {Type I LastRead 0 FirstWrite -1}
		regIpAddress5_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress6 {Type I LastRead 0 FirstWrite -1}
		regIpAddress6_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress7 {Type I LastRead 0 FirstWrite -1}
		regIpAddress7_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress8 {Type I LastRead 0 FirstWrite -1}
		regIpAddress8_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress9 {Type I LastRead 0 FirstWrite -1}
		regIpAddress9_c {Type O LastRead -1 FirstWrite 0}
		regIpAddress10 {Type I LastRead 0 FirstWrite -1}
		regIpAddress10_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	runExperiment { ap_none {  { runExperiment in_data 0 1 } } }
	runExperiment_c { ap_fifo {  { runExperiment_c_din fifo_data 1 1 }  { runExperiment_c_full_n fifo_status 0 1 }  { runExperiment_c_write fifo_update 1 1 } } }
	runExperiment_c40 { ap_fifo {  { runExperiment_c40_din fifo_data 1 1 }  { runExperiment_c40_full_n fifo_status 0 1 }  { runExperiment_c40_write fifo_update 1 1 } } }
	useConn { ap_none {  { useConn in_data 0 16 } } }
	useConn_c { ap_fifo {  { useConn_c_din fifo_data 1 16 }  { useConn_c_full_n fifo_status 0 1 }  { useConn_c_write fifo_update 1 1 } } }
	useIpAddr { ap_none {  { useIpAddr in_data 0 16 } } }
	useIpAddr_c { ap_fifo {  { useIpAddr_c_din fifo_data 1 16 }  { useIpAddr_c_full_n fifo_status 0 1 }  { useIpAddr_c_write fifo_update 1 1 } } }
	pkgWordCount { ap_none {  { pkgWordCount in_data 0 16 } } }
	pkgWordCount_c { ap_fifo {  { pkgWordCount_c_din fifo_data 1 16 }  { pkgWordCount_c_full_n fifo_status 0 1 }  { pkgWordCount_c_write fifo_update 1 1 } } }
	regBasePort { ap_none {  { regBasePort in_data 0 16 } } }
	regBasePort_c { ap_fifo {  { regBasePort_c_din fifo_data 1 16 }  { regBasePort_c_full_n fifo_status 0 1 }  { regBasePort_c_write fifo_update 1 1 } } }
	regBasePort_c41 { ap_fifo {  { regBasePort_c41_din fifo_data 1 16 }  { regBasePort_c41_full_n fifo_status 0 1 }  { regBasePort_c41_write fifo_update 1 1 } } }
	usePort { ap_none {  { usePort in_data 0 16 } } }
	usePort_c { ap_fifo {  { usePort_c_din fifo_data 1 16 }  { usePort_c_full_n fifo_status 0 1 }  { usePort_c_write fifo_update 1 1 } } }
	expectedRespInKB { ap_none {  { expectedRespInKB in_data 0 16 } } }
	expectedRespInKB_c { ap_fifo {  { expectedRespInKB_c_din fifo_data 1 16 }  { expectedRespInKB_c_full_n fifo_status 0 1 }  { expectedRespInKB_c_write fifo_update 1 1 } } }
	clientPkgNum { ap_none {  { clientPkgNum in_data 0 32 } } }
	clientPkgNum_c { ap_fifo {  { clientPkgNum_c_din fifo_data 1 32 }  { clientPkgNum_c_full_n fifo_status 0 1 }  { clientPkgNum_c_write fifo_update 1 1 } } }
	regIpAddress0 { ap_none {  { regIpAddress0 in_data 0 32 } } }
	regIpAddress0_c { ap_fifo {  { regIpAddress0_c_din fifo_data 1 32 }  { regIpAddress0_c_full_n fifo_status 0 1 }  { regIpAddress0_c_write fifo_update 1 1 } } }
	regIpAddress1 { ap_none {  { regIpAddress1 in_data 0 32 } } }
	regIpAddress1_c { ap_fifo {  { regIpAddress1_c_din fifo_data 1 32 }  { regIpAddress1_c_full_n fifo_status 0 1 }  { regIpAddress1_c_write fifo_update 1 1 } } }
	regIpAddress2 { ap_none {  { regIpAddress2 in_data 0 32 } } }
	regIpAddress2_c { ap_fifo {  { regIpAddress2_c_din fifo_data 1 32 }  { regIpAddress2_c_full_n fifo_status 0 1 }  { regIpAddress2_c_write fifo_update 1 1 } } }
	regIpAddress3 { ap_none {  { regIpAddress3 in_data 0 32 } } }
	regIpAddress3_c { ap_fifo {  { regIpAddress3_c_din fifo_data 1 32 }  { regIpAddress3_c_full_n fifo_status 0 1 }  { regIpAddress3_c_write fifo_update 1 1 } } }
	regIpAddress4 { ap_none {  { regIpAddress4 in_data 0 32 } } }
	regIpAddress4_c { ap_fifo {  { regIpAddress4_c_din fifo_data 1 32 }  { regIpAddress4_c_full_n fifo_status 0 1 }  { regIpAddress4_c_write fifo_update 1 1 } } }
	regIpAddress5 { ap_none {  { regIpAddress5 in_data 0 32 } } }
	regIpAddress5_c { ap_fifo {  { regIpAddress5_c_din fifo_data 1 32 }  { regIpAddress5_c_full_n fifo_status 0 1 }  { regIpAddress5_c_write fifo_update 1 1 } } }
	regIpAddress6 { ap_none {  { regIpAddress6 in_data 0 32 } } }
	regIpAddress6_c { ap_fifo {  { regIpAddress6_c_din fifo_data 1 32 }  { regIpAddress6_c_full_n fifo_status 0 1 }  { regIpAddress6_c_write fifo_update 1 1 } } }
	regIpAddress7 { ap_none {  { regIpAddress7 in_data 0 32 } } }
	regIpAddress7_c { ap_fifo {  { regIpAddress7_c_din fifo_data 1 32 }  { regIpAddress7_c_full_n fifo_status 0 1 }  { regIpAddress7_c_write fifo_update 1 1 } } }
	regIpAddress8 { ap_none {  { regIpAddress8 in_data 0 32 } } }
	regIpAddress8_c { ap_fifo {  { regIpAddress8_c_din fifo_data 1 32 }  { regIpAddress8_c_full_n fifo_status 0 1 }  { regIpAddress8_c_write fifo_update 1 1 } } }
	regIpAddress9 { ap_none {  { regIpAddress9 in_data 0 32 } } }
	regIpAddress9_c { ap_fifo {  { regIpAddress9_c_din fifo_data 1 32 }  { regIpAddress9_c_full_n fifo_status 0 1 }  { regIpAddress9_c_write fifo_update 1 1 } } }
	regIpAddress10 { ap_none {  { regIpAddress10 in_data 0 32 } } }
	regIpAddress10_c { ap_fifo {  { regIpAddress10_c_din fifo_data 1 32 }  { regIpAddress10_c_full_n fifo_status 0 1 }  { regIpAddress10_c_write fifo_update 1 1 } } }
}
