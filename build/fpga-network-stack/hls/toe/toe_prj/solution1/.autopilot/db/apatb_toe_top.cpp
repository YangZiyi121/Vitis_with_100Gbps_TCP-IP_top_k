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
#define AUTOTB_TVIN_s_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_txwrite_sts "../tv/cdatafile/c.toe_top.autotvin_s_axis_txwrite_sts.dat"
#define AUTOTB_TVOUT_s_axis_txwrite_sts "../tv/cdatafile/c.toe_top.autotvout_s_axis_txwrite_sts.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts "../tv/stream_size/stream_size_in_s_axis_txwrite_sts.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts "../tv/stream_size/stream_ingress_status_s_axis_txwrite_sts.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rxread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_rxread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_rxread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_rxread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_txread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_txread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_txread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_txread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_txwrite_cmd "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_cmd.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_cmd "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_cmd.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd "../tv/stream_size/stream_size_out_m_axis_txwrite_cmd.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_cmd "../tv/stream_size/stream_egress_status_m_axis_txwrite_cmd.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_txread_cmd "../tv/cdatafile/c.toe_top.autotvin_m_axis_txread_cmd.dat"
#define AUTOTB_TVOUT_m_axis_txread_cmd "../tv/cdatafile/c.toe_top.autotvout_m_axis_txread_cmd.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd "../tv/stream_size/stream_size_out_m_axis_txread_cmd.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txread_cmd "../tv/stream_size/stream_egress_status_m_axis_txread_cmd.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_txwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_txwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_txwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_txwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_session_lup_rsp "../tv/cdatafile/c.toe_top.autotvin_s_axis_session_lup_rsp.dat"
#define AUTOTB_TVOUT_s_axis_session_lup_rsp "../tv/cdatafile/c.toe_top.autotvout_s_axis_session_lup_rsp.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp "../tv/stream_size/stream_size_in_s_axis_session_lup_rsp.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp "../tv/stream_size/stream_ingress_status_s_axis_session_lup_rsp.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_session_upd_rsp "../tv/cdatafile/c.toe_top.autotvin_s_axis_session_upd_rsp.dat"
#define AUTOTB_TVOUT_s_axis_session_upd_rsp "../tv/cdatafile/c.toe_top.autotvout_s_axis_session_upd_rsp.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp "../tv/stream_size/stream_size_in_s_axis_session_upd_rsp.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp "../tv/stream_size/stream_ingress_status_s_axis_session_upd_rsp.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_session_lup_req "../tv/cdatafile/c.toe_top.autotvin_m_axis_session_lup_req.dat"
#define AUTOTB_TVOUT_m_axis_session_lup_req "../tv/cdatafile/c.toe_top.autotvout_m_axis_session_lup_req.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req "../tv/stream_size/stream_size_out_m_axis_session_lup_req.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_session_lup_req "../tv/stream_size/stream_egress_status_m_axis_session_lup_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_session_upd_req "../tv/cdatafile/c.toe_top.autotvin_m_axis_session_upd_req.dat"
#define AUTOTB_TVOUT_m_axis_session_upd_req "../tv/cdatafile/c.toe_top.autotvout_m_axis_session_upd_req.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req "../tv/stream_size/stream_size_out_m_axis_session_upd_req.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_session_upd_req "../tv/stream_size/stream_egress_status_m_axis_session_upd_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_listen_port_req "../tv/cdatafile/c.toe_top.autotvin_s_axis_listen_port_req.dat"
#define AUTOTB_TVOUT_s_axis_listen_port_req "../tv/cdatafile/c.toe_top.autotvout_s_axis_listen_port_req.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req "../tv/stream_size/stream_size_in_s_axis_listen_port_req.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req "../tv/stream_size/stream_ingress_status_s_axis_listen_port_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_data_req "../tv/cdatafile/c.toe_top.autotvin_s_axis_rx_data_req.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_req "../tv/cdatafile/c.toe_top.autotvout_s_axis_rx_data_req.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req "../tv/stream_size/stream_size_in_s_axis_rx_data_req.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req "../tv/stream_size/stream_ingress_status_s_axis_rx_data_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_open_conn_req "../tv/cdatafile/c.toe_top.autotvin_s_axis_open_conn_req.dat"
#define AUTOTB_TVOUT_s_axis_open_conn_req "../tv/cdatafile/c.toe_top.autotvout_s_axis_open_conn_req.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req "../tv/stream_size/stream_size_in_s_axis_open_conn_req.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req "../tv/stream_size/stream_ingress_status_s_axis_open_conn_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_close_conn_req "../tv/cdatafile/c.toe_top.autotvin_s_axis_close_conn_req.dat"
#define AUTOTB_TVOUT_s_axis_close_conn_req "../tv/cdatafile/c.toe_top.autotvout_s_axis_close_conn_req.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req "../tv/stream_size/stream_size_in_s_axis_close_conn_req.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req "../tv/stream_size/stream_ingress_status_s_axis_close_conn_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tx_data_req_metadata "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_metadata.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_metadata "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_metadata.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata "../tv/stream_size/stream_size_in_s_axis_tx_data_req_metadata.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_metadata.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tx_data_req_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tx_data_req_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_listen_port_rsp "../tv/cdatafile/c.toe_top.autotvin_m_axis_listen_port_rsp.dat"
#define AUTOTB_TVOUT_m_axis_listen_port_rsp "../tv/cdatafile/c.toe_top.autotvout_m_axis_listen_port_rsp.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp "../tv/stream_size/stream_size_out_m_axis_listen_port_rsp.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port_rsp "../tv/stream_size/stream_egress_status_m_axis_listen_port_rsp.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_notification "../tv/cdatafile/c.toe_top.autotvin_m_axis_notification.dat"
#define AUTOTB_TVOUT_m_axis_notification "../tv/cdatafile/c.toe_top.autotvout_m_axis_notification.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_notification "../tv/stream_size/stream_size_out_m_axis_notification.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_notification "../tv/stream_size/stream_egress_status_m_axis_notification.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_rx_data_rsp_metadata "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_metadata.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_metadata.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_metadata.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_metadata "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_metadata.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_data_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_last_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_open_conn_rsp "../tv/cdatafile/c.toe_top.autotvin_m_axis_open_conn_rsp.dat"
#define AUTOTB_TVOUT_m_axis_open_conn_rsp "../tv/cdatafile/c.toe_top.autotvout_m_axis_open_conn_rsp.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp "../tv/stream_size/stream_size_out_m_axis_open_conn_rsp.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_open_conn_rsp "../tv/stream_size/stream_egress_status_m_axis_open_conn_rsp.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_data_rsp "../tv/cdatafile/c.toe_top.autotvin_m_axis_tx_data_rsp.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_rsp "../tv/cdatafile/c.toe_top.autotvout_m_axis_tx_data_rsp.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp "../tv/stream_size/stream_size_out_m_axis_tx_data_rsp.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_rsp "../tv/stream_size/stream_egress_status_m_axis_tx_data_rsp.dat"
// wrapc file define:
#define AUTOTB_TVIN_axis_data_count "../tv/cdatafile/c.toe_top.autotvin_axis_data_count.dat"
#define AUTOTB_TVOUT_axis_data_count "../tv/cdatafile/c.toe_top.autotvout_axis_data_count.dat"
// wrapc file define:
#define AUTOTB_TVIN_axis_max_data_count "../tv/cdatafile/c.toe_top.autotvin_axis_max_data_count.dat"
#define AUTOTB_TVOUT_axis_max_data_count "../tv/cdatafile/c.toe_top.autotvout_axis_max_data_count.dat"
// wrapc file define:
#define AUTOTB_TVIN_myIpAddress "../tv/cdatafile/c.toe_top.autotvin_myIpAddress.dat"
#define AUTOTB_TVOUT_myIpAddress "../tv/cdatafile/c.toe_top.autotvout_myIpAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_regSessionCount "../tv/cdatafile/c.toe_top.autotvin_regSessionCount.dat"
#define AUTOTB_TVOUT_regSessionCount "../tv/cdatafile/c.toe_top.autotvout_regSessionCount.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_txwrite_sts "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txwrite_sts.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_txwrite_cmd "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_cmd.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_txread_cmd "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txread_cmd.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_session_lup_rsp "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_session_lup_rsp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_session_upd_rsp "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_session_upd_rsp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_session_lup_req "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_session_lup_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_session_upd_req "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_session_upd_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_listen_port_req "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_listen_port_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_data_req "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rx_data_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_open_conn_req "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_open_conn_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_close_conn_req "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_close_conn_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_metadata "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_metadata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_listen_port_rsp "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_listen_port_rsp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_notification "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_notification.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_metadata "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_metadata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_open_conn_rsp "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_open_conn_rsp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_data_rsp "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tx_data_rsp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_axis_data_count "../tv/rtldatafile/rtl.toe_top.autotvout_axis_data_count.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_axis_max_data_count "../tv/rtldatafile/rtl.toe_top.autotvout_axis_max_data_count.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myIpAddress "../tv/rtldatafile/rtl.toe_top.autotvout_myIpAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regSessionCount "../tv/rtldatafile/rtl.toe_top.autotvout_regSessionCount.dat"


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
  s_axis_tcp_data_V_data_V_depth = 0;
  s_axis_tcp_data_V_keep_V_depth = 0;
  s_axis_tcp_data_V_strb_V_depth = 0;
  s_axis_tcp_data_V_last_V_depth = 0;
  s_axis_txwrite_sts_depth = 0;
  s_axis_rxread_data_V_data_V_depth = 0;
  s_axis_rxread_data_V_keep_V_depth = 0;
  s_axis_rxread_data_V_strb_V_depth = 0;
  s_axis_rxread_data_V_last_V_depth = 0;
  s_axis_txread_data_V_data_V_depth = 0;
  s_axis_txread_data_V_keep_V_depth = 0;
  s_axis_txread_data_V_strb_V_depth = 0;
  s_axis_txread_data_V_last_V_depth = 0;
  m_axis_tcp_data_V_data_V_depth = 0;
  m_axis_tcp_data_V_keep_V_depth = 0;
  m_axis_tcp_data_V_strb_V_depth = 0;
  m_axis_tcp_data_V_last_V_depth = 0;
  m_axis_txwrite_cmd_depth = 0;
  m_axis_txread_cmd_depth = 0;
  m_axis_rxwrite_data_V_data_V_depth = 0;
  m_axis_rxwrite_data_V_keep_V_depth = 0;
  m_axis_rxwrite_data_V_strb_V_depth = 0;
  m_axis_rxwrite_data_V_last_V_depth = 0;
  m_axis_txwrite_data_V_data_V_depth = 0;
  m_axis_txwrite_data_V_keep_V_depth = 0;
  m_axis_txwrite_data_V_strb_V_depth = 0;
  m_axis_txwrite_data_V_last_V_depth = 0;
  s_axis_session_lup_rsp_depth = 0;
  s_axis_session_upd_rsp_depth = 0;
  m_axis_session_lup_req_depth = 0;
  m_axis_session_upd_req_depth = 0;
  s_axis_listen_port_req_depth = 0;
  s_axis_rx_data_req_depth = 0;
  s_axis_open_conn_req_depth = 0;
  s_axis_close_conn_req_depth = 0;
  s_axis_tx_data_req_metadata_depth = 0;
  s_axis_tx_data_req_V_data_V_depth = 0;
  s_axis_tx_data_req_V_keep_V_depth = 0;
  s_axis_tx_data_req_V_strb_V_depth = 0;
  s_axis_tx_data_req_V_last_V_depth = 0;
  m_axis_listen_port_rsp_depth = 0;
  m_axis_notification_depth = 0;
  m_axis_rx_data_rsp_metadata_depth = 0;
  m_axis_rx_data_rsp_V_data_V_depth = 0;
  m_axis_rx_data_rsp_V_keep_V_depth = 0;
  m_axis_rx_data_rsp_V_strb_V_depth = 0;
  m_axis_rx_data_rsp_V_last_V_depth = 0;
  m_axis_open_conn_rsp_depth = 0;
  m_axis_tx_data_rsp_depth = 0;
  axis_data_count_depth = 0;
  axis_max_data_count_depth = 0;
  myIpAddress_depth = 0;
  regSessionCount_depth = 0;
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
  total_list << "{s_axis_tcp_data_V_data_V " << s_axis_tcp_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_data_V_keep_V " << s_axis_tcp_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_data_V_strb_V " << s_axis_tcp_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_data_V_last_V " << s_axis_tcp_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_txwrite_sts " << s_axis_txwrite_sts_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_data_V " << s_axis_rxread_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_keep_V " << s_axis_rxread_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_strb_V " << s_axis_rxread_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_last_V " << s_axis_rxread_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_data_V " << s_axis_txread_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_keep_V " << s_axis_txread_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_strb_V " << s_axis_txread_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_last_V " << s_axis_txread_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_data_V " << m_axis_tcp_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_keep_V " << m_axis_tcp_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_strb_V " << m_axis_tcp_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_last_V " << m_axis_tcp_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_txwrite_cmd " << m_axis_txwrite_cmd_depth << "}\n";
  total_list << "{m_axis_txread_cmd " << m_axis_txread_cmd_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_data_V " << m_axis_rxwrite_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_keep_V " << m_axis_rxwrite_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_strb_V " << m_axis_rxwrite_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_last_V " << m_axis_rxwrite_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_data_V " << m_axis_txwrite_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_keep_V " << m_axis_txwrite_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_strb_V " << m_axis_txwrite_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_last_V " << m_axis_txwrite_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_session_lup_rsp " << s_axis_session_lup_rsp_depth << "}\n";
  total_list << "{s_axis_session_upd_rsp " << s_axis_session_upd_rsp_depth << "}\n";
  total_list << "{m_axis_session_lup_req " << m_axis_session_lup_req_depth << "}\n";
  total_list << "{m_axis_session_upd_req " << m_axis_session_upd_req_depth << "}\n";
  total_list << "{s_axis_listen_port_req " << s_axis_listen_port_req_depth << "}\n";
  total_list << "{s_axis_rx_data_req " << s_axis_rx_data_req_depth << "}\n";
  total_list << "{s_axis_open_conn_req " << s_axis_open_conn_req_depth << "}\n";
  total_list << "{s_axis_close_conn_req " << s_axis_close_conn_req_depth << "}\n";
  total_list << "{s_axis_tx_data_req_metadata " << s_axis_tx_data_req_metadata_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_data_V " << s_axis_tx_data_req_V_data_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_keep_V " << s_axis_tx_data_req_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_strb_V " << s_axis_tx_data_req_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_last_V " << s_axis_tx_data_req_V_last_V_depth << "}\n";
  total_list << "{m_axis_listen_port_rsp " << m_axis_listen_port_rsp_depth << "}\n";
  total_list << "{m_axis_notification " << m_axis_notification_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_metadata " << m_axis_rx_data_rsp_metadata_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_data_V " << m_axis_rx_data_rsp_V_data_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_keep_V " << m_axis_rx_data_rsp_V_keep_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_strb_V " << m_axis_rx_data_rsp_V_strb_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_last_V " << m_axis_rx_data_rsp_V_last_V_depth << "}\n";
  total_list << "{m_axis_open_conn_rsp " << m_axis_open_conn_rsp_depth << "}\n";
  total_list << "{m_axis_tx_data_rsp " << m_axis_tx_data_rsp_depth << "}\n";
  total_list << "{axis_data_count " << axis_data_count_depth << "}\n";
  total_list << "{axis_max_data_count " << axis_max_data_count_depth << "}\n";
  total_list << "{myIpAddress " << myIpAddress_depth << "}\n";
  total_list << "{regSessionCount " << regSessionCount_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axis_tcp_data_V_data_V_depth;
    int s_axis_tcp_data_V_keep_V_depth;
    int s_axis_tcp_data_V_strb_V_depth;
    int s_axis_tcp_data_V_last_V_depth;
    int s_axis_txwrite_sts_depth;
    int s_axis_rxread_data_V_data_V_depth;
    int s_axis_rxread_data_V_keep_V_depth;
    int s_axis_rxread_data_V_strb_V_depth;
    int s_axis_rxread_data_V_last_V_depth;
    int s_axis_txread_data_V_data_V_depth;
    int s_axis_txread_data_V_keep_V_depth;
    int s_axis_txread_data_V_strb_V_depth;
    int s_axis_txread_data_V_last_V_depth;
    int m_axis_tcp_data_V_data_V_depth;
    int m_axis_tcp_data_V_keep_V_depth;
    int m_axis_tcp_data_V_strb_V_depth;
    int m_axis_tcp_data_V_last_V_depth;
    int m_axis_txwrite_cmd_depth;
    int m_axis_txread_cmd_depth;
    int m_axis_rxwrite_data_V_data_V_depth;
    int m_axis_rxwrite_data_V_keep_V_depth;
    int m_axis_rxwrite_data_V_strb_V_depth;
    int m_axis_rxwrite_data_V_last_V_depth;
    int m_axis_txwrite_data_V_data_V_depth;
    int m_axis_txwrite_data_V_keep_V_depth;
    int m_axis_txwrite_data_V_strb_V_depth;
    int m_axis_txwrite_data_V_last_V_depth;
    int s_axis_session_lup_rsp_depth;
    int s_axis_session_upd_rsp_depth;
    int m_axis_session_lup_req_depth;
    int m_axis_session_upd_req_depth;
    int s_axis_listen_port_req_depth;
    int s_axis_rx_data_req_depth;
    int s_axis_open_conn_req_depth;
    int s_axis_close_conn_req_depth;
    int s_axis_tx_data_req_metadata_depth;
    int s_axis_tx_data_req_V_data_V_depth;
    int s_axis_tx_data_req_V_keep_V_depth;
    int s_axis_tx_data_req_V_strb_V_depth;
    int s_axis_tx_data_req_V_last_V_depth;
    int m_axis_listen_port_rsp_depth;
    int m_axis_notification_depth;
    int m_axis_rx_data_rsp_metadata_depth;
    int m_axis_rx_data_rsp_V_data_V_depth;
    int m_axis_rx_data_rsp_V_keep_V_depth;
    int m_axis_rx_data_rsp_V_strb_V_depth;
    int m_axis_rx_data_rsp_V_last_V_depth;
    int m_axis_open_conn_rsp_depth;
    int m_axis_tx_data_rsp_depth;
    int axis_data_count_depth;
    int axis_max_data_count_depth;
    int myIpAddress_depth;
    int regSessionCount_depth;
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
struct __cosim_s40__ { char data[64]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s20__ { char data[32]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s9__ { char data[16]; };
struct __cosim_sF__ { char data[16]; };
struct __cosim_s13__ { char data[32]; };
struct __cosim_sC__ { char data[16]; };
struct __cosim_s12__ { char data[32]; };
struct __cosim_sB__ { char data[16]; };
extern "C" void toe_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s2__*, __cosim_s2__*, __cosim_s4__*, volatile void *);

extern "C" void apatb_toe_top_hw(volatile void * __xlx_apatb_param_s_axis_tcp_data_V_data_V, volatile void * __xlx_apatb_param_s_axis_tcp_data_V_keep_V, volatile void * __xlx_apatb_param_s_axis_tcp_data_V_strb_V, volatile void * __xlx_apatb_param_s_axis_tcp_data_V_last_V, volatile void * __xlx_apatb_param_s_axis_txwrite_sts, volatile void * __xlx_apatb_param_s_axis_rxread_data_V_data_V, volatile void * __xlx_apatb_param_s_axis_rxread_data_V_keep_V, volatile void * __xlx_apatb_param_s_axis_rxread_data_V_strb_V, volatile void * __xlx_apatb_param_s_axis_rxread_data_V_last_V, volatile void * __xlx_apatb_param_s_axis_txread_data_V_data_V, volatile void * __xlx_apatb_param_s_axis_txread_data_V_keep_V, volatile void * __xlx_apatb_param_s_axis_txread_data_V_strb_V, volatile void * __xlx_apatb_param_s_axis_txread_data_V_last_V, volatile void * __xlx_apatb_param_m_axis_tcp_data_V_data_V, volatile void * __xlx_apatb_param_m_axis_tcp_data_V_keep_V, volatile void * __xlx_apatb_param_m_axis_tcp_data_V_strb_V, volatile void * __xlx_apatb_param_m_axis_tcp_data_V_last_V, volatile void * __xlx_apatb_param_m_axis_txwrite_cmd, volatile void * __xlx_apatb_param_m_axis_txread_cmd, volatile void * __xlx_apatb_param_m_axis_rxwrite_data_V_data_V, volatile void * __xlx_apatb_param_m_axis_rxwrite_data_V_keep_V, volatile void * __xlx_apatb_param_m_axis_rxwrite_data_V_strb_V, volatile void * __xlx_apatb_param_m_axis_rxwrite_data_V_last_V, volatile void * __xlx_apatb_param_m_axis_txwrite_data_V_data_V, volatile void * __xlx_apatb_param_m_axis_txwrite_data_V_keep_V, volatile void * __xlx_apatb_param_m_axis_txwrite_data_V_strb_V, volatile void * __xlx_apatb_param_m_axis_txwrite_data_V_last_V, volatile void * __xlx_apatb_param_s_axis_session_lup_rsp, volatile void * __xlx_apatb_param_s_axis_session_upd_rsp, volatile void * __xlx_apatb_param_m_axis_session_lup_req, volatile void * __xlx_apatb_param_m_axis_session_upd_req, volatile void * __xlx_apatb_param_s_axis_listen_port_req, volatile void * __xlx_apatb_param_s_axis_rx_data_req, volatile void * __xlx_apatb_param_s_axis_open_conn_req, volatile void * __xlx_apatb_param_s_axis_close_conn_req, volatile void * __xlx_apatb_param_s_axis_tx_data_req_metadata, volatile void * __xlx_apatb_param_s_axis_tx_data_req_V_data_V, volatile void * __xlx_apatb_param_s_axis_tx_data_req_V_keep_V, volatile void * __xlx_apatb_param_s_axis_tx_data_req_V_strb_V, volatile void * __xlx_apatb_param_s_axis_tx_data_req_V_last_V, volatile void * __xlx_apatb_param_m_axis_listen_port_rsp, volatile void * __xlx_apatb_param_m_axis_notification, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_metadata, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_V_data_V, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_V_last_V, volatile void * __xlx_apatb_param_m_axis_open_conn_rsp, volatile void * __xlx_apatb_param_m_axis_tx_data_rsp, __cosim_s2__* __xlx_apatb_param_axis_data_count, __cosim_s2__* __xlx_apatb_param_axis_max_data_count, __cosim_s4__* __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_regSessionCount) {
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
long __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tcp_data_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_tcp_data_V_last_V)->read();
}
long __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size; ++i)((hls::stream<char>*)__xlx_apatb_param_s_axis_txwrite_sts)->read();
long __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rxread_data_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_rxread_data_V_last_V)->read();
}
long __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_txread_data_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_txread_data_V_last_V)->read();
}
{unsigned xlx_stream_m_axis_tcp_data_size = 0;

          std::vector<sc_bv<512> > m_axis_tcp_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_data_V);
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
          std::vector<sc_bv<512> > m_axis_tcp_data_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tcp_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_data_V_pc_buffer.size();
