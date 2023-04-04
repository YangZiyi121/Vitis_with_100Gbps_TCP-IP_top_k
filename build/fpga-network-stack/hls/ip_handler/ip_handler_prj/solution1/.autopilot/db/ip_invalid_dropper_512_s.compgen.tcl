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
    id 97 \
    name validChecksumFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_validChecksumFifo \
    op interface \
    ports { validChecksumFifo_dout { I 1 vector } validChecksumFifo_empty_n { I 1 bit } validChecksumFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name validIpAddressFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_validIpAddressFifo \
    op interface \
    ports { validIpAddressFifo_dout { I 1 vector } validIpAddressFifo_empty_n { I 1 bit } validIpAddressFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name ipv4ValidFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ipv4ValidFifo \
    op interface \
    ports { ipv4ValidFifo_din { O 1 vector } ipv4ValidFifo_full_n { I 1 bit } ipv4ValidFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name ipDataCheckFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipDataCheckFifo \
    op interface \
    ports { ipDataCheckFifo_dout { I 577 vector } ipDataCheckFifo_empty_n { I 1 bit } ipDataCheckFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name ipDataDropFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ipDataDropFifo \
    op interface \
    ports { ipDataDropFifo_din { O 577 vector } ipDataDropFifo_full_n { I 1 bit } ipDataDropFifo_write { O 1 bit } } \
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


