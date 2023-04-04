set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME arp_server_subnet_top_entry_proc}
  {SRCNAME convert_axis_to_net_axis<512> MODELNAME convert_axis_to_net_axis_512_s RTLNAME arp_server_subnet_top_convert_axis_to_net_axis_512_s
    SUBMODULES {
      {MODELNAME arp_server_subnet_top_regslice_both RTLNAME arp_server_subnet_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME arp_server_subnet_top_regslice_both_U}
    }
  }
  {SRCNAME convert_net_axis_to_axis<512> MODELNAME convert_net_axis_to_axis_512_s RTLNAME arp_server_subnet_top_convert_net_axis_to_axis_512_s}
  {SRCNAME process_arp_pkg<512> MODELNAME process_arp_pkg_512_s RTLNAME arp_server_subnet_top_process_arp_pkg_512_s}
  {SRCNAME generate_arp_pkg<512> MODELNAME generate_arp_pkg_512_s RTLNAME arp_server_subnet_top_generate_arp_pkg_512_s}
  {SRCNAME arp_table MODELNAME arp_table RTLNAME arp_server_subnet_top_arp_table
    SUBMODULES {
      {MODELNAME arp_server_subnet_top_arp_table_arpTable_macAddress_V_RAM_1P_BRAM_1R1W RTLNAME arp_server_subnet_top_arp_table_arpTable_macAddress_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME arp_server_subnet_top_arp_table_arpTable_valid_RAM_1P_BRAM_1R1W RTLNAME arp_server_subnet_top_arp_table_arpTable_valid_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME arp_server_subnet_top MODELNAME arp_server_subnet_top RTLNAME arp_server_subnet_top IS_TOP 1
    SUBMODULES {
      {MODELNAME arp_server_subnet_top_fifo_w48_d4_S RTLNAME arp_server_subnet_top_fifo_w48_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_subnet_top_fifo_w32_d3_S RTLNAME arp_server_subnet_top_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_subnet_top_fifo_w1024_d2_S RTLNAME arp_server_subnet_top_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_subnet_top_fifo_w32_d2_S RTLNAME arp_server_subnet_top_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_subnet_top_fifo_w128_d4_S RTLNAME arp_server_subnet_top_fifo_w128_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_subnet_top_fifo_w81_d4_S RTLNAME arp_server_subnet_top_fifo_w81_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_subnet_top_fifo_w32_d4_S RTLNAME arp_server_subnet_top_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