m_axis_tcp_data_V_data_V_pc_buffer_Copy=m_axis_tcp_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_keep_V);
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
          std::vector<sc_bv<512> > m_axis_tcp_data_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tcp_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_keep_V_pc_buffer.size();
m_axis_tcp_data_V_keep_V_pc_buffer_Copy=m_axis_tcp_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_strb_V);
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
          std::vector<sc_bv<512> > m_axis_tcp_data_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tcp_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_strb_V_pc_buffer.size();
m_axis_tcp_data_V_strb_V_pc_buffer_Copy=m_axis_tcp_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_last_V);
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
          std::vector<sc_bv<512> > m_axis_tcp_data_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tcp_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_last_V_pc_buffer.size();
m_axis_tcp_data_V_last_V_pc_buffer_Copy=m_axis_tcp_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_data_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tcp_data_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = m_axis_tcp_data_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = m_axis_tcp_data_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_tcp_data_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_tcp_data_V_last_V)->write(xlx_stream_elt_last);
}}long __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_cmd);
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
          std::vector<sc_bv<72> > m_axis_txwrite_cmd_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_cmd");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_cmd_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_txwrite_cmd" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_txwrite_cmd_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_txwrite_cmd_pc_buffer[j].range(71,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txread_cmd);
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
          std::vector<sc_bv<72> > m_axis_txread_cmd_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_txread_cmd");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txread_cmd_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_txread_cmd" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_txread_cmd_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_txread_cmd_pc_buffer[j].range(71,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {unsigned xlx_stream_m_axis_rxwrite_data_size = 0;

          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_data_V);
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
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rxwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_data_V_pc_buffer.size();
m_axis_rxwrite_data_V_data_V_pc_buffer_Copy=m_axis_rxwrite_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_keep_V);
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
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rxwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_keep_V_pc_buffer.size();
m_axis_rxwrite_data_V_keep_V_pc_buffer_Copy=m_axis_rxwrite_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_strb_V);
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
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rxwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_strb_V_pc_buffer.size();
m_axis_rxwrite_data_V_strb_V_pc_buffer_Copy=m_axis_rxwrite_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_last_V);
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
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rxwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_last_V_pc_buffer.size();
m_axis_rxwrite_data_V_last_V_pc_buffer_Copy=m_axis_rxwrite_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_rxwrite_data_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rxwrite_data_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = m_axis_rxwrite_data_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = m_axis_rxwrite_data_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_rxwrite_data_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_rxwrite_data_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_m_axis_txwrite_data_size = 0;

          std::vector<sc_bv<512> > m_axis_txwrite_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_data_V);
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
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_txwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_data_V_pc_buffer.size();
m_axis_txwrite_data_V_data_V_pc_buffer_Copy=m_axis_txwrite_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_keep_V);
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
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_txwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_keep_V_pc_buffer.size();
m_axis_txwrite_data_V_keep_V_pc_buffer_Copy=m_axis_txwrite_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_strb_V);
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
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_txwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_strb_V_pc_buffer.size();
m_axis_txwrite_data_V_strb_V_pc_buffer_Copy=m_axis_txwrite_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_last_V);
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
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_txwrite_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_last_V_pc_buffer.size();
m_axis_txwrite_data_V_last_V_pc_buffer_Copy=m_axis_txwrite_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_txwrite_data_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_txwrite_data_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = m_axis_txwrite_data_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = m_axis_txwrite_data_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_txwrite_data_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_txwrite_data_V_last_V)->write(xlx_stream_elt_last);
}}long __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->read();
long __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->read();
long __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_session_lup_req);
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
          std::vector<sc_bv<96> > m_axis_session_lup_req_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_session_lup_req");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_session_lup_req_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_session_lup_req" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_session_lup_req_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_session_lup_req_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_session_lup_req)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_session_upd_req);
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
          std::vector<sc_bv<144> > m_axis_session_upd_req_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_session_upd_req");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_session_upd_req_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_session_upd_req" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s20__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*4+0] = m_axis_session_upd_req_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*4+1] = m_axis_session_upd_req_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*4+2] = m_axis_session_upd_req_pc_buffer[j].range(143,128).to_int64();
