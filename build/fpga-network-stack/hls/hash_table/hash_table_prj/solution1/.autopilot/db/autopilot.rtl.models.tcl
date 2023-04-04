set SynModuleInfo {
  {SRCNAME calculate_hashes MODELNAME calculate_hashes RTLNAME hash_table_top_calculate_hashes}
  {SRCNAME hash_table_top_Pipeline_insertLoop MODELNAME hash_table_top_Pipeline_insertLoop RTLNAME hash_table_top_hash_table_top_Pipeline_insertLoop
    SUBMODULES {
      {MODELNAME hash_table_top_mux_98_6_1_1 RTLNAME hash_table_top_mux_98_6_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_mux_94_64_1_1 RTLNAME hash_table_top_mux_94_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_mux_94_16_1_1 RTLNAME hash_table_top_mux_94_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_mux_94_1_1_1 RTLNAME hash_table_top_mux_94_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hash_table_top MODELNAME hash_table_top RTLNAME hash_table_top IS_TOP 1
    SUBMODULES {
      {MODELNAME hash_table_top_mux_932_16_1_1 RTLNAME hash_table_top_mux_932_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_cuckooTables_RAM_2P_BRAM_1R1W RTLNAME hash_table_top_cuckooTables_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_cuckooTables_9_RAM_2P_BRAM_1R1W RTLNAME hash_table_top_cuckooTables_9_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_cuckooTables_18_RAM_2P_BRAM_1R1W RTLNAME hash_table_top_cuckooTables_18_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hash_table_top_regslice_both RTLNAME hash_table_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME hash_table_top_regslice_both_U}
    }
  }
}
