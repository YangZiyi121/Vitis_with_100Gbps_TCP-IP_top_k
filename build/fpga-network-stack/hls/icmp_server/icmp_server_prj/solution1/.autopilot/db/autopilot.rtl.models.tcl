set SynModuleInfo {
  {SRCNAME convert_axis_to_net_axis<64> MODELNAME convert_axis_to_net_axis_64_s RTLNAME icmp_server_top_convert_axis_to_net_axis_64_s
    SUBMODULES {
      {MODELNAME icmp_server_top_regslice_both RTLNAME icmp_server_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME icmp_server_top_regslice_both_U}
    }
  }
  {SRCNAME convert_axis_to_net_axis<64>.1 MODELNAME convert_axis_to_net_axis_64_1 RTLNAME icmp_server_top_convert_axis_to_net_axis_64_1}
  {SRCNAME convert_axis_to_net_axis<64>.2 MODELNAME convert_axis_to_net_axis_64_2 RTLNAME icmp_server_top_convert_axis_to_net_axis_64_2}
  {SRCNAME convert_net_axis_to_axis<64> MODELNAME convert_net_axis_to_axis_64_s RTLNAME icmp_server_top_convert_net_axis_to_axis_64_s}
  {SRCNAME check_icmp_checksum MODELNAME check_icmp_checksum RTLNAME icmp_server_top_check_icmp_checksum}
  {SRCNAME udpPortUnreachable MODELNAME udpPortUnreachable RTLNAME icmp_server_top_udpPortUnreachable}
  {SRCNAME udpAddIpHeader MODELNAME udpAddIpHeader RTLNAME icmp_server_top_udpAddIpHeader}
  {SRCNAME dropper MODELNAME dropper RTLNAME icmp_server_top_dropper}
  {SRCNAME insertChecksum MODELNAME insertChecksum RTLNAME icmp_server_top_insertChecksum}
  {SRCNAME icmp_server_top MODELNAME icmp_server_top RTLNAME icmp_server_top IS_TOP 1
    SUBMODULES {
      {MODELNAME icmp_server_top_fifo_w128_d2_S RTLNAME icmp_server_top_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME icmp_server_top_fifo_w73_d64_A RTLNAME icmp_server_top_fifo_w73_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME icmp_server_top_fifo_w1_d8_S RTLNAME icmp_server_top_fifo_w1_d8_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME icmp_server_top_fifo_w16_d16_S RTLNAME icmp_server_top_fifo_w16_d16_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME icmp_server_top_fifo_w128_d192_A RTLNAME icmp_server_top_fifo_w128_d192_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME icmp_server_top_fifo_w64_d64_A RTLNAME icmp_server_top_fifo_w64_d64_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME icmp_server_top_fifo_w128_d16_A RTLNAME icmp_server_top_fifo_w128_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