((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_session_upd_req)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->read();
long __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size; ++i)((hls::stream<int>*)__xlx_apatb_param_s_axis_rx_data_req)->read();
long __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size; ++i)((hls::stream<long long>*)__xlx_apatb_param_s_axis_open_conn_req)->read();
long __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->read();
long __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size; ++i)((hls::stream<int>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->read();
long __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tx_data_req_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_tx_data_req_V_last_V)->read();
}
long __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_listen_port_rsp);
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
          std::vector<sc_bv<8> > m_axis_listen_port_rsp_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_listen_port_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_listen_port_rsp_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_listen_port_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*1+0] = m_axis_listen_port_rsp_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_m_axis_listen_port_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_notification_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_notification);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_notification_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_notification);
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
          std::vector<sc_bv<88> > m_axis_notification_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_notification");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_notification_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_notification" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_notification_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_notification_pc_buffer[j].range(87,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_notification)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_metadata);
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
          std::vector<sc_bv<16> > m_axis_rx_data_rsp_metadata_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp_metadata");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_metadata_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rx_data_rsp_metadata" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*2+0] = m_axis_rx_data_rsp_metadata_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*2+1] = m_axis_rx_data_rsp_metadata_pc_buffer[j].range(15, 8).to_int64();
((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {unsigned xlx_stream_m_axis_rx_data_rsp_size = 0;

          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_data_V);
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
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rx_data_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_data_V_pc_buffer.size();
m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_keep_V);
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
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rx_data_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_keep_V_pc_buffer.size();
m_axis_rx_data_rsp_V_keep_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_strb_V);
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
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rx_data_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_strb_V_pc_buffer.size();
m_axis_rx_data_rsp_V_strb_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_last_V);
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
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_rx_data_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_last_V_pc_buffer.size();
m_axis_rx_data_rsp_V_last_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_rx_data_rsp_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = m_axis_rx_data_rsp_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = m_axis_rx_data_rsp_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_rx_data_rsp_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_last_V)->write(xlx_stream_elt_last);
}}long __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_open_conn_rsp);
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
          std::vector<sc_bv<72> > m_axis_open_conn_rsp_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_open_conn_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_open_conn_rsp_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_open_conn_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_open_conn_rsp_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_open_conn_rsp_pc_buffer[j].range(71,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_rsp);
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
          std::vector<sc_bv<64> > m_axis_tx_data_rsp_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_rsp_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
