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
    id 78 \
    name etherTypeFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_etherTypeFifo \
    op interface \
    ports { etherTypeFifo_dout { I 16 vector } etherTypeFifo_empty_n { I 1 bit } etherTypeFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name ethDataFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ethDataFifo \
    op interface \
    ports { ethDataFifo_dout { I 1024 vector } ethDataFifo_empty_n { I 1 bit } ethDataFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name m_axis_arp_internal \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_m_axis_arp_internal \
    op interface \
    ports { m_axis_arp_internal_din { O 1024 vector } m_axis_arp_internal_full_n { I 1 bit } m_axis_arp_internal_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name ipv4ShiftFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ipv4ShiftFifo \
    op interface \
    ports { ipv4ShiftFifo_din { O 1024 vector } ipv4ShiftFifo_full_n { I 1 bit } ipv4ShiftFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name ipv6ShiftFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ipv6ShiftFifo \
    op interface \
    ports { ipv6ShiftFifo_din { O 1024 vector } ipv6ShiftFifo_full_n { I 1 bit } ipv6ShiftFifo_write { O 1 bit } } \
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


