`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/17/2023 11:41:12 AM
// Design Name:
// Module Name: packet_parser
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
 
module pkt_sender (
        input wire clk,
        input wire rst,

        input wire [512+32-1 + 1: 0] pkt_rx_TDATA,  //metadata + tlast + tdata
        input wire                pkt_rx_TVALID,
        output reg                pkt_rx_TREADY,

        input wire [63:0]    s_axis_tx_status_TDATA,
        input wire           s_axis_tx_status_TVALID,
        output wire          s_axis_tx_status_TREADY,

        output wire [31:0]   m_axis_tx_metadata_TDATA,
        output wire          m_axis_tx_metadata_TVALID,
        input wire           m_axis_tx_metadata_TREADY,
        
        output wire [511:0]  m_axis_tx_data_TDATA,
        output reg           m_axis_tx_data_TVALID,
        output reg [64:0] 	 m_axis_tx_data_TKEEP,
        output wire         	 m_axis_tx_data_TLAST,
        input wire           m_axis_tx_data_TREADY        
    ); 

    wire status_tx_TVALID;
    reg  status_tx_TREADY;
    wire status_tx_TDATA;

    nukv_fifogen #(
        .DATA_SIZE(1),
        .ADDR_BITS(5)
    ) fifo_status (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(s_axis_tx_status_TVALID),
        .s_axis_tready(s_axis_tx_status_TREADY),
        .s_axis_tdata(s_axis_tx_status_TDATA[62:62]), // 1'b0: OK 1'b1: Error (Send to closed conn)
        .m_axis_tvalid(status_tx_TVALID),
        .m_axis_tready(status_tx_TREADY),
        .m_axis_tdata(status_tx_TDATA)
    );
    
    /**********/    

    reg [511 + 1:0]  payload_rx_TDATA;
    reg          payload_rx_TVALID;
    wire         payload_rx_TREADY;

    wire         payload_tx_TVALID;
    reg          payload_tx_TREADY;
    
    wire [512: 0] output_tx;
    
    nukv_fifogen #(
        .DATA_SIZE(512 + 1), //tlast + tdata
        .ADDR_BITS(5)
    ) fifo_payload (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(payload_rx_TVALID),
        .s_axis_tready(payload_rx_TREADY),
        .s_axis_tdata(payload_rx_TDATA),
        .m_axis_tvalid(payload_tx_TVALID),
        .m_axis_tready(payload_tx_TREADY),
        .m_axis_tdata(output_tx)
    );
    
    assign m_axis_tx_data_TLAST = output_tx[512] && m_axis_tx_data_TVALID;
    assign m_axis_tx_data_TDATA = output_tx[511:0];

    /**********/

    reg [31:0]  metadata_rx_TDATA;
    reg         metadata_rx_TVALID;
    wire        metadata_rx_TREADY = 1;

    nukv_fifogen #(
        .DATA_SIZE(32),
        .ADDR_BITS(5)
    ) fifo_metadata (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(metadata_rx_TVALID),
        .s_axis_tready(metadata_rx_TREADY),
        .s_axis_tdata(metadata_rx_TDATA),
        .m_axis_tvalid(m_axis_tx_metadata_TVALID),
        .m_axis_tready(m_axis_tx_metadata_TREADY),
        .m_axis_tdata(m_axis_tx_metadata_TDATA)
    );
    
   
    /**********/

    always @(*) begin
        metadata_rx_TDATA = {16'd64, pkt_rx_TDATA[512+16-1 + 1 : 512 + 1]}; // Packet Size: 64 Byte
        payload_rx_TDATA = pkt_rx_TDATA[511 + 1:0]; //tlast + tdata

        pkt_rx_TREADY = metadata_rx_TREADY & payload_rx_TREADY;
        
        metadata_rx_TVALID = pkt_rx_TREADY & pkt_rx_TVALID;
        payload_rx_TVALID = pkt_rx_TREADY & pkt_rx_TVALID;
        m_axis_tx_data_TKEEP = 65'h1FFFFFFFFFFFFFFFFF;
        //m_axis_tx_data_TLAST = 1'b1;

        if (status_tx_TVALID == 1'b1 && payload_tx_TVALID == 1'b1 && status_tx_TDATA == 1'b1) begin
            // exception handler: sent to closed connection
            // discard payload and status
            m_axis_tx_data_TVALID = 1'b0;
            status_tx_TREADY = 1'b1;
            payload_tx_TREADY = 1'b1;
        end else begin
            m_axis_tx_data_TVALID = status_tx_TVALID & payload_tx_TVALID;
            status_tx_TREADY = m_axis_tx_data_TVALID & m_axis_tx_data_TREADY;
            payload_tx_TREADY = status_tx_TREADY;
        end 
    end

endmodule
