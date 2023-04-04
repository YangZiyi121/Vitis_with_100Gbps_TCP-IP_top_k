`timescale 1 ns / 1 ps

module toe_top_hls_deadlock_idx0_monitor ( // for module toe_top_toe_top_inst
    input wire clock,
    input wire reset,
    input wire [24:0] axis_block_sigs,
    input wire [88:0] inst_idle_sigs,
    input wire [68:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx1_block;
wire idx16_block;
wire idx2_block;
wire idx3_block;
wire idx4_block;
wire idx18_block;
wire idx12_block;
wire idx5_block;
wire idx6_block;
wire idx9_block;
wire idx11_block;
wire idx10_block;
wire idx14_block;
wire idx13_block;
wire idx19_block;
wire idx17_block;
wire idx7_block;
wire idx15_block;
wire idx8_block;
wire [68:0] process_idle_vec;
wire [68:0] process_chan_block_vec;
wire [68:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign idx1_block = axis_block_sigs[0];
assign idx16_block = axis_block_sigs[18];
assign idx2_block = axis_block_sigs[1];
assign idx3_block = axis_block_sigs[2];
assign idx4_block = axis_block_sigs[3];
assign idx18_block = axis_block_sigs[21];
assign idx12_block = axis_block_sigs[12];
assign idx5_block = axis_block_sigs[4];
assign idx6_block = axis_block_sigs[5];
assign idx11_block = axis_block_sigs[11];
assign idx10_block = axis_block_sigs[10];
assign idx7_block = axis_block_sigs[6];
assign idx15_block = axis_block_sigs[17];
assign idx8_block = axis_block_sigs[7];
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
assign process_axis_block_vec[8] = idx8_block & (1'b0 | axis_block_sigs[7]);
assign process_idle_vec[8] = inst_idle_sigs[8];
assign process_chan_block_vec[8] = inst_block_sigs[8];
assign process_axis_block_vec[9] = idx9_block & (1'b0 | axis_block_sigs[8] | axis_block_sigs[9]);
assign process_idle_vec[9] = inst_idle_sigs[9];
assign process_chan_block_vec[9] = inst_block_sigs[9];
assign process_axis_block_vec[10] = idx10_block & (1'b0 | axis_block_sigs[10]);
assign process_idle_vec[10] = inst_idle_sigs[10];
assign process_chan_block_vec[10] = inst_block_sigs[10];
assign process_axis_block_vec[11] = 1'b0;
assign process_idle_vec[11] = inst_idle_sigs[11];
assign process_chan_block_vec[11] = inst_block_sigs[11];
assign process_axis_block_vec[12] = idx11_block & (1'b0 | axis_block_sigs[11]);
assign process_idle_vec[12] = inst_idle_sigs[12];
assign process_chan_block_vec[12] = inst_block_sigs[12];
assign process_axis_block_vec[13] = 1'b0;
assign process_idle_vec[13] = inst_idle_sigs[13];
assign process_chan_block_vec[13] = inst_block_sigs[13];
assign process_axis_block_vec[14] = 1'b0;
assign process_idle_vec[14] = inst_idle_sigs[14];
assign process_chan_block_vec[14] = inst_block_sigs[14];
assign process_axis_block_vec[15] = 1'b0;
assign process_idle_vec[15] = inst_idle_sigs[15];
assign process_chan_block_vec[15] = inst_block_sigs[15];
assign process_axis_block_vec[16] = 1'b0;
assign process_idle_vec[16] = inst_idle_sigs[16];
assign process_chan_block_vec[16] = inst_block_sigs[16];
assign process_axis_block_vec[17] = 1'b0;
assign process_idle_vec[17] = inst_idle_sigs[17];
assign process_chan_block_vec[17] = inst_block_sigs[17];
assign process_axis_block_vec[18] = 1'b0;
assign process_idle_vec[18] = inst_idle_sigs[18];
assign process_chan_block_vec[18] = inst_block_sigs[18];
assign process_axis_block_vec[19] = 1'b0;
assign process_idle_vec[19] = inst_idle_sigs[19];
assign process_chan_block_vec[19] = inst_block_sigs[19];
assign process_axis_block_vec[20] = 1'b0;
assign process_idle_vec[20] = inst_idle_sigs[20];
assign process_chan_block_vec[20] = inst_block_sigs[20];
assign process_axis_block_vec[21] = 1'b0;
assign process_idle_vec[21] = inst_idle_sigs[21];
assign process_chan_block_vec[21] = inst_block_sigs[21];
assign process_axis_block_vec[22] = 1'b0;
assign process_idle_vec[22] = inst_idle_sigs[22];
assign process_chan_block_vec[22] = inst_block_sigs[22];
assign process_axis_block_vec[23] = 1'b0;
assign process_idle_vec[23] = inst_idle_sigs[23];
assign process_chan_block_vec[23] = inst_block_sigs[23];
assign process_axis_block_vec[24] = 1'b0;
assign process_idle_vec[24] = inst_idle_sigs[24];
assign process_chan_block_vec[24] = inst_block_sigs[24];
assign process_axis_block_vec[25] = 1'b0;
assign process_idle_vec[25] = inst_idle_sigs[25];
assign process_chan_block_vec[25] = inst_block_sigs[25];
assign process_axis_block_vec[26] = 1'b0;
assign process_idle_vec[26] = inst_idle_sigs[26];
assign process_chan_block_vec[26] = inst_block_sigs[26];
assign process_axis_block_vec[27] = 1'b0;
assign process_idle_vec[27] = inst_idle_sigs[27];
assign process_chan_block_vec[27] = inst_block_sigs[27];
assign process_axis_block_vec[28] = 1'b0;
assign process_idle_vec[28] = inst_idle_sigs[28];
assign process_chan_block_vec[28] = inst_block_sigs[28];
assign process_axis_block_vec[29] = 1'b0;
assign process_idle_vec[29] = inst_idle_sigs[29];
assign process_chan_block_vec[29] = inst_block_sigs[29];
assign process_axis_block_vec[30] = 1'b0;
assign process_idle_vec[30] = inst_idle_sigs[30];
assign process_chan_block_vec[30] = inst_block_sigs[30];
assign process_axis_block_vec[31] = 1'b0;
assign process_idle_vec[31] = inst_idle_sigs[31];
assign process_chan_block_vec[31] = inst_block_sigs[31];
assign process_axis_block_vec[32] = 1'b0;
assign process_idle_vec[32] = inst_idle_sigs[32];
assign process_chan_block_vec[32] = inst_block_sigs[32];
assign process_axis_block_vec[33] = 1'b0;
assign process_idle_vec[33] = inst_idle_sigs[33];
assign process_chan_block_vec[33] = inst_block_sigs[33];
assign process_axis_block_vec[34] = 1'b0;
assign process_idle_vec[34] = inst_idle_sigs[34];
assign process_chan_block_vec[34] = inst_block_sigs[34];
assign process_axis_block_vec[35] = 1'b0;
assign process_idle_vec[35] = inst_idle_sigs[35];
assign process_chan_block_vec[35] = inst_block_sigs[35];
assign process_axis_block_vec[36] = 1'b0;
assign process_idle_vec[36] = inst_idle_sigs[36];
assign process_chan_block_vec[36] = inst_block_sigs[36];
assign process_axis_block_vec[37] = 1'b0;
assign process_idle_vec[37] = inst_idle_sigs[37];
assign process_chan_block_vec[37] = inst_block_sigs[37];
assign process_axis_block_vec[38] = 1'b0;
assign process_idle_vec[38] = inst_idle_sigs[38];
assign process_chan_block_vec[38] = inst_block_sigs[38];
assign process_axis_block_vec[39] = 1'b0;
assign process_idle_vec[39] = inst_idle_sigs[39];
assign process_chan_block_vec[39] = inst_block_sigs[39];
assign process_axis_block_vec[40] = 1'b0;
assign process_idle_vec[40] = inst_idle_sigs[40];
assign process_chan_block_vec[40] = inst_block_sigs[40];
assign process_axis_block_vec[41] = 1'b0;
assign process_idle_vec[41] = inst_idle_sigs[41];
assign process_chan_block_vec[41] = inst_block_sigs[41];
assign process_axis_block_vec[42] = 1'b0;
assign process_idle_vec[42] = inst_idle_sigs[42];
assign process_chan_block_vec[42] = inst_block_sigs[42];
assign process_axis_block_vec[43] = 1'b0;
assign process_idle_vec[43] = inst_idle_sigs[43];
assign process_chan_block_vec[43] = inst_block_sigs[43];
assign process_axis_block_vec[44] = 1'b0;
assign process_idle_vec[44] = inst_idle_sigs[44];
assign process_chan_block_vec[44] = inst_block_sigs[44];
assign process_axis_block_vec[45] = idx12_block & (1'b0 | axis_block_sigs[12]);
assign process_idle_vec[45] = inst_idle_sigs[45];
assign process_chan_block_vec[45] = inst_block_sigs[45];
assign process_axis_block_vec[46] = 1'b0;
assign process_idle_vec[46] = inst_idle_sigs[46];
assign process_chan_block_vec[46] = inst_block_sigs[46];
assign process_axis_block_vec[47] = 1'b0;
assign process_idle_vec[47] = inst_idle_sigs[47];
assign process_chan_block_vec[47] = inst_block_sigs[47];
assign process_axis_block_vec[48] = 1'b0;
assign process_idle_vec[48] = inst_idle_sigs[48];
assign process_chan_block_vec[48] = inst_block_sigs[48];
assign process_axis_block_vec[49] = 1'b0;
assign process_idle_vec[49] = inst_idle_sigs[49];
assign process_chan_block_vec[49] = inst_block_sigs[49];
assign process_axis_block_vec[50] = 1'b0;
assign process_idle_vec[50] = inst_idle_sigs[50];
assign process_chan_block_vec[50] = inst_block_sigs[50];
assign process_axis_block_vec[51] = 1'b0;
assign process_idle_vec[51] = inst_idle_sigs[51];
assign process_chan_block_vec[51] = inst_block_sigs[51];
assign process_axis_block_vec[52] = 1'b0;
assign process_idle_vec[52] = inst_idle_sigs[52];
assign process_chan_block_vec[52] = inst_block_sigs[52];
assign process_axis_block_vec[53] = 1'b0;
assign process_idle_vec[53] = inst_idle_sigs[53];
assign process_chan_block_vec[53] = inst_block_sigs[53];
assign process_axis_block_vec[54] = 1'b0;
assign process_idle_vec[54] = inst_idle_sigs[54];
assign process_chan_block_vec[54] = inst_block_sigs[54];
assign process_axis_block_vec[55] = 1'b0;
assign process_idle_vec[55] = inst_idle_sigs[55];
assign process_chan_block_vec[55] = inst_block_sigs[55];
assign process_axis_block_vec[56] = 1'b0;
assign process_idle_vec[56] = inst_idle_sigs[56];
assign process_chan_block_vec[56] = inst_block_sigs[56];
assign process_axis_block_vec[57] = 1'b0;
assign process_idle_vec[57] = inst_idle_sigs[57];
assign process_chan_block_vec[57] = inst_block_sigs[57];
assign process_axis_block_vec[58] = idx13_block & (1'b0 | axis_block_sigs[13] | axis_block_sigs[14]);
assign process_idle_vec[58] = inst_idle_sigs[58];
assign process_chan_block_vec[58] = inst_block_sigs[58];
assign process_axis_block_vec[59] = 1'b0;
assign process_idle_vec[59] = inst_idle_sigs[59];
assign process_chan_block_vec[59] = inst_block_sigs[59];
assign process_axis_block_vec[60] = idx14_block & (1'b0 | axis_block_sigs[15] | axis_block_sigs[16]);
assign process_idle_vec[60] = inst_idle_sigs[60];
assign process_chan_block_vec[60] = inst_block_sigs[60];
assign process_axis_block_vec[61] = idx15_block & (1'b0 | axis_block_sigs[17]);
assign process_idle_vec[61] = inst_idle_sigs[61];
assign process_chan_block_vec[61] = inst_block_sigs[61];
assign process_axis_block_vec[62] = 1'b0;
assign process_idle_vec[62] = inst_idle_sigs[62];
assign process_chan_block_vec[62] = inst_block_sigs[62];
assign process_axis_block_vec[63] = idx16_block & (1'b0 | axis_block_sigs[18]);
assign process_idle_vec[63] = inst_idle_sigs[63];
assign process_chan_block_vec[63] = inst_block_sigs[63];
assign process_axis_block_vec[64] = idx17_block & (1'b0 | axis_block_sigs[19] | axis_block_sigs[20]);
assign process_idle_vec[64] = inst_idle_sigs[64];
assign process_chan_block_vec[64] = inst_block_sigs[64];
assign process_axis_block_vec[65] = 1'b0;
assign process_idle_vec[65] = inst_idle_sigs[65];
assign process_chan_block_vec[65] = inst_block_sigs[65];
assign process_axis_block_vec[66] = idx18_block & (1'b0 | axis_block_sigs[21]);
assign process_idle_vec[66] = inst_idle_sigs[66];
assign process_chan_block_vec[66] = inst_block_sigs[66];
assign process_axis_block_vec[67] = idx19_block & (1'b0 | axis_block_sigs[22] | axis_block_sigs[23] | axis_block_sigs[24]);
assign process_idle_vec[67] = inst_idle_sigs[67];
assign process_chan_block_vec[67] = inst_block_sigs[67];
assign process_axis_block_vec[68] = 1'b0;
assign process_idle_vec[68] = inst_idle_sigs[68];
assign process_chan_block_vec[68] = inst_block_sigs[68];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]) & (process_idle_vec[6] | process_chan_block_vec[6] | process_axis_block_vec[6]) & (process_idle_vec[7] | process_chan_block_vec[7] | process_axis_block_vec[7]) & (process_idle_vec[8] | process_chan_block_vec[8] | process_axis_block_vec[8]) & (process_idle_vec[9] | process_chan_block_vec[9] | process_axis_block_vec[9]) & (process_idle_vec[10] | process_chan_block_vec[10] | process_axis_block_vec[10]) & (process_idle_vec[11] | process_chan_block_vec[11] | process_axis_block_vec[11]) & (process_idle_vec[12] | process_chan_block_vec[12] | process_axis_block_vec[12]) & (process_idle_vec[13] | process_chan_block_vec[13] | process_axis_block_vec[13]) & (process_idle_vec[14] | process_chan_block_vec[14] | process_axis_block_vec[14]) & (process_idle_vec[15] | process_chan_block_vec[15] | process_axis_block_vec[15]) & (process_idle_vec[16] | process_chan_block_vec[16] | process_axis_block_vec[16]) & (process_idle_vec[17] | process_chan_block_vec[17] | process_axis_block_vec[17]) & (process_idle_vec[18] | process_chan_block_vec[18] | process_axis_block_vec[18]) & (process_idle_vec[19] | process_chan_block_vec[19] | process_axis_block_vec[19]) & (process_idle_vec[20] | process_chan_block_vec[20] | process_axis_block_vec[20]) & (process_idle_vec[21] | process_chan_block_vec[21] | process_axis_block_vec[21]) & (process_idle_vec[22] | process_chan_block_vec[22] | process_axis_block_vec[22]) & (process_idle_vec[23] | process_chan_block_vec[23] | process_axis_block_vec[23]) & (process_idle_vec[24] | process_chan_block_vec[24] | process_axis_block_vec[24]) & (process_idle_vec[25] | process_chan_block_vec[25] | process_axis_block_vec[25]) & (process_idle_vec[26] | process_chan_block_vec[26] | process_axis_block_vec[26]) & (process_idle_vec[27] | process_chan_block_vec[27] | process_axis_block_vec[27]) & (process_idle_vec[28] | process_chan_block_vec[28] | process_axis_block_vec[28]) & (process_idle_vec[29] | process_chan_block_vec[29] | process_axis_block_vec[29]) & (process_idle_vec[30] | process_chan_block_vec[30] | process_axis_block_vec[30]) & (process_idle_vec[31] | process_chan_block_vec[31] | process_axis_block_vec[31]) & (process_idle_vec[32] | process_chan_block_vec[32] | process_axis_block_vec[32]) & (process_idle_vec[33] | process_chan_block_vec[33] | process_axis_block_vec[33]) & (process_idle_vec[34] | process_chan_block_vec[34] | process_axis_block_vec[34]) & (process_idle_vec[35] | process_chan_block_vec[35] | process_axis_block_vec[35]) & (process_idle_vec[36] | process_chan_block_vec[36] | process_axis_block_vec[36]) & (process_idle_vec[37] | process_chan_block_vec[37] | process_axis_block_vec[37]) & (process_idle_vec[38] | process_chan_block_vec[38] | process_axis_block_vec[38]) & (process_idle_vec[39] | process_chan_block_vec[39] | process_axis_block_vec[39]) & (process_idle_vec[40] | process_chan_block_vec[40] | process_axis_block_vec[40]) & (process_idle_vec[41] | process_chan_block_vec[41] | process_axis_block_vec[41]) & (process_idle_vec[42] | process_chan_block_vec[42] | process_axis_block_vec[42]) & (process_idle_vec[43] | process_chan_block_vec[43] | process_axis_block_vec[43]) & (process_idle_vec[44] | process_chan_block_vec[44] | process_axis_block_vec[44]) & (process_idle_vec[45] | process_chan_block_vec[45] | process_axis_block_vec[45]) & (process_idle_vec[46] | process_chan_block_vec[46] | process_axis_block_vec[46]) & (process_idle_vec[47] | process_chan_block_vec[47] | process_axis_block_vec[47]) & (process_idle_vec[48] | process_chan_block_vec[48] | process_axis_block_vec[48]) & (process_idle_vec[49] | process_chan_block_vec[49] | process_axis_block_vec[49]) & (process_idle_vec[50] | process_chan_block_vec[50] | process_axis_block_vec[50]) & (process_idle_vec[51] | process_chan_block_vec[51] | process_axis_block_vec[51]) & (process_idle_vec[52] | process_chan_block_vec[52] | process_axis_block_vec[52]) & (process_idle_vec[53] | process_chan_block_vec[53] | process_axis_block_vec[53]) & (process_idle_vec[54] | process_chan_block_vec[54] | process_axis_block_vec[54]) & (process_idle_vec[55] | process_chan_block_vec[55] | process_axis_block_vec[55]) & (process_idle_vec[56] | process_chan_block_vec[56] | process_axis_block_vec[56]) & (process_idle_vec[57] | process_chan_block_vec[57] | process_axis_block_vec[57]) & (process_idle_vec[58] | process_chan_block_vec[58] | process_axis_block_vec[58]) & (process_idle_vec[59] | process_chan_block_vec[59] | process_axis_block_vec[59]) & (process_idle_vec[60] | process_chan_block_vec[60] | process_axis_block_vec[60]) & (process_idle_vec[61] | process_chan_block_vec[61] | process_axis_block_vec[61]) & (process_idle_vec[62] | process_chan_block_vec[62] | process_axis_block_vec[62]) & (process_idle_vec[63] | process_chan_block_vec[63] | process_axis_block_vec[63]) & (process_idle_vec[64] | process_chan_block_vec[64] | process_axis_block_vec[64]) & (process_idle_vec[65] | process_chan_block_vec[65] | process_axis_block_vec[65]) & (process_idle_vec[66] | process_chan_block_vec[66] | process_axis_block_vec[66]) & (process_idle_vec[67] | process_chan_block_vec[67] | process_axis_block_vec[67]) & (process_idle_vec[68] | process_chan_block_vec[68] | process_axis_block_vec[68]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 toe_top_hls_deadlock_idx9_monitor toe_top_hls_deadlock_idx9_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx9_block)
);

 toe_top_hls_deadlock_idx14_monitor toe_top_hls_deadlock_idx14_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx14_block)
);

 toe_top_hls_deadlock_idx13_monitor toe_top_hls_deadlock_idx13_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx13_block)
);

 toe_top_hls_deadlock_idx19_monitor toe_top_hls_deadlock_idx19_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx19_block)
);

 toe_top_hls_deadlock_idx17_monitor toe_top_hls_deadlock_idx17_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx17_block)
);

endmodule
