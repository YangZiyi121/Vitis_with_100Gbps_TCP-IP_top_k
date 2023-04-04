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
    id 262 \
    name rxEng_metaHandlerDropFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_metaHandlerDropFifo \
    op interface \
    ports { rxEng_metaHandlerDropFifo_dout { I 1 vector } rxEng_metaHandlerDropFifo_empty_n { I 1 bit } rxEng_metaHandlerDropFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name rxEng_fsmDropFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_fsmDropFifo \
    op interface \
    ports { rxEng_fsmDropFifo_dout { I 1 vector } rxEng_fsmDropFifo_empty_n { I 1 bit } rxEng_fsmDropFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name rxEng_dataBuffer3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_dataBuffer3 \
    op interface \
    ports { rxEng_dataBuffer3_dout { I 577 vector } rxEng_dataBuffer3_empty_n { I 1 bit } rxEng_dataBuffer3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name rxBufferWriteData_internal \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxBufferWriteData_internal \
    op interface \
    ports { rxBufferWriteData_internal_din { O 1024 vector } rxBufferWriteData_internal_full_n { I 1 bit } rxBufferWriteData_internal_write { O 1 bit } } \
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


