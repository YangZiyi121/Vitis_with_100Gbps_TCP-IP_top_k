set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME dhcp_client_entry_proc}
  {SRCNAME open_dhcp_port MODELNAME open_dhcp_port RTLNAME dhcp_client_open_dhcp_port
    SUBMODULES {
      {MODELNAME dhcp_client_regslice_both RTLNAME dhcp_client_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME dhcp_client_regslice_both_U}
    }
  }
  {SRCNAME receive_message MODELNAME receive_message RTLNAME dhcp_client_receive_message}
  {SRCNAME dhcp_fsm MODELNAME dhcp_fsm RTLNAME dhcp_client_dhcp_fsm}
  {SRCNAME send_message MODELNAME send_message RTLNAME dhcp_client_send_message}
  {SRCNAME dhcp_client MODELNAME dhcp_client RTLNAME dhcp_client IS_TOP 1
    SUBMODULES {
      {MODELNAME dhcp_client_fifo_w1_d3_S RTLNAME dhcp_client_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dhcp_client_fifo_w32_d3_S RTLNAME dhcp_client_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dhcp_client_fifo_w1_d2_S RTLNAME dhcp_client_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dhcp_client_fifo_w48_d3_S RTLNAME dhcp_client_fifo_w48_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dhcp_client_fifo_w104_d4_S RTLNAME dhcp_client_fifo_w104_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dhcp_client_fifo_w72_d4_S RTLNAME dhcp_client_fifo_w72_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