long long xlx_stream_elt;
((char*)&xlx_stream_elt)[0*8+0] = m_axis_tx_data_rsp_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*8+1] = m_axis_tx_data_rsp_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*8+2] = m_axis_tx_data_rsp_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*8+3] = m_axis_tx_data_rsp_pc_buffer[j].range(31, 24).to_int64();
((char*)&xlx_stream_elt)[0*8+4] = m_axis_tx_data_rsp_pc_buffer[j].range(39, 32).to_int64();
((char*)&xlx_stream_elt)[0*8+5] = m_axis_tx_data_rsp_pc_buffer[j].range(47, 40).to_int64();
((char*)&xlx_stream_elt)[0*8+6] = m_axis_tx_data_rsp_pc_buffer[j].range(55, 48).to_int64();
((char*)&xlx_stream_elt)[0*8+7] = m_axis_tx_data_rsp_pc_buffer[j].range(63, 56).to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_regSessionCount);
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
          std::vector<sc_bv<16> > regSessionCount_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "regSessionCount");
  
            // push token into output port buffer
            if (AESL_token != "") {
              regSessionCount_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "regSessionCount" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_regSessionCount)[0*2+0] = regSessionCount_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_regSessionCount)[0*2+1] = regSessionCount_pc_buffer[0].range(15, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_cmd);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txread_cmd);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_session_lup_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_session_upd_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port_rsp);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_notification);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_notification);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_metadata);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_open_conn_rsp);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_rsp);
