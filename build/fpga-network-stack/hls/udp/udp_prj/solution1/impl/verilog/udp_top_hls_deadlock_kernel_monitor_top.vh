
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [7:0] axis_block_sigs;
wire [17:0] inst_idle_sigs;
wire [10:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~convert_axis_to_net_axis_512_U0.s_axis_rx_data_TDATA_blk_n;
assign axis_block_sigs[1] = ~convert_axis_to_net_axis_512_1_U0.s_axis_tx_data_TDATA_blk_n;
assign axis_block_sigs[2] = ~convert_net_axis_to_axis_512_U0.m_axis_rx_data_TDATA_blk_n;
assign axis_block_sigs[3] = ~convert_net_axis_to_axis_512_1_U0.m_axis_tx_data_TDATA_blk_n;
assign axis_block_sigs[4] = ~merge_rx_meta_U0.s_axis_rx_meta_TDATA_blk_n;
assign axis_block_sigs[5] = ~merge_rx_meta_U0.m_axis_rx_meta_TDATA_blk_n;
assign axis_block_sigs[6] = ~split_tx_meta_U0.s_axis_tx_meta_TDATA_blk_n;
assign axis_block_sigs[7] = ~split_tx_meta_U0.m_axis_tx_meta_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.reg_listen_port_c_blk_n;
assign inst_idle_sigs[1] = convert_axis_to_net_axis_512_U0.ap_idle;
assign inst_block_sigs[1] = (convert_axis_to_net_axis_512_U0.ap_done & ~convert_axis_to_net_axis_512_U0.ap_continue) | ~convert_axis_to_net_axis_512_U0.s_axis_rx_data_internal_blk_n;
assign inst_idle_sigs[2] = convert_axis_to_net_axis_512_1_U0.ap_idle;
assign inst_block_sigs[2] = (convert_axis_to_net_axis_512_1_U0.ap_done & ~convert_axis_to_net_axis_512_1_U0.ap_continue) | ~convert_axis_to_net_axis_512_1_U0.s_axis_tx_data_internal_blk_n;
assign inst_idle_sigs[3] = convert_net_axis_to_axis_512_U0.ap_idle;
assign inst_block_sigs[3] = (convert_net_axis_to_axis_512_U0.ap_done & ~convert_net_axis_to_axis_512_U0.ap_continue) | ~convert_net_axis_to_axis_512_U0.m_axis_rx_data_internal_blk_n;
assign inst_idle_sigs[4] = convert_net_axis_to_axis_512_1_U0.ap_idle;
assign inst_block_sigs[4] = (convert_net_axis_to_axis_512_1_U0.ap_done & ~convert_net_axis_to_axis_512_1_U0.ap_continue) | ~convert_net_axis_to_axis_512_1_U0.m_axis_tx_data_internal_blk_n;
assign inst_idle_sigs[5] = process_udp_512_U0.ap_idle;
assign inst_block_sigs[5] = (process_udp_512_U0.ap_done & ~process_udp_512_U0.ap_continue) | ~process_udp_512_U0.regListenPort_blk_n | ~process_udp_512_U0.s_axis_rx_data_internal_blk_n | ~process_udp_512_U0.rx_udp2shiftFifo_blk_n | ~process_udp_512_U0.rx_udpMetaFifo_blk_n;
assign inst_idle_sigs[6] = udp_rshiftWordByOctet_net_axis_512_512_2_U0.ap_idle;
assign inst_block_sigs[6] = (udp_rshiftWordByOctet_net_axis_512_512_2_U0.ap_done & ~udp_rshiftWordByOctet_net_axis_512_512_2_U0.ap_continue) | ~udp_rshiftWordByOctet_net_axis_512_512_2_U0.rx_udp2shiftFifo_blk_n | ~udp_rshiftWordByOctet_net_axis_512_512_2_U0.m_axis_rx_data_internal_blk_n;
assign inst_idle_sigs[7] = merge_rx_meta_U0.ap_idle;
assign inst_block_sigs[7] = (merge_rx_meta_U0.ap_done & ~merge_rx_meta_U0.ap_continue) | ~merge_rx_meta_U0.rx_udpMetaFifo_blk_n;
assign inst_idle_sigs[8] = split_tx_meta_U0.ap_idle;
assign inst_block_sigs[8] = (split_tx_meta_U0.ap_done & ~split_tx_meta_U0.ap_continue) | ~split_tx_meta_U0.tx_udpMetaFifo_blk_n;
assign inst_idle_sigs[9] = udp_lshiftWordByOctet_512_1_U0.ap_idle;
assign inst_block_sigs[9] = (udp_lshiftWordByOctet_512_1_U0.ap_done & ~udp_lshiftWordByOctet_512_1_U0.ap_continue) | ~udp_lshiftWordByOctet_512_1_U0.tx_shift2udpFifo_blk_n | ~udp_lshiftWordByOctet_512_1_U0.s_axis_tx_data_internal_blk_n;
assign inst_idle_sigs[10] = generate_udp_512_U0.ap_idle;
assign inst_block_sigs[10] = (generate_udp_512_U0.ap_done & ~generate_udp_512_U0.ap_continue) | ~generate_udp_512_U0.tx_udpMetaFifo_blk_n | ~generate_udp_512_U0.m_axis_tx_data_internal_blk_n | ~generate_udp_512_U0.tx_shift2udpFifo_blk_n;

assign inst_idle_sigs[11] = 1'b0;
assign inst_idle_sigs[12] = convert_axis_to_net_axis_512_U0.ap_idle;
assign inst_idle_sigs[13] = convert_axis_to_net_axis_512_1_U0.ap_idle;
assign inst_idle_sigs[14] = convert_net_axis_to_axis_512_U0.ap_idle;
assign inst_idle_sigs[15] = convert_net_axis_to_axis_512_1_U0.ap_idle;
assign inst_idle_sigs[16] = merge_rx_meta_U0.ap_idle;
assign inst_idle_sigs[17] = split_tx_meta_U0.ap_idle;

udp_top_hls_deadlock_idx0_monitor udp_top_hls_deadlock_idx0_monitor_U (
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
