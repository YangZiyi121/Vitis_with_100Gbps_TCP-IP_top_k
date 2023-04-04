#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_m_axis_listen_port "../tv/cdatafile/c.iperf_client.autotvin_m_axis_listen_port.dat"
#define AUTOTB_TVOUT_m_axis_listen_port "../tv/cdatafile/c.iperf_client.autotvout_m_axis_listen_port.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_listen_port "../tv/stream_size/stream_size_out_m_axis_listen_port.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port "../tv/stream_size/stream_egress_status_m_axis_listen_port.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_listen_port_status "../tv/cdatafile/c.iperf_client.autotvin_s_axis_listen_port_status.dat"
#define AUTOTB_TVOUT_s_axis_listen_port_status "../tv/cdatafile/c.iperf_client.autotvout_s_axis_listen_port_status.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status "../tv/stream_size/stream_size_in_s_axis_listen_port_status.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status "../tv/stream_size/stream_ingress_status_s_axis_listen_port_status.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_notifications "../tv/cdatafile/c.iperf_client.autotvin_s_axis_notifications.dat"
#define AUTOTB_TVOUT_s_axis_notifications "../tv/cdatafile/c.iperf_client.autotvout_s_axis_notifications.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_notifications "../tv/stream_size/stream_size_in_s_axis_notifications.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications "../tv/stream_size/stream_ingress_status_s_axis_notifications.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_read_package "../tv/cdatafile/c.iperf_client.autotvin_m_axis_read_package.dat"
#define AUTOTB_TVOUT_m_axis_read_package "../tv/cdatafile/c.iperf_client.autotvout_m_axis_read_package.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_read_package "../tv/stream_size/stream_size_out_m_axis_read_package.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_read_package "../tv/stream_size/stream_egress_status_m_axis_read_package.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_metadata "../tv/cdatafile/c.iperf_client.autotvin_s_axis_rx_metadata.dat"
#define AUTOTB_TVOUT_s_axis_rx_metadata "../tv/cdatafile/c.iperf_client.autotvout_s_axis_rx_metadata.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata "../tv/stream_size/stream_size_in_s_axis_rx_metadata.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata "../tv/stream_size/stream_ingress_status_s_axis_rx_metadata.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_data_V_data_V "../tv/cdatafile/c.iperf_client.autotvin_s_axis_rx_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_data_V "../tv/cdatafile/c.iperf_client.autotvout_s_axis_rx_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_rx_data_V_keep_V "../tv/cdatafile/c.iperf_client.autotvin_s_axis_rx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_keep_V "../tv/cdatafile/c.iperf_client.autotvout_s_axis_rx_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_rx_data_V_strb_V "../tv/cdatafile/c.iperf_client.autotvin_s_axis_rx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_strb_V "../tv/cdatafile/c.iperf_client.autotvout_s_axis_rx_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_rx_data_V_last_V "../tv/cdatafile/c.iperf_client.autotvin_s_axis_rx_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_last_V "../tv/cdatafile/c.iperf_client.autotvout_s_axis_rx_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_open_connection "../tv/cdatafile/c.iperf_client.autotvin_m_axis_open_connection.dat"
#define AUTOTB_TVOUT_m_axis_open_connection "../tv/cdatafile/c.iperf_client.autotvout_m_axis_open_connection.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_open_connection "../tv/stream_size/stream_size_out_m_axis_open_connection.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_open_connection "../tv/stream_size/stream_egress_status_m_axis_open_connection.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_open_status "../tv/cdatafile/c.iperf_client.autotvin_s_axis_open_status.dat"
#define AUTOTB_TVOUT_s_axis_open_status "../tv/cdatafile/c.iperf_client.autotvout_s_axis_open_status.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_open_status "../tv/stream_size/stream_size_in_s_axis_open_status.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status "../tv/stream_size/stream_ingress_status_s_axis_open_status.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_close_connection "../tv/cdatafile/c.iperf_client.autotvin_m_axis_close_connection.dat"
#define AUTOTB_TVOUT_m_axis_close_connection "../tv/cdatafile/c.iperf_client.autotvout_m_axis_close_connection.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_close_connection "../tv/stream_size/stream_size_out_m_axis_close_connection.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_close_connection "../tv/stream_size/stream_egress_status_m_axis_close_connection.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_metadata "../tv/cdatafile/c.iperf_client.autotvin_m_axis_tx_metadata.dat"
#define AUTOTB_TVOUT_m_axis_tx_metadata "../tv/cdatafile/c.iperf_client.autotvout_m_axis_tx_metadata.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata "../tv/stream_size/stream_size_out_m_axis_tx_metadata.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_metadata "../tv/stream_size/stream_egress_status_m_axis_tx_metadata.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_data_V_data_V "../tv/cdatafile/c.iperf_client.autotvin_m_axis_tx_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_data_V "../tv/cdatafile/c.iperf_client.autotvout_m_axis_tx_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tx_data_V_keep_V "../tv/cdatafile/c.iperf_client.autotvin_m_axis_tx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_keep_V "../tv/cdatafile/c.iperf_client.autotvout_m_axis_tx_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tx_data_V_strb_V "../tv/cdatafile/c.iperf_client.autotvin_m_axis_tx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_strb_V "../tv/cdatafile/c.iperf_client.autotvout_m_axis_tx_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tx_data_V_last_V "../tv/cdatafile/c.iperf_client.autotvin_m_axis_tx_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_last_V "../tv/cdatafile/c.iperf_client.autotvout_m_axis_tx_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tx_status "../tv/cdatafile/c.iperf_client.autotvin_s_axis_tx_status.dat"
#define AUTOTB_TVOUT_s_axis_tx_status "../tv/cdatafile/c.iperf_client.autotvout_s_axis_tx_status.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_status "../tv/stream_size/stream_size_in_s_axis_tx_status.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status "../tv/stream_size/stream_ingress_status_s_axis_tx_status.dat"
// wrapc file define:
#define AUTOTB_TVIN_runExperiment "../tv/cdatafile/c.iperf_client.autotvin_runExperiment.dat"
#define AUTOTB_TVOUT_runExperiment "../tv/cdatafile/c.iperf_client.autotvout_runExperiment.dat"
// wrapc file define:
#define AUTOTB_TVIN_dualModeEn "../tv/cdatafile/c.iperf_client.autotvin_dualModeEn.dat"
#define AUTOTB_TVOUT_dualModeEn "../tv/cdatafile/c.iperf_client.autotvout_dualModeEn.dat"
// wrapc file define:
#define AUTOTB_TVIN_useConn "../tv/cdatafile/c.iperf_client.autotvin_useConn.dat"
#define AUTOTB_TVOUT_useConn "../tv/cdatafile/c.iperf_client.autotvout_useConn.dat"
// wrapc file define:
#define AUTOTB_TVIN_pkgWordCount "../tv/cdatafile/c.iperf_client.autotvin_pkgWordCount.dat"
#define AUTOTB_TVOUT_pkgWordCount "../tv/cdatafile/c.iperf_client.autotvout_pkgWordCount.dat"
// wrapc file define:
#define AUTOTB_TVIN_packetGap "../tv/cdatafile/c.iperf_client.autotvin_packetGap.dat"
#define AUTOTB_TVOUT_packetGap "../tv/cdatafile/c.iperf_client.autotvout_packetGap.dat"
// wrapc file define:
#define AUTOTB_TVIN_timeInSeconds "../tv/cdatafile/c.iperf_client.autotvin_timeInSeconds.dat"
#define AUTOTB_TVOUT_timeInSeconds "../tv/cdatafile/c.iperf_client.autotvout_timeInSeconds.dat"
// wrapc file define:
#define AUTOTB_TVIN_timeInCycles "../tv/cdatafile/c.iperf_client.autotvin_timeInCycles.dat"
#define AUTOTB_TVOUT_timeInCycles "../tv/cdatafile/c.iperf_client.autotvout_timeInCycles.dat"
// wrapc file define:
#define AUTOTB_TVIN_useIpAddr "../tv/cdatafile/c.iperf_client.autotvin_useIpAddr.dat"
#define AUTOTB_TVOUT_useIpAddr "../tv/cdatafile/c.iperf_client.autotvout_useIpAddr.dat"
// wrapc file define:
#define AUTOTB_TVIN_regBasePort "../tv/cdatafile/c.iperf_client.autotvin_regBasePort.dat"
#define AUTOTB_TVOUT_regBasePort "../tv/cdatafile/c.iperf_client.autotvout_regBasePort.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress0 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress0.dat"
#define AUTOTB_TVOUT_regIpAddress0 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress0.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress1 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress1.dat"
#define AUTOTB_TVOUT_regIpAddress1 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress1.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress2 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress2.dat"
#define AUTOTB_TVOUT_regIpAddress2 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress2.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress3 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress3.dat"
#define AUTOTB_TVOUT_regIpAddress3 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress3.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress4 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress4.dat"
#define AUTOTB_TVOUT_regIpAddress4 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress4.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress5 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress5.dat"
#define AUTOTB_TVOUT_regIpAddress5 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress5.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress6 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress6.dat"
#define AUTOTB_TVOUT_regIpAddress6 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress6.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress7 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress7.dat"
#define AUTOTB_TVOUT_regIpAddress7 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress7.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress8 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress8.dat"
#define AUTOTB_TVOUT_regIpAddress8 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress8.dat"
// wrapc file define:
#define AUTOTB_TVIN_regIpAddress9 "../tv/cdatafile/c.iperf_client.autotvin_regIpAddress9.dat"
#define AUTOTB_TVOUT_regIpAddress9 "../tv/cdatafile/c.iperf_client.autotvout_regIpAddress9.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_listen_port "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_listen_port.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_listen_port_status "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_listen_port_status.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_notifications "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_notifications.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_read_package "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_read_package.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_metadata "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_rx_metadata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_data_V "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_rx_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_keep_V "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_rx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_strb_V "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_rx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_last_V "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_rx_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_open_connection "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_open_connection.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_open_status "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_open_status.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_close_connection "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_close_connection.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_metadata "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_tx_metadata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_data_V "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_tx_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_keep_V "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_tx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_strb_V "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_tx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_last_V "../tv/rtldatafile/rtl.iperf_client.autotvout_m_axis_tx_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tx_status "../tv/rtldatafile/rtl.iperf_client.autotvout_s_axis_tx_status.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_runExperiment "../tv/rtldatafile/rtl.iperf_client.autotvout_runExperiment.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dualModeEn "../tv/rtldatafile/rtl.iperf_client.autotvout_dualModeEn.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_useConn "../tv/rtldatafile/rtl.iperf_client.autotvout_useConn.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_pkgWordCount "../tv/rtldatafile/rtl.iperf_client.autotvout_pkgWordCount.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_packetGap "../tv/rtldatafile/rtl.iperf_client.autotvout_packetGap.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_timeInSeconds "../tv/rtldatafile/rtl.iperf_client.autotvout_timeInSeconds.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_timeInCycles "../tv/rtldatafile/rtl.iperf_client.autotvout_timeInCycles.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_useIpAddr "../tv/rtldatafile/rtl.iperf_client.autotvout_useIpAddr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regBasePort "../tv/rtldatafile/rtl.iperf_client.autotvout_regBasePort.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress0 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress1 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress2 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress3 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress4 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress5 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress6 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress7 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress8 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regIpAddress9 "../tv/rtldatafile/rtl.iperf_client.autotvout_regIpAddress9.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  m_axis_listen_port_depth = 0;
  s_axis_listen_port_status_depth = 0;
  s_axis_notifications_depth = 0;
  m_axis_read_package_depth = 0;
  s_axis_rx_metadata_depth = 0;
  s_axis_rx_data_V_data_V_depth = 0;
  s_axis_rx_data_V_keep_V_depth = 0;
  s_axis_rx_data_V_strb_V_depth = 0;
  s_axis_rx_data_V_last_V_depth = 0;
  m_axis_open_connection_depth = 0;
  s_axis_open_status_depth = 0;
  m_axis_close_connection_depth = 0;
  m_axis_tx_metadata_depth = 0;
  m_axis_tx_data_V_data_V_depth = 0;
  m_axis_tx_data_V_keep_V_depth = 0;
  m_axis_tx_data_V_strb_V_depth = 0;
  m_axis_tx_data_V_last_V_depth = 0;
  s_axis_tx_status_depth = 0;
  runExperiment_depth = 0;
  dualModeEn_depth = 0;
  useConn_depth = 0;
  pkgWordCount_depth = 0;
  packetGap_depth = 0;
  timeInSeconds_depth = 0;
  timeInCycles_depth = 0;
  useIpAddr_depth = 0;
  regBasePort_depth = 0;
  regIpAddress0_depth = 0;
  regIpAddress1_depth = 0;
  regIpAddress2_depth = 0;
  regIpAddress3_depth = 0;
  regIpAddress4_depth = 0;
  regIpAddress5_depth = 0;
  regIpAddress6_depth = 0;
  regIpAddress7_depth = 0;
  regIpAddress8_depth = 0;
  regIpAddress9_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{m_axis_listen_port " << m_axis_listen_port_depth << "}\n";
  total_list << "{s_axis_listen_port_status " << s_axis_listen_port_status_depth << "}\n";
  total_list << "{s_axis_notifications " << s_axis_notifications_depth << "}\n";
  total_list << "{m_axis_read_package " << m_axis_read_package_depth << "}\n";
  total_list << "{s_axis_rx_metadata " << s_axis_rx_metadata_depth << "}\n";
  total_list << "{s_axis_rx_data_V_data_V " << s_axis_rx_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V_keep_V " << s_axis_rx_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V_strb_V " << s_axis_rx_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V_last_V " << s_axis_rx_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_open_connection " << m_axis_open_connection_depth << "}\n";
  total_list << "{s_axis_open_status " << s_axis_open_status_depth << "}\n";
  total_list << "{m_axis_close_connection " << m_axis_close_connection_depth << "}\n";
  total_list << "{m_axis_tx_metadata " << m_axis_tx_metadata_depth << "}\n";
  total_list << "{m_axis_tx_data_V_data_V " << m_axis_tx_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V_keep_V " << m_axis_tx_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V_strb_V " << m_axis_tx_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V_last_V " << m_axis_tx_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_tx_status " << s_axis_tx_status_depth << "}\n";
  total_list << "{runExperiment " << runExperiment_depth << "}\n";
  total_list << "{dualModeEn " << dualModeEn_depth << "}\n";
  total_list << "{useConn " << useConn_depth << "}\n";
  total_list << "{pkgWordCount " << pkgWordCount_depth << "}\n";
  total_list << "{packetGap " << packetGap_depth << "}\n";
  total_list << "{timeInSeconds " << timeInSeconds_depth << "}\n";
  total_list << "{timeInCycles " << timeInCycles_depth << "}\n";
  total_list << "{useIpAddr " << useIpAddr_depth << "}\n";
  total_list << "{regBasePort " << regBasePort_depth << "}\n";
  total_list << "{regIpAddress0 " << regIpAddress0_depth << "}\n";
  total_list << "{regIpAddress1 " << regIpAddress1_depth << "}\n";
  total_list << "{regIpAddress2 " << regIpAddress2_depth << "}\n";
  total_list << "{regIpAddress3 " << regIpAddress3_depth << "}\n";
  total_list << "{regIpAddress4 " << regIpAddress4_depth << "}\n";
  total_list << "{regIpAddress5 " << regIpAddress5_depth << "}\n";
  total_list << "{regIpAddress6 " << regIpAddress6_depth << "}\n";
  total_list << "{regIpAddress7 " << regIpAddress7_depth << "}\n";
  total_list << "{regIpAddress8 " << regIpAddress8_depth << "}\n";
  total_list << "{regIpAddress9 " << regIpAddress9_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int m_axis_listen_port_depth;
    int s_axis_listen_port_status_depth;
    int s_axis_notifications_depth;
    int m_axis_read_package_depth;
    int s_axis_rx_metadata_depth;
    int s_axis_rx_data_V_data_V_depth;
    int s_axis_rx_data_V_keep_V_depth;
    int s_axis_rx_data_V_strb_V_depth;
    int s_axis_rx_data_V_last_V_depth;
    int m_axis_open_connection_depth;
    int s_axis_open_status_depth;
    int m_axis_close_connection_depth;
    int m_axis_tx_metadata_depth;
    int m_axis_tx_data_V_data_V_depth;
    int m_axis_tx_data_V_keep_V_depth;
    int m_axis_tx_data_V_strb_V_depth;
    int m_axis_tx_data_V_last_V_depth;
    int s_axis_tx_status_depth;
    int runExperiment_depth;
    int dualModeEn_depth;
    int useConn_depth;
    int pkgWordCount_depth;
    int packetGap_depth;
    int timeInSeconds_depth;
    int timeInCycles_depth;
    int useIpAddr_depth;
    int regBasePort_depth;
    int regIpAddress0_depth;
    int regIpAddress1_depth;
    int regIpAddress2_depth;
    int regIpAddress3_depth;
    int regIpAddress4_depth;
    int regIpAddress5_depth;
    int regIpAddress6_depth;
    int regIpAddress7_depth;
    int regIpAddress8_depth;
    int regIpAddress9_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_sB__ { char data[16]; };
