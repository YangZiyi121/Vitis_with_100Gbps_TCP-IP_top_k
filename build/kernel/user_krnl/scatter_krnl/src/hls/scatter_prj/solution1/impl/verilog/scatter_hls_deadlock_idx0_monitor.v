`timescale 1 ns / 1 ps

module scatter_hls_deadlock_idx0_monitor ( // for module scatter_scatter_inst
    input wire clock,
    input wire reset,
    input wire [11:0] axis_block_sigs,
    input wire [17:0] inst_idle_sigs,
    input wire [8:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx8_block;
wire idx4_block;
wire idx5_block;
wire idx1_block;
wire idx7_block;
wire idx6_block;
wire idx3_block;
wire idx2_block;
wire [8:0] process_idle_vec;
wire [8:0] process_chan_block_vec;
wire [8:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign idx4_block = axis_block_sigs[3];
assign idx5_block = axis_block_sigs[4];
assign idx1_block = axis_block_sigs[0];
assign idx7_block = axis_block_sigs[6];
assign idx6_block = axis_block_sigs[5];
assign idx3_block = axis_block_sigs[2];
assign idx2_block = axis_block_sigs[1];
assign process_axis_block_vec[0] = 1'b0;
assign process_idle_vec[0] = inst_idle_sigs[0];
assign process_chan_block_vec[0] = inst_block_sigs[0];
assign process_axis_block_vec[1] = idx1_block & (1'b0 | axis_block_sigs[0]);
assign process_idle_vec[1] = inst_idle_sigs[1];
assign process_chan_block_vec[1] = inst_block_sigs[1];
assign process_axis_block_vec[2] = idx2_block & (1'b0 | axis_block_sigs[1]);
assign process_idle_vec[2] = inst_idle_sigs[2];
assign process_chan_block_vec[2] = inst_block_sigs[2];
assign process_axis_block_vec[3] = idx3_block & (1'b0 | axis_block_sigs[2]);
assign process_idle_vec[3] = inst_idle_sigs[3];
assign process_chan_block_vec[3] = inst_block_sigs[3];
assign process_axis_block_vec[4] = idx4_block & (1'b0 | axis_block_sigs[3]);
assign process_idle_vec[4] = inst_idle_sigs[4];
assign process_chan_block_vec[4] = inst_block_sigs[4];
assign process_axis_block_vec[5] = idx5_block & (1'b0 | axis_block_sigs[4]);
assign process_idle_vec[5] = inst_idle_sigs[5];
assign process_chan_block_vec[5] = inst_block_sigs[5];
assign process_axis_block_vec[6] = idx6_block & (1'b0 | axis_block_sigs[5]);
assign process_idle_vec[6] = inst_idle_sigs[6];
assign process_chan_block_vec[6] = inst_block_sigs[6];
assign process_axis_block_vec[7] = idx7_block & (1'b0 | axis_block_sigs[6]);
assign process_idle_vec[7] = inst_idle_sigs[7];
assign process_chan_block_vec[7] = inst_block_sigs[7];
assign process_axis_block_vec[8] = idx8_block & (1'b0 | axis_block_sigs[7] | axis_block_sigs[8] | axis_block_sigs[9] | axis_block_sigs[10] | axis_block_sigs[11]);
assign process_idle_vec[8] = inst_idle_sigs[8];
assign process_chan_block_vec[8] = inst_block_sigs[8];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]) & (process_idle_vec[6] | process_chan_block_vec[6] | process_axis_block_vec[6]) & (process_idle_vec[7] | process_chan_block_vec[7] | process_axis_block_vec[7]) & (process_idle_vec[8] | process_chan_block_vec[8] | process_axis_block_vec[8]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 scatter_hls_deadlock_idx8_monitor scatter_hls_deadlock_idx8_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx8_block)
);

endmodule
