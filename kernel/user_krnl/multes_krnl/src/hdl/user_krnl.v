/* (c) Copyright 2019 Xilinx, Inc. All rights reserved.
 This file contains confidential and proprietary information 
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property 
 laws.
 
 DISCLAIMER
 This disclaimer is not a license and does not grant any 
 rights to the materials distributed herewith. Except as 
 otherwise provided in a valid license issued to you by 
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES 
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING 
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
 (2) Xilinx shall not be liable (whether in contract or tort, 
 including negligence, or under any other theory of 
 liability) for any loss or damage of any kind or nature 
 related to, arising under or in connection with these 
 materials, including for any direct, or any indirect, 
 special, incidental, or consequential loss or damage 
 (including loss of data, profits, goodwill, or any type of 
 loss or damage suffered as a result of any action brought 
 by a third party) even if such damage or loss was 
 reasonably foreseeable or Xilinx had been advised of the 
 possibility of the same.
 
 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or 
 systems, Class III medical devices, nuclear facilities, 
 applications related to the deployment of airbags, or any 
 other applications that could lead to death, personal 
 injury, or severe property or environmental damage 
 (individually and collectively, "Critical 
 Applications"). Customer assumes the sole risk and 
 liability of any use of Xilinx products in Critical 
 Applications, subject only to applicable laws and 
 regulations governing limitations on product liability.
 
 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS 
 PART OF THIS FILE AT ALL TIMES.
*/

// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module user_krnl #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH                = 12 ,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH                = 32 ,
  parameter integer C_M00_AXI_ADDR_WIDTH                      = 64 ,
  parameter integer C_M00_AXI_DATA_WIDTH                      = 512,
  parameter integer C_M01_AXI_ADDR_WIDTH                      = 64 ,
  parameter integer C_M01_AXI_DATA_WIDTH                      = 512,
  parameter integer C_S_AXIS_UDP_RX_TDATA_WIDTH               = 512,
  parameter integer C_M_AXIS_UDP_TX_TDATA_WIDTH               = 512,
  parameter integer C_S_AXIS_UDP_RX_META_TDATA_WIDTH          = 256,
  parameter integer C_M_AXIS_UDP_TX_META_TDATA_WIDTH          = 256,
  parameter integer C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH      = 16 ,
  parameter integer C_S_AXIS_TCP_PORT_STATUS_TDATA_WIDTH      = 8  ,
  parameter integer C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH  = 64 ,
  parameter integer C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH      = 32 ,
  parameter integer C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH = 16 ,
  parameter integer C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH     = 128,
  parameter integer C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH         = 32 ,
  parameter integer C_S_AXIS_TCP_RX_META_TDATA_WIDTH          = 16 ,
  parameter integer C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH          = 512,
  parameter integer C_M_AXIS_TCP_TX_META_TDATA_WIDTH          = 32 ,
  parameter integer C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH          = 512,
  parameter integer C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH        = 64 
)
(
  // System Signals
  input  wire                                                   ap_clk                            ,
  input  wire                                                   ap_rst_n                          ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4 master interface m00_axi
  output wire                                                   m00_axi_awvalid                   ,
  input  wire                                                   m00_axi_awready                   ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]                        m00_axi_awaddr                    ,
  output wire [8-1:0]                                           m00_axi_awlen                     ,
  output wire                                                   m00_axi_wvalid                    ,
  input  wire                                                   m00_axi_wready                    ,
  output wire [C_M00_AXI_DATA_WIDTH-1:0]                        m00_axi_wdata                     ,
  output wire [C_M00_AXI_DATA_WIDTH/8-1:0]                      m00_axi_wstrb                     ,
  output wire                                                   m00_axi_wlast                     ,
  input  wire                                                   m00_axi_bvalid                    ,
  output wire                                                   m00_axi_bready                    ,
  output wire                                                   m00_axi_arvalid                   ,
  input  wire                                                   m00_axi_arready                   ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]                        m00_axi_araddr                    ,
  output wire [8-1:0]                                           m00_axi_arlen                     ,
  input  wire                                                   m00_axi_rvalid                    ,
  output wire                                                   m00_axi_rready                    ,
  input  wire [C_M00_AXI_DATA_WIDTH-1:0]                        m00_axi_rdata                     ,
  input  wire                                                   m00_axi_rlast                     ,
  // AXI4 master interface m01_axi
  output wire                                                   m01_axi_awvalid                   ,
  input  wire                                                   m01_axi_awready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m01_axi_awaddr                    ,
  output wire [8-1:0]                                           m01_axi_awlen                     ,
  output wire                                                   m01_axi_wvalid                    ,
  input  wire                                                   m01_axi_wready                    ,
  output wire [C_M01_AXI_DATA_WIDTH-1:0]                        m01_axi_wdata                     ,
  output wire [C_M01_AXI_DATA_WIDTH/8-1:0]                      m01_axi_wstrb                     ,
  output wire                                                   m01_axi_wlast                     ,
  input  wire                                                   m01_axi_bvalid                    ,
  output wire                                                   m01_axi_bready                    ,
  output wire                                                   m01_axi_arvalid                   ,
  input  wire                                                   m01_axi_arready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m01_axi_araddr                    ,
  output wire [8-1:0]                                           m01_axi_arlen                     ,
  input  wire                                                   m01_axi_rvalid                    ,
  output wire                                                   m01_axi_rready                    ,
  input  wire [C_M01_AXI_DATA_WIDTH-1:0]                        m01_axi_rdata                     ,
  input  wire                                                   m01_axi_rlast                     ,
    // AXI4 master interface m01_axi
  output wire                                                   m02_axi_awvalid                   ,
  input  wire                                                   m02_axi_awready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m02_axi_awaddr                    ,
  output wire [8-1:0]                                           m02_axi_awlen                     ,
  output wire                                                   m02_axi_wvalid                    ,
  input  wire                                                   m02_axi_wready                    ,
  output wire [C_M01_AXI_DATA_WIDTH-1:0]                        m02_axi_wdata                     ,
  output wire [C_M01_AXI_DATA_WIDTH/8-1:0]                      m02_axi_wstrb                     ,
  output wire                                                   m02_axi_wlast                     ,
  input  wire                                                   m02_axi_bvalid                    ,
  output wire                                                   m02_axi_bready                    ,
  output wire                                                   m02_axi_arvalid                   ,
  input  wire                                                   m02_axi_arready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m02_axi_araddr                    ,
  output wire [8-1:0]                                           m02_axi_arlen                     ,
  input  wire                                                   m02_axi_rvalid                    ,
  output wire                                                   m02_axi_rready                    ,
  input  wire [C_M01_AXI_DATA_WIDTH-1:0]                        m02_axi_rdata                     ,
  input  wire                                                   m02_axi_rlast                     ,
    // AXI4 master interface m01_axi
  output wire                                                   m03_axi_awvalid                   ,
  input  wire                                                   m03_axi_awready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m03_axi_awaddr                    ,
  output wire [8-1:0]                                           m03_axi_awlen                     ,
  output wire                                                   m03_axi_wvalid                    ,
  input  wire                                                   m03_axi_wready                    ,
  output wire [C_M01_AXI_DATA_WIDTH-1:0]                        m03_axi_wdata                     ,
  output wire [C_M01_AXI_DATA_WIDTH/8-1:0]                      m03_axi_wstrb                     ,
  output wire                                                   m03_axi_wlast                     ,
  input  wire                                                   m03_axi_bvalid                    ,
  output wire                                                   m03_axi_bready                    ,
  output wire                                                   m03_axi_arvalid                   ,
  input  wire                                                   m03_axi_arready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m03_axi_araddr                    ,
  output wire [8-1:0]                                           m03_axi_arlen                     ,
  input  wire                                                   m03_axi_rvalid                    ,
  output wire                                                   m03_axi_rready                    ,
  input  wire [C_M01_AXI_DATA_WIDTH-1:0]                        m03_axi_rdata                     ,
  input  wire                                                   m03_axi_rlast                     ,
  // AXI4-Stream (slave) interface s_axis_udp_rx
  input  wire                                                   s_axis_udp_rx_tvalid              ,
  output wire                                                   s_axis_udp_rx_tready              ,
  input  wire [C_S_AXIS_UDP_RX_TDATA_WIDTH-1:0]                 s_axis_udp_rx_tdata               ,
  input  wire [C_S_AXIS_UDP_RX_TDATA_WIDTH/8-1:0]               s_axis_udp_rx_tkeep               ,
  input  wire                                                   s_axis_udp_rx_tlast               ,
  // AXI4-Stream (master) interface m_axis_udp_tx
  output wire                                                   m_axis_udp_tx_tvalid              ,
  input  wire                                                   m_axis_udp_tx_tready              ,
  output wire [C_M_AXIS_UDP_TX_TDATA_WIDTH-1:0]                 m_axis_udp_tx_tdata               ,
  output wire [C_M_AXIS_UDP_TX_TDATA_WIDTH/8-1:0]               m_axis_udp_tx_tkeep               ,
  output wire                                                   m_axis_udp_tx_tlast               ,
  // AXI4-Stream (slave) interface s_axis_udp_rx_meta
  input  wire                                                   s_axis_udp_rx_meta_tvalid         ,
  output wire                                                   s_axis_udp_rx_meta_tready         ,
  input  wire [C_S_AXIS_UDP_RX_META_TDATA_WIDTH-1:0]            s_axis_udp_rx_meta_tdata          ,
  input  wire [C_S_AXIS_UDP_RX_META_TDATA_WIDTH/8-1:0]          s_axis_udp_rx_meta_tkeep          ,
  input  wire                                                   s_axis_udp_rx_meta_tlast          ,
  // AXI4-Stream (master) interface m_axis_udp_tx_meta
  output wire                                                   m_axis_udp_tx_meta_tvalid         ,
  input  wire                                                   m_axis_udp_tx_meta_tready         ,
  output wire [C_M_AXIS_UDP_TX_META_TDATA_WIDTH-1:0]            m_axis_udp_tx_meta_tdata          ,
  output wire [C_M_AXIS_UDP_TX_META_TDATA_WIDTH/8-1:0]          m_axis_udp_tx_meta_tkeep          ,
  output wire                                                   m_axis_udp_tx_meta_tlast          ,
  // AXI4-Stream (master) interface m_axis_tcp_listen_port
  output wire                                                   m_axis_tcp_listen_port_tvalid     ,
  input  wire                                                   m_axis_tcp_listen_port_tready     ,
  output wire [C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH-1:0]        m_axis_tcp_listen_port_tdata      ,
  output wire [C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH/8-1:0]      m_axis_tcp_listen_port_tkeep      ,
  output wire                                                   m_axis_tcp_listen_port_tlast      ,
  // AXI4-Stream (slave) interface s_axis_tcp_port_status
  input  wire                                                   s_axis_tcp_port_status_tvalid     ,
  output wire                                                   s_axis_tcp_port_status_tready     ,
  input  wire [C_S_AXIS_TCP_PORT_STATUS_TDATA_WIDTH-1:0]        s_axis_tcp_port_status_tdata      ,
  input  wire                                                   s_axis_tcp_port_status_tlast      ,
  // AXI4-Stream (master) interface m_axis_tcp_open_connection
  output wire                                                   m_axis_tcp_open_connection_tvalid ,
  input  wire                                                   m_axis_tcp_open_connection_tready ,
  output wire [C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH-1:0]    m_axis_tcp_open_connection_tdata  ,
  output wire [C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH/8-1:0]  m_axis_tcp_open_connection_tkeep  ,
  output wire                                                   m_axis_tcp_open_connection_tlast  ,
  // AXI4-Stream (slave) interface s_axis_tcp_open_status
  input  wire                                                   s_axis_tcp_open_status_tvalid     ,
  output wire                                                   s_axis_tcp_open_status_tready     ,
  input  wire [C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH-1:0]        s_axis_tcp_open_status_tdata      ,
  input  wire [C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH/8-1:0]      s_axis_tcp_open_status_tkeep      ,
  input  wire                                                   s_axis_tcp_open_status_tlast      ,
  // AXI4-Stream (master) interface m_axis_tcp_close_connection
  output wire                                                   m_axis_tcp_close_connection_tvalid,
  input  wire                                                   m_axis_tcp_close_connection_tready,
  output wire [C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH-1:0]   m_axis_tcp_close_connection_tdata ,
  output wire [C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH/8-1:0] m_axis_tcp_close_connection_tkeep ,
  output wire                                                   m_axis_tcp_close_connection_tlast ,
  // AXI4-Stream (slave) interface s_axis_tcp_notification
  input  wire                                                   s_axis_tcp_notification_tvalid    ,
  output wire                                                   s_axis_tcp_notification_tready    ,
  input  wire [C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH-1:0]       s_axis_tcp_notification_tdata     ,
  input  wire [C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH/8-1:0]     s_axis_tcp_notification_tkeep     ,
  input  wire                                                   s_axis_tcp_notification_tlast     ,
  // AXI4-Stream (master) interface m_axis_tcp_read_pkg
  output wire                                                   m_axis_tcp_read_pkg_tvalid        ,
  input  wire                                                   m_axis_tcp_read_pkg_tready        ,
  output wire [C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH-1:0]           m_axis_tcp_read_pkg_tdata         ,
  output wire [C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH/8-1:0]         m_axis_tcp_read_pkg_tkeep         ,
  output wire                                                   m_axis_tcp_read_pkg_tlast         ,
  // AXI4-Stream (slave) interface s_axis_tcp_rx_meta
  input  wire                                                   s_axis_tcp_rx_meta_tvalid         ,
  output wire                                                   s_axis_tcp_rx_meta_tready         ,
  input  wire [C_S_AXIS_TCP_RX_META_TDATA_WIDTH-1:0]            s_axis_tcp_rx_meta_tdata          ,
  input  wire [C_S_AXIS_TCP_RX_META_TDATA_WIDTH/8-1:0]          s_axis_tcp_rx_meta_tkeep          ,
  input  wire                                                   s_axis_tcp_rx_meta_tlast          ,
  // AXI4-Stream (slave) interface s_axis_tcp_rx_data
  input  wire                                                   s_axis_tcp_rx_data_tvalid         ,
  output wire                                                   s_axis_tcp_rx_data_tready         ,
  input  wire [C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH-1:0]            s_axis_tcp_rx_data_tdata          ,
  input  wire [C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH/8-1:0]          s_axis_tcp_rx_data_tkeep          ,
  input  wire                                                   s_axis_tcp_rx_data_tlast          ,
  // AXI4-Stream (master) interface m_axis_tcp_tx_meta
  output wire                                                   m_axis_tcp_tx_meta_tvalid         ,
  input  wire                                                   m_axis_tcp_tx_meta_tready         ,
  output wire [C_M_AXIS_TCP_TX_META_TDATA_WIDTH-1:0]            m_axis_tcp_tx_meta_tdata          ,
  output wire [C_M_AXIS_TCP_TX_META_TDATA_WIDTH/8-1:0]          m_axis_tcp_tx_meta_tkeep          ,
  output wire                                                   m_axis_tcp_tx_meta_tlast          ,
  // AXI4-Stream (master) interface m_axis_tcp_tx_data
  output wire                                                   m_axis_tcp_tx_data_tvalid         ,
  input  wire                                                   m_axis_tcp_tx_data_tready         ,
  output wire [C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH-1:0]            m_axis_tcp_tx_data_tdata          ,
  output wire [C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH/8-1:0]          m_axis_tcp_tx_data_tkeep          ,
  output wire                                                   m_axis_tcp_tx_data_tlast          ,
  // AXI4-Stream (slave) interface s_axis_tcp_tx_status
  input  wire                                                   s_axis_tcp_tx_status_tvalid       ,
  output wire                                                   s_axis_tcp_tx_status_tready       ,
  input  wire [C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH-1:0]          s_axis_tcp_tx_status_tdata        ,
  input  wire [C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH/8-1:0]        s_axis_tcp_tx_status_tkeep        ,
  input  wire                                                   s_axis_tcp_tx_status_tlast        ,
  // AXI4-Lite slave interface
  input  wire                                                   s_axi_control_awvalid             ,
  output wire                                                   s_axi_control_awready             ,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]                  s_axi_control_awaddr              ,
  input  wire                                                   s_axi_control_wvalid              ,
  output wire                                                   s_axi_control_wready              ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]                  s_axi_control_wdata               ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0]                s_axi_control_wstrb               ,
  input  wire                                                   s_axi_control_arvalid             ,
  output wire                                                   s_axi_control_arready             ,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]                  s_axi_control_araddr              ,
  output wire                                                   s_axi_control_rvalid              ,
  input  wire                                                   s_axi_control_rready              ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]                  s_axi_control_rdata               ,
  output wire [2-1:0]                                           s_axi_control_rresp               ,
  output wire                                                   s_axi_control_bvalid              ,
  input  wire                                                   s_axi_control_bready              ,
  output wire [2-1:0]                                           s_axi_control_bresp               ,
  output wire                                                   interrupt         
);


