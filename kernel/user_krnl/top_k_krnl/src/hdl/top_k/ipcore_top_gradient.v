`default_nettype none

//(* DowngradeIPIdentifiedWarnings="yes" *)
module ipcore_top_gradient
#(
   parameter integer C_S_AXI_CONTROL_ADDR_WIDTH                = 12 ,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH                = 32 ,
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
  parameter integer C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH        = 64,

  parameter integer ENABLE_PROCESSING                         = 0

)
(
  input wire      ap_clk,
  input wire      ap_rst_n,

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
  output wire [2-1:0]                                           s_axi_control_bresp               

       

);
  wire uclk;
  wire urst;

  wire ap_start, ap_done, ap_ready, ap_idle, interrupt;
wire ap_start_pulse;
reg ap_start_r;

wire       runExperiment;
reg       finishExperiment;
reg       finishPulse;


  ///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////

reg areset ;

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

assign interrupt = 1'b0;
///////////////////////////////////////////////////////////////////////////////
// User stack
///////////////////////////////////////////////////////////////////////////////

  assign uclk = ap_clk;
  assign urst = areset;

  wire fclk;
  wire frst;

  assign fclk = ap_clk;
  assign frst = areset;


  /* CUT OFF UDP */
  assign s_axis_udp_rx_tready = 1;
  assign s_axis_udp_rx_meta_tready = 1;
  assign m_axis_udp_tx_tvalid = 0;
  assign m_axis_udp_tx_meta_tvalid = 0;
  assign m_axis_udp_tx_meta_tlast = 0;
  assign m_axis_udp_tx_meta_tkeep = 32'hffffffff;



//upd stream interface signals
wire           upd_s_axis_read_cmd_tvalid;
wire          upd_s_axis_read_cmd_tready;
wire[71:0]     upd_s_axis_read_cmd_tdata;
//read status
wire          upd_m_axis_read_sts_tvalid;
wire           upd_m_axis_read_sts_tready;
wire[7:0]     upd_m_axis_read_sts_tdata;
//read stream
wire[511:0]    upd_m_axis_read_tdata;
wire[63:0]     upd_m_axis_read_tkeep;
wire          upd_m_axis_read_tlast;
wire          upd_m_axis_read_tvalid;
wire           upd_m_axis_read_tready;

//write commands
wire           upd_s_axis_write_cmd_tvalid;
wire          upd_s_axis_write_cmd_tready;
wire[71:0]     upd_s_axis_write_cmd_tdata;
//write status
wire          upd_m_axis_write_sts_tvalid;
wire           upd_m_axis_write_sts_tready;
wire[31:0]     upd_m_axis_write_sts_tdata;
//write stream
wire[511:0]     upd_s_axis_write_tdata;
wire[63:0]      upd_s_axis_write_tkeep;
wire           upd_s_axis_write_tlast;
wire           upd_s_axis_write_tvalid;
wire          upd_s_axis_write_tready;

wire[511:0]     upd_s_axis_write_tdata_x;
wire[63:0]      upd_s_axis_write_tkeep_x;
wire           upd_s_axis_write_tlast_x;
wire           upd_s_axis_write_tvalid_x;
wire          upd_s_axis_write_tready_x;

assign m_axis_tcp_open_connection_tkeep = 16'hffff;
assign m_axis_tcp_open_connection_tlast = 1;

assign m_axis_tcp_close_connection_tkeep = 16'hffff;
assign m_axis_tcp_close_connection_tlast = 1;

assign m_axis_tcp_listen_port_tkeep = 16'hffff;
assign m_axis_tcp_listen_port_tlast = 1;

assign m_axis_tcp_read_pkg_tkeep = 16'hffff;
assign m_axis_tcp_read_pkg_tlast = 1;

assign m_axis_tcp_tx_meta_tkeep = 16'hffff;
assign m_axis_tcp_tx_meta_tlast = 1;

//assign m_axis_tcp_tx_data_tkeep = 64'hffffffffffffffff;

tcp_top_loopback top_instance (


.aclk(ap_clk),
.aresetn(ap_rst_n),

.m_axis_open_connection_TVALID(m_axis_tcp_open_connection_tvalid),
.m_axis_open_connection_TREADY(m_axis_tcp_open_connection_tready),
.m_axis_open_connection_TDATA(m_axis_tcp_open_connection_tdata),
.s_axis_open_status_TVALID(s_axis_tcp_open_status_tvalid),
.s_axis_open_status_TREADY(s_axis_tcp_open_status_tready),
.s_axis_open_status_TDATA(s_axis_tcp_open_status_tdata),

.m_axis_close_connection_TVALID(m_axis_tcp_close_connection_tvalid),
.m_axis_close_connection_TREADY(m_axis_tcp_close_connection_tready),
.m_axis_close_connection_TDATA(m_axis_tcp_close_connection_tdata),

.m_axis_listen_port_TVALID(m_axis_tcp_listen_port_tvalid),
.m_axis_listen_port_TREADY(m_axis_tcp_listen_port_tready),
.m_axis_listen_port_TDATA(m_axis_tcp_listen_port_tdata),

.s_axis_listen_port_status_TVALID(s_axis_tcp_port_status_tvalid),
.s_axis_listen_port_status_TREADY(s_axis_tcp_port_status_tready),
.s_axis_listen_port_status_TDATA(s_axis_tcp_port_status_tdata),

.s_axis_notifications_TVALID(s_axis_tcp_notification_tvalid),
.s_axis_notifications_TREADY(s_axis_tcp_notification_tready),
.s_axis_notifications_TDATA(s_axis_tcp_notification_tdata),

.m_axis_read_package_TVALID(m_axis_tcp_read_pkg_tvalid),
.m_axis_read_package_TREADY(m_axis_tcp_read_pkg_tready),
.m_axis_read_package_TDATA(m_axis_tcp_read_pkg_tdata),

.m_axis_tx_data_TVALID(m_axis_tcp_tx_data_tvalid),
.m_axis_tx_data_TREADY(m_axis_tcp_tx_data_tready),
.m_axis_tx_data_TDATA(m_axis_tcp_tx_data_tdata),
.m_axis_tx_data_TKEEP(m_axis_tcp_tx_data_tkeep),
.m_axis_tx_data_TLAST(m_axis_tcp_tx_data_tlast),

.m_axis_tx_metadata_TVALID(m_axis_tcp_tx_meta_tvalid),
.m_axis_tx_metadata_TREADY(m_axis_tcp_tx_meta_tready),
.m_axis_tx_metadata_TDATA(m_axis_tcp_tx_meta_tdata),

.s_axis_tx_status_TVALID(s_axis_tcp_tx_status_tvalid),
.s_axis_tx_status_TREADY(s_axis_tcp_tx_status_tready),
.s_axis_tx_status_TDATA(s_axis_tcp_tx_status_tdata),

.s_axis_rx_data_TVALID(s_axis_tcp_rx_data_tvalid),
.s_axis_rx_data_TREADY(s_axis_tcp_rx_data_tready),
.s_axis_rx_data_TDATA(s_axis_tcp_rx_data_tdata),
.s_axis_rx_data_TKEEP(s_axis_tcp_rx_data_tkeep),
.s_axis_rx_data_TLAST(s_axis_tcp_rx_data_tlast),

.s_axis_rx_metadata_TVALID(s_axis_tcp_rx_meta_tvalid),
.s_axis_rx_metadata_TREADY(s_axis_tcp_rx_meta_tready),
.s_axis_rx_metadata_TDATA(s_axis_tcp_rx_meta_tdata)
			  
			  
			  

);


// create pulse when ap_start transitions to 1
always @(posedge ap_clk) begin
  begin
    ap_start_r <= ap_start;
  end
end

assign ap_start_pulse = ap_start & ~ap_start_r;

reg[63:0] countDown;

wire [31:0] useConn, useIpAddr, pkgWordCount, basePort ,baseIpAddress;

wire[31:0] timeInSeconds, dualMode, packetGap;
wire[63:0] timeInCycles;

// ap_idle is asserted when done is asserted, it is de-asserted when ap_start_pulse
// is asserted
always @(posedge ap_clk) begin
   
  if (~ap_rst_n) begin
    finishExperiment <= 1;
    countDown <= 0;
  end
  else begin

    if (ap_start_pulse==1) begin
      countDown <= timeInCycles;
      finishExperiment <= 0;
     

    end else begin      
  
      if (countDown==0) begin
        countDown <= 0;
        finishExperiment <= 1;

        if (finishExperiment==0) begin
          finishPulse <= 1;
        end else begin
          finishPulse <= 0;
        end
  
      end else begin
        countDown <= countDown-1;
      end
    end
  end
end

assign ap_idle = finishExperiment;

// Done logic

assign ap_done = finishPulse;

// Ready Logic (non-pipelined case)
assign ap_ready = ap_done;




user_krnl_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK                   ( ap_clk                 ),
  .ARESET                 ( ~ap_rst_n              ),
  .ACLK_EN                ( 1'b1                   ),
  .AWVALID                ( s_axi_control_awvalid  ), 
  .AWREADY                ( s_axi_control_awready  ),
  .AWADDR                 ( s_axi_control_awaddr   ),
  .WVALID                 ( s_axi_control_wvalid   ),
  .WREADY                 ( s_axi_control_wready   ),
  .WDATA                  ( s_axi_control_wdata    ),
  .WSTRB                  ( s_axi_control_wstrb    ),
  .ARVALID                ( s_axi_control_arvalid  ),
  .ARREADY                ( s_axi_control_arready  ),
  .ARADDR                 ( s_axi_control_araddr   ),
  .RVALID                 ( s_axi_control_rvalid   ),
  .RREADY                 ( s_axi_control_rready   ),
  .RDATA                  ( s_axi_control_rdata    ),
  .RRESP                  ( s_axi_control_rresp    ),
  .BVALID                 ( s_axi_control_bvalid   ),
  .BREADY                 ( s_axi_control_bready   ),
  .BRESP                  ( s_axi_control_bresp    ),
  .interrupt              ( interrupt              ),
  .ap_start               ( ap_start               ),
  .ap_done                ( ap_done                ),
  .ap_ready               ( ap_ready               ),
  .ap_idle                ( ap_idle                ),
  .runForCycles           ( timeInCycles      ),//64 bit
  .axi00_ptr0             (  ),
  .axi01_ptr0             (  ),
  .axi02_ptr0             (  ),
  .axi03_ptr0             (  )
  
);



endmodule