CodeState = DUMP_INPUTS;
// data
std::vector<__cosim_s40__> __xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tcp_data_V_data_V)->empty())
    __xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tcp_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tcp_data_V_data_V)->write(__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tcp_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_s_axis_tcp_data_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_tcp_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_keep_V)->write(__xlx_apatb_param_s_axis_tcp_data_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_s_axis_tcp_data_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_tcp_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tcp_data_V_strb_V)->write(__xlx_apatb_param_s_axis_tcp_data_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_s_axis_tcp_data_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_tcp_data_V_last_V)->empty())
    __xlx_apatb_param_s_axis_tcp_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_tcp_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_tcp_data_V_last_V)->write(__xlx_apatb_param_s_axis_tcp_data_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<char> __xlx_apatb_param_s_axis_txwrite_sts_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_txwrite_sts)->empty())
    __xlx_apatb_param_s_axis_txwrite_sts_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_txwrite_sts)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txwrite_sts_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_txwrite_sts)->write(__xlx_apatb_param_s_axis_txwrite_sts_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_s_axis_txwrite_sts)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rxread_data_V_data_V)->empty())
    __xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rxread_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rxread_data_V_data_V)->write(__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rxread_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rxread_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_s_axis_rxread_data_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_rxread_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rxread_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_keep_V)->write(__xlx_apatb_param_s_axis_rxread_data_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_s_axis_rxread_data_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_rxread_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rxread_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rxread_data_V_strb_V)->write(__xlx_apatb_param_s_axis_rxread_data_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_s_axis_rxread_data_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_rxread_data_V_last_V)->empty())
    __xlx_apatb_param_s_axis_rxread_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_rxread_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rxread_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_rxread_data_V_last_V)->write(__xlx_apatb_param_s_axis_rxread_data_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<__cosim_s40__> __xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_txread_data_V_data_V)->empty())
    __xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_txread_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_txread_data_V_data_V)->write(__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_txread_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_txread_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_s_axis_txread_data_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_txread_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txread_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_keep_V)->write(__xlx_apatb_param_s_axis_txread_data_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_s_axis_txread_data_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_txread_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txread_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_txread_data_V_strb_V)->write(__xlx_apatb_param_s_axis_txread_data_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_s_axis_txread_data_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_txread_data_V_last_V)->empty())
    __xlx_apatb_param_s_axis_txread_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_txread_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txread_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_txread_data_V_last_V)->write(__xlx_apatb_param_s_axis_txread_data_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<__cosim_s40__> __xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_tcp_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tcp_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_m_axis_tcp_data_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_m_axis_tcp_data_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_m_axis_tcp_data_V_last_V_stream_buf;
// id
// dest
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf;
long __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_txread_cmd_stream_buf;
long __xlx_apatb_param_m_axis_txread_cmd_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rxwrite_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_m_axis_rxwrite_data_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_m_axis_rxwrite_data_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_m_axis_rxwrite_data_V_last_V_stream_buf;
// id
// dest
// data
std::vector<__cosim_s40__> __xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_txwrite_data_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_txwrite_data_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_m_axis_txwrite_data_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_m_axis_txwrite_data_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_m_axis_txwrite_data_V_last_V_stream_buf;
// id
// dest
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->empty())
    __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->write(__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->empty())
    __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->write(__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_session_lup_req_stream_buf;
long __xlx_apatb_param_m_axis_session_lup_req_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_session_lup_req)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_m_axis_session_upd_req_stream_buf;
long __xlx_apatb_param_m_axis_session_upd_req_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_session_upd_req)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_s_axis_listen_port_req_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->empty())
    __xlx_apatb_param_s_axis_listen_port_req_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_listen_port_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->write(__xlx_apatb_param_s_axis_listen_port_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_listen_port_req_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->size();
std::vector<int> __xlx_apatb_param_s_axis_rx_data_req_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_s_axis_rx_data_req)->empty())
    __xlx_apatb_param_s_axis_rx_data_req_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_s_axis_rx_data_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_req_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_s_axis_rx_data_req)->write(__xlx_apatb_param_s_axis_rx_data_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_data_req_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_s_axis_rx_data_req)->size();
