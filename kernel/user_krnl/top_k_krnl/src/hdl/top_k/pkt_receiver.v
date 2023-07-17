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
 
module pkt_receiver (
        input wire clk,
        input wire rst,

        input wire [87:0]    s_axis_notifications_TDATA,
        input wire           s_axis_notifications_TVALID,
        output wire          s_axis_notifications_TREADY,
        
        input wire [511 + 1:0] 	 s_axis_rx_data_TDATA, //tlast + tdata
        input wire 	         s_axis_rx_data_TVALID,
        // input wire [63:0] 	 s_axis_rx_data_TKEEP,
        // input wire [0:0] 	 s_axis_rx_data_TLAST,
        output wire          s_axis_rx_data_TREADY,

        output reg [31:0]    m_axis_read_package_TDATA,
        output reg           m_axis_read_package_TVALID,
        input wire           m_axis_read_package_TREADY,

        output reg [512+88-1 + 1 : 0] pkt_tx_TDATA,
        output reg                pkt_tx_TVALID,
        input wire                pkt_tx_TREADY
    );

    wire [87:0] notif_tx_TDATA;
    wire        notif_tx_TVALID;
    reg         notif_tx_TREADY;

    nukv_fifogen #(
        .DATA_SIZE(88),
        .ADDR_BITS(5)
    ) fifo_notif (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(s_axis_notifications_TVALID),
        .s_axis_tready(s_axis_notifications_TREADY),
        .s_axis_tdata(s_axis_notifications_TDATA),
        .m_axis_tvalid(notif_tx_TVALID),
        .m_axis_tready(notif_tx_TREADY),
        .m_axis_tdata(notif_tx_TDATA)
    );
    
    /**********/    

    reg          payload_rx_TVALID;
    wire [511 + 1:0] payload_tx_TDATA; //tlast + tdata
    wire         payload_tx_TVALID;
    reg          payload_tx_TREADY;

    reg          prev_rx_data_TVALID;
    
    always @(posedge clk) begin
        prev_rx_data_TVALID <= s_axis_rx_data_TVALID;
    end

    always @(*) begin
        // signal should be only valid for 1 clock
        payload_rx_TVALID = s_axis_rx_data_TVALID & (~prev_rx_data_TVALID);
    end

    nukv_fifogen #(
        .DATA_SIZE(512 + 1), //tlast + tdata
        .ADDR_BITS(5)
    ) fifo_payload (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(s_axis_rx_data_TVALID),
        .s_axis_tready(s_axis_rx_data_TREADY),
        .s_axis_tdata(s_axis_rx_data_TDATA), //tlast + tdata
        .m_axis_tvalid(payload_tx_TVALID),
        .m_axis_tready(payload_tx_TREADY),
        .m_axis_tdata(payload_tx_TDATA) //tlast + tdata
    );

    /**********/

    reg          metadata_rx_TVALID;
    wire         metadata_rx_TREADY;

    wire [87:0]  metadata_tx_TDATA;
    wire         metadata_tx_TVALID;
    reg          metadata_tx_TREADY = 0;

    nukv_fifogen #(
        .DATA_SIZE(88),
        .ADDR_BITS(5)
    ) fifo_metadata (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(metadata_rx_TVALID),
        .s_axis_tready(metadata_rx_TREADY),
        .s_axis_tdata(notif_tx_TDATA),
        .m_axis_tvalid(metadata_tx_TVALID),
        .m_axis_tready(metadata_tx_TREADY),
        .m_axis_tdata(metadata_tx_TDATA)
    );    
    


    /**********/

    always @(*) begin
        m_axis_read_package_TDATA = notif_tx_TDATA[31:0];
        if (notif_tx_TVALID == 1'b1 && notif_tx_TDATA[31:16] != 16'd64 && notif_tx_TDATA[31:16] != 16'd128 && notif_tx_TDATA[31:16] != 16'd192) begin 
            // discard rx_data that are larger than 4096bytes
            // also handle conn_close notification (msg size = 0)
            notif_tx_TREADY = 1'b1;
            m_axis_read_package_TVALID = 1'b0;
            metadata_rx_TVALID = 1'b0;
        end else begin
            notif_tx_TREADY = metadata_rx_TREADY & m_axis_read_package_TREADY;
            m_axis_read_package_TVALID = notif_tx_TREADY & notif_tx_TVALID;
            metadata_rx_TVALID = m_axis_read_package_TVALID;
        end

        pkt_tx_TDATA = {metadata_tx_TDATA, payload_tx_TDATA};  //metadata + tlast + tdata
        pkt_tx_TVALID = payload_tx_TVALID;
        
        if(payload_tx_TDATA[512] == 1 & pkt_tx_TVALID == 1 & pkt_tx_TREADY == 1) begin
            metadata_tx_TREADY = 1;
        end
        else begin
            metadata_tx_TREADY = 0;
        end        

        payload_tx_TREADY = pkt_tx_TVALID & pkt_tx_TREADY;
    end

endmodule