struct __cosim_s9__ { char data[16]; };
extern "C" void iperf_client_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s1__*, __cosim_s1__*, __cosim_s2__*, __cosim_s1__*, __cosim_s1__*, __cosim_s4__*, __cosim_s8__*, __cosim_s2__*, __cosim_s2__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*, __cosim_s4__*);

extern "C" void apatb_iperf_client_hw(volatile void * __xlx_apatb_param_m_axis_listen_port, volatile void * __xlx_apatb_param_s_axis_listen_port_status, volatile void * __xlx_apatb_param_s_axis_notifications, volatile void * __xlx_apatb_param_m_axis_read_package, volatile void * __xlx_apatb_param_s_axis_rx_metadata, volatile void * __xlx_apatb_param_s_axis_rx_data_V_data_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_keep_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_strb_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_last_V, volatile void * __xlx_apatb_param_m_axis_open_connection, volatile void * __xlx_apatb_param_s_axis_open_status, volatile void * __xlx_apatb_param_m_axis_close_connection, volatile void * __xlx_apatb_param_m_axis_tx_metadata, volatile void * __xlx_apatb_param_m_axis_tx_data_V_data_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_keep_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_strb_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_last_V, volatile void * __xlx_apatb_param_s_axis_tx_status, __cosim_s1__* __xlx_apatb_param_runExperiment, __cosim_s1__* __xlx_apatb_param_dualModeEn, __cosim_s2__* __xlx_apatb_param_useConn, __cosim_s1__* __xlx_apatb_param_pkgWordCount, __cosim_s1__* __xlx_apatb_param_packetGap, __cosim_s4__* __xlx_apatb_param_timeInSeconds, __cosim_s8__* __xlx_apatb_param_timeInCycles, __cosim_s2__* __xlx_apatb_param_useIpAddr, __cosim_s2__* __xlx_apatb_param_regBasePort, __cosim_s4__* __xlx_apatb_param_regIpAddress0, __cosim_s4__* __xlx_apatb_param_regIpAddress1, __cosim_s4__* __xlx_apatb_param_regIpAddress2, __cosim_s4__* __xlx_apatb_param_regIpAddress3, __cosim_s4__* __xlx_apatb_param_regIpAddress4, __cosim_s4__* __xlx_apatb_param_regIpAddress5, __cosim_s4__* __xlx_apatb_param_regIpAddress6, __cosim_s4__* __xlx_apatb_param_regIpAddress7, __cosim_s4__* __xlx_apatb_param_regIpAddress8, __cosim_s4__* __xlx_apatb_param_regIpAddress9) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_listen_port_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_listen_port);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_listen_port_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_listen_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_listen_port_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_listen_port" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*2+0] = m_axis_listen_port_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*2+1] = m_axis_listen_port_pc_buffer[j].range(15, 8).to_int64();
((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size; ++i)((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->read();
long __xlx_apatb_param_s_axis_notifications_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_notifications);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_notifications_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_notifications_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->read();
long __xlx_apatb_param_m_axis_read_package_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_read_package);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_read_package_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_read_package);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_read_package_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_read_package");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_read_package_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_read_package" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;
((char*)&xlx_stream_elt)[0*4+0] = m_axis_read_package_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*4+1] = m_axis_read_package_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*4+2] = m_axis_read_package_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*4+3] = m_axis_read_package_pc_buffer[j].range(31, 24).to_int64();
((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->read();
long __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->read();
}
long __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_open_connection_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_open_connection);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<48> > m_axis_open_connection_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_open_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_open_connection_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_open_connection" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
long long xlx_stream_elt;
((char*)&xlx_stream_elt)[0*8+0] = m_axis_open_connection_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*8+1] = m_axis_open_connection_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*8+2] = m_axis_open_connection_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*8+3] = m_axis_open_connection_pc_buffer[j].range(31, 24).to_int64();
((char*)&xlx_stream_elt)[0*8+4] = m_axis_open_connection_pc_buffer[j].range(39, 32).to_int64();
((char*)&xlx_stream_elt)[0*8+5] = m_axis_open_connection_pc_buffer[j].range(47, 40).to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_open_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_open_status);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_open_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_open_status_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->read();
long __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_close_connection_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_close_connection);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_close_connection_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_close_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_close_connection_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_close_connection" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*2+0] = m_axis_close_connection_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*2+1] = m_axis_close_connection_pc_buffer[j].range(15, 8).to_int64();
((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_metadata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tx_metadata_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_metadata");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_metadata_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_metadata" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;
((char*)&xlx_stream_elt)[0*4+0] = m_axis_tx_metadata_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*4+1] = m_axis_tx_metadata_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*4+2] = m_axis_tx_metadata_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*4+3] = m_axis_tx_metadata_pc_buffer[j].range(31, 24).to_int64();
((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {unsigned xlx_stream_m_axis_tx_data_size = 0;

          std::vector<sc_bv<512> > m_axis_tx_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tx_data_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_data_V_pc_buffer.size();
m_axis_tx_data_V_data_V_pc_buffer_Copy=m_axis_tx_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tx_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tx_data_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_keep_V_pc_buffer.size();
m_axis_tx_data_V_keep_V_pc_buffer_Copy=m_axis_tx_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tx_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tx_data_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_strb_V_pc_buffer.size();
m_axis_tx_data_V_strb_V_pc_buffer_Copy=m_axis_tx_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tx_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tx_data_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_last_V_pc_buffer.size();
m_axis_tx_data_V_last_V_pc_buffer_Copy=m_axis_tx_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tx_data_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = m_axis_tx_data_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = m_axis_tx_data_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_tx_data_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->write(xlx_stream_elt_last);
}}long __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tx_status);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tx_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size; ++i)((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->read();

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_notifications);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_read_package);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_read_package);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_open_connection);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_open_status);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_close_connection);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_metadata);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_status);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_listen_port_stream_buf;
long __xlx_apatb_param_m_axis_listen_port_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_s_axis_listen_port_status_stream_buf;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->empty())
    __xlx_apatb_param_s_axis_listen_port_status_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_listen_port_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->write(__xlx_apatb_param_s_axis_listen_port_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_listen_port_status_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_notifications_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->empty())
    __xlx_apatb_param_s_axis_notifications_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_notifications_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->write(__xlx_apatb_param_s_axis_notifications_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_notifications_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->size();
std::vector<int> __xlx_apatb_param_m_axis_read_package_stream_buf;
long __xlx_apatb_param_m_axis_read_package_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_s_axis_rx_metadata_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->empty())
    __xlx_apatb_param_s_axis_rx_metadata_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->write(__xlx_apatb_param_s_axis_rx_metadata_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->write(__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->write(__xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->write(__xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->write(__xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<long long> __xlx_apatb_param_m_axis_open_connection_stream_buf;
long __xlx_apatb_param_m_axis_open_connection_stream_buf_size = ((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_open_status_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->empty())
    __xlx_apatb_param_s_axis_open_status_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_open_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->write(__xlx_apatb_param_s_axis_open_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_open_status_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_close_connection_stream_buf;
long __xlx_apatb_param_m_axis_close_connection_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->size();
std::vector<int> __xlx_apatb_param_m_axis_tx_metadata_stream_buf;
long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_tx_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf;
// id
// dest
std::vector<long long> __xlx_apatb_param_s_axis_tx_status_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->empty())
    __xlx_apatb_param_s_axis_tx_status_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_status_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->write(__xlx_apatb_param_s_axis_tx_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tx_status_stream_buf_size = ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->size();
// print runExperiment Transactions
{
aesl_fh.write(AUTOTB_TVIN_runExperiment, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_runExperiment);
aesl_fh.write(AUTOTB_TVIN_runExperiment, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.runExperiment_depth);
aesl_fh.write(AUTOTB_TVIN_runExperiment, end_str());
}

// print dualModeEn Transactions
{
aesl_fh.write(AUTOTB_TVIN_dualModeEn, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_dualModeEn);
aesl_fh.write(AUTOTB_TVIN_dualModeEn, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.dualModeEn_depth);
aesl_fh.write(AUTOTB_TVIN_dualModeEn, end_str());
}

// print useConn Transactions
{
aesl_fh.write(AUTOTB_TVIN_useConn, begin_str(AESL_transaction));
{
    sc_bv<14> __xlx_tmp_lv = *((short*)__xlx_apatb_param_useConn);
aesl_fh.write(AUTOTB_TVIN_useConn, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.useConn_depth);
aesl_fh.write(AUTOTB_TVIN_useConn, end_str());
}

// print pkgWordCount Transactions
{
aesl_fh.write(AUTOTB_TVIN_pkgWordCount, begin_str(AESL_transaction));
{
    sc_bv<8> __xlx_tmp_lv = *((char*)__xlx_apatb_param_pkgWordCount);
aesl_fh.write(AUTOTB_TVIN_pkgWordCount, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.pkgWordCount_depth);
aesl_fh.write(AUTOTB_TVIN_pkgWordCount, end_str());
}

// print packetGap Transactions
{
aesl_fh.write(AUTOTB_TVIN_packetGap, begin_str(AESL_transaction));
{
    sc_bv<8> __xlx_tmp_lv = *((char*)__xlx_apatb_param_packetGap);
aesl_fh.write(AUTOTB_TVIN_packetGap, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.packetGap_depth);
aesl_fh.write(AUTOTB_TVIN_packetGap, end_str());
}

// print timeInSeconds Transactions
{
aesl_fh.write(AUTOTB_TVIN_timeInSeconds, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_timeInSeconds);
aesl_fh.write(AUTOTB_TVIN_timeInSeconds, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.timeInSeconds_depth);
aesl_fh.write(AUTOTB_TVIN_timeInSeconds, end_str());
}

// print timeInCycles Transactions
{
aesl_fh.write(AUTOTB_TVIN_timeInCycles, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_timeInCycles);
aesl_fh.write(AUTOTB_TVIN_timeInCycles, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.timeInCycles_depth);
aesl_fh.write(AUTOTB_TVIN_timeInCycles, end_str());
}

// print useIpAddr Transactions
{
aesl_fh.write(AUTOTB_TVIN_useIpAddr, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_useIpAddr);
aesl_fh.write(AUTOTB_TVIN_useIpAddr, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.useIpAddr_depth);
aesl_fh.write(AUTOTB_TVIN_useIpAddr, end_str());
}

// print regBasePort Transactions
{
aesl_fh.write(AUTOTB_TVIN_regBasePort, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regBasePort);
aesl_fh.write(AUTOTB_TVIN_regBasePort, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regBasePort_depth);
aesl_fh.write(AUTOTB_TVIN_regBasePort, end_str());
}

// print regIpAddress0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress0, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress0);
aesl_fh.write(AUTOTB_TVIN_regIpAddress0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress0_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress0, end_str());
}

// print regIpAddress1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress1, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress1);
aesl_fh.write(AUTOTB_TVIN_regIpAddress1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress1_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress1, end_str());
}

// print regIpAddress2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress2, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress2);
aesl_fh.write(AUTOTB_TVIN_regIpAddress2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress2_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress2, end_str());
}

// print regIpAddress3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress3, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress3);
aesl_fh.write(AUTOTB_TVIN_regIpAddress3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress3_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress3, end_str());
}

// print regIpAddress4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress4, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress4);
aesl_fh.write(AUTOTB_TVIN_regIpAddress4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress4_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress4, end_str());
}

// print regIpAddress5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress5, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress5);
aesl_fh.write(AUTOTB_TVIN_regIpAddress5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress5_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress5, end_str());
}

// print regIpAddress6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress6, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress6);
aesl_fh.write(AUTOTB_TVIN_regIpAddress6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress6_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress6, end_str());
}

// print regIpAddress7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress7, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress7);
aesl_fh.write(AUTOTB_TVIN_regIpAddress7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress7_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress7, end_str());
}

// print regIpAddress8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress8, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress8);
aesl_fh.write(AUTOTB_TVIN_regIpAddress8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress8_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress8, end_str());
}

// print regIpAddress9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_regIpAddress9, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regIpAddress9);
aesl_fh.write(AUTOTB_TVIN_regIpAddress9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regIpAddress9_depth);
aesl_fh.write(AUTOTB_TVIN_regIpAddress9, end_str());
}

