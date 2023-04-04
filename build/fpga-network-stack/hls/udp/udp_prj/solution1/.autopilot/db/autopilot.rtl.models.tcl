set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME udp_top_entry_proc}
  {SRCNAME convert_axis_to_net_axis<512> MODELNAME convert_axis_to_net_axis_512_s RTLNAME udp_top_convert_axis_to_net_axis_512_s
    SUBMODULES {
      {MODELNAME udp_top_regslice_both RTLNAME udp_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME udp_top_regslice_both_U}
    }
  }
  {SRCNAME convert_axis_to_net_axis<512>.1 MODELNAME convert_axis_to_net_axis_512_1 RTLNAME udp_top_convert_axis_to_net_axis_512_1}
  {SRCNAME convert_net_axis_to_axis<512> MODELNAME convert_net_axis_to_axis_512_s RTLNAME udp_top_convert_net_axis_to_axis_512_s}
  {SRCNAME convert_net_axis_to_axis<512>.1 MODELNAME convert_net_axis_to_axis_512_1 RTLNAME udp_top_convert_net_axis_to_axis_512_1}
  {SRCNAME process_udp<512> MODELNAME process_udp_512_s RTLNAME udp_top_process_udp_512_s}
  {SRCNAME {udp_rshiftWordByOctet<net_axis<512>, 512, 2>} MODELNAME udp_rshiftWordByOctet_net_axis_512_512_2_s RTLNAME udp_top_udp_rshiftWordByOctet_net_axis_512_512_2_s}
  {SRCNAME merge_rx_meta MODELNAME merge_rx_meta RTLNAME udp_top_merge_rx_meta}
  {SRCNAME split_tx_meta MODELNAME split_tx_meta RTLNAME udp_top_split_tx_meta}
  {SRCNAME {udp_lshiftWordByOctet<512, 1>} MODELNAME udp_lshiftWordByOctet_512_1_s RTLNAME udp_top_udp_lshiftWordByOctet_512_1_s}
  {SRCNAME generate_udp<512> MODELNAME generate_udp_512_s RTLNAME udp_top_generate_udp_512_s}
  {SRCNAME udp_top MODELNAME udp_top RTLNAME udp_top IS_TOP 1
    SUBMODULES {
      {MODELNAME udp_top_fifo_w16_d3_S RTLNAME udp_top_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_top_fifo_w1024_d2_S RTLNAME udp_top_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_top_fifo_w49_d2_S RTLNAME udp_top_fifo_w49_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_top_fifo_w64_d2_S RTLNAME udp_top_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
