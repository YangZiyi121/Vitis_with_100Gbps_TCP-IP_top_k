set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME ip_handler_top_entry_proc}
  {SRCNAME convert_axis_to_net_axis<512> MODELNAME convert_axis_to_net_axis_512_s RTLNAME ip_handler_top_convert_axis_to_net_axis_512_s
    SUBMODULES {
      {MODELNAME ip_handler_top_regslice_both RTLNAME ip_handler_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ip_handler_top_regslice_both_U}
    }
  }
  {SRCNAME convert_net_axis_to_axis<512> MODELNAME convert_net_axis_to_axis_512_s RTLNAME ip_handler_top_convert_net_axis_to_axis_512_s}
  {SRCNAME convert_net_axis_to_axis<512>.1 MODELNAME convert_net_axis_to_axis_512_1 RTLNAME ip_handler_top_convert_net_axis_to_axis_512_1}
  {SRCNAME convert_net_axis_to_axis<512>.2 MODELNAME convert_net_axis_to_axis_512_2 RTLNAME ip_handler_top_convert_net_axis_to_axis_512_2}
  {SRCNAME convert_net_axis_to_axis<512>.3 MODELNAME convert_net_axis_to_axis_512_3 RTLNAME ip_handler_top_convert_net_axis_to_axis_512_3}
  {SRCNAME convert_net_axis_to_axis<512>.4 MODELNAME convert_net_axis_to_axis_512_4 RTLNAME ip_handler_top_convert_net_axis_to_axis_512_4}
  {SRCNAME convert_net_axis_to_axis<512>.5 MODELNAME convert_net_axis_to_axis_512_5 RTLNAME ip_handler_top_convert_net_axis_to_axis_512_5}
  {SRCNAME convert_net_axis_to_axis<512>.6 MODELNAME convert_net_axis_to_axis_512_6 RTLNAME ip_handler_top_convert_net_axis_to_axis_512_6}
  {SRCNAME detect_eth_protocol<512> MODELNAME detect_eth_protocol_512_s RTLNAME ip_handler_top_detect_eth_protocol_512_s}
  {SRCNAME route_by_eth_protocol<512> MODELNAME route_by_eth_protocol_512_s RTLNAME ip_handler_top_route_by_eth_protocol_512_s}
  {SRCNAME {ip_handler_rshiftWordByOctet<net_axis<512>, 512, 1>} MODELNAME ip_handler_rshiftWordByOctet_net_axis_512_512_1_s RTLNAME ip_handler_top_ip_handler_rshiftWordByOctet_net_axis_512_512_1_s}
  {SRCNAME {ip_handler_rshiftWordByOctet<net_axis<512>, 512, 3>} MODELNAME ip_handler_rshiftWordByOctet_net_axis_512_512_3_s RTLNAME ip_handler_top_ip_handler_rshiftWordByOctet_net_axis_512_512_3_s}
  {SRCNAME extract_ip_meta<512> MODELNAME extract_ip_meta_512_s RTLNAME ip_handler_top_extract_ip_meta_512_s}
  {SRCNAME ip_handler_compute_ipv4_checksum MODELNAME ip_handler_compute_ipv4_checksum RTLNAME ip_handler_top_ip_handler_compute_ipv4_checksum}
  {SRCNAME ip_handler_check_ipv4_checksum<32> MODELNAME ip_handler_check_ipv4_checksum_32_s RTLNAME ip_handler_top_ip_handler_check_ipv4_checksum_32_s}
  {SRCNAME ip_invalid_dropper<512> MODELNAME ip_invalid_dropper_512_s RTLNAME ip_handler_top_ip_invalid_dropper_512_s}
  {SRCNAME cut_length MODELNAME cut_length RTLNAME ip_handler_top_cut_length
    SUBMODULES {
      {MODELNAME ip_handler_top_mux_646_64_1_1 RTLNAME ip_handler_top_mux_646_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME detect_ipv4_protocol<512> MODELNAME detect_ipv4_protocol_512_s RTLNAME ip_handler_top_detect_ipv4_protocol_512_s}
  {SRCNAME detect_ipv6_protocol<512> MODELNAME detect_ipv6_protocol_512_s RTLNAME ip_handler_top_detect_ipv6_protocol_512_s}
  {SRCNAME {ip_handler_duplicate_stream<net_axis<512> >} MODELNAME ip_handler_duplicate_stream_net_axis_512_s RTLNAME ip_handler_top_ip_handler_duplicate_stream_net_axis_512_s}
  {SRCNAME ip_handler_top MODELNAME ip_handler_top RTLNAME ip_handler_top IS_TOP 1
    SUBMODULES {
      {MODELNAME ip_handler_top_fifo_w32_d6_S RTLNAME ip_handler_top_fifo_w32_d6_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w1024_d2_S RTLNAME ip_handler_top_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w16_d2_S RTLNAME ip_handler_top_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w1024_d4_A RTLNAME ip_handler_top_fifo_w1024_d4_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w577_d2_S RTLNAME ip_handler_top_fifo_w577_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w1_d32_S RTLNAME ip_handler_top_fifo_w1_d32_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w8_d32_S RTLNAME ip_handler_top_fifo_w8_d32_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w577_d64_A RTLNAME ip_handler_top_fifo_w577_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w544_d2_S RTLNAME ip_handler_top_fifo_w544_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w1_d4_S RTLNAME ip_handler_top_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ip_handler_top_fifo_w1_d8_S RTLNAME ip_handler_top_fifo_w1_d8_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
