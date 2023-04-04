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
    id 296 \
    name txEng_isDDRbypass \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txEng_isDDRbypass \
    op interface \
    ports { txEng_isDDRbypass_dout { I 1 vector } txEng_isDDRbypass_empty_n { I 1 bit } txEng_isDDRbypass_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name txBufferReadDataStitched \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txBufferReadDataStitched \
    op interface \
    ports { txBufferReadDataStitched_dout { I 577 vector } txBufferReadDataStitched_empty_n { I 1 bit } txBufferReadDataStitched_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name txEng_tcpPkgBuffer0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txEng_tcpPkgBuffer0 \
    op interface \
    ports { txEng_tcpPkgBuffer0_din { O 577 vector } txEng_tcpPkgBuffer0_full_n { I 1 bit } txEng_tcpPkgBuffer0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name txApp2txEng_data_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txApp2txEng_data_stream \
    op interface \
    ports { txApp2txEng_data_stream_dout { I 1024 vector } txApp2txEng_data_stream_empty_n { I 1 bit } txApp2txEng_data_stream_read { O 1 bit } } \
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


