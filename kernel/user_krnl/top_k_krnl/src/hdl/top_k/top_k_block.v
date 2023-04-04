`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2023 10:20:46 AM
// Design Name: 
// Module Name: top_k_block
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


module top_k_block #(
    parameter TOP_K_NUM = 2,  //index = 2, 3 units
    parameter INTEGER_SIZE = 32

)
(
    input wire clk,
    input wire rst,
    input wire rx_data_TVALID,
    input wire rx_data_TLAST,  
    input wire clear,
    output wire rx_data_TREADY,
    input wire [INTEGER_SIZE - 1: 0] rx_data_TDATA,
    output wire tx_data_TVALID,
    input wire tx_data_TREADY,
    output wire [511:0] tx_data_TDATA
    );
    

    
    //For pipelining
    wire[INTEGER_SIZE: 0] block_TDATA [TOP_K_NUM: 0];//including the last output
    reg [INTEGER_SIZE: 0] block_TDATA_reg [TOP_K_NUM - 1: 0]; 
    wire [TOP_K_NUM : 0] block_TVALID;//including the last output
    reg [TOP_K_NUM - 1: 0] block_TVALID_reg; 
    wire [TOP_K_NUM: 0] block_TLAST;
    reg [TOP_K_NUM - 1: 0] block_TLAST_reg;
    wire [TOP_K_NUM : 0] block_TREADY;//including the last output
    reg [TOP_K_NUM -1 : 0] block_TREADY_reg;
    reg clear_reg;
    
    //result port
    wire [INTEGER_SIZE - 1: 0] result_TDATA [TOP_K_NUM: 0];
    wire [TOP_K_NUM: 0] result_TVALID;
    wire tx_data_TVALID_wire; //for valid signal
    reg [INTEGER_SIZE - 1: 0] result_TDATA_reg [TOP_K_NUM: 0];
    
    
 
    
    
    //top-k block components
    top_k_unit top_k_unit_start( .clk(clk), .rx_data_TDATA({clear, rx_data_TDATA}), .rx_data_TVALID(rx_data_TVALID), .rx_data_TLAST(rx_data_TLAST), 
                           .tx_data_TREADY(tx_data_TREADY),
                        .tx_data_TDATA(block_TDATA[0]), .tx_data_TVALID(block_TVALID[0]), .tx_data_TLAST(block_TLAST[0]),.register_TDATA(result_TDATA[0]), .register_TVALID(result_TVALID[0]),
                        .rx_data_TREADY(block_TREADY[0]));
    
    genvar i;
    generate 
        for (i = 0; i < TOP_K_NUM; i = i + 1) begin
           top_k_unit top_k_unit_inst( .clk(clk), .rx_data_TDATA(block_TDATA_reg[i]), .rx_data_TVALID(block_TVALID_reg[i]), .rx_data_TLAST(block_TLAST_reg[i]), 
                       .tx_data_TREADY(block_TREADY_reg[i]),
                       .tx_data_TDATA(block_TDATA[i + 1]), .tx_data_TVALID(block_TVALID[i + 1]),.tx_data_TLAST(block_TLAST[i + 1]), .register_TDATA(result_TDATA[i + 1]), .register_TVALID(result_TVALID[i + 1]),
                       .rx_data_TREADY(block_TREADY[i + 1]));
                       
        
        end
    endgenerate
    
    //pipeline logic
    genvar i_clk;
    generate 
        for(i_clk = 0; i_clk < TOP_K_NUM; i_clk = i_clk + 1) begin
           always @(posedge clk) begin
                if(block_TVALID[i_clk] == 1)begin
                    block_TDATA_reg[i_clk] <= block_TDATA[i_clk];
                end
                block_TVALID_reg[i_clk] <= block_TVALID[i_clk];
                block_TLAST_reg[i_clk] <= block_TLAST[i_clk];
                block_TREADY_reg[i_clk] <= block_TREADY[i_clk];
            end
        end
     endgenerate
     
     
    genvar i_result;
    generate 
       for (i_result = 0; i_result < TOP_K_NUM + 1; i_result = i_result + 1)begin
        always @* begin
            if(block_TVALID[i_result] == 1 && block_TLAST[i_result] == 1)begin
                result_TDATA_reg[i_result] = result_TDATA[i_result];
            end
          end
        end
    endgenerate   
     
     //output
     assign tx_data_TDATA = {406'b 0, result_TDATA_reg[2], result_TDATA_reg[1], result_TDATA_reg[0]};
     assign tx_data_TVALID = block_TLAST[TOP_K_NUM] & block_TVALID[TOP_K_NUM];
     assign rx_data_TREADY = block_TREADY[TOP_K_NUM];

endmodule