///////////////////////////////////////////////////////////////////////////////
// Wires and Variables


assign interrupt = 1'b0;



///////////////////////////////////////////////////////////////////////////////
// User stack
///////////////////////////////////////////////////////////////////////////////

// assign s_axis_udp_rx_tready = 1'b1;
// assign m_axis_udp_tx_tvalid = 1'b0;
// assign s_axis_udp_rx_meta_tready = 1'b1;
// assign m_axis_udp_tx_meta_tvalid = 1'b0;

// assign m_axis_tcp_listen_port_tkeep = '1;
// assign m_axis_tcp_listen_port_tlast = 1;

// assign m_axis_tcp_open_connection_tkeep = '1;
// assign m_axis_tcp_open_connection_tlast = 1;

// assign m_axis_tcp_close_connection_tkeep = '1;
// assign m_axis_tcp_close_connection_tlast = 1;

// assign m_axis_tcp_read_pkg_tkeep = '1;
// assign m_axis_tcp_read_pkg_tlast = 1;

// assign m_axis_tcp_tx_meta_tkeep = '1;
// assign m_axis_tcp_tx_meta_tlast = 1;

// // assign m_axis_tcp_listen_port_tvalid = 1'b0;
// // assign s_axis_tcp_port_status_tready = 1'b1;
// // assign m_axis_tcp_open_connection_tvalid = 1'b0;
// // assign s_axis_tcp_open_status_tready = 1'b1;
// // assign m_axis_tcp_close_connection_tvalid = 1'b0;
// // assign s_axis_tcp_notification_tready = 1'b1;
// // assign m_axis_tcp_read_pkg_tvalid = 1'b0;
// // assign s_axis_tcp_rx_meta_tready = 1'b1;
// // assign s_axis_tcp_rx_data_tready = 1'b1;
// // assign m_axis_tcp_tx_meta_tvalid = 1'b0;
// // assign m_axis_tcp_tx_data_tvalid = 1'b0;
// // assign s_axis_tcp_tx_status_tready = 1'b1;

