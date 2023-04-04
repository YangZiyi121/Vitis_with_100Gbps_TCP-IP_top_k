set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME ipv4_top_entry_proc}
  {SRCNAME convert_axis_to_net_axis<512> MODELNAME convert_axis_to_net_axis_512_s RTLNAME ipv4_top_convert_axis_to_net_axis_512_s
    SUBMODULES {
      {MODELNAME ipv4_top_regslice_both RTLNAME ipv4_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ipv4_top_regslice_both_U}
    }
  }
  {SRCNAME convert_axis_to_net_axis<512>.1 MODELNAME convert_axis_to_net_axis_512_1 RTLNAME ipv4_top_convert_axis_to_net_axis_512_1}
  {SRCNAME convert_net_axis_to_axis<512> MODELNAME convert_net_axis_to_axis_512_s RTLNAME ipv4_top_convert_net_axis_to_axis_512_s}
  {SRCNAME convert_net_axis_to_axis<512>.1 MODELNAME convert_net_axis_to_axis_512_1 RTLNAME ipv4_top_convert_net_axis_to_axis_512_1}
  {SRCNAME process_ipv4<512> MODELNAME process_ipv4_512_s RTLNAME ipv4_top_process_ipv4_512_s}
  {SRCNAME ipv4_drop_optional_ip_header<512> MODELNAME ipv4_drop_optional_ip_header_512_s RTLNAME ipv4_top_ipv4_drop_optional_ip_header_512_s}
  {SRCNAME {ipv4_lshiftWordByOctet<512, 2>} MODELNAME ipv4_lshiftWordByOctet_512_2_s RTLNAME ipv4_top_ipv4_lshiftWordByOctet_512_2_s}
  {SRCNAME ipv4_generate_ipv4<512> MODELNAME ipv4_generate_ipv4_512_s RTLNAME ipv4_top_ipv4_generate_ipv4_512_s}
  {SRCNAME ipv4_top MODELNAME ipv4_top RTLNAME ipv4_top IS_TOP 1
    SUBMODULES {
      {MODELNAME ipv4_top_fifo_w32_d4_S RTLNAME ipv4_top_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ipv4_top_fifo_w8_d4_S RTLNAME ipv4_top_fifo_w8_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ipv4_top_fifo_w1024_d2_S RTLNAME ipv4_top_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ipv4_top_fifo_w1024_d8_A RTLNAME ipv4_top_fifo_w1024_d8_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ipv4_top_fifo_w4_d2_S RTLNAME ipv4_top_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
