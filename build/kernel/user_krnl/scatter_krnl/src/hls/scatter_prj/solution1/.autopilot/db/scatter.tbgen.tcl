set moduleName scatter
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {scatter}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_listen_port int 16 regular {axi_s 1 volatile  { m_axis_listen_port Data } }  }
	{ s_axis_listen_port_status int 8 regular {axi_s 0 volatile  { s_axis_listen_port_status Data } }  }
	{ s_axis_notifications int 88 regular {axi_s 0 volatile  { s_axis_notifications Data } }  }
	{ m_axis_read_package int 32 regular {axi_s 1 volatile  { m_axis_read_package Data } }  }
	{ s_axis_rx_metadata int 16 regular {axi_s 0 volatile  { s_axis_rx_metadata Data } }  }
	{ s_axis_rx_data_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_rx_data Data } }  }
	{ s_axis_rx_data_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Keep } }  }
	{ s_axis_rx_data_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Strb } }  }
	{ s_axis_rx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_rx_data Last } }  }
	{ m_axis_open_connection int 48 regular {axi_s 1 volatile  { m_axis_open_connection Data } }  }
	{ s_axis_open_status int 72 regular {axi_s 0 volatile  { s_axis_open_status Data } }  }
	{ m_axis_close_connection int 16 regular {axi_s 1 volatile  { m_axis_close_connection Data } }  }
	{ m_axis_tx_metadata int 32 regular {axi_s 1 volatile  { m_axis_tx_metadata Data } }  }
	{ m_axis_tx_data_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_tx_data Data } }  }
	{ m_axis_tx_data_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Keep } }  }
	{ m_axis_tx_data_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Strb } }  }
	{ m_axis_tx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tx_data Last } }  }
	{ s_axis_tx_status int 64 regular {axi_s 0 volatile  { s_axis_tx_status Data } }  }
	{ runExperiment int 1 regular  }
	{ useConn int 16 regular  }
	{ useIpAddr int 16 regular  }
	{ pkgWordCount int 16 regular  }
	{ regBasePort int 16 regular  }
	{ usePort int 16 regular  }
	{ expectedRespInKB int 16 regular  }
	{ finishExperiment int 1 unused  }
	{ clientPkgNum int 32 regular  }
	{ regIpAddress0 int 32 regular  }
	{ regIpAddress1 int 32 regular  }
	{ regIpAddress2 int 32 regular  }
	{ regIpAddress3 int 32 regular  }
	{ regIpAddress4 int 32 regular  }
	{ regIpAddress5 int 32 regular  }
	{ regIpAddress6 int 32 regular  }
	{ regIpAddress7 int 32 regular  }
	{ regIpAddress8 int 32 regular  }
	{ regIpAddress9 int 32 regular  }
	{ regIpAddress10 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_listen_port", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_listen_port_status", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_notifications", "interface" : "axis", "bitwidth" : 88, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_read_package", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_rx_metadata", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_open_connection", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_open_status", "interface" : "axis", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_close_connection", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_metadata", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_tx_status", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "runExperiment", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "useConn", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "useIpAddr", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pkgWordCount", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "regBasePort", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "usePort", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "expectedRespInKB", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "finishExperiment", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "clientPkgNum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regIpAddress10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 66
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ m_axis_listen_port_TDATA sc_out sc_lv 16 signal 0 } 
	{ s_axis_listen_port_status_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_notifications_TDATA sc_in sc_lv 88 signal 2 } 
	{ m_axis_read_package_TDATA sc_out sc_lv 32 signal 3 } 
	{ s_axis_rx_metadata_TDATA sc_in sc_lv 16 signal 4 } 
	{ s_axis_rx_data_TDATA sc_in sc_lv 512 signal 5 } 
	{ s_axis_rx_data_TKEEP sc_in sc_lv 64 signal 6 } 
	{ s_axis_rx_data_TSTRB sc_in sc_lv 64 signal 7 } 
	{ s_axis_rx_data_TLAST sc_in sc_lv 1 signal 8 } 
	{ m_axis_open_connection_TDATA sc_out sc_lv 48 signal 9 } 
	{ s_axis_open_status_TDATA sc_in sc_lv 72 signal 10 } 
	{ m_axis_close_connection_TDATA sc_out sc_lv 16 signal 11 } 
	{ m_axis_tx_metadata_TDATA sc_out sc_lv 32 signal 12 } 
	{ m_axis_tx_data_TDATA sc_out sc_lv 512 signal 13 } 
	{ m_axis_tx_data_TKEEP sc_out sc_lv 64 signal 14 } 
	{ m_axis_tx_data_TSTRB sc_out sc_lv 64 signal 15 } 
	{ m_axis_tx_data_TLAST sc_out sc_lv 1 signal 16 } 
	{ s_axis_tx_status_TDATA sc_in sc_lv 64 signal 17 } 
	{ runExperiment sc_in sc_lv 1 signal 18 } 
	{ useConn sc_in sc_lv 16 signal 19 } 
	{ useIpAddr sc_in sc_lv 16 signal 20 } 
	{ pkgWordCount sc_in sc_lv 16 signal 21 } 
	{ regBasePort sc_in sc_lv 16 signal 22 } 
	{ usePort sc_in sc_lv 16 signal 23 } 
	{ expectedRespInKB sc_in sc_lv 16 signal 24 } 
	{ finishExperiment sc_in sc_lv 1 signal 25 } 
	{ clientPkgNum sc_in sc_lv 32 signal 26 } 
	{ regIpAddress0 sc_in sc_lv 32 signal 27 } 
	{ regIpAddress1 sc_in sc_lv 32 signal 28 } 
	{ regIpAddress2 sc_in sc_lv 32 signal 29 } 
	{ regIpAddress3 sc_in sc_lv 32 signal 30 } 
	{ regIpAddress4 sc_in sc_lv 32 signal 31 } 
	{ regIpAddress5 sc_in sc_lv 32 signal 32 } 
	{ regIpAddress6 sc_in sc_lv 32 signal 33 } 
	{ regIpAddress7 sc_in sc_lv 32 signal 34 } 
	{ regIpAddress8 sc_in sc_lv 32 signal 35 } 
	{ regIpAddress9 sc_in sc_lv 32 signal 36 } 
	{ regIpAddress10 sc_in sc_lv 32 signal 37 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_open_status_TVALID sc_in sc_logic 1 invld 10 } 
	{ s_axis_open_status_TREADY sc_out sc_logic 1 inacc 10 } 
	{ s_axis_tx_status_TVALID sc_in sc_logic 1 invld 17 } 
	{ s_axis_tx_status_TREADY sc_out sc_logic 1 inacc 17 } 
	{ m_axis_tx_data_TVALID sc_out sc_logic 1 outvld 16 } 
	{ m_axis_tx_data_TREADY sc_in sc_logic 1 outacc 16 } 
	{ s_axis_rx_data_TVALID sc_in sc_logic 1 invld 8 } 
	{ s_axis_rx_data_TREADY sc_out sc_logic 1 inacc 8 } 
	{ m_axis_open_connection_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_open_connection_TREADY sc_in sc_logic 1 outacc 9 } 
	{ m_axis_tx_metadata_TVALID sc_out sc_logic 1 outvld 12 } 
	{ m_axis_tx_metadata_TREADY sc_in sc_logic 1 outacc 12 } 
	{ m_axis_close_connection_TVALID sc_out sc_logic 1 outvld 11 } 
	{ m_axis_close_connection_TREADY sc_in sc_logic 1 outacc 11 } 
	{ m_axis_listen_port_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_listen_port_TREADY sc_in sc_logic 1 outacc 0 } 
	{ s_axis_listen_port_status_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_listen_port_status_TREADY sc_out sc_logic 1 inacc 1 } 
	{ s_axis_notifications_TVALID sc_in sc_logic 1 invld 2 } 
	{ s_axis_notifications_TREADY sc_out sc_logic 1 inacc 2 } 
	{ m_axis_read_package_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_read_package_TREADY sc_in sc_logic 1 outacc 3 } 
	{ s_axis_rx_metadata_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_rx_metadata_TREADY sc_out sc_logic 1 inacc 4 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "m_axis_listen_port_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_listen_port", "role": "TDATA" }} , 
 	{ "name": "s_axis_listen_port_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_listen_port_status", "role": "TDATA" }} , 
 	{ "name": "s_axis_notifications_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":88, "type": "signal", "bundle":{"name": "s_axis_notifications", "role": "TDATA" }} , 
 	{ "name": "m_axis_read_package_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_read_package", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_rx_metadata", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_open_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_open_connection", "role": "TDATA" }} , 
 	{ "name": "s_axis_open_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "s_axis_open_status", "role": "TDATA" }} , 
 	{ "name": "m_axis_close_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_close_connection", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_metadata_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tx_metadata", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tx_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tx_status", "role": "TDATA" }} , 
 	{ "name": "runExperiment", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "runExperiment", "role": "default" }} , 
 	{ "name": "useConn", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useConn", "role": "default" }} , 
 	{ "name": "useIpAddr", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "useIpAddr", "role": "default" }} , 
 	{ "name": "pkgWordCount", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pkgWordCount", "role": "default" }} , 
 	{ "name": "regBasePort", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regBasePort", "role": "default" }} , 
 	{ "name": "usePort", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usePort", "role": "default" }} , 
 	{ "name": "expectedRespInKB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "expectedRespInKB", "role": "default" }} , 
 	{ "name": "finishExperiment", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "finishExperiment", "role": "default" }} , 
 	{ "name": "clientPkgNum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clientPkgNum", "role": "default" }} , 
 	{ "name": "regIpAddress0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress0", "role": "default" }} , 
 	{ "name": "regIpAddress1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress1", "role": "default" }} , 
 	{ "name": "regIpAddress2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress2", "role": "default" }} , 
 	{ "name": "regIpAddress3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress3", "role": "default" }} , 
 	{ "name": "regIpAddress4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress4", "role": "default" }} , 
 	{ "name": "regIpAddress5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress5", "role": "default" }} , 
 	{ "name": "regIpAddress6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress6", "role": "default" }} , 
 	{ "name": "regIpAddress7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress7", "role": "default" }} , 
 	{ "name": "regIpAddress8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress8", "role": "default" }} , 
 	{ "name": "regIpAddress9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress9", "role": "default" }} , 
 	{ "name": "regIpAddress10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regIpAddress10", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_open_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_open_status", "role": "TVALID" }} , 
 	{ "name": "s_axis_open_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_open_status", "role": "TREADY" }} , 
 	{ "name": "s_axis_tx_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_status", "role": "TVALID" }} , 
 	{ "name": "s_axis_tx_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_status", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_open_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_open_connection", "role": "TVALID" }} , 
 	{ "name": "m_axis_open_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_open_connection", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_metadata_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_metadata_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata", "role": "TREADY" }} , 
 	{ "name": "m_axis_close_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_close_connection", "role": "TVALID" }} , 
 	{ "name": "m_axis_close_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_close_connection", "role": "TREADY" }} , 
 	{ "name": "m_axis_listen_port_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_listen_port", "role": "TVALID" }} , 
 	{ "name": "m_axis_listen_port_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_listen_port", "role": "TREADY" }} , 
 	{ "name": "s_axis_listen_port_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_listen_port_status", "role": "TVALID" }} , 
 	{ "name": "s_axis_listen_port_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_listen_port_status", "role": "TREADY" }} , 
 	{ "name": "s_axis_notifications_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_notifications", "role": "TVALID" }} , 
 	{ "name": "s_axis_notifications_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_notifications", "role": "TREADY" }} , 
 	{ "name": "m_axis_read_package_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_read_package", "role": "TVALID" }} , 
 	{ "name": "m_axis_read_package_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_read_package", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_metadata_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_metadata_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "11", "16", "18", "20", "22", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
		"CDFG" : "scatter",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "openStatus_handler_U0"},
			{"ID" : "4", "Name" : "txStatus_handler_U0"},
			{"ID" : "6", "Name" : "txDataBuffer_handler_512_U0"},
			{"ID" : "11", "Name" : "rxDataBuffer_handler_512_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "txDataBuffer_handler_512_U0"},
			{"ID" : "18", "Name" : "txMetaData_handler_U0"},
			{"ID" : "20", "Name" : "closeConnection_handler_U0"},
			{"ID" : "22", "Name" : "server_512_U0"}],
		"Port" : [
			{"Name" : "m_axis_listen_port", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "m_axis_listen_port"}]},
			{"Name" : "s_axis_listen_port_status", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "s_axis_listen_port_status"}]},
			{"Name" : "s_axis_notifications", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "s_axis_notifications"}]},
			{"Name" : "m_axis_read_package", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "m_axis_read_package"}]},
			{"Name" : "s_axis_rx_metadata", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "s_axis_rx_metadata"}]},
			{"Name" : "s_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "rxDataBuffer_handler_512_U0", "Port" : "s_axis_rx_data_V_data_V"}]},
			{"Name" : "s_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "rxDataBuffer_handler_512_U0", "Port" : "s_axis_rx_data_V_keep_V"}]},
			{"Name" : "s_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "rxDataBuffer_handler_512_U0", "Port" : "s_axis_rx_data_V_strb_V"}]},
			{"Name" : "s_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "rxDataBuffer_handler_512_U0", "Port" : "s_axis_rx_data_V_last_V"}]},
			{"Name" : "m_axis_open_connection", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "m_axis_open_connection"}]},
			{"Name" : "s_axis_open_status", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "openStatus_handler_U0", "Port" : "s_axis_open_status"}]},
			{"Name" : "m_axis_close_connection", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "closeConnection_handler_U0", "Port" : "m_axis_close_connection"}]},
			{"Name" : "m_axis_tx_metadata", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "txMetaData_handler_U0", "Port" : "m_axis_tx_metadata"}]},
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "txDataBuffer_handler_512_U0", "Port" : "m_axis_tx_data_V_data_V"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "txDataBuffer_handler_512_U0", "Port" : "m_axis_tx_data_V_keep_V"}]},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "txDataBuffer_handler_512_U0", "Port" : "m_axis_tx_data_V_strb_V"}]},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "txDataBuffer_handler_512_U0", "Port" : "m_axis_tx_data_V_last_V"}]},
			{"Name" : "s_axis_tx_status", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "txStatus_handler_U0", "Port" : "s_axis_tx_status"}]},
			{"Name" : "runExperiment", "Type" : "None", "Direction" : "I"},
			{"Name" : "useConn", "Type" : "None", "Direction" : "I"},
			{"Name" : "useIpAddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "pkgWordCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "regBasePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "usePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "expectedRespInKB", "Type" : "None", "Direction" : "I"},
			{"Name" : "finishExperiment", "Type" : "None", "Direction" : "I"},
			{"Name" : "clientPkgNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress0", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress2", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress4", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress5", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress6", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress7", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress8", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress9", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress10", "Type" : "None", "Direction" : "I"},
			{"Name" : "openConStatusBuffer", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "openConStatusBuffer"},
					{"ID" : "2", "SubInstance" : "openStatus_handler_U0", "Port" : "openConStatusBuffer"}]},
			{"Name" : "txStatusBuffer", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "txStatusBuffer"},
					{"ID" : "4", "SubInstance" : "txStatus_handler_U0", "Port" : "txStatusBuffer"}]},
			{"Name" : "txDataBuffer", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "txDataBuffer"},
					{"ID" : "6", "SubInstance" : "txDataBuffer_handler_512_U0", "Port" : "txDataBuffer"}]},
			{"Name" : "rxDataBuffer", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "rxDataBuffer"},
					{"ID" : "11", "SubInstance" : "rxDataBuffer_handler_512_U0", "Port" : "rxDataBuffer"}]},
			{"Name" : "scatterFsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "scatterFsmState"}]},
			{"Name" : "sessionIt_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "sessionIt_V"}]},
			{"Name" : "closeIt_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "closeIt_V"}]},
			{"Name" : "numConnections_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "numConnections_V"}]},
			{"Name" : "ipAddressIdx_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "ipAddressIdx_V"}]},
			{"Name" : "currentPort_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "currentPort_V_1"}]},
			{"Name" : "clientPkgCnt_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "clientPkgCnt_V"}]},
			{"Name" : "sentFirstWord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "sentFirstWord"}]},
			{"Name" : "txMetaDataBuffer", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "txMetaDataBuffer"},
					{"ID" : "18", "SubInstance" : "txMetaData_handler_U0", "Port" : "txMetaDataBuffer"}]},
			{"Name" : "currentSessionID_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "currentSessionID_V"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "wordCount_V"}]},
			{"Name" : "closeConnectionBuffer", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "client_512_U0", "Port" : "closeConnectionBuffer"},
					{"ID" : "20", "SubInstance" : "closeConnection_handler_U0", "Port" : "closeConnectionBuffer"}]},
			{"Name" : "listenState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "listenState"}]},
			{"Name" : "currentPort_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "currentPort_V"}]},
			{"Name" : "openedPort_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "openedPort_V"}]},
			{"Name" : "serverFsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "server_512_U0", "Port" : "serverFsmState"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "runExperiment_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "28", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "runExperiment_c40", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "29", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_c40_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn", "Type" : "None", "Direction" : "I"},
			{"Name" : "useConn_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "30", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useIpAddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "useIpAddr_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "31", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useIpAddr_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pkgWordCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "pkgWordCount_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "32", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pkgWordCount_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "regBasePort_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "33", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort_c41", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "34", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_c41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "usePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "usePort_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "35", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "usePort_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRespInKB", "Type" : "None", "Direction" : "I"},
			{"Name" : "expectedRespInKB_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "36", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRespInKB_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "clientPkgNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "clientPkgNum_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "37", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "clientPkgNum_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress0", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress0_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "38", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress0_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress2", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress4", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress5", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress6", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "44", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress7", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "45", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress8", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "46", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress9", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "47", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress10", "Type" : "None", "Direction" : "I"},
			{"Name" : "regIpAddress10_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "48", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress10_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.openStatus_handler_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "openStatus_handler",
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
			{"Name" : "s_axis_open_status", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_open_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "openConStatusBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "49", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "openConStatusBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.openStatus_handler_U0.regslice_both_s_axis_open_status_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txStatus_handler_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "txStatus_handler",
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
			{"Name" : "s_axis_tx_status", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txStatusBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "50", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txStatusBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txStatus_handler_U0.regslice_both_s_axis_tx_status_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txDataBuffer_handler_512_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "txDataBuffer_handler_512_s",
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
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "txDataBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "51", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txDataBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txDataBuffer_handler_512_U0.regslice_both_m_axis_tx_data_V_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txDataBuffer_handler_512_U0.regslice_both_m_axis_tx_data_V_keep_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txDataBuffer_handler_512_U0.regslice_both_m_axis_tx_data_V_strb_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txDataBuffer_handler_512_U0.regslice_both_m_axis_tx_data_V_last_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rxDataBuffer_handler_512_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "rxDataBuffer_handler_512_s",
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
			{"Name" : "s_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rxDataBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "52", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxDataBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxDataBuffer_handler_512_U0.regslice_both_s_axis_rx_data_V_data_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxDataBuffer_handler_512_U0.regslice_both_s_axis_rx_data_V_keep_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxDataBuffer_handler_512_U0.regslice_both_s_axis_rx_data_V_strb_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxDataBuffer_handler_512_U0.regslice_both_s_axis_rx_data_V_last_V_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.client_512_U0", "Parent" : "0", "Child" : ["17"],
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
			{"Name" : "runExperiment", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "29", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "30", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useIpAddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "31", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useIpAddr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pkgWordCount", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "32", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pkgWordCount_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "34", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRespInKB", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "36", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRespInKB_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "clientPkgNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "37", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "clientPkgNum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "38", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "44", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "45", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "46", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "47", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regIpAddress9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regIpAddress10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "48", "DependentChanDepth" : "3", "DependentChanType" : "2",
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
			{"Name" : "openConStatusBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "49", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "openConStatusBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txMetaDataBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "53", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txMetaDataBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txStatusBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "50", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txStatusBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "currentSessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txDataBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "51", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txDataBuffer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "closeConnectionBuffer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "54", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "closeConnectionBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.client_512_U0.regslice_both_m_axis_open_connection_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txMetaData_handler_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "txMetaData_handler",
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
			{"Name" : "m_axis_tx_metadata", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_metadata_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txMetaDataBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "53", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txMetaDataBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txMetaData_handler_U0.regslice_both_m_axis_tx_metadata_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.closeConnection_handler_U0", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "closeConnection_handler",
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
			{"Name" : "m_axis_close_connection", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_close_connection_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "closeConnectionBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "54", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "closeConnectionBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.closeConnection_handler_U0.regslice_both_m_axis_close_connection_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.server_512_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27"],
		"CDFG" : "server_512_s",
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
			{"Name" : "m_axis_listen_port", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_listen_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_listen_port_status", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_listen_port_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_notifications", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_notifications_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_read_package", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_read_package_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_metadata", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_metadata_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "runExperiment", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "28", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "runExperiment_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "usePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "35", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "usePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regBasePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "33", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regBasePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "listenState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currentPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "openedPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "serverFsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rxDataBuffer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "52", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rxDataBuffer_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_512_U0.regslice_both_m_axis_listen_port_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_512_U0.regslice_both_s_axis_listen_port_status_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_512_U0.regslice_both_s_axis_notifications_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_512_U0.regslice_both_m_axis_read_package_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_512_U0.regslice_both_s_axis_rx_metadata_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.runExperiment_c_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.runExperiment_c40_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.useConn_c_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.useIpAddr_c_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pkgWordCount_c_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regBasePort_c_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regBasePort_c41_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.usePort_c_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expectedRespInKB_c_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clientPkgNum_c_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress0_c_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress1_c_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress2_c_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress3_c_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress4_c_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress5_c_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress6_c_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress7_c_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress8_c_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress9_c_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regIpAddress10_c_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.openConStatusBuffer_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txStatusBuffer_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txDataBuffer_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rxDataBuffer_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txMetaDataBuffer_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.closeConnectionBuffer_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	scatter {
		m_axis_listen_port {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status {Type I LastRead 0 FirstWrite -1}
		s_axis_notifications {Type I LastRead 0 FirstWrite -1}
		m_axis_read_package {Type O LastRead -1 FirstWrite 1}
		s_axis_rx_metadata {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_open_connection {Type O LastRead -1 FirstWrite 2}
		s_axis_open_status {Type I LastRead 0 FirstWrite -1}
		m_axis_close_connection {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_metadata {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		s_axis_tx_status {Type I LastRead 0 FirstWrite -1}
		runExperiment {Type I LastRead 0 FirstWrite -1}
		useConn {Type I LastRead 0 FirstWrite -1}
		useIpAddr {Type I LastRead 0 FirstWrite -1}
		pkgWordCount {Type I LastRead 0 FirstWrite -1}
		regBasePort {Type I LastRead 0 FirstWrite -1}
		usePort {Type I LastRead 0 FirstWrite -1}
		expectedRespInKB {Type I LastRead 0 FirstWrite -1}
		finishExperiment {Type I LastRead -1 FirstWrite -1}
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
		openConStatusBuffer {Type IO LastRead -1 FirstWrite -1}
		txStatusBuffer {Type IO LastRead -1 FirstWrite -1}
		txDataBuffer {Type IO LastRead -1 FirstWrite -1}
		rxDataBuffer {Type IO LastRead -1 FirstWrite -1}
		scatterFsmState {Type IO LastRead -1 FirstWrite -1}
		sessionIt_V {Type IO LastRead -1 FirstWrite -1}
		closeIt_V {Type IO LastRead -1 FirstWrite -1}
		numConnections_V {Type IO LastRead -1 FirstWrite -1}
		ipAddressIdx_V {Type IO LastRead -1 FirstWrite -1}
		currentPort_V_1 {Type IO LastRead -1 FirstWrite -1}
		clientPkgCnt_V {Type IO LastRead -1 FirstWrite -1}
		sentFirstWord {Type IO LastRead -1 FirstWrite -1}
		txMetaDataBuffer {Type IO LastRead -1 FirstWrite -1}
		currentSessionID_V {Type IO LastRead -1 FirstWrite -1}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		closeConnectionBuffer {Type IO LastRead -1 FirstWrite -1}
		listenState {Type IO LastRead -1 FirstWrite -1}
		currentPort_V {Type IO LastRead -1 FirstWrite -1}
		openedPort_V {Type IO LastRead -1 FirstWrite -1}
		serverFsmState {Type IO LastRead -1 FirstWrite -1}}
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
		regIpAddress10_c {Type O LastRead -1 FirstWrite 0}}
	openStatus_handler {
		s_axis_open_status {Type I LastRead 0 FirstWrite -1}
		openConStatusBuffer {Type O LastRead -1 FirstWrite 1}}
	txStatus_handler {
		s_axis_tx_status {Type I LastRead 0 FirstWrite -1}
		txStatusBuffer {Type O LastRead -1 FirstWrite 1}}
	txDataBuffer_handler_512_s {
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		txDataBuffer {Type I LastRead 0 FirstWrite -1}}
	rxDataBuffer_handler_512_s {
		s_axis_rx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		rxDataBuffer {Type O LastRead -1 FirstWrite 1}}
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
		closeConnectionBuffer {Type O LastRead -1 FirstWrite 2}}
	txMetaData_handler {
		m_axis_tx_metadata {Type O LastRead -1 FirstWrite 1}
		txMetaDataBuffer {Type I LastRead 0 FirstWrite -1}}
	closeConnection_handler {
		m_axis_close_connection {Type O LastRead -1 FirstWrite 1}
		closeConnectionBuffer {Type I LastRead 0 FirstWrite -1}}
	server_512_s {
		m_axis_listen_port {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status {Type I LastRead 0 FirstWrite -1}
		s_axis_notifications {Type I LastRead 0 FirstWrite -1}
		m_axis_read_package {Type O LastRead -1 FirstWrite 1}
		s_axis_rx_metadata {Type I LastRead 0 FirstWrite -1}
		runExperiment {Type I LastRead 0 FirstWrite -1}
		usePort {Type I LastRead 0 FirstWrite -1}
		regBasePort {Type I LastRead 0 FirstWrite -1}
		listenState {Type IO LastRead -1 FirstWrite -1}
		currentPort_V {Type IO LastRead -1 FirstWrite -1}
		openedPort_V {Type IO LastRead -1 FirstWrite -1}
		serverFsmState {Type IO LastRead -1 FirstWrite -1}
		rxDataBuffer {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_listen_port { axis {  { m_axis_listen_port_TDATA out_data 1 16 }  { m_axis_listen_port_TVALID out_vld 1 1 }  { m_axis_listen_port_TREADY out_acc 0 1 } } }
	s_axis_listen_port_status { axis {  { s_axis_listen_port_status_TDATA in_data 0 8 }  { s_axis_listen_port_status_TVALID in_vld 0 1 }  { s_axis_listen_port_status_TREADY in_acc 1 1 } } }
	s_axis_notifications { axis {  { s_axis_notifications_TDATA in_data 0 88 }  { s_axis_notifications_TVALID in_vld 0 1 }  { s_axis_notifications_TREADY in_acc 1 1 } } }
	m_axis_read_package { axis {  { m_axis_read_package_TDATA out_data 1 32 }  { m_axis_read_package_TVALID out_vld 1 1 }  { m_axis_read_package_TREADY out_acc 0 1 } } }
	s_axis_rx_metadata { axis {  { s_axis_rx_metadata_TDATA in_data 0 16 }  { s_axis_rx_metadata_TVALID in_vld 0 1 }  { s_axis_rx_metadata_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V_data_V { axis {  { s_axis_rx_data_TDATA in_data 0 512 } } }
	s_axis_rx_data_V_keep_V { axis {  { s_axis_rx_data_TKEEP in_data 0 64 } } }
	s_axis_rx_data_V_strb_V { axis {  { s_axis_rx_data_TSTRB in_data 0 64 } } }
	s_axis_rx_data_V_last_V { axis {  { s_axis_rx_data_TLAST in_data 0 1 }  { s_axis_rx_data_TVALID in_vld 0 1 }  { s_axis_rx_data_TREADY in_acc 1 1 } } }
	m_axis_open_connection { axis {  { m_axis_open_connection_TDATA out_data 1 48 }  { m_axis_open_connection_TVALID out_vld 1 1 }  { m_axis_open_connection_TREADY out_acc 0 1 } } }
	s_axis_open_status { axis {  { s_axis_open_status_TDATA in_data 0 72 }  { s_axis_open_status_TVALID in_vld 0 1 }  { s_axis_open_status_TREADY in_acc 1 1 } } }
	m_axis_close_connection { axis {  { m_axis_close_connection_TDATA out_data 1 16 }  { m_axis_close_connection_TVALID out_vld 1 1 }  { m_axis_close_connection_TREADY out_acc 0 1 } } }
	m_axis_tx_metadata { axis {  { m_axis_tx_metadata_TDATA out_data 1 32 }  { m_axis_tx_metadata_TVALID out_vld 1 1 }  { m_axis_tx_metadata_TREADY out_acc 0 1 } } }
	m_axis_tx_data_V_data_V { axis {  { m_axis_tx_data_TDATA out_data 1 512 } } }
	m_axis_tx_data_V_keep_V { axis {  { m_axis_tx_data_TKEEP out_data 1 64 } } }
	m_axis_tx_data_V_strb_V { axis {  { m_axis_tx_data_TSTRB out_data 1 64 } } }
	m_axis_tx_data_V_last_V { axis {  { m_axis_tx_data_TLAST out_data 1 1 }  { m_axis_tx_data_TVALID out_vld 1 1 }  { m_axis_tx_data_TREADY out_acc 0 1 } } }
	s_axis_tx_status { axis {  { s_axis_tx_status_TDATA in_data 0 64 }  { s_axis_tx_status_TVALID in_vld 0 1 }  { s_axis_tx_status_TREADY in_acc 1 1 } } }
	runExperiment { ap_none {  { runExperiment in_data 0 1 } } }
	useConn { ap_none {  { useConn in_data 0 16 } } }
	useIpAddr { ap_none {  { useIpAddr in_data 0 16 } } }
	pkgWordCount { ap_none {  { pkgWordCount in_data 0 16 } } }
	regBasePort { ap_none {  { regBasePort in_data 0 16 } } }
	usePort { ap_none {  { usePort in_data 0 16 } } }
	expectedRespInKB { ap_none {  { expectedRespInKB in_data 0 16 } } }
	finishExperiment { ap_none {  { finishExperiment in_data 0 1 } } }
	clientPkgNum { ap_none {  { clientPkgNum in_data 0 32 } } }
	regIpAddress0 { ap_none {  { regIpAddress0 in_data 0 32 } } }
	regIpAddress1 { ap_none {  { regIpAddress1 in_data 0 32 } } }
	regIpAddress2 { ap_none {  { regIpAddress2 in_data 0 32 } } }
	regIpAddress3 { ap_none {  { regIpAddress3 in_data 0 32 } } }
	regIpAddress4 { ap_none {  { regIpAddress4 in_data 0 32 } } }
	regIpAddress5 { ap_none {  { regIpAddress5 in_data 0 32 } } }
	regIpAddress6 { ap_none {  { regIpAddress6 in_data 0 32 } } }
	regIpAddress7 { ap_none {  { regIpAddress7 in_data 0 32 } } }
	regIpAddress8 { ap_none {  { regIpAddress8 in_data 0 32 } } }
	regIpAddress9 { ap_none {  { regIpAddress9 in_data 0 32 } } }
	regIpAddress10 { ap_none {  { regIpAddress10 in_data 0 32 } } }
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
