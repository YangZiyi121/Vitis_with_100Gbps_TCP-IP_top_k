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
    parameter TOP_K_NUM = 15, 
    parameter INTEGER_SIZE = 32

)
(
    input wire clk,
    input wire rst,
    input wire clear,
    input wire rx_data_TVALID,
    input wire rx_data_TLAST,  
    output wire rx_data_TREADY,
    input wire [INTEGER_SIZE - 1: 0] rx_data_TDATA,
    output wire tx_data_TVALID,
    input wire tx_data_TREADY,
    output reg [511:0] tx_data_TDATA
    );
    
    
    //enable_reg
    wire [15:0] enable_register;
    reg [15:0] rx_enable;
    reg [INTEGER_SIZE - 1: 0] rx_data_TDATA_reg;
    reg rx_data_TVALID_reg, rx_data_TLAST_reg;
    
    always @ * begin
        if(clear == 1) begin
            rx_enable = rx_data_TDATA[15:0];
            rx_data_TDATA_reg = 0;
        end
        else begin
            rx_data_TDATA_reg = rx_data_TDATA;
        end
    end
    
    nukv_fifogen #(
        .DATA_SIZE(16),
        .ADDR_BITS(4)
    ) enable_store_inst (
            .clk(clk),
            .rst(1'b0),
            .s_axis_tvalid(rx_data_TLAST),
            .s_axis_tready(),
            .s_axis_tdata(rx_enable),  
            .m_axis_tvalid(),
            .m_axis_tready(FIFO_tx_TREADY[TOP_K_NUM]),
            .m_axis_tdata(enable_register)
            ); 	

    
    //For pipelining
    wire[INTEGER_SIZE - 1: 0] block_TDATA [TOP_K_NUM: 0];//including the last output
    reg [INTEGER_SIZE - 1: 0] block_TDATA_reg [TOP_K_NUM - 1: 0]; 
    wire [TOP_K_NUM : 0] block_TVALID;//including the last output
    reg [TOP_K_NUM - 1: 0] block_TVALID_reg; 
    wire [TOP_K_NUM: 0] block_TLAST;
    reg [TOP_K_NUM - 1: 0] block_TLAST_reg;
    wire [TOP_K_NUM : 0] block_TREADY;//including the last output
    reg [TOP_K_NUM -1 : 0] block_TREADY_reg;
    wire[INTEGER_SIZE - 1: 0] clear_reg [TOP_K_NUM - 1: 0];//clear signal
    
    //result port
    wire [INTEGER_SIZE - 1: 0] result_TDATA [TOP_K_NUM: 0];
    wire [TOP_K_NUM: 0] result_TVALID;
    reg [INTEGER_SIZE - 1: 0] result_TDATA_reg [TOP_K_NUM: 0];
    
    
    //FIFO port
    wire  [INTEGER_SIZE - 1: 0] FIFO_out_TDATA [TOP_K_NUM: 0];
    wire  [TOP_K_NUM: 0] FIFO_out_TVALID;
    reg [TOP_K_NUM: 0] FIFO_tx_TREADY;
    
    //out
    reg [511: 0] tx_data_TDATA_reg = 512'b0;    
    //top-k block components
    top_k_unit top_k_unit_start( .clk(clk), .en(1'b1), .in_clear(clear), .rx_data_TDATA(rx_data_TDATA_reg), .rx_data_TVALID(rx_data_TVALID), .rx_data_TLAST(rx_data_TLAST), 
                           .tx_data_TREADY(tx_data_TREADY),
                        .tx_data_TDATA(block_TDATA[0]), .tx_data_TVALID(block_TVALID[0]), .tx_data_TLAST(block_TLAST[0]),.register_TDATA(result_TDATA[0]), .register_TVALID(result_TVALID[0]),
                        .rx_data_TREADY(block_TREADY[0]), .out_clear(clear_reg[0]));
    
    genvar i;
    generate 
        for (i = 0; i < TOP_K_NUM; i = i + 1) begin
           top_k_unit top_k_unit_inst( .clk(clk),.en(1'b1),.in_clear(clear_reg[i]), .rx_data_TDATA(block_TDATA_reg[i]), .rx_data_TVALID(block_TVALID_reg[i]), .rx_data_TLAST(block_TLAST_reg[i]), 
                       .tx_data_TREADY(block_TREADY_reg[i]),
                       .tx_data_TDATA(block_TDATA[i + 1]), .tx_data_TVALID(block_TVALID[i + 1]),.tx_data_TLAST(block_TLAST[i + 1]), .register_TDATA(result_TDATA[i + 1]), .register_TVALID(result_TVALID[i + 1]),
                       .rx_data_TREADY(block_TREADY[i + 1]), .out_clear(clear_reg[i + 1]));
                       
        
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
       
       
       /*assign the input data*/
       reg s_axis_tvalid_int;
       reg [31:0]s_axis_tdata_int;
       
       always@* begin
        s_axis_tvalid_int = block_TVALID[i_result] && block_TLAST[i_result];
        s_axis_tdata_int = result_TDATA_reg[i_result];
       end
       
       
         
       
       //Send data to FIFO
       
       //wire ready_for_all_FIFO;
       //assign ready_for_all_FIFO = FIFO_tx_TREADY[0] & FIFO_tx_TREADY[1] & FIFO_tx_TREADY[3] & FIFO_tx_TREADY[7]& FIFO_tx_TREADY[15];
        
        nukv_fifogen #(
                .DATA_SIZE(32),
                .ADDR_BITS(4)
            ) fifo_inst (
                    .clk(clk),
                    .rst(0),
                    .s_axis_tvalid(s_axis_tvalid_int),
                    .s_axis_tready(),
                    .s_axis_tdata(s_axis_tdata_int),  
                    .m_axis_tvalid(FIFO_out_TVALID[i_result]),
                    .m_axis_tready(FIFO_tx_TREADY[TOP_K_NUM]),
                    .m_axis_tdata(FIFO_out_TDATA[i_result])
                    ); 	
        end
     endgenerate   
    
    
     always @(posedge clk) begin
           FIFO_tx_TREADY[0] <= block_TVALID[TOP_K_NUM] && block_TLAST[TOP_K_NUM];
     end
     
     genvar i_reg;
     generate
     for (i_reg = 1; i_reg < TOP_K_NUM + 1; i_reg = i_reg + 1)begin 
          always @(posedge clk) begin
                FIFO_tx_TREADY[i_reg] <= FIFO_tx_TREADY[i_reg - 1];
          end
      end
      endgenerate
      
     generate
     for (i_reg = 0; i_reg < TOP_K_NUM + 1; i_reg = i_reg + 1)begin 
          always @(*) begin
                tx_data_TDATA_reg[INTEGER_SIZE * (i_reg + 1) - 1: INTEGER_SIZE * i_reg] = FIFO_out_TDATA[i_reg];
          end
      end
      endgenerate
     
        
     //output
     //wire tx_data_TVALID_int;
     //assign tx_data_TVALID_int = FIFO_out_TVALID[TOP_K_NUM] & FIFO_tx_TREADY[TOP_K_NUM] & FIFO_out_TVALID[0];
     assign tx_data_TVALID = FIFO_out_TVALID[TOP_K_NUM] & FIFO_tx_TREADY[TOP_K_NUM] & FIFO_out_TVALID[0];
     assign rx_data_TREADY = block_TREADY[0];
     
//     always @ (posedge clk) begin
//        tx_data_TVALID <= tx_data_TVALID_int;
//     end
     
     always@* begin
        case(enable_register)
            16'hffff: tx_data_TDATA = tx_data_TDATA_reg;
            16'h7fff: tx_data_TDATA = {32'b0, tx_data_TDATA_reg[479:0]};
            16'h3fff: tx_data_TDATA = {64'b0, tx_data_TDATA_reg[447:0]};
            16'h1fff: tx_data_TDATA = {96'b0, tx_data_TDATA_reg[415:0]};
            16'h0fff: tx_data_TDATA = {128'b0, tx_data_TDATA_reg[383:0]};
            16'h07ff: tx_data_TDATA = {160'b0, tx_data_TDATA_reg[351:0]};
            16'h03ff: tx_data_TDATA = {192'b0, tx_data_TDATA_reg[319:0]};
            16'h01ff: tx_data_TDATA = {224'b0, tx_data_TDATA_reg[287:0]};
            16'h00ff: tx_data_TDATA = {256'b0, tx_data_TDATA_reg[255:0]};
            16'h007f: tx_data_TDATA = {288'b0, tx_data_TDATA_reg[223:0]};
            16'h003f: tx_data_TDATA = {320'b0, tx_data_TDATA_reg[191:0]};
            16'h001f: tx_data_TDATA = {352'b0, tx_data_TDATA_reg[159:0]};
            16'h000f: tx_data_TDATA = {384'b0, tx_data_TDATA_reg[127:0]};
            16'h0007: tx_data_TDATA = {416'b0, tx_data_TDATA_reg[95:0]};
            16'h0005: tx_data_TDATA = {448'b0, tx_data_TDATA_reg[63:0]};
            16'h0001: tx_data_TDATA = {480'b0, tx_data_TDATA_reg[31:0]};
            default: tx_data_TDATA = tx_data_TDATA_reg;
        endcase
     end
     
     
     

endmodule