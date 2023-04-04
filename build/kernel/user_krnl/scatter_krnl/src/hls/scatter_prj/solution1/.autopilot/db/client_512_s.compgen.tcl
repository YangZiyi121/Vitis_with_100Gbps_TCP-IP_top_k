# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 65 \
    name m_axis_open_connection \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { m_axis_open_connection_TREADY { I 1 bit } m_axis_open_connection_TDATA { O 48 vector } m_axis_open_connection_TVALID { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_axis_open_connection'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name runExperiment \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_runExperiment \
    op interface \
    ports { runExperiment_dout { I 1 vector } runExperiment_empty_n { I 1 bit } runExperiment_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name useConn \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn \
    op interface \
    ports { useConn_dout { I 16 vector } useConn_empty_n { I 1 bit } useConn_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name useIpAddr \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_useIpAddr \
    op interface \
    ports { useIpAddr_dout { I 16 vector } useIpAddr_empty_n { I 1 bit } useIpAddr_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name pkgWordCount \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pkgWordCount \
    op interface \
    ports { pkgWordCount_dout { I 16 vector } pkgWordCount_empty_n { I 1 bit } pkgWordCount_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name regBasePort \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regBasePort \
    op interface \
    ports { regBasePort_dout { I 16 vector } regBasePort_empty_n { I 1 bit } regBasePort_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name expectedRespInKB \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expectedRespInKB \
    op interface \
    ports { expectedRespInKB_dout { I 16 vector } expectedRespInKB_empty_n { I 1 bit } expectedRespInKB_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name clientPkgNum \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_clientPkgNum \
    op interface \
    ports { clientPkgNum_dout { I 32 vector } clientPkgNum_empty_n { I 1 bit } clientPkgNum_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name regIpAddress0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress0 \
    op interface \
    ports { regIpAddress0_dout { I 32 vector } regIpAddress0_empty_n { I 1 bit } regIpAddress0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name regIpAddress1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress1 \
    op interface \
    ports { regIpAddress1_dout { I 32 vector } regIpAddress1_empty_n { I 1 bit } regIpAddress1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name regIpAddress2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress2 \
    op interface \
    ports { regIpAddress2_dout { I 32 vector } regIpAddress2_empty_n { I 1 bit } regIpAddress2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name regIpAddress3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress3 \
    op interface \
    ports { regIpAddress3_dout { I 32 vector } regIpAddress3_empty_n { I 1 bit } regIpAddress3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name regIpAddress4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress4 \
    op interface \
    ports { regIpAddress4_dout { I 32 vector } regIpAddress4_empty_n { I 1 bit } regIpAddress4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name regIpAddress5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress5 \
    op interface \
    ports { regIpAddress5_dout { I 32 vector } regIpAddress5_empty_n { I 1 bit } regIpAddress5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name regIpAddress6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress6 \
    op interface \
    ports { regIpAddress6_dout { I 32 vector } regIpAddress6_empty_n { I 1 bit } regIpAddress6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name regIpAddress7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress7 \
    op interface \
    ports { regIpAddress7_dout { I 32 vector } regIpAddress7_empty_n { I 1 bit } regIpAddress7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name regIpAddress8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress8 \
    op interface \
    ports { regIpAddress8_dout { I 32 vector } regIpAddress8_empty_n { I 1 bit } regIpAddress8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name regIpAddress9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress9 \
    op interface \
    ports { regIpAddress9_dout { I 32 vector } regIpAddress9_empty_n { I 1 bit } regIpAddress9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name regIpAddress10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress10 \
    op interface \
    ports { regIpAddress10_dout { I 32 vector } regIpAddress10_empty_n { I 1 bit } regIpAddress10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name openConStatusBuffer \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_openConStatusBuffer \
    op interface \
    ports { openConStatusBuffer_dout { I 96 vector } openConStatusBuffer_empty_n { I 1 bit } openConStatusBuffer_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name txMetaDataBuffer \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txMetaDataBuffer \
    op interface \
    ports { txMetaDataBuffer_din { O 32 vector } txMetaDataBuffer_full_n { I 1 bit } txMetaDataBuffer_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name txStatusBuffer \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txStatusBuffer \
    op interface \
    ports { txStatusBuffer_dout { I 96 vector } txStatusBuffer_empty_n { I 1 bit } txStatusBuffer_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name txDataBuffer \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txDataBuffer \
    op interface \
    ports { txDataBuffer_din { O 1024 vector } txDataBuffer_full_n { I 1 bit } txDataBuffer_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name closeConnectionBuffer \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closeConnectionBuffer \
    op interface \
    ports { closeConnectionBuffer_din { O 16 vector } closeConnectionBuffer_full_n { I 1 bit } closeConnectionBuffer_write { O 1 bit } } \
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


# RegSlice definition:
set ID 89
set RegSliceName scatter_regslice_both
set RegSliceInstName scatter_regslice_both_U
set CoreName ap_simcore_scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