CodeState = CALL_C_DUT;
iperf_client_hw_stub_wrapper(__xlx_apatb_param_m_axis_listen_port, __xlx_apatb_param_s_axis_listen_port_status, __xlx_apatb_param_s_axis_notifications, __xlx_apatb_param_m_axis_read_package, __xlx_apatb_param_s_axis_rx_metadata, __xlx_apatb_param_s_axis_rx_data_V_data_V, __xlx_apatb_param_s_axis_rx_data_V_keep_V, __xlx_apatb_param_s_axis_rx_data_V_strb_V, __xlx_apatb_param_s_axis_rx_data_V_last_V, __xlx_apatb_param_m_axis_open_connection, __xlx_apatb_param_s_axis_open_status, __xlx_apatb_param_m_axis_close_connection, __xlx_apatb_param_m_axis_tx_metadata, __xlx_apatb_param_m_axis_tx_data_V_data_V, __xlx_apatb_param_m_axis_tx_data_V_keep_V, __xlx_apatb_param_m_axis_tx_data_V_strb_V, __xlx_apatb_param_m_axis_tx_data_V_last_V, __xlx_apatb_param_s_axis_tx_status, __xlx_apatb_param_runExperiment, __xlx_apatb_param_dualModeEn, __xlx_apatb_param_useConn, __xlx_apatb_param_pkgWordCount, __xlx_apatb_param_packetGap, __xlx_apatb_param_timeInSeconds, __xlx_apatb_param_timeInCycles, __xlx_apatb_param_useIpAddr, __xlx_apatb_param_regBasePort, __xlx_apatb_param_regIpAddress0, __xlx_apatb_param_regIpAddress1, __xlx_apatb_param_regIpAddress2, __xlx_apatb_param_regIpAddress3, __xlx_apatb_param_regIpAddress4, __xlx_apatb_param_regIpAddress5, __xlx_apatb_param_regIpAddress6, __xlx_apatb_param_regIpAddress7, __xlx_apatb_param_regIpAddress8, __xlx_apatb_param_regIpAddress9);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->size() - __xlx_apatb_param_m_axis_listen_port_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->empty())
    __xlx_apatb_param_m_axis_listen_port_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_listen_port_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->write(__xlx_apatb_param_m_axis_listen_port_stream_buf[i]);
  }
