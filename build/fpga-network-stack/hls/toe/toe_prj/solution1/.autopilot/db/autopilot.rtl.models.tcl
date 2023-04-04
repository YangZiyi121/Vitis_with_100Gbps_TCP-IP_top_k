set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME toe_top_entry_proc}
  {SRCNAME convert_axis_to_net_axis<512> MODELNAME convert_axis_to_net_axis_512_s RTLNAME toe_top_convert_axis_to_net_axis_512_s
    SUBMODULES {
      {MODELNAME toe_top_regslice_both RTLNAME toe_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME toe_top_regslice_both_U}
    }
  }
  {SRCNAME convert_axis_to_net_axis<512>.1 MODELNAME convert_axis_to_net_axis_512_1 RTLNAME toe_top_convert_axis_to_net_axis_512_1}
  {SRCNAME convert_axis_to_net_axis<512>.2 MODELNAME convert_axis_to_net_axis_512_2 RTLNAME toe_top_convert_axis_to_net_axis_512_2}
  {SRCNAME convert_net_axis_to_axis<512> MODELNAME convert_net_axis_to_axis_512_s RTLNAME toe_top_convert_net_axis_to_axis_512_s}
  {SRCNAME convert_net_axis_to_axis<512>.1 MODELNAME convert_net_axis_to_axis_512_1 RTLNAME toe_top_convert_net_axis_to_axis_512_1}
  {SRCNAME convert_net_axis_to_axis<512>.2 MODELNAME convert_net_axis_to_axis_512_2 RTLNAME toe_top_convert_net_axis_to_axis_512_2}
  {SRCNAME convert_axis_to_net_axis<512>.3 MODELNAME convert_axis_to_net_axis_512_3 RTLNAME toe_top_convert_axis_to_net_axis_512_3}
  {SRCNAME convert_net_axis_to_axis<512>.3 MODELNAME convert_net_axis_to_axis_512_3 RTLNAME toe_top_convert_net_axis_to_axis_512_3}
  {SRCNAME lookupReplyHandler MODELNAME lookupReplyHandler RTLNAME toe_top_lookupReplyHandler
    SUBMODULES {
      {MODELNAME toe_top_fifo_w128_d8_S RTLNAME toe_top_fifo_w128_d8_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w64_d4_S RTLNAME toe_top_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME updateRequestSender MODELNAME updateRequestSender RTLNAME toe_top_updateRequestSender}
  {SRCNAME sessionIdManager MODELNAME sessionIdManager RTLNAME toe_top_sessionIdManager}
  {SRCNAME updateReplyHandler MODELNAME updateReplyHandler RTLNAME toe_top_updateReplyHandler}
  {SRCNAME reverseLookupTableInterface MODELNAME reverseLookupTableInterface RTLNAME toe_top_reverseLookupTableInterface
    SUBMODULES {
      {MODELNAME toe_top_reverseLookupTableInterface_reverseLookupTable_theirIp_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_reverseLookupTableInterface_reverseLookupTable_theirIp_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_reverseLookupTableInterface_reverseLookupTable_myPort_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_reverseLookupTableInterface_reverseLookupTable_myPort_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_reverseLookupTableInterface_reverseLookupTable_theirPort_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_reverseLookupTableInterface_reverseLookupTable_theirPort_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_reverseLookupTableInterface_tupleValid_RAM_AUTO_1R1W RTLNAME toe_top_reverseLookupTableInterface_tupleValid_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME state_table MODELNAME state_table RTLNAME toe_top_state_table
    SUBMODULES {
      {MODELNAME toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W RTLNAME toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rx_sar_table MODELNAME rx_sar_table RTLNAME toe_top_rx_sar_table
    SUBMODULES {
      {MODELNAME toe_top_rx_sar_table_rx_table_recvd_V_RAM_1P_BRAM_1R1W RTLNAME toe_top_rx_sar_table_rx_table_recvd_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_rx_sar_table_rx_table_appd_V_RAM_1P_BRAM_1R1W RTLNAME toe_top_rx_sar_table_rx_table_appd_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_rx_sar_table_rx_table_win_shift_V_RAM_1P_BRAM_1R1W RTLNAME toe_top_rx_sar_table_rx_table_win_shift_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_rx_sar_table_rx_table_gap_RAM_1P_BRAM_1R1W RTLNAME toe_top_rx_sar_table_rx_table_gap_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tx_sar_table MODELNAME tx_sar_table RTLNAME toe_top_tx_sar_table
    SUBMODULES {
      {MODELNAME toe_top_tx_sar_table_tx_table_app_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_app_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_ackd_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_ackd_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_cong_window_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_cong_window_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_slowstart_threshold_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_slowstart_threshold_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_finReady_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_finReady_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_recv_window_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_recv_window_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_win_shift_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_win_shift_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_count_V_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_count_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME toe_top_tx_sar_table_tx_table_fastRetransmitted_RAM_T2P_BRAM_1R1W RTLNAME toe_top_tx_sar_table_tx_table_fastRetransmitted_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME listening_port_table MODELNAME listening_port_table RTLNAME toe_top_listening_port_table
    SUBMODULES {
      {MODELNAME toe_top_listening_port_table_listeningPortTable_RAM_T2P_BRAM_1R1W RTLNAME toe_top_listening_port_table_listeningPortTable_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME free_port_table MODELNAME free_port_table RTLNAME toe_top_free_port_table
    SUBMODULES {
      {MODELNAME toe_top_free_port_table_freePortTable_RAM_T2P_BRAM_1R1W RTLNAME toe_top_free_port_table_freePortTable_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME check_in_multiplexer MODELNAME check_in_multiplexer RTLNAME toe_top_check_in_multiplexer}
  {SRCNAME check_out_multiplexer MODELNAME check_out_multiplexer RTLNAME toe_top_check_out_multiplexer}
  {SRCNAME stream_merger<event> MODELNAME stream_merger_event_s RTLNAME toe_top_stream_merger_event_s}
  {SRCNAME retransmit_timer MODELNAME retransmit_timer RTLNAME toe_top_retransmit_timer
    SUBMODULES {
      {MODELNAME toe_top_retransmit_timer_retransmitTimerTable_RAM_T2P_BRAM_1R1W RTLNAME toe_top_retransmit_timer_retransmitTimerTable_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME probe_timer MODELNAME probe_timer RTLNAME toe_top_probe_timer
    SUBMODULES {
      {MODELNAME toe_top_probe_timer_probeTimerTable_RAM_T2P_BRAM_1R1W RTLNAME toe_top_probe_timer_probeTimerTable_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME close_timer MODELNAME close_timer RTLNAME toe_top_close_timer}
  {SRCNAME {stream_merger<ap_uint<16> >} MODELNAME stream_merger_ap_uint_16_s RTLNAME toe_top_stream_merger_ap_uint_16_s}
  {SRCNAME event_engine MODELNAME event_engine RTLNAME toe_top_event_engine}
  {SRCNAME ack_delay MODELNAME ack_delay RTLNAME toe_top_ack_delay
    SUBMODULES {
      {MODELNAME toe_top_ack_delay_ack_table_V_RAM_2P_BRAM_1R1W RTLNAME toe_top_ack_delay_ack_table_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME toe_process_ipv4<512> MODELNAME toe_process_ipv4_512_s RTLNAME toe_top_toe_process_ipv4_512_s}
  {SRCNAME drop_optional_ip_header<512> MODELNAME drop_optional_ip_header_512_s RTLNAME toe_top_drop_optional_ip_header_512_s}
  {SRCNAME {lshiftWordByOctet<512, 2>} MODELNAME lshiftWordByOctet_512_2_s RTLNAME toe_top_lshiftWordByOctet_512_2_s}
  {SRCNAME constructPseudoHeader<512> MODELNAME constructPseudoHeader_512_s RTLNAME toe_top_constructPseudoHeader_512_s}
  {SRCNAME prependPseudoHeader<512> MODELNAME prependPseudoHeader_512_s RTLNAME toe_top_prependPseudoHeader_512_s}
  {SRCNAME {two_complement_subchecksums<512, 11>} MODELNAME two_complement_subchecksums_512_11_s RTLNAME toe_top_two_complement_subchecksums_512_11_s}
  {SRCNAME toe_check_ipv4_checksum<32> MODELNAME toe_check_ipv4_checksum_32_s RTLNAME toe_top_toe_check_ipv4_checksum_32_s}
  {SRCNAME processPseudoHeader<512> MODELNAME processPseudoHeader_512_s RTLNAME toe_top_processPseudoHeader_512_s}
  {SRCNAME {rshiftWordByOctet<net_axis<512>, 512, 3>} MODELNAME rshiftWordByOctet_net_axis_512_512_3_s RTLNAME toe_top_rshiftWordByOctet_net_axis_512_512_3_s}
  {SRCNAME drop_optional_header_fields<512> MODELNAME drop_optional_header_fields_512_s RTLNAME toe_top_drop_optional_header_fields_512_s}
  {SRCNAME parse_optional_header_fields MODELNAME parse_optional_header_fields RTLNAME toe_top_parse_optional_header_fields}
  {SRCNAME merge_header_meta MODELNAME merge_header_meta RTLNAME toe_top_merge_header_meta}
  {SRCNAME rxMetadataHandler MODELNAME rxMetadataHandler RTLNAME toe_top_rxMetadataHandler}
  {SRCNAME rxTcpFSM MODELNAME rxTcpFSM RTLNAME toe_top_rxTcpFSM}
  {SRCNAME rxPackageDropper<512> MODELNAME rxPackageDropper_512_s RTLNAME toe_top_rxPackageDropper_512_s}
  {SRCNAME rxEventMerger MODELNAME rxEventMerger RTLNAME toe_top_rxEventMerger}
  {SRCNAME metaLoader MODELNAME metaLoader RTLNAME toe_top_metaLoader}
  {SRCNAME txEngMemAccessBreakdown MODELNAME txEngMemAccessBreakdown RTLNAME toe_top_txEngMemAccessBreakdown}
  {SRCNAME tupleSplitter MODELNAME tupleSplitter RTLNAME toe_top_tupleSplitter}
  {SRCNAME read_data_stitching<512> MODELNAME read_data_stitching_512_s RTLNAME toe_top_read_data_stitching_512_s}
  {SRCNAME read_data_arbiter<512> MODELNAME read_data_arbiter_512_s RTLNAME toe_top_read_data_arbiter_512_s}
  {SRCNAME {lshiftWordByOctet<512, 51>} MODELNAME lshiftWordByOctet_512_51_s RTLNAME toe_top_lshiftWordByOctet_512_51_s}
  {SRCNAME pseudoHeaderConstructionNew<512> MODELNAME pseudoHeaderConstructionNew_512_s RTLNAME toe_top_pseudoHeaderConstructionNew_512_s}
  {SRCNAME {two_complement_subchecksums<512, 22>} MODELNAME two_complement_subchecksums_512_22_s RTLNAME toe_top_two_complement_subchecksums_512_22_s}
  {SRCNAME finalize_ipv4_checksum<32> MODELNAME finalize_ipv4_checksum_32_s RTLNAME toe_top_finalize_ipv4_checksum_32_s}
  {SRCNAME remove_pseudo_header<512> MODELNAME remove_pseudo_header_512_s RTLNAME toe_top_remove_pseudo_header_512_s}
  {SRCNAME {rshiftWordByOctet<net_axis<512>, 512, 53>} MODELNAME rshiftWordByOctet_net_axis_512_512_53_s RTLNAME toe_top_rshiftWordByOctet_net_axis_512_512_53_s}
  {SRCNAME insert_checksum<512> MODELNAME insert_checksum_512_s RTLNAME toe_top_insert_checksum_512_s}
  {SRCNAME {lshiftWordByOctet<512, 52>} MODELNAME lshiftWordByOctet_512_52_s RTLNAME toe_top_lshiftWordByOctet_512_52_s}
  {SRCNAME generate_ipv4<512> MODELNAME generate_ipv4_512_s RTLNAME toe_top_generate_ipv4_512_s}
  {SRCNAME rx_app_stream_if MODELNAME rx_app_stream_if RTLNAME toe_top_rx_app_stream_if}
  {SRCNAME rxAppMemDataRead<512> MODELNAME rxAppMemDataRead_512_s RTLNAME toe_top_rxAppMemDataRead_512_s}
  {SRCNAME rx_app_if MODELNAME rx_app_if RTLNAME toe_top_rx_app_if}
  {SRCNAME stream_merger<appNotification> MODELNAME stream_merger_appNotification_s RTLNAME toe_top_stream_merger_appNotification_s}
  {SRCNAME txEventMerger MODELNAME txEventMerger RTLNAME toe_top_txEventMerger}
  {SRCNAME txAppStatusHandler MODELNAME txAppStatusHandler RTLNAME toe_top_txAppStatusHandler}
  {SRCNAME tasi_metaLoader MODELNAME tasi_metaLoader RTLNAME toe_top_tasi_metaLoader}
  {SRCNAME {toe_duplicate_stream<net_axis<512> >} MODELNAME toe_duplicate_stream_net_axis_512_s RTLNAME toe_top_toe_duplicate_stream_net_axis_512_s}
  {SRCNAME tasi_pkg_pusher<512> MODELNAME tasi_pkg_pusher_512_s RTLNAME toe_top_tasi_pkg_pusher_512_s
    SUBMODULES {
      {MODELNAME toe_top_mux_646_64_1_1 RTLNAME toe_top_mux_646_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tx_app_if MODELNAME tx_app_if RTLNAME toe_top_tx_app_if}
  {SRCNAME tx_app_table MODELNAME tx_app_table RTLNAME toe_top_tx_app_table
    SUBMODULES {
      {MODELNAME toe_top_tx_app_table_app_table_ackd_V_RAM_AUTO_1R1W RTLNAME toe_top_tx_app_table_app_table_ackd_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME toe_top MODELNAME toe_top RTLNAME toe_top IS_TOP 1
    SUBMODULES {
      {MODELNAME toe_top_fifo_w16_d15_S RTLNAME toe_top_fifo_w16_d15_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w32_d3_S RTLNAME toe_top_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1024_d2_S RTLNAME toe_top_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w96_d4_S RTLNAME toe_top_fifo_w96_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w97_d4_S RTLNAME toe_top_fifo_w97_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w14_d16384_A RTLNAME toe_top_fifo_w14_d16384_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w160_d4_S RTLNAME toe_top_fifo_w160_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w17_d4_S RTLNAME toe_top_fifo_w17_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w14_d2_S RTLNAME toe_top_fifo_w14_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w32_d14_S RTLNAME toe_top_fifo_w32_d14_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w16_d2_S RTLNAME toe_top_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w16_d4_S RTLNAME toe_top_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w49_d2_S RTLNAME toe_top_fifo_w49_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w32_d2_S RTLNAME toe_top_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w70_d2_S RTLNAME toe_top_fifo_w70_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w35_d2_S RTLNAME toe_top_fifo_w35_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w119_d2_S RTLNAME toe_top_fifo_w119_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w53_d16_S RTLNAME toe_top_fifo_w53_d16_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w124_d16_A RTLNAME toe_top_fifo_w124_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w34_d16_S RTLNAME toe_top_fifo_w34_d16_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w91_d16_A RTLNAME toe_top_fifo_w91_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w103_d16_A RTLNAME toe_top_fifo_w103_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1_d4_S RTLNAME toe_top_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w15_d2_S RTLNAME toe_top_fifo_w15_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1_d2_S RTLNAME toe_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w85_d2_S RTLNAME toe_top_fifo_w85_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w85_d64_A RTLNAME toe_top_fifo_w85_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w17_d2_S RTLNAME toe_top_fifo_w17_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w48_d2_S RTLNAME toe_top_fifo_w48_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w72_d4_S RTLNAME toe_top_fifo_w72_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w81_d4_S RTLNAME toe_top_fifo_w81_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w181_d512_A RTLNAME toe_top_fifo_w181_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w181_d64_A RTLNAME toe_top_fifo_w181_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1_d64_S RTLNAME toe_top_fifo_w1_d64_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w577_d8_A RTLNAME toe_top_fifo_w577_d8_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w4_d2_S RTLNAME toe_top_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w96_d2_S RTLNAME toe_top_fifo_w96_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1024_d8_A RTLNAME toe_top_fifo_w1024_d8_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w577_d256_A RTLNAME toe_top_fifo_w577_d256_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w160_d16_A RTLNAME toe_top_fifo_w160_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w16_d8_S RTLNAME toe_top_fifo_w16_d8_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w577_d32_A RTLNAME toe_top_fifo_w577_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w320_d2_S RTLNAME toe_top_fifo_w320_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w108_d2_S RTLNAME toe_top_fifo_w108_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w181_d2_S RTLNAME toe_top_fifo_w181_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w188_d2_S RTLNAME toe_top_fifo_w188_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w16_d32_S RTLNAME toe_top_fifo_w16_d32_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w104_d32_A RTLNAME toe_top_fifo_w104_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1_d32_S RTLNAME toe_top_fifo_w1_d32_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w72_d32_A RTLNAME toe_top_fifo_w72_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w64_d32_A RTLNAME toe_top_fifo_w64_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w96_d32_A RTLNAME toe_top_fifo_w96_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w577_d2_S RTLNAME toe_top_fifo_w577_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w1024_d1024_A RTLNAME toe_top_fifo_w1024_d1024_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w577_d16_A RTLNAME toe_top_fifo_w577_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w544_d2_S RTLNAME toe_top_fifo_w544_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w35_d64_A RTLNAME toe_top_fifo_w35_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w70_d64_A RTLNAME toe_top_fifo_w70_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w72_d128_A RTLNAME toe_top_fifo_w72_d128_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME toe_top_fifo_w577_d1024_A RTLNAME toe_top_fifo_w577_d1024_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
