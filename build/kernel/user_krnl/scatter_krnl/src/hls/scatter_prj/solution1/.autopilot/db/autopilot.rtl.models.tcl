set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME scatter_entry_proc}
  {SRCNAME openStatus_handler MODELNAME openStatus_handler RTLNAME scatter_openStatus_handler
    SUBMODULES {
      {MODELNAME scatter_regslice_both RTLNAME scatter_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME scatter_regslice_both_U}
    }
  }
  {SRCNAME txStatus_handler MODELNAME txStatus_handler RTLNAME scatter_txStatus_handler}
  {SRCNAME txDataBuffer_handler<512> MODELNAME txDataBuffer_handler_512_s RTLNAME scatter_txDataBuffer_handler_512_s}
  {SRCNAME rxDataBuffer_handler<512> MODELNAME rxDataBuffer_handler_512_s RTLNAME scatter_rxDataBuffer_handler_512_s}
  {SRCNAME client<512> MODELNAME client_512_s RTLNAME scatter_client_512_s}
  {SRCNAME txMetaData_handler MODELNAME txMetaData_handler RTLNAME scatter_txMetaData_handler}
  {SRCNAME closeConnection_handler MODELNAME closeConnection_handler RTLNAME scatter_closeConnection_handler}
  {SRCNAME server<512> MODELNAME server_512_s RTLNAME scatter_server_512_s}
  {SRCNAME scatter MODELNAME scatter RTLNAME scatter IS_TOP 1
    SUBMODULES {
      {MODELNAME scatter_fifo_w1_d3_S RTLNAME scatter_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME scatter_fifo_w16_d3_S RTLNAME scatter_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME scatter_fifo_w32_d3_S RTLNAME scatter_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME scatter_fifo_w96_d512_A RTLNAME scatter_fifo_w96_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME scatter_fifo_w1024_d512_A RTLNAME scatter_fifo_w1024_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME scatter_fifo_w32_d512_A RTLNAME scatter_fifo_w32_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME scatter_fifo_w16_d512_A RTLNAME scatter_fifo_w16_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
