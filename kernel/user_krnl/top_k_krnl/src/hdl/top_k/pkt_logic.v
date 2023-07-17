`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2023 02:42:04 PM
// Design Name: 
// Module Name: pkt_logic
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


module pkt_logic(
    input wire clk,
    input wire rst,
    input wire [512+88-1 + 1 : 0] pkt_rx_TDATA,
    input wire pkt_rx_TVALID,
    output wire pkt_rx_TREADY,
    output wire [512+32-1 + 1: 0] pkt_tx_TDATA,
    output wire pkt_tx_TVALID,
    input wire pkt_tx_TREADY
    );
    

reg [31:0] meta_TDATA;
wire pkt_tx_TVALID_int;



/*update metadata for each connection*/
always @* begin
    if(pkt_rx_TVALID == 1 & pkt_rx_TREADY == 1) begin
        meta_TDATA = pkt_rx_TDATA[512+32-1 + 1: 513];
    end
end
 
//packet_parser packet_paser_isnt(
//    .clk(clk),
//    .pkt_rx_TDATA(pkt_rx_TDATA[511:0]),
//    .pkt_rx_TVALID(pkt_rx_TVALID),
//    .pkt_rx_TLAST(pkt_rx_TDATA[512]),
//    .pkt_rx_TREADY(pkt_rx_TREADY),
//    .pkt_tx_TDATA_1(pkt_tx_TDATA_1_int),
//    .pkt_tx_TDATA_2 (pkt_tx_TDATA_2_int),
//    .pkt_tx_TVALID(pkt_tx_TVALID_int),
//    .pkt_tx_TREADY(pkt_tx_TREADY)
//    );
    
packet_parser packet_parser_inst(
   .clk(clk),
   .rx_TDATA(pkt_rx_TDATA[512:0]),
    .rx_TVALID(pkt_rx_TVALID),
    .rx_TREADY(pkt_rx_TREADY),
    .tx_TDATA(parsed_pkt_tx_TDATA),
    .tx_TVALID(pkt_tx_TVALID_int),
    .enable(enable_int),
    .tx_TREADY(pkt_tx_TREADY_int)
    );

wire [31 + 1: 0] parsed_pkt_tx_TDATA;
wire [511:0] pkt_tx_TDATA_payload;
wire [15:0] enable_int; //for storing the K of top-k sorting
wire pkt_tx_TREADY_int;

//test test_inst(
//        .ap_clk(clk),
//        .ap_rst_n(1'b0),
//        .ap_start(1'b1),
//        .ap_done(),
//        .ap_idle(),
//        .ap_ready(),
//        .inStream_TVALID(pkt_rx_TVALID),
//        .outStream_TREADY(1'b1),
//        .inStream_TDATA(pkt_rx_TDATA[511:0]),
//        .inStream_TREADY(),
//        .inStream_TKEEP(64'hFFFFFFFFFFFFFFFF),
//        .inStream_TSTRB(64'hFFFFFFFFFFFFFFFF),
//        .inStream_TLAST(pkt_rx_TVALID),
//        .outStream_TDATA(pkt_tx_TDATA_payload),
//        .outStream_TVALID(),
//        .outStream_TKEEP(),
//        .outStream_TSTRB(),
//        .outStream_TLAST()
//);
wire [31:0] meta_TDATA_out;
wire meta_TVALID_out;

    nukv_fifogen #(
        .DATA_SIZE(32),
        .ADDR_BITS(5)
    ) metadata_ (
        .clk(clk),
        .rst(rst),
        .s_axis_tvalid(pkt_rx_TVALID & pkt_rx_TREADY & pkt_rx_TDATA[512]),
        .s_axis_tready(),
        .s_axis_tdata(meta_TDATA),
        .m_axis_tvalid(meta_TVALID_out),
        .m_axis_tready(pkt_tx_TVALID),
        .m_axis_tdata(meta_TDATA_out)
    ); 
top_k_block top_k_block_inst(
   .clk(clk),
   .rst(rst),
   .rx_data_TVALID(pkt_tx_TVALID_int),
    .rx_data_TLAST(parsed_pkt_tx_TDATA[31+1]),  
    .clear(parsed_pkt_tx_TDATA[33]),
    .rx_data_TREADY(pkt_tx_TREADY_int),
    .rx_data_TDATA(parsed_pkt_tx_TDATA[31:0]),
    .enable_register(enable_int),
    .tx_data_TVALID(pkt_tx_TVALID),
    .tx_data_TREADY(pkt_tx_TREADY),
    .tx_data_TDATA(pkt_tx_TDATA_payload)
);



//reg pkt_tx_TVALID_int;
///******/
//always @(posedge clk) begin
//   pkt_tx_TVALID_int <= pkt_rx_TVALID;
//   pkt_tx_TVALID <= pkt_tx_TVALID_int;
//end

assign pkt_tx_TDATA = {meta_TDATA_out, 1'b1, pkt_tx_TDATA_payload};

endmodule