// print m_axis_listen_port Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_listen_port_stream_buf[__xlx_apatb_param_m_axis_listen_port_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_listen_port_stream_buf_final_size, &tcl_file.m_axis_listen_port_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port, end_str());
}
long __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_size - ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->size();
// print s_axis_listen_port_status Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_status, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv_hw;
sc_bv<8> __xlx_tmp_lv;
__xlx_tmp_lv = ((char*)&__xlx_apatb_param_s_axis_listen_port_status_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_status, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size, &tcl_file.s_axis_listen_port_status_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_status, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size > 0) {
  long s_axis_listen_port_status_stream_ingress_size = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_listen_port_status_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_listen_port_status_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status, end_str());
}
long __xlx_apatb_param_s_axis_notifications_stream_buf_final_size = __xlx_apatb_param_s_axis_notifications_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->size();
// print s_axis_notifications Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_notifications, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_notifications_stream_buf_final_size; j != e; ++j) {
sc_bv<88> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_notifications_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_notifications_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_notifications, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_notifications_stream_buf_final_size, &tcl_file.s_axis_notifications_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_notifications, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_notifications_stream_buf_final_size > 0) {
  long s_axis_notifications_stream_ingress_size = __xlx_apatb_param_s_axis_notifications_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_notifications_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_notifications_stream_buf_final_size; j != e; j++) {
    s_axis_notifications_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_notifications_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_notifications_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_notifications_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_notifications, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_notifications_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_notifications, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_notifications, end_str());
}
long __xlx_apatb_param_m_axis_read_package_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->size() - __xlx_apatb_param_m_axis_read_package_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->empty())
    __xlx_apatb_param_m_axis_read_package_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_read_package_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->write(__xlx_apatb_param_m_axis_read_package_stream_buf[i]);
  }
