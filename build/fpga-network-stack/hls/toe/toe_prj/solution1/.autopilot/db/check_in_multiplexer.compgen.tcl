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
    id 160 \
    name rxEng2portTable_check_req \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rxEng2portTable_check_req \
    op interface \
    ports { rxEng2portTable_check_req_dout { I 16 vector } rxEng2portTable_check_req_empty_n { I 1 bit } rxEng2portTable_check_req_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name pt_portCheckListening_req_fifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pt_portCheckListening_req_fifo \
    op interface \
    ports { pt_portCheckListening_req_fifo_din { O 15 vector } pt_portCheckListening_req_fifo_full_n { I 1 bit } pt_portCheckListening_req_fifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name pt_dstFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pt_dstFifo \
    op interface \
    ports { pt_dstFifo_din { O 1 vector } pt_dstFifo_full_n { I 1 bit } pt_dstFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name pt_portCheckUsed_req_fifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pt_portCheckUsed_req_fifo \
    op interface \
    ports { pt_portCheckUsed_req_fifo_din { O 15 vector } pt_portCheckUsed_req_fifo_full_n { I 1 bit } pt_portCheckUsed_req_fifo_write { O 1 bit } } \
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


