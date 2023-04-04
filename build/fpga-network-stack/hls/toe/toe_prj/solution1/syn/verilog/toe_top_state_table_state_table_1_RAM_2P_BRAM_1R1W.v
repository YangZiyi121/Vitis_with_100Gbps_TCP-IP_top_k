// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W (address1, ce1, d1, we1, q1,  reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 10;
parameter AddressRange = 1000;

input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;

(* ram_style = "block" *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[address1] <= d1; 
        q1 <= ram[address1];
    end
end


endmodule

