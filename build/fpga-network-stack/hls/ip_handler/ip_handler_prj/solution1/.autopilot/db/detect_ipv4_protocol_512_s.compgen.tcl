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
    id 106 \
    name ipv4ProtocolFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipv4ProtocolFifo \
    op interface \
    ports { ipv4ProtocolFifo_dout { I 8 vector } ipv4ProtocolFifo_empty_n { I 1 bit } ipv4ProtocolFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name ipv4ValidFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipv4ValidFifo \
    op interface \
    ports { ipv4ValidFifo_dout { I 1 vector } ipv4ValidFifo_empty_n { I 1 bit } ipv4ValidFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name ipDataCutFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipDataCutFifo \
    op interface \
    ports { ipDataCutFifo_dout { I 577 vector } ipDataCutFifo_empty_n { I 1 bit } ipDataCutFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name m_axis_icmp_internal \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_m_axis_icmp_internal \
    op interface \
    ports { m_axis_icmp_internal_din { O 1024 vector } m_axis_icmp_internal_full_n { I 1 bit } m_axis_icmp_internal_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name udpDataFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_udpDataFifo \
    op interface \
    ports { udpDataFifo_din { O 577 vector } udpDataFifo_full_n { I 1 bit } udpDataFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name m_axis_tcp_internal \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_m_axis_tcp_internal \
    op interface \
    ports { m_axis_tcp_internal_din { O 1024 vector } m_axis_tcp_internal_full_n { I 1 bit } m_axis_tcp_internal_write { O 1 bit } } \
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