std::vector<long long> __xlx_apatb_param_s_axis_open_conn_req_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_open_conn_req)->empty())
    __xlx_apatb_param_s_axis_open_conn_req_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_open_conn_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_open_conn_req_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_open_conn_req)->write(__xlx_apatb_param_s_axis_open_conn_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_open_conn_req_stream_buf_size = ((hls::stream<long long>*)__xlx_apatb_param_s_axis_open_conn_req)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_s_axis_close_conn_req_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->empty())
    __xlx_apatb_param_s_axis_close_conn_req_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_close_conn_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->write(__xlx_apatb_param_s_axis_close_conn_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_close_conn_req_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->size();
std::vector<int> __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->write(__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tx_data_req_V_data_V)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tx_data_req_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tx_data_req_V_data_V)->write(__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tx_data_req_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_s_axis_tx_data_req_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_keep_V)->write(__xlx_apatb_param_s_axis_tx_data_req_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_s_axis_tx_data_req_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_data_req_V_strb_V)->write(__xlx_apatb_param_s_axis_tx_data_req_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_s_axis_tx_data_req_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_tx_data_req_V_last_V)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_tx_data_req_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_tx_data_req_V_last_V)->write(__xlx_apatb_param_s_axis_tx_data_req_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<__cosim_s1__> __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf;
long __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_m_axis_listen_port_rsp)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_notification_stream_buf;
long __xlx_apatb_param_m_axis_notification_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_notification)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf;
long __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_m_axis_rx_data_rsp_V_last_V_stream_buf;
// id
// dest
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf;
long __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->size();
std::vector<long long> __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf;
long __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size = ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_rsp)->size();
// print axis_data_count Transactions
{
aesl_fh.write(AUTOTB_TVIN_axis_data_count, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_axis_data_count);
aesl_fh.write(AUTOTB_TVIN_axis_data_count, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.axis_data_count_depth);
aesl_fh.write(AUTOTB_TVIN_axis_data_count, end_str());
}

// print axis_max_data_count Transactions
{
aesl_fh.write(AUTOTB_TVIN_axis_max_data_count, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_axis_max_data_count);
aesl_fh.write(AUTOTB_TVIN_axis_max_data_count, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.axis_max_data_count_depth);
aesl_fh.write(AUTOTB_TVIN_axis_max_data_count, end_str());
}

// print myIpAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_myIpAddress, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_myIpAddress);
aesl_fh.write(AUTOTB_TVIN_myIpAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.myIpAddress_depth);
aesl_fh.write(AUTOTB_TVIN_myIpAddress, end_str());
}

// print regSessionCount Transactions
{
aesl_fh.write(AUTOTB_TVIN_regSessionCount, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regSessionCount);
aesl_fh.write(AUTOTB_TVIN_regSessionCount, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regSessionCount_depth);
aesl_fh.write(AUTOTB_TVIN_regSessionCount, end_str());
}

