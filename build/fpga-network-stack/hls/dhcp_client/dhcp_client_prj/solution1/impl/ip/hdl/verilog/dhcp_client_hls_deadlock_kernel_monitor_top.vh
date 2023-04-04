
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [6:0] axis_block_sigs;
wire [8:0] inst_idle_sigs;
wire [4:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~open_dhcp_port_U0.m_axis_open_port_TDATA_blk_n;
assign axis_block_sigs[1] = ~open_dhcp_port_U0.s_axis_open_port_status_TDATA_blk_n;
assign axis_block_sigs[2] = ~receive_message_U0.s_axis_rx_metadata_TDATA_blk_n;
assign axis_block_sigs[3] = ~receive_message_U0.s_axis_rx_data_TDATA_blk_n;
assign axis_block_sigs[4] = ~send_message_U0.m_axis_tx_metadata_TDATA_blk_n;
assign axis_block_sigs[5] = ~send_message_U0.m_axis_tx_length_TDATA_blk_n;
assign axis_block_sigs[6] = ~send_message_U0.m_axis_tx_data_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.dhcpEnable_c_blk_n | ~entry_proc_U0.inputIpAddress_c_blk_n;
assign inst_idle_sigs[1] = open_dhcp_port_U0.ap_idle;
assign inst_block_sigs[1] = (open_dhcp_port_U0.ap_done & ~open_dhcp_port_U0.ap_continue) | ~open_dhcp_port_U0.portOpen_blk_n;
assign inst_idle_sigs[2] = receive_message_U0.ap_idle;
assign inst_block_sigs[2] = (receive_message_U0.ap_done & ~receive_message_U0.ap_continue) | ~receive_message_U0.myMacAddress_c_blk_n | ~receive_message_U0.dhcp_replyMetaFifo_blk_n;
assign inst_idle_sigs[3] = dhcp_fsm_U0.ap_idle;
assign inst_block_sigs[3] = (dhcp_fsm_U0.ap_done & ~dhcp_fsm_U0.ap_continue) | ~dhcp_fsm_U0.dhcpEnable_blk_n | ~dhcp_fsm_U0.inputIpAddress_blk_n | ~dhcp_fsm_U0.portOpen_blk_n | ~dhcp_fsm_U0.dhcp_requestMetaFifo_blk_n | ~dhcp_fsm_U0.dhcp_replyMetaFifo_blk_n;
assign inst_idle_sigs[4] = send_message_U0.ap_idle;
assign inst_block_sigs[4] = (send_message_U0.ap_done & ~send_message_U0.ap_continue) | ~send_message_U0.myMacAddress_blk_n | ~send_message_U0.dhcp_requestMetaFifo_blk_n;

assign inst_idle_sigs[5] = 1'b0;
assign inst_idle_sigs[6] = open_dhcp_port_U0.ap_idle;
assign inst_idle_sigs[7] = receive_message_U0.ap_idle;
assign inst_idle_sigs[8] = send_message_U0.ap_idle;

dhcp_client_hls_deadlock_idx0_monitor dhcp_client_hls_deadlock_idx0_monitor_U (
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
