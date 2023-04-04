
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [11:0] axis_block_sigs;
wire [16:0] inst_idle_sigs;
wire [8:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~status_handler_U0.s_axis_tx_status_TDATA_blk_n;
assign axis_block_sigs[1] = ~openStatus_handler_U0.s_axis_open_status_TDATA_blk_n;
assign axis_block_sigs[2] = ~txMetaData_handler_U0.m_axis_tx_metadata_TDATA_blk_n;
assign axis_block_sigs[3] = ~txDataBuffer_handler_512_U0.m_axis_tx_data_TDATA_blk_n;
assign axis_block_sigs[4] = ~rxDataBuffer_handler_512_U0.s_axis_rx_data_TDATA_blk_n;
assign axis_block_sigs[5] = ~client_512_U0.m_axis_open_connection_TDATA_blk_n;
assign axis_block_sigs[6] = ~client_512_U0.m_axis_close_connection_TDATA_blk_n;
assign axis_block_sigs[7] = ~server_512_U0.m_axis_listen_port_TDATA_blk_n;
assign axis_block_sigs[8] = ~server_512_U0.s_axis_listen_port_status_TDATA_blk_n;
assign axis_block_sigs[9] = ~server_512_U0.s_axis_notifications_TDATA_blk_n;
assign axis_block_sigs[10] = ~server_512_U0.m_axis_read_package_TDATA_blk_n;
assign axis_block_sigs[11] = ~server_512_U0.s_axis_rx_metadata_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.runExperiment_c_blk_n | ~entry_proc_U0.dualModeEn_c_blk_n | ~entry_proc_U0.useConn_c_blk_n | ~entry_proc_U0.pkgWordCount_c_blk_n | ~entry_proc_U0.packetGap_c_blk_n | ~entry_proc_U0.timeInSeconds_c_blk_n | ~entry_proc_U0.timeInCycles_c_blk_n | ~entry_proc_U0.useIpAddr_c_blk_n | ~entry_proc_U0.regIpAddress0_c_blk_n | ~entry_proc_U0.regIpAddress1_c_blk_n | ~entry_proc_U0.regIpAddress2_c_blk_n | ~entry_proc_U0.regIpAddress3_c_blk_n | ~entry_proc_U0.regIpAddress4_c_blk_n | ~entry_proc_U0.regIpAddress5_c_blk_n | ~entry_proc_U0.regIpAddress6_c_blk_n | ~entry_proc_U0.regIpAddress7_c_blk_n | ~entry_proc_U0.regIpAddress8_c_blk_n | ~entry_proc_U0.regIpAddress9_c_blk_n;
assign inst_idle_sigs[1] = status_handler_U0.ap_idle;
assign inst_block_sigs[1] = (status_handler_U0.ap_done & ~status_handler_U0.ap_continue) | ~status_handler_U0.txStatusBuffer_blk_n;
assign inst_idle_sigs[2] = openStatus_handler_U0.ap_idle;
assign inst_block_sigs[2] = (openStatus_handler_U0.ap_done & ~openStatus_handler_U0.ap_continue) | ~openStatus_handler_U0.openConStatusBuffer_blk_n;
assign inst_idle_sigs[3] = txMetaData_handler_U0.ap_idle;
assign inst_block_sigs[3] = (txMetaData_handler_U0.ap_done & ~txMetaData_handler_U0.ap_continue) | ~txMetaData_handler_U0.txMetaDataBuffer_blk_n;
assign inst_idle_sigs[4] = txDataBuffer_handler_512_U0.ap_idle;
assign inst_block_sigs[4] = (txDataBuffer_handler_512_U0.ap_done & ~txDataBuffer_handler_512_U0.ap_continue) | ~txDataBuffer_handler_512_U0.txDataBuffer_blk_n;
assign inst_idle_sigs[5] = rxDataBuffer_handler_512_U0.ap_idle;
assign inst_block_sigs[5] = (rxDataBuffer_handler_512_U0.ap_done & ~rxDataBuffer_handler_512_U0.ap_continue) | ~rxDataBuffer_handler_512_U0.rxDataBuffer_blk_n;
assign inst_idle_sigs[6] = client_512_U0.ap_idle;
assign inst_block_sigs[6] = (client_512_U0.ap_done & ~client_512_U0.ap_continue) | ~client_512_U0.runExperiment_blk_n | ~client_512_U0.dualModeEn_blk_n | ~client_512_U0.useConn_blk_n | ~client_512_U0.useIpAddr_blk_n | ~client_512_U0.pkgWordCount_blk_n | ~client_512_U0.packetGap_blk_n | ~client_512_U0.timeInSeconds_blk_n | ~client_512_U0.regIpAddress0_blk_n | ~client_512_U0.regIpAddress1_blk_n | ~client_512_U0.regIpAddress2_blk_n | ~client_512_U0.regIpAddress3_blk_n | ~client_512_U0.regIpAddress4_blk_n | ~client_512_U0.regIpAddress5_blk_n | ~client_512_U0.regIpAddress6_blk_n | ~client_512_U0.regIpAddress7_blk_n | ~client_512_U0.regIpAddress8_blk_n | ~client_512_U0.regIpAddress9_blk_n | ~client_512_U0.openConStatusBuffer_blk_n | ~client_512_U0.txMetaDataBuffer_blk_n | ~client_512_U0.startSignalFifo_blk_n | ~client_512_U0.txStatusBuffer_blk_n | ~client_512_U0.txDataBuffer_blk_n | ~client_512_U0.stopSignalFifo_blk_n;
assign inst_idle_sigs[7] = server_512_U0.ap_idle;
assign inst_block_sigs[7] = (server_512_U0.ap_done & ~server_512_U0.ap_continue) | ~server_512_U0.rxDataBuffer_blk_n;
assign inst_idle_sigs[8] = clock_U0.ap_idle;
assign inst_block_sigs[8] = (clock_U0.ap_done & ~clock_U0.ap_continue) | ~clock_U0.timeInCycles_blk_n | ~clock_U0.startSignalFifo_blk_n | ~clock_U0.stopSignalFifo_blk_n;

assign inst_idle_sigs[9] = 1'b0;
assign inst_idle_sigs[10] = status_handler_U0.ap_idle;
assign inst_idle_sigs[11] = openStatus_handler_U0.ap_idle;
assign inst_idle_sigs[12] = txMetaData_handler_U0.ap_idle;
assign inst_idle_sigs[13] = txDataBuffer_handler_512_U0.ap_idle;
assign inst_idle_sigs[14] = rxDataBuffer_handler_512_U0.ap_idle;
assign inst_idle_sigs[15] = client_512_U0.ap_idle;
assign inst_idle_sigs[16] = server_512_U0.ap_idle;

iperf_client_hls_deadlock_idx0_monitor iperf_client_hls_deadlock_idx0_monitor_U (
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