CodeState = CALL_C_DUT;
toe_top_hw_stub_wrapper(__xlx_apatb_param_s_axis_tcp_data_V_data_V, __xlx_apatb_param_s_axis_tcp_data_V_keep_V, __xlx_apatb_param_s_axis_tcp_data_V_strb_V, __xlx_apatb_param_s_axis_tcp_data_V_last_V, __xlx_apatb_param_s_axis_txwrite_sts, __xlx_apatb_param_s_axis_rxread_data_V_data_V, __xlx_apatb_param_s_axis_rxread_data_V_keep_V, __xlx_apatb_param_s_axis_rxread_data_V_strb_V, __xlx_apatb_param_s_axis_rxread_data_V_last_V, __xlx_apatb_param_s_axis_txread_data_V_data_V, __xlx_apatb_param_s_axis_txread_data_V_keep_V, __xlx_apatb_param_s_axis_txread_data_V_strb_V, __xlx_apatb_param_s_axis_txread_data_V_last_V, __xlx_apatb_param_m_axis_tcp_data_V_data_V, __xlx_apatb_param_m_axis_tcp_data_V_keep_V, __xlx_apatb_param_m_axis_tcp_data_V_strb_V, __xlx_apatb_param_m_axis_tcp_data_V_last_V, __xlx_apatb_param_m_axis_txwrite_cmd, __xlx_apatb_param_m_axis_txread_cmd, __xlx_apatb_param_m_axis_rxwrite_data_V_data_V, __xlx_apatb_param_m_axis_rxwrite_data_V_keep_V, __xlx_apatb_param_m_axis_rxwrite_data_V_strb_V, __xlx_apatb_param_m_axis_rxwrite_data_V_last_V, __xlx_apatb_param_m_axis_txwrite_data_V_data_V, __xlx_apatb_param_m_axis_txwrite_data_V_keep_V, __xlx_apatb_param_m_axis_txwrite_data_V_strb_V, __xlx_apatb_param_m_axis_txwrite_data_V_last_V, __xlx_apatb_param_s_axis_session_lup_rsp, __xlx_apatb_param_s_axis_session_upd_rsp, __xlx_apatb_param_m_axis_session_lup_req, __xlx_apatb_param_m_axis_session_upd_req, __xlx_apatb_param_s_axis_listen_port_req, __xlx_apatb_param_s_axis_rx_data_req, __xlx_apatb_param_s_axis_open_conn_req, __xlx_apatb_param_s_axis_close_conn_req, __xlx_apatb_param_s_axis_tx_data_req_metadata, __xlx_apatb_param_s_axis_tx_data_req_V_data_V, __xlx_apatb_param_s_axis_tx_data_req_V_keep_V, __xlx_apatb_param_s_axis_tx_data_req_V_strb_V, __xlx_apatb_param_s_axis_tx_data_req_V_last_V, __xlx_apatb_param_m_axis_listen_port_rsp, __xlx_apatb_param_m_axis_notification, __xlx_apatb_param_m_axis_rx_data_rsp_metadata, __xlx_apatb_param_m_axis_rx_data_rsp_V_data_V, __xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V, __xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V, __xlx_apatb_param_m_axis_rx_data_rsp_V_last_V, __xlx_apatb_param_m_axis_open_conn_rsp, __xlx_apatb_param_m_axis_tx_data_rsp, __xlx_apatb_param_axis_data_count, __xlx_apatb_param_axis_max_data_count, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_regSessionCount);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tcp_data_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_s_axis_tcp_data_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V, end_str());
}
long __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_size - ((hls::stream<char>*)__xlx_apatb_param_s_axis_txwrite_sts)->size();
// print s_axis_txwrite_sts Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_txwrite_sts, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv_hw;
sc_bv<8> __xlx_tmp_lv;
__xlx_tmp_lv = ((char*)&__xlx_apatb_param_s_axis_txwrite_sts_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_txwrite_sts, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size, &tcl_file.s_axis_txwrite_sts_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_txwrite_sts, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size > 0) {
  long s_axis_txwrite_sts_stream_ingress_size = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txwrite_sts_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size; j != e; j++) {
    s_axis_txwrite_sts_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txwrite_sts_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txwrite_sts_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txwrite_sts_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts, end_str());
}
long __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rxread_data_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_s_axis_rxread_data_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V, end_str());
}
long __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_txread_data_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_s_axis_txread_data_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_s_axis_txread_data_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tcp_data_V_data_V)->size() - __xlx_apatb_param_m_axis_tcp_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tcp_data_V_data_V)->empty())
    __xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tcp_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tcp_data_V_data_V)->write(__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_tcp_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_keep_V)->write(__xlx_apatb_param_m_axis_tcp_data_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_tcp_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tcp_data_V_strb_V)->write(__xlx_apatb_param_m_axis_tcp_data_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_tcp_data_V_last_V)->empty())
    __xlx_apatb_param_m_axis_tcp_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_tcp_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_tcp_data_V_last_V)->write(__xlx_apatb_param_m_axis_tcp_data_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_keep_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_V_strb_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_m_axis_tcp_data_V_last_V_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V, end_str());
}
long __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->size() - __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->empty())
    __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->write(__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf[i]);
  }
// print m_axis_txwrite_cmd Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_cmd, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size; j != e; ++j) {
sc_bv<72> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf[__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(71,64) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf[__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_cmd, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size, &tcl_file.m_axis_txwrite_cmd_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_cmd, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd, end_str());
}
long __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->size() - __xlx_apatb_param_m_axis_txread_cmd_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->empty())
    __xlx_apatb_param_m_axis_txread_cmd_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txread_cmd_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->write(__xlx_apatb_param_m_axis_txread_cmd_stream_buf[i]);
  }
// print m_axis_txread_cmd Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_txread_cmd, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size; j != e; ++j) {
sc_bv<72> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_txread_cmd_stream_buf[__xlx_apatb_param_m_axis_txread_cmd_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(71,64) = ((long long*)&__xlx_apatb_param_m_axis_txread_cmd_stream_buf[__xlx_apatb_param_m_axis_txread_cmd_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_m_axis_txread_cmd, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size, &tcl_file.m_axis_txread_cmd_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_txread_cmd, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rxwrite_data_V_data_V)->size() - __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rxwrite_data_V_data_V)->empty())
    __xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rxwrite_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rxwrite_data_V_data_V)->write(__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_rxwrite_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rxwrite_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_keep_V)->write(__xlx_apatb_param_m_axis_rxwrite_data_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_rxwrite_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rxwrite_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_rxwrite_data_V_strb_V)->write(__xlx_apatb_param_m_axis_rxwrite_data_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_rxwrite_data_V_last_V)->empty())
    __xlx_apatb_param_m_axis_rxwrite_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_rxwrite_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rxwrite_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_rxwrite_data_V_last_V)->write(__xlx_apatb_param_m_axis_rxwrite_data_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_keep_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_V_strb_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_m_axis_rxwrite_data_V_last_V_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_txwrite_data_V_data_V)->size() - __xlx_apatb_param_m_axis_txwrite_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_txwrite_data_V_data_V)->empty())
    __xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_txwrite_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_txwrite_data_V_data_V)->write(__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_txwrite_data_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_keep_V)->write(__xlx_apatb_param_m_axis_txwrite_data_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_txwrite_data_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_txwrite_data_V_strb_V)->write(__xlx_apatb_param_m_axis_txwrite_data_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_txwrite_data_V_last_V)->empty())
    __xlx_apatb_param_m_axis_txwrite_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_txwrite_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_txwrite_data_V_last_V)->write(__xlx_apatb_param_m_axis_txwrite_data_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_keep_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_V_strb_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_m_axis_txwrite_data_V_last_V_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V, end_str());
}
long __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->size();
// print s_axis_session_lup_rsp Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_session_lup_rsp, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<120> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_session_lup_rsp, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size, &tcl_file.s_axis_session_lup_rsp_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_session_lup_rsp, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size > 0) {
  long s_axis_session_lup_rsp_stream_ingress_size = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_lup_rsp_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size; j != e; j++) {
    s_axis_session_lup_rsp_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_lup_rsp_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_session_lup_rsp_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_lup_rsp_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp, end_str());
}
long __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->size();
// print s_axis_session_upd_rsp Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_session_upd_rsp, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<152> __xlx_tmp_lv_hw;
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*4+3];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_session_upd_rsp, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size, &tcl_file.s_axis_session_upd_rsp_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_session_upd_rsp, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size > 0) {
  long s_axis_session_upd_rsp_stream_ingress_size = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_upd_rsp_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size; j != e; j++) {
    s_axis_session_upd_rsp_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_upd_rsp_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_session_upd_rsp_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_upd_rsp_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp, end_str());
}
long __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_session_lup_req)->size() - __xlx_apatb_param_m_axis_session_lup_req_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_session_lup_req)->empty())
    __xlx_apatb_param_m_axis_session_lup_req_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_session_lup_req)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_session_lup_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_session_lup_req)->write(__xlx_apatb_param_m_axis_session_lup_req_stream_buf[i]);
  }
