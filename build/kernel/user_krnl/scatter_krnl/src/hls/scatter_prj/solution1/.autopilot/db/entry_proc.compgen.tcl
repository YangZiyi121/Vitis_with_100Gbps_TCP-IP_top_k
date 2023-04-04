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
    id 1 \
    name runExperiment \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_runExperiment \
    op interface \
    ports { runExperiment { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name runExperiment_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_runExperiment_c \
    op interface \
    ports { runExperiment_c_din { O 1 vector } runExperiment_c_full_n { I 1 bit } runExperiment_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name runExperiment_c40 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_runExperiment_c40 \
    op interface \
    ports { runExperiment_c40_din { O 1 vector } runExperiment_c40_full_n { I 1 bit } runExperiment_c40_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name useConn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn \
    op interface \
    ports { useConn { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name useConn_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn_c \
    op interface \
    ports { useConn_c_din { O 16 vector } useConn_c_full_n { I 1 bit } useConn_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name useIpAddr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_useIpAddr \
    op interface \
    ports { useIpAddr { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name useIpAddr_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_useIpAddr_c \
    op interface \
    ports { useIpAddr_c_din { O 16 vector } useIpAddr_c_full_n { I 1 bit } useIpAddr_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name pkgWordCount \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pkgWordCount \
    op interface \
    ports { pkgWordCount { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name pkgWordCount_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pkgWordCount_c \
    op interface \
    ports { pkgWordCount_c_din { O 16 vector } pkgWordCount_c_full_n { I 1 bit } pkgWordCount_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name regBasePort \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regBasePort \
    op interface \
    ports { regBasePort { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name regBasePort_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regBasePort_c \
    op interface \
    ports { regBasePort_c_din { O 16 vector } regBasePort_c_full_n { I 1 bit } regBasePort_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name regBasePort_c41 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regBasePort_c41 \
    op interface \
    ports { regBasePort_c41_din { O 16 vector } regBasePort_c41_full_n { I 1 bit } regBasePort_c41_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name usePort \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_usePort \
    op interface \
    ports { usePort { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name usePort_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_usePort_c \
    op interface \
    ports { usePort_c_din { O 16 vector } usePort_c_full_n { I 1 bit } usePort_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name expectedRespInKB \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expectedRespInKB \
    op interface \
    ports { expectedRespInKB { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name expectedRespInKB_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_expectedRespInKB_c \
    op interface \
    ports { expectedRespInKB_c_din { O 16 vector } expectedRespInKB_c_full_n { I 1 bit } expectedRespInKB_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name clientPkgNum \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_clientPkgNum \
    op interface \
    ports { clientPkgNum { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name clientPkgNum_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_clientPkgNum_c \
    op interface \
    ports { clientPkgNum_c_din { O 32 vector } clientPkgNum_c_full_n { I 1 bit } clientPkgNum_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name regIpAddress0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress0 \
    op interface \
    ports { regIpAddress0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name regIpAddress0_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress0_c \
    op interface \
    ports { regIpAddress0_c_din { O 32 vector } regIpAddress0_c_full_n { I 1 bit } regIpAddress0_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name regIpAddress1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress1 \
    op interface \
    ports { regIpAddress1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name regIpAddress1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress1_c \
    op interface \
    ports { regIpAddress1_c_din { O 32 vector } regIpAddress1_c_full_n { I 1 bit } regIpAddress1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name regIpAddress2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress2 \
    op interface \
    ports { regIpAddress2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name regIpAddress2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress2_c \
    op interface \
    ports { regIpAddress2_c_din { O 32 vector } regIpAddress2_c_full_n { I 1 bit } regIpAddress2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name regIpAddress3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress3 \
    op interface \
    ports { regIpAddress3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name regIpAddress3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress3_c \
    op interface \
    ports { regIpAddress3_c_din { O 32 vector } regIpAddress3_c_full_n { I 1 bit } regIpAddress3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name regIpAddress4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress4 \
    op interface \
    ports { regIpAddress4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name regIpAddress4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress4_c \
    op interface \
    ports { regIpAddress4_c_din { O 32 vector } regIpAddress4_c_full_n { I 1 bit } regIpAddress4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name regIpAddress5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress5 \
    op interface \
    ports { regIpAddress5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name regIpAddress5_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress5_c \
    op interface \
    ports { regIpAddress5_c_din { O 32 vector } regIpAddress5_c_full_n { I 1 bit } regIpAddress5_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name regIpAddress6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress6 \
    op interface \
    ports { regIpAddress6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name regIpAddress6_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress6_c \
    op interface \
    ports { regIpAddress6_c_din { O 32 vector } regIpAddress6_c_full_n { I 1 bit } regIpAddress6_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name regIpAddress7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress7 \
    op interface \
    ports { regIpAddress7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name regIpAddress7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress7_c \
    op interface \
    ports { regIpAddress7_c_din { O 32 vector } regIpAddress7_c_full_n { I 1 bit } regIpAddress7_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name regIpAddress8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress8 \
    op interface \
    ports { regIpAddress8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name regIpAddress8_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress8_c \
    op interface \
    ports { regIpAddress8_c_din { O 32 vector } regIpAddress8_c_full_n { I 1 bit } regIpAddress8_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name regIpAddress9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress9 \
    op interface \
    ports { regIpAddress9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name regIpAddress9_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress9_c \
    op interface \
    ports { regIpAddress9_c_din { O 32 vector } regIpAddress9_c_full_n { I 1 bit } regIpAddress9_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name regIpAddress10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress10 \
    op interface \
    ports { regIpAddress10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name regIpAddress10_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_regIpAddress10_c \
    op interface \
    ports { regIpAddress10_c_din { O 32 vector } regIpAddress10_c_full_n { I 1 bit } regIpAddress10_c_write { O 1 bit } } \
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


