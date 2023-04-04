set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME iperf_client_entry_proc}
  {SRCNAME status_handler MODELNAME status_handler RTLNAME iperf_client_status_handler
    SUBMODULES {
      {MODELNAME iperf_client_regslice_both RTLNAME iperf_client_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME iperf_client_regslice_both_U}
    }
  }
  {SRCNAME openStatus_handler MODELNAME openStatus_handler RTLNAME iperf_client_openStatus_handler}
  {SRCNAME txMetaData_handler MODELNAME txMetaData_handler RTLNAME iperf_client_txMetaData_handler}
  {SRCNAME txDataBuffer_handler<512> MODELNAME txDataBuffer_handler_512_s RTLNAME iperf_client_txDataBuffer_handler_512_s}
  {SRCNAME rxDataBuffer_handler<512> MODELNAME rxDataBuffer_handler_512_s RTLNAME iperf_client_rxDataBuffer_handler_512_s}
  {SRCNAME client<512> MODELNAME client_512_s RTLNAME iperf_client_client_512_s}
  {SRCNAME server<512> MODELNAME server_512_s RTLNAME iperf_client_server_512_s}
  {SRCNAME clock MODELNAME clock RTLNAME iperf_client_clock}
  {SRCNAME iperf_client MODELNAME iperf_client RTLNAME iperf_client IS_TOP 1
    SUBMODULES {
      {MODELNAME iperf_client_fifo_w1_d3_S RTLNAME iperf_client_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w14_d3_S RTLNAME iperf_client_fifo_w14_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w8_d3_S RTLNAME iperf_client_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w32_d3_S RTLNAME iperf_client_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w64_d4_S RTLNAME iperf_client_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w16_d3_S RTLNAME iperf_client_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w32_d512_A RTLNAME iperf_client_fifo_w32_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w96_d512_A RTLNAME iperf_client_fifo_w96_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w1024_d512_A RTLNAME iperf_client_fifo_w1024_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME iperf_client_fifo_w1_d2_S RTLNAME iperf_client_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
