`timescale 1 ns / 1 ps

module scatter_hls_deadlock_idx8_monitor ( // for module scatter_scatter_inst.server_512_U0
    input wire clock,
    input wire reset,
    input wire [11:0] axis_block_sigs,
    input wire [17:0] inst_idle_sigs,
    input wire [8:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire pp_is_axis_block;

assign block = monitor_find_block;
assign pp_is_axis_block = 1'b0 | axis_block_sigs[7] | axis_block_sigs[8] | axis_block_sigs[9] | axis_block_sigs[10] | axis_block_sigs[11];

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (pp_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
endmodule
