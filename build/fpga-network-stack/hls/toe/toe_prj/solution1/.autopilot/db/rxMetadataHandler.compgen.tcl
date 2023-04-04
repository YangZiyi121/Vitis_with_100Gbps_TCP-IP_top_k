# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name rxEng_metaDataFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_metaDataFifo \
    op interface \
    ports { rxEng_metaDataFifo_dout { I 108 vector } rxEng_metaDataFifo_empty_n { I 1 bit } rxEng_metaDataFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name portTable2rxEng_check_rsp \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_portTable2rxEng_check_rsp \
    op interface \
    ports { portTable2rxEng_check_rsp_dout { I 1 vector } portTable2rxEng_check_rsp_empty_n { I 1 bit } portTable2rxEng_check_rsp_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name rxEng_tupleBuffer \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_tupleBuffer \
    op interface \
    ports { rxEng_tupleBuffer_dout { I 96 vector } rxEng_tupleBuffer_empty_n { I 1 bit } rxEng_tupleBuffer_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name rxEng_metaHandlerEventFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_metaHandlerEventFifo \
    op interface \
    ports { rxEng_metaHandlerEventFifo_din { O 181 vector } rxEng_metaHandlerEventFifo_full_n { I 1 bit } rxEng_metaHandlerEventFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name rxEng_metaHandlerDropFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_metaHandlerDropFifo \
    op interface \
    ports { rxEng_metaHandlerDropFifo_din { O 1 vector } rxEng_metaHandlerDropFifo_full_n { I 1 bit } rxEng_metaHandlerDropFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name rxEng2sLookup_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng2sLookup_req \
    op interface \
    ports { rxEng2sLookup_req_din { O 97 vector } rxEng2sLookup_req_full_n { I 1 bit } rxEng2sLookup_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name sLookup2rxEng_rsp \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sLookup2rxEng_rsp \
    op interface \
    ports { sLookup2rxEng_rsp_dout { I 17 vector } sLookup2rxEng_rsp_empty_n { I 1 bit } sLookup2rxEng_rsp_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name rxEng_fsmMetaDataFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_fsmMetaDataFifo \
    op interface \
    ports { rxEng_fsmMetaDataFifo_din { O 188 vector } rxEng_fsmMetaDataFifo_full_n { I 1 bit } rxEng_fsmMetaDataFifo_write { O 1 bit } } \
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


