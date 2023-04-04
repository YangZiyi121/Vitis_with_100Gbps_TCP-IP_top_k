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
    id 46 \
    name udpPort2addIpHeader_header \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_udpPort2addIpHeader_header \
    op interface \
    ports { udpPort2addIpHeader_header_dout { I 64 vector } udpPort2addIpHeader_header_empty_n { I 1 bit } udpPort2addIpHeader_header_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams \
    op interface \
    ports { icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_din { O 128 vector } icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_full_n { I 1 bit } icmp_server_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_stream_net_axis_64_0_dataStreams_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name udpPort2addIpHeader_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_udpPort2addIpHeader_data \
    op interface \
    ports { udpPort2addIpHeader_data_dout { I 128 vector } udpPort2addIpHeader_data_empty_n { I 1 bit } udpPort2addIpHeader_data_read { O 1 bit } } \
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


