
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [5:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [5:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~convert_axis_to_net_axis_512_U0.s_axis_TDATA_blk_n;
assign axis_block_sigs[1] = ~convert_net_axis_to_axis_512_U0.m_axis_TDATA_blk_n;
assign axis_block_sigs[2] = ~arp_table_U0.s_axis_arp_lookup_request_TDATA_blk_n;
assign axis_block_sigs[3] = ~arp_table_U0.s_axis_host_arp_lookup_request_TDATA_blk_n;
assign axis_block_sigs[4] = ~arp_table_U0.m_axis_arp_lookup_reply_TDATA_blk_n;
assign axis_block_sigs[5] = ~arp_table_U0.m_axis_host_arp_lookup_reply_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.myMacAddress_c_blk_n | ~entry_proc_U0.myIpAddress_c16_blk_n;
assign inst_idle_sigs[1] = convert_axis_to_net_axis_512_U0.ap_idle;
assign inst_block_sigs[1] = (convert_axis_to_net_axis_512_U0.ap_done & ~convert_axis_to_net_axis_512_U0.ap_continue) | ~convert_axis_to_net_axis_512_U0.arpDataIn_internal_blk_n;
assign inst_idle_sigs[2] = convert_net_axis_to_axis_512_U0.ap_idle;
assign inst_block_sigs[2] = (convert_net_axis_to_axis_512_U0.ap_done & ~convert_net_axis_to_axis_512_U0.ap_continue) | ~convert_net_axis_to_axis_512_U0.arpDataOut_internal_blk_n;
assign inst_idle_sigs[3] = process_arp_pkg_512_U0.ap_idle;
assign inst_block_sigs[3] = (process_arp_pkg_512_U0.ap_done & ~process_arp_pkg_512_U0.ap_continue) | ~process_arp_pkg_512_U0.myIpAddress_blk_n | ~process_arp_pkg_512_U0.myIpAddress_c_blk_n | ~process_arp_pkg_512_U0.arpDataIn_internal_blk_n | ~process_arp_pkg_512_U0.arpReplyMetaFifo_blk_n | ~process_arp_pkg_512_U0.arpTableInsertFifo_blk_n;
assign inst_idle_sigs[4] = generate_arp_pkg_512_U0.ap_idle;
assign inst_block_sigs[4] = (generate_arp_pkg_512_U0.ap_done & ~generate_arp_pkg_512_U0.ap_continue) | ~generate_arp_pkg_512_U0.myMacAddress_blk_n | ~generate_arp_pkg_512_U0.myIpAddress_blk_n | ~generate_arp_pkg_512_U0.arpReplyMetaFifo_blk_n | ~generate_arp_pkg_512_U0.arpRequestMetaFifo_blk_n | ~generate_arp_pkg_512_U0.arpDataOut_internal_blk_n;
assign inst_idle_sigs[5] = arp_table_U0.ap_idle;
assign inst_block_sigs[5] = (arp_table_U0.ap_done & ~arp_table_U0.ap_continue) | ~arp_table_U0.arpTableInsertFifo_blk_n | ~arp_table_U0.arpRequestMetaFifo_blk_n;

assign inst_idle_sigs[6] = 1'b0;
assign inst_idle_sigs[7] = convert_axis_to_net_axis_512_U0.ap_idle;
assign inst_idle_sigs[8] = convert_net_axis_to_axis_512_U0.ap_idle;
assign inst_idle_sigs[9] = arp_table_U0.ap_idle;

arp_server_subnet_top_hls_deadlock_idx0_monitor arp_server_subnet_top_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