// print m_axis_session_lup_req Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_session_lup_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_session_lup_req_stream_buf[__xlx_apatb_param_m_axis_session_lup_req_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_session_lup_req_stream_buf[__xlx_apatb_param_m_axis_session_lup_req_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_m_axis_session_lup_req, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size, &tcl_file.m_axis_session_lup_req_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_session_lup_req, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req, end_str());
}
long __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_session_upd_req)->size() - __xlx_apatb_param_m_axis_session_upd_req_stream_buf_size;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_session_upd_req)->empty())
    __xlx_apatb_param_m_axis_session_upd_req_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_session_upd_req)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_session_upd_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_session_upd_req)->write(__xlx_apatb_param_m_axis_session_upd_req_stream_buf[i]);
  }
// print m_axis_session_upd_req Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_session_upd_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size; j != e; ++j) {
sc_bv<144> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_session_upd_req_stream_buf[__xlx_apatb_param_m_axis_session_upd_req_stream_buf_size+j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_session_upd_req_stream_buf[__xlx_apatb_param_m_axis_session_upd_req_stream_buf_size+j])[0*4+1];
__xlx_tmp_lv.range(143,128) = ((long long*)&__xlx_apatb_param_m_axis_session_upd_req_stream_buf[__xlx_apatb_param_m_axis_session_upd_req_stream_buf_size+j])[0*4+2];
aesl_fh.write(AUTOTB_TVOUT_m_axis_session_upd_req, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size, &tcl_file.m_axis_session_upd_req_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_session_upd_req, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req, end_str());
}
long __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->size();
// print s_axis_listen_port_req Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_s_axis_listen_port_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_req, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size, &tcl_file.s_axis_listen_port_req_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_req, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size > 0) {
  long s_axis_listen_port_req_stream_ingress_size = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size; j != e; j++) {
    s_axis_listen_port_req_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_listen_port_req_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req, end_str());
}
long __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_s_axis_rx_data_req)->size();
// print s_axis_rx_data_req Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_s_axis_rx_data_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_req, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size, &tcl_file.s_axis_rx_data_req_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_req, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size > 0) {
  long s_axis_rx_data_req_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_req_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_req_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req, end_str());
}
long __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_size - ((hls::stream<long long>*)__xlx_apatb_param_s_axis_open_conn_req)->size();
// print s_axis_open_conn_req Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_open_conn_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size; j != e; ++j) {
sc_bv<48> __xlx_tmp_lv_hw;
sc_bv<64> __xlx_tmp_lv;
__xlx_tmp_lv = ((long long*)&__xlx_apatb_param_s_axis_open_conn_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_open_conn_req, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size, &tcl_file.s_axis_open_conn_req_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_open_conn_req, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size > 0) {
  long s_axis_open_conn_req_stream_ingress_size = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_conn_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size; j != e; j++) {
    s_axis_open_conn_req_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_conn_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_open_conn_req_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_conn_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req, end_str());
}
long __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->size();
// print s_axis_close_conn_req Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_close_conn_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_s_axis_close_conn_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_close_conn_req, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size, &tcl_file.s_axis_close_conn_req_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_close_conn_req, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size > 0) {
  long s_axis_close_conn_req_stream_ingress_size = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_close_conn_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size; j != e; j++) {
    s_axis_close_conn_req_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_close_conn_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_close_conn_req_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_close_conn_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req, end_str());
}
long __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->size();
// print s_axis_tx_data_req_metadata Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_metadata, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_metadata, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_metadata_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_metadata, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_metadata_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_metadata_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_metadata_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata, end_str());
}
long __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_tx_data_req_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_s_axis_tx_data_req_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V, end_str());
}
long __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_m_axis_listen_port_rsp)->size() - __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_m_axis_listen_port_rsp)->empty())
    __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_m_axis_listen_port_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_m_axis_listen_port_rsp)->write(__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf[i]);
  }
// print m_axis_listen_port_rsp Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_rsp, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)&__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf[__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_rsp, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size, &tcl_file.m_axis_listen_port_rsp_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_rsp, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp, end_str());
}
long __xlx_apatb_param_m_axis_notification_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_notification)->size() - __xlx_apatb_param_m_axis_notification_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_notification)->empty())
    __xlx_apatb_param_m_axis_notification_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_notification)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_notification_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_notification)->write(__xlx_apatb_param_m_axis_notification_stream_buf[i]);
  }
// print m_axis_notification Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_notification, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_notification_stream_buf_final_size; j != e; ++j) {
sc_bv<88> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_notification_stream_buf[__xlx_apatb_param_m_axis_notification_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(87,64) = ((long long*)&__xlx_apatb_param_m_axis_notification_stream_buf[__xlx_apatb_param_m_axis_notification_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_m_axis_notification, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_notification_stream_buf_final_size, &tcl_file.m_axis_notification_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_notification, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_notification, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_notification_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_notification, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_notification, end_str());
}
long __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->size() - __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->write(__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf[i]);
  }
// print m_axis_rx_data_rsp_metadata Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_metadata_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V)->size() - __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V)->write(__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V)->write(__xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V)->write(__xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_last_V)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_rx_data_rsp_V_last_V)->write(__xlx_apatb_param_m_axis_rx_data_rsp_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_data_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_keep_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_strb_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_m_axis_rx_data_rsp_V_last_V_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V, end_str());
}
long __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->size() - __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->empty())
    __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->write(__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf[i]);
  }
// print m_axis_open_conn_rsp Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_conn_rsp, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<72> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf[__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(71,64) = ((long long*)&__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf[__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_conn_rsp, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size, &tcl_file.m_axis_open_conn_rsp_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_conn_rsp, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp, end_str());
}
long __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size = ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_rsp)->size() - __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_rsp)->empty())
    __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_rsp)->write(__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf[i]);
  }
// print m_axis_tx_data_rsp Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_rsp, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_rsp, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_tx_data_rsp_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_rsp, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp, end_str());
}
// print regSessionCount Transactions
{
aesl_fh.write(AUTOTB_TVOUT_regSessionCount, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regSessionCount);
aesl_fh.write(AUTOTB_TVOUT_regSessionCount, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.regSessionCount_depth);
aesl_fh.write(AUTOTB_TVOUT_regSessionCount, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
