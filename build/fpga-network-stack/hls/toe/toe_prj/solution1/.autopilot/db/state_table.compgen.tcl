# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 116
set hasByteEnable 0
set MemName toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W
set CoreName ap_simcore_mem
set PortList { 3 2 }
set DataWd 32
set AddrRange 1000
set AddrWd 10
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.2
set ClkPeriod 3.2
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram_2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM_2P_BRAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name txApp2stateTable_upd_req \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txApp2stateTable_upd_req \
    op interface \
    ports { txApp2stateTable_upd_req_dout { I 49 vector } txApp2stateTable_upd_req_empty_n { I 1 bit } txApp2stateTable_upd_req_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name stateTable2txApp_upd_rsp \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stateTable2txApp_upd_rsp \
    op interface \
    ports { stateTable2txApp_upd_rsp_din { O 32 vector } stateTable2txApp_upd_rsp_full_n { I 1 bit } stateTable2txApp_upd_rsp_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name txApp2stateTable_req \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txApp2stateTable_req \
    op interface \
    ports { txApp2stateTable_req_dout { I 16 vector } txApp2stateTable_req_empty_n { I 1 bit } txApp2stateTable_req_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name stateTable2txApp_rsp \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stateTable2txApp_rsp \
    op interface \
    ports { stateTable2txApp_rsp_din { O 32 vector } stateTable2txApp_rsp_full_n { I 1 bit } stateTable2txApp_rsp_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name rxEng2stateTable_upd_req \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng2stateTable_upd_req \
    op interface \
    ports { rxEng2stateTable_upd_req_dout { I 49 vector } rxEng2stateTable_upd_req_empty_n { I 1 bit } rxEng2stateTable_upd_req_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name stateTable2sLookup_releaseSession \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stateTable2sLookup_releaseSession \
    op interface \
    ports { stateTable2sLookup_releaseSession_din { O 16 vector } stateTable2sLookup_releaseSession_full_n { I 1 bit } stateTable2sLookup_releaseSession_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name stateTable2rxEng_upd_rsp \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stateTable2rxEng_upd_rsp \
    op interface \
    ports { stateTable2rxEng_upd_rsp_din { O 32 vector } stateTable2rxEng_upd_rsp_full_n { I 1 bit } stateTable2rxEng_upd_rsp_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name timer2stateTable_releaseState \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_timer2stateTable_releaseState \
    op interface \
    ports { timer2stateTable_releaseState_dout { I 16 vector } timer2stateTable_releaseState_empty_n { I 1 bit } timer2stateTable_releaseState_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


