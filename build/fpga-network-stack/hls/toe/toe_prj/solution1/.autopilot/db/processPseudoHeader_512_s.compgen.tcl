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
    id 218 \
    name rxEng_dataBuffer2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_dataBuffer2 \
    op interface \
    ports { rxEng_dataBuffer2_dout { I 577 vector } rxEng_dataBuffer2_empty_n { I 1 bit } rxEng_dataBuffer2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name rxEng_checksumValidFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_checksumValidFifo \
    op interface \
    ports { rxEng_checksumValidFifo_dout { I 1 vector } rxEng_checksumValidFifo_empty_n { I 1 bit } rxEng_checksumValidFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name rxEng_dataBuffer3a \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_dataBuffer3a \
    op interface \
    ports { rxEng_dataBuffer3a_din { O 577 vector } rxEng_dataBuffer3a_full_n { I 1 bit } rxEng_dataBuffer3a_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name rxEng_headerMetaFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_headerMetaFifo \
    op interface \
    ports { rxEng_headerMetaFifo_din { O 160 vector } rxEng_headerMetaFifo_full_n { I 1 bit } rxEng_headerMetaFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name rxEng2portTable_check_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng2portTable_check_req \
    op interface \
    ports { rxEng2portTable_check_req_din { O 16 vector } rxEng2portTable_check_req_full_n { I 1 bit } rxEng2portTable_check_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name rxEng_tupleBuffer \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_tupleBuffer \
    op interface \
    ports { rxEng_tupleBuffer_din { O 96 vector } rxEng_tupleBuffer_full_n { I 1 bit } rxEng_tupleBuffer_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name rxEng_optionalFieldsMetaFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng_optionalFieldsMetaFifo \
    op interface \
    ports { rxEng_optionalFieldsMetaFifo_din { O 16 vector } rxEng_optionalFieldsMetaFifo_full_n { I 1 bit } rxEng_optionalFieldsMetaFifo_write { O 1 bit } } \
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


