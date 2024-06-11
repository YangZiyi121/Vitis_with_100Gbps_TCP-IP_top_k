`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2023 14:47:28
// Design Name: 
// Module Name: top_k_workload
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


module top_k_workload
#(ECHO  = 16'b0000, TOP_K = 16'b0001, MM = 16'b0010)
(
    input wire clk,
    input wire [1+512:0] rx_TDATA,
    input wire rx_TVALID,
    output wire rx_TREADY,
    input wire [31:0] meta_TDATA,
    input wire [15:0] workload_selection, 
    output wire [511:0] pkt_tx_TDATA_payload,
    output wire tx_data_TVALID,
    input  wire tx_data_TREADY,
    output wire [31:0] meta_TDATA_out, 
    output wire meta_TVALID_out
    );
    
    reg rx_TVALID_int;
    
    /**selection**/
    always @* begin
       if(workload_selection == TOP_K) begin
           rx_TVALID_int = rx_TVALID;
       end 
       else begin
           rx_TVALID_int = 0;
       end
    end
    
    
    
   packet_parser_top_k packet_parser_top_k_inst(
   .clk(clk),
    .rx_TDATA(rx_TDATA),
    .rx_TVALID(rx_TVALID_int),
    .rx_TREADY(rx_TREADY),
    .tx_TDATA(parsed_pkt_tx_TDATA),
    .tx_TVALID(pkt_tx_TVALID_int),
    .tx_TREADY(pkt_tx_TREADY_int)
 
    );

    wire [31 + 1 + 1: 0] parsed_pkt_tx_TDATA; //clear+tlast+tdata
    //wire [15:0] enable_int; //for storing the K of top-k sorting
    wire pkt_tx_TVALID_int;
    wire pkt_tx_TREADY_int;
    


    wire meta_TVALID_out;
    

    nukv_fifogen #(
        .DATA_SIZE(32),
        .ADDR_BITS(5)
    ) metadata_ (
        .clk(clk),
        .s_axis_tvalid(rx_TVALID_int & rx_TREADY & rx_TDATA[512]),
        .s_axis_tready(),
        .s_axis_tdata(meta_TDATA),
        .m_axis_tvalid(meta_TVALID_out),
        .m_axis_tready(tx_data_TVALID),
        .m_axis_tdata(meta_TDATA_out)
    ); 
    
    top_k_block top_k_block_inst(
       .clk(clk),
       .rx_data_TVALID(pkt_tx_TVALID_int),
        .rx_data_TLAST(parsed_pkt_tx_TDATA[31+1] && pkt_tx_TVALID_int),  
        .clear(parsed_pkt_tx_TDATA[33]),
        .rx_data_TREADY(pkt_tx_TREADY_int),
        .rx_data_TDATA(parsed_pkt_tx_TDATA[31:0]),
        .tx_data_TVALID(tx_data_TVALID),
        .tx_data_TREADY(tx_data_TREADY),
        .tx_data_TDATA(pkt_tx_TDATA_payload)
    );
 
    
endmodule