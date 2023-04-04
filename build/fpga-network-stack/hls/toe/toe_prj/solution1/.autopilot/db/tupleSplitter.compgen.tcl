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
    id 288 \
    name txEng_isLookUpFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txEng_isLookUpFifo \
    op interface \
    ports { txEng_isLookUpFifo_dout { I 1 vector } txEng_isLookUpFifo_empty_n { I 1 bit } txEng_isLookUpFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name sLookup2txEng_rev_rsp \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sLookup2txEng_rev_rsp \
    op interface \
    ports { sLookup2txEng_rev_rsp_dout { I 96 vector } sLookup2txEng_rev_rsp_empty_n { I 1 bit } sLookup2txEng_rev_rsp_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name txEng_ipTupleFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txEng_ipTupleFifo \
    op interface \
    ports { txEng_ipTupleFifo_din { O 64 vector } txEng_ipTupleFifo_full_n { I 1 bit } txEng_ipTupleFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name txEng_tcpTupleFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txEng_tcpTupleFifo \
    op interface \
    ports { txEng_tcpTupleFifo_din { O 96 vector } txEng_tcpTupleFifo_full_n { I 1 bit } txEng_tcpTupleFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name txEng_tupleShortCutFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txEng_tupleShortCutFifo \
    op interface \
    ports { txEng_tupleShortCutFifo_dout { I 96 vector } txEng_tupleShortCutFifo_empty_n { I 1 bit } txEng_tupleShortCutFifo_read { O 1 bit } } \
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


