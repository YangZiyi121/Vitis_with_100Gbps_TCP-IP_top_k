set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME mac_ip_encode_top_entry_proc}
  {SRCNAME convert_axis_to_net_axis<512> MODELNAME convert_axis_to_net_axis_512_s RTLNAME mac_ip_encode_top_convert_axis_to_net_axis_512_s
    SUBMODULES {
      {MODELNAME mac_ip_encode_top_regslice_both RTLNAME mac_ip_encode_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME mac_ip_encode_top_regslice_both_U}
    }
  }
  {SRCNAME convert_net_axis_to_axis<512> MODELNAME convert_net_axis_to_axis_512_s RTLNAME mac_ip_encode_top_convert_net_axis_to_axis_512_s}
  {SRCNAME extract_ip_address<512> MODELNAME extract_ip_address_512_s RTLNAME mac_ip_encode_top_extract_ip_address_512_s}
  {SRCNAME mac_compute_ipv4_checksum MODELNAME mac_compute_ipv4_checksum RTLNAME mac_ip_encode_top_mac_compute_ipv4_checksum}
  {SRCNAME mac_finalize_ipv4_checksum<32> MODELNAME mac_finalize_ipv4_checksum_32_s RTLNAME mac_ip_encode_top_mac_finalize_ipv4_checksum_32_s}
  {SRCNAME insert_ip_checksum<512> MODELNAME insert_ip_checksum_512_s RTLNAME mac_ip_encode_top_insert_ip_checksum_512_s}
  {SRCNAME handle_arp_reply<512> MODELNAME handle_arp_reply_512_s RTLNAME mac_ip_encode_top_handle_arp_reply_512_s}
  {SRCNAME {mac_lshiftWordByOctet<512, 1>} MODELNAME mac_lshiftWordByOctet_512_1_s RTLNAME mac_ip_encode_top_mac_lshiftWordByOctet_512_1_s}
  {SRCNAME insert_ethernet_header<512> MODELNAME insert_ethernet_header_512_s RTLNAME mac_ip_encode_top_insert_ethernet_header_512_s}
  {SRCNAME mac_ip_encode_top MODELNAME mac_ip_encode_top RTLNAME mac_ip_encode_top IS_TOP 1
    SUBMODULES {
      {MODELNAME mac_ip_encode_top_fifo_w48_d7_S RTLNAME mac_ip_encode_top_fifo_w48_d7_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mac_ip_encode_top_fifo_w32_d3_S RTLNAME mac_ip_encode_top_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mac_ip_encode_top_fifo_w1024_d2_S RTLNAME mac_ip_encode_top_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mac_ip_encode_top_fifo_w577_d2_S RTLNAME mac_ip_encode_top_fifo_w577_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mac_ip_encode_top_fifo_w577_d32_A RTLNAME mac_ip_encode_top_fifo_w577_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mac_ip_encode_top_fifo_w16_d16_S RTLNAME mac_ip_encode_top_fifo_w16_d16_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mac_ip_encode_top_fifo_w129_d2_S RTLNAME mac_ip_encode_top_fifo_w129_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
