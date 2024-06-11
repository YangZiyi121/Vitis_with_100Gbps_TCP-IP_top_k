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


module packet_parser_top_k
#(ECHO  = 16'b0000, TOP_K = 16'b0001, MM = 16'b0010)
(
    input wire clk,
    input wire rst,
    input wire [512:0] rx_TDATA,
    input wire rx_TVALID,
    output wire rx_TREADY,
    output wire [31 + 1 + 1: 0] tx_TDATA,
    output wire tx_TVALID,
    input wire tx_TREADY
    );
    
    reg [511+1:0] rx_TDATA_parsing = 0;
    reg [31 + 1 + 1:0]current_data_TDATA; // clear + tlast + data
    reg current_data_TVALID;
    reg rx_TREADY_reg = 0;
    
    assign rx_TREADY = rx_TREADY_reg;
 
   //0ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    //Parse the new dataline and put each data in FIFO
    always @(posedge clk) begin
        if(rx_TDATA_parsing != 0) begin     //parsing the current
            if(rx_TDATA_parsing[447:0]== 448'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) begin  
                 current_data_TDATA = {1'b1, 1'b0, 16'b0, rx_TDATA_parsing[495:480]};   
                 rx_TDATA_parsing = 0;
                 current_data_TVALID = 1'b1;              
            end
            else if((rx_TDATA_parsing[511 + 1: 31 + 1 + 1] == 0) && (rx_TDATA_parsing[31+1] == 1'b1)) begin    //is the last
                current_data_TDATA = {1'b0, 1'b1, rx_TDATA_parsing[31:0]};   
                rx_TDATA_parsing = 0; //shift
                current_data_TVALID = 1'b1; 
                rx_TREADY_reg = 0;
            end
            else begin      //not the last of this dataline
                current_data_TDATA = {1'b0, 1'b0, rx_TDATA_parsing[31:0]};  //not the last
                rx_TDATA_parsing = {32'b0, rx_TDATA_parsing[511 + 1: 31+1]}; //shift
                current_data_TVALID = 1'b1; 
                rx_TREADY_reg = 0;
            end    
        end

        else begin
            current_data_TVALID = 1'b0;
            if(rx_TVALID == 1 && rx_TREADY_reg == 1) begin  
                rx_TDATA_parsing = rx_TDATA;
                rx_TREADY_reg = 0;
            end
            else begin
                rx_TREADY_reg = 1;
            end
        end
    end
   
    
    
    
   //Send data to FIFO 
    nukv_fifogen #(
            .DATA_SIZE(32 + 1 + 1), //with TLAST encrypted in TDATA, clear signal
            .ADDR_BITS(4)
        ) fifo_inst (
                .clk(clk),
                .rst(rst),
                .s_axis_tvalid(current_data_TVALID),
                .s_axis_tready(),
                .s_axis_tdata(current_data_TDATA),  
                .m_axis_tvalid(tx_TVALID),
                .m_axis_tready(tx_TREADY),
                .m_axis_tdata(tx_TDATA)
                ); 	
                
endmodule