ipcore_top_multes /*#( 
  .C_S_AXI_CONTROL_DATA_WIDTH(C_S_AXI_CONTROL_DATA_WIDTH),  
  .C_S_AXI_CONTROL_ADDR_WIDTH(C_S_AXI_CONTROL_ADDR_WIDTH)
)*/
ipcore_top_multes_inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),

    /* CONTROL INTERFACE */
    // LITE interface
    .s_axi_control_awvalid             (s_axi_control_awvalid),
    .s_axi_control_awready             (s_axi_control_awready),
    .s_axi_control_awaddr              (s_axi_control_awaddr),
    .s_axi_control_wvalid              (s_axi_control_wvalid),
    .s_axi_control_wready              (s_axi_control_wready),
    .s_axi_control_wdata               (s_axi_control_wdata),
    .s_axi_control_wstrb               (s_axi_control_wstrb),
    .s_axi_control_arvalid             (s_axi_control_arvalid),
    .s_axi_control_arready             (s_axi_control_arready),
    .s_axi_control_araddr              (s_axi_control_araddr),
    .s_axi_control_rvalid              (s_axi_control_rvalid),
    .s_axi_control_rready              (s_axi_control_rready),
    .s_axi_control_rdata               (s_axi_control_rdata),
    .s_axi_control_rresp               (s_axi_control_rresp),
    .s_axi_control_bvalid              (s_axi_control_bvalid),
    .s_axi_control_bready              (s_axi_control_bready),
    .s_axi_control_bresp               (s_axi_control_bresp),

    .c0_s_axi_awvalid (m00_axi_awvalid),
    .c0_s_axi_awready (m00_axi_awready),
    .c0_s_axi_awaddr  (m00_axi_awaddr),
    .c0_s_axi_awlen   (m00_axi_awlen),
    .c0_s_axi_wvalid  (m00_axi_wvalid),
    .c0_s_axi_wready  (m00_axi_wready),
    .c0_s_axi_wdata   (m00_axi_wdata),
    .c0_s_axi_wstrb   (m00_axi_wstrb),
    .c0_s_axi_wlast   (m00_axi_wlast),
    .c0_s_axi_bvalid  (m00_axi_bvalid),
    .c0_s_axi_bready  (m00_axi_bready),
    .c0_s_axi_arvalid (m00_axi_arvalid),
    .c0_s_axi_arready (m00_axi_arready),
    .c0_s_axi_araddr  (m00_axi_araddr),
    .c0_s_axi_arlen   (m00_axi_arlen),
    .c0_s_axi_rvalid  (m00_axi_rvalid),
    .c0_s_axi_rready  (m00_axi_rready),
    .c0_s_axi_rdata   (m00_axi_rdata),
    .c0_s_axi_rlast   (m00_axi_rlast),

    .c1_s_axi_awvalid (m01_axi_awvalid),
    .c1_s_axi_awready (m01_axi_awready),
    .c1_s_axi_awaddr  (m01_axi_awaddr),
    .c1_s_axi_awlen   (m01_axi_awlen),
    .c1_s_axi_wvalid  (m01_axi_wvalid),
    .c1_s_axi_wready  (m01_axi_wready),
    .c1_s_axi_wdata   (m01_axi_wdata),
    .c1_s_axi_wstrb   (m01_axi_wstrb),
    .c1_s_axi_wlast   (m01_axi_wlast),
    .c1_s_axi_bvalid  (m01_axi_bvalid),
    .c1_s_axi_bready  (m01_axi_bready),
    .c1_s_axi_arvalid (m01_axi_arvalid),
    .c1_s_axi_arready (m01_axi_arready),
    .c1_s_axi_araddr  (m01_axi_araddr),
    .c1_s_axi_arlen   (m01_axi_arlen),
    .c1_s_axi_rvalid  (m01_axi_rvalid),
    .c1_s_axi_rready  (m01_axi_rready),
    .c1_s_axi_rdata   (m01_axi_rdata),
    .c1_s_axi_rlast   (m01_axi_rlast),

    .c2_s_axi_awvalid (m02_axi_awvalid),
    .c2_s_axi_awready (m02_axi_awready),
    .c2_s_axi_awaddr  (m02_axi_awaddr),
    .c2_s_axi_awlen   (m02_axi_awlen),
    .c2_s_axi_wvalid  (m02_axi_wvalid),
    .c2_s_axi_wready  (m02_axi_wready),
    .c2_s_axi_wdata   (m02_axi_wdata),
    .c2_s_axi_wstrb   (m02_axi_wstrb),
    .c2_s_axi_wlast   (m02_axi_wlast),
    .c2_s_axi_bvalid  (m02_axi_bvalid),
    .c2_s_axi_bready  (m02_axi_bready),
    .c2_s_axi_arvalid (m02_axi_arvalid),
    .c2_s_axi_arready (m02_axi_arready),
    .c2_s_axi_araddr  (m02_axi_araddr),
    .c2_s_axi_arlen   (m02_axi_arlen),
    .c2_s_axi_rvalid  (m02_axi_rvalid),
    .c2_s_axi_rready  (m02_axi_rready),
    .c2_s_axi_rdata   (m02_axi_rdata),
    .c2_s_axi_rlast   (m02_axi_rlast),


    .c3_s_axi_awvalid (m03_axi_awvalid),
    .c3_s_axi_awready (m03_axi_awready),
    .c3_s_axi_awaddr  (m03_axi_awaddr),
    .c3_s_axi_awlen   (m03_axi_awlen),
    .c3_s_axi_wvalid  (m03_axi_wvalid),
    .c3_s_axi_wready  (m03_axi_wready),
    .c3_s_axi_wdata   (m03_axi_wdata),
    .c3_s_axi_wstrb   (m03_axi_wstrb),
    .c3_s_axi_wlast   (m03_axi_wlast),
    .c3_s_axi_bvalid  (m03_axi_bvalid),
    .c3_s_axi_bready  (m03_axi_bready),
    .c3_s_axi_arvalid (m03_axi_arvalid),
    .c3_s_axi_arready (m03_axi_arready),
    .c3_s_axi_araddr  (m03_axi_araddr),
    .c3_s_axi_arlen   (m03_axi_arlen),
    .c3_s_axi_rvalid  (m03_axi_rvalid),
    .c3_s_axi_rready  (m03_axi_rready),
    .c3_s_axi_rdata   (m03_axi_rdata),
    .c3_s_axi_rlast   (m03_axi_rlast),

    .s_axis_udp_rx_tvalid       (s_axis_udp_rx_tvalid),
    .s_axis_udp_rx_tready       (s_axis_udp_rx_tready),
    .s_axis_udp_rx_tdata        (s_axis_udp_rx_tdata),
    .s_axis_udp_rx_tkeep        (s_axis_udp_rx_tkeep),
    .s_axis_udp_rx_tlast        (s_axis_udp_rx_tlast),
    // AXI4-Stream (master) interface m_axis_udp_tx
    .m_axis_udp_tx_tvalid       (m_axis_udp_tx_tvalid),
    .m_axis_udp_tx_tready       (m_axis_udp_tx_tready),
    .m_axis_udp_tx_tdata        (m_axis_udp_tx_tdata),
    .m_axis_udp_tx_tkeep        (m_axis_udp_tx_tkeep),
    .m_axis_udp_tx_tlast        (m_axis_udp_tx_tlast),
    // AXI4-Stream (slave) interface s_axis_udp_rx_meta
    .s_axis_udp_rx_meta_tvalid  (s_axis_udp_rx_meta_tvalid),
    .s_axis_udp_rx_meta_tready  (s_axis_udp_rx_meta_tready),
    .s_axis_udp_rx_meta_tdata   (s_axis_udp_rx_meta_tdata),
    .s_axis_udp_rx_meta_tkeep   (s_axis_udp_rx_meta_tkeep),
    .s_axis_udp_rx_meta_tlast   (s_axis_udp_rx_meta_tlast),
    // AXI4-Stream (master) interface m_axis_udp_tx_meta
    .m_axis_udp_tx_meta_tvalid  (m_axis_udp_tx_meta_tvalid),
    .m_axis_udp_tx_meta_tready  (m_axis_udp_tx_meta_tready),
    .m_axis_udp_tx_meta_tdata   (m_axis_udp_tx_meta_tdata),
    .m_axis_udp_tx_meta_tkeep   (m_axis_udp_tx_meta_tkeep),
    .m_axis_udp_tx_meta_tlast   (m_axis_udp_tx_meta_tlast),


    .m_axis_tcp_listen_port_tvalid     (m_axis_tcp_listen_port_tvalid),
    .m_axis_tcp_listen_port_tready     (m_axis_tcp_listen_port_tready),
    .m_axis_tcp_listen_port_tdata      (m_axis_tcp_listen_port_tdata),
    .s_axis_tcp_port_status_tvalid     (s_axis_tcp_port_status_tvalid),
    .s_axis_tcp_port_status_tready     (s_axis_tcp_port_status_tready),
    .s_axis_tcp_port_status_tdata      (s_axis_tcp_port_status_tdata),
    .m_axis_tcp_open_connection_tvalid (m_axis_tcp_open_connection_tvalid),
    .m_axis_tcp_open_connection_tready (m_axis_tcp_open_connection_tready),
    .m_axis_tcp_open_connection_tdata  (m_axis_tcp_open_connection_tdata),
    .s_axis_tcp_open_status_tvalid     (s_axis_tcp_open_status_tvalid),
    .s_axis_tcp_open_status_tready     (s_axis_tcp_open_status_tready),
    .s_axis_tcp_open_status_tdata      (s_axis_tcp_open_status_tdata),
    .m_axis_tcp_close_connection_tvalid(m_axis_tcp_close_connection_tvalid),
    .m_axis_tcp_close_connection_tready(m_axis_tcp_close_connection_tready),
    .m_axis_tcp_close_connection_tdata (m_axis_tcp_close_connection_tdata),
    .s_axis_tcp_notification_tvalid    (s_axis_tcp_notification_tvalid),
    .s_axis_tcp_notification_tready    (s_axis_tcp_notification_tready),
    .s_axis_tcp_notification_tdata     (s_axis_tcp_notification_tdata),
    .m_axis_tcp_read_pkg_tvalid        (m_axis_tcp_read_pkg_tvalid),
    .m_axis_tcp_read_pkg_tready        (m_axis_tcp_read_pkg_tready),
    .m_axis_tcp_read_pkg_tdata         (m_axis_tcp_read_pkg_tdata),
    .s_axis_tcp_rx_meta_tvalid         (s_axis_tcp_rx_meta_tvalid),
    .s_axis_tcp_rx_meta_tready         (s_axis_tcp_rx_meta_tready),
    .s_axis_tcp_rx_meta_tdata          (s_axis_tcp_rx_meta_tdata),
    .s_axis_tcp_rx_data_tvalid         (s_axis_tcp_rx_data_tvalid),
    .s_axis_tcp_rx_data_tready         (s_axis_tcp_rx_data_tready),
    .s_axis_tcp_rx_data_tdata          (s_axis_tcp_rx_data_tdata),
    .s_axis_tcp_rx_data_tkeep          (s_axis_tcp_rx_data_tkeep),
    .s_axis_tcp_rx_data_tlast          (s_axis_tcp_rx_data_tlast),
    .m_axis_tcp_tx_meta_tvalid         (m_axis_tcp_tx_meta_tvalid),
    .m_axis_tcp_tx_meta_tready         (m_axis_tcp_tx_meta_tready),
    .m_axis_tcp_tx_meta_tdata          (m_axis_tcp_tx_meta_tdata),
    .m_axis_tcp_tx_data_tvalid         (m_axis_tcp_tx_data_tvalid),
    .m_axis_tcp_tx_data_tready         (m_axis_tcp_tx_data_tready),
    .m_axis_tcp_tx_data_tdata          (m_axis_tcp_tx_data_tdata),
    .m_axis_tcp_tx_data_tkeep          (m_axis_tcp_tx_data_tkeep),
    .m_axis_tcp_tx_data_tlast          (m_axis_tcp_tx_data_tlast),
    .s_axis_tcp_tx_status_tvalid       (s_axis_tcp_tx_status_tvalid),
    .s_axis_tcp_tx_status_tready       (s_axis_tcp_tx_status_tready),
    .s_axis_tcp_tx_status_tdata        (s_axis_tcp_tx_status_tdata)

);




endmodule
`default_nettype wire