// print m_axis_read_package Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_read_package, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_read_package_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_m_axis_read_package_stream_buf[__xlx_apatb_param_m_axis_read_package_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_read_package, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_read_package_stream_buf_final_size, &tcl_file.m_axis_read_package_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_read_package, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_read_package, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_read_package_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_read_package, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_read_package, end_str());
}
long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->size();
// print s_axis_rx_metadata Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_s_axis_rx_metadata_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size, &tcl_file.s_axis_rx_metadata_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size > 0) {
  long s_axis_rx_metadata_stream_ingress_size = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; j != e; j++) {
    s_axis_rx_metadata_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_metadata_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata, end_str());
}
long __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V, end_str());
}
long __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size = ((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->size() - __xlx_apatb_param_m_axis_open_connection_stream_buf_size;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->empty())
    __xlx_apatb_param_m_axis_open_connection_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_open_connection_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->write(__xlx_apatb_param_m_axis_open_connection_stream_buf[i]);
  }
// print m_axis_open_connection Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_connection, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size; j != e; ++j) {
sc_bv<48> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_m_axis_open_connection_stream_buf[__xlx_apatb_param_m_axis_open_connection_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_connection, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_open_connection_stream_buf_final_size, &tcl_file.m_axis_open_connection_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_connection, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection, end_str());
}
long __xlx_apatb_param_s_axis_open_status_stream_buf_final_size = __xlx_apatb_param_s_axis_open_status_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->size();
// print s_axis_open_status Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_open_status, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_open_status_stream_buf_final_size; j != e; ++j) {
sc_bv<72> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_open_status_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_open_status_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_open_status, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_open_status_stream_buf_final_size, &tcl_file.s_axis_open_status_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_open_status, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_open_status_stream_buf_final_size > 0) {
  long s_axis_open_status_stream_ingress_size = __xlx_apatb_param_s_axis_open_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_status_stream_buf_final_size; j != e; j++) {
    s_axis_open_status_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_open_status_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_status, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_open_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_status, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_status, end_str());
}
long __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->size() - __xlx_apatb_param_m_axis_close_connection_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->empty())
    __xlx_apatb_param_m_axis_close_connection_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_close_connection_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->write(__xlx_apatb_param_m_axis_close_connection_stream_buf[i]);
  }
