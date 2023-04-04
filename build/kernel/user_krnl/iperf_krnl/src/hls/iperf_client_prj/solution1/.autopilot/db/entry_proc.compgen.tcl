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
    name dualModeEn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dualModeEn \
    op interface \
    ports { dualModeEn { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name dualModeEn_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dualModeEn_c \
    op interface \
    ports { dualModeEn_c_din { O 1 vector } dualModeEn_c_full_n { I 1 bit } dualModeEn_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name useConn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn \
    op interface \
    ports { useConn { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name useConn_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn_c \
    op interface \
    ports { useConn_c_din { O 14 vector } useConn_c_full_n { I 1 bit } useConn_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name pkgWordCount \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pkgWordCount \
    op interface \
    ports { pkgWordCount { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name pkgWordCount_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pkgWordCount_c \
    op interface \
    ports { pkgWordCount_c_din { O 8 vector } pkgWordCount_c_full_n { I 1 bit } pkgWordCount_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name packetGap \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_packetGap \
    op interface \
    ports { packetGap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name packetGap_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_packetGap_c \
    op interface \
    ports { packetGap_c_din { O 8 vector } packetGap_c_full_n { I 1 bit } packetGap_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name timeInSeconds \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_timeInSeconds \
    op interface \
    ports { timeInSeconds { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name timeInSeconds_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_timeInSeconds_c \
    op interface \
    ports { timeInSeconds_c_din { O 32 vector } timeInSeconds_c_full_n { I 1 bit } timeInSeconds_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name timeInCycles \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_timeInCycles \
    op interface \
    ports { timeInCycles { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name timeInCycles_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_timeInCycles_c \
    op interface \
    ports { timeInCycles_c_din { O 64 vector } timeInCycles_c_full_n { I 1 bit } timeInCycles_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
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
    id 16 \
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
    id 17 \
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
    id 18 \
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
    id 19 \
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
    id 20 \
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
    id 21 \
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
    id 22 \
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
    id 23 \
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
    id 24 \
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
    id 25 \
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
    id 26 \
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
    id 27 \
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
    id 28 \
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
    id 29 \
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
    id 30 \
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
    id 31 \
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
    id 32 \
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
    id 33 \
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
    id 34 \
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
    id 35 \
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
    id 36 \
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