// print m_axis_close_connection Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_close_connection, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_close_connection_stream_buf[__xlx_apatb_param_m_axis_close_connection_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_close_connection, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_close_connection_stream_buf_final_size, &tcl_file.m_axis_close_connection_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_close_connection, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection, end_str());
}
long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->size() - __xlx_apatb_param_m_axis_tx_metadata_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->empty())
    __xlx_apatb_param_m_axis_tx_metadata_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_metadata_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->write(__xlx_apatb_param_m_axis_tx_metadata_stream_buf[i]);
  }
// print m_axis_tx_metadata Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_m_axis_tx_metadata_stream_buf[__xlx_apatb_param_m_axis_tx_metadata_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size, &tcl_file.m_axis_tx_metadata_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->size() - __xlx_apatb_param_m_axis_tx_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->write(__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->write(__xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->write(__xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->write(__xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V, end_str());
}
long __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size = __xlx_apatb_param_s_axis_tx_status_stream_buf_size - ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->size();
// print s_axis_tx_status Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_status, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv_hw;
sc_bv<64> __xlx_tmp_lv;
__xlx_tmp_lv = ((long long*)&__xlx_apatb_param_s_axis_tx_status_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_tx_status, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_tx_status_stream_buf_final_size, &tcl_file.s_axis_tx_status_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_status, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tx_status_stream_buf_final_size > 0) {
  long s_axis_tx_status_stream_ingress_size = __xlx_apatb_param_s_axis_tx_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size; j != e; j++) {
    s_axis_tx_status_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_status_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_status, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_status, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_status, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
