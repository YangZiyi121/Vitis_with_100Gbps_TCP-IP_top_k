#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_local_block", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_local_deadlock", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axis_lup_req_TDATA", 96, hls_in, 0, "axis", "in_data", 1),
	Port_Property("s_axis_lup_req_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("s_axis_lup_req_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("s_axis_upd_req_TDATA", 144, hls_in, 1, "axis", "in_data", 1),
	Port_Property("s_axis_upd_req_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("s_axis_upd_req_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("m_axis_lup_rsp_TDATA", 120, hls_out, 2, "axis", "out_data", 1),
	Port_Property("m_axis_lup_rsp_TVALID", 1, hls_out, 2, "axis", "out_vld", 1),
	Port_Property("m_axis_lup_rsp_TREADY", 1, hls_in, 2, "axis", "out_acc", 1),
	Port_Property("m_axis_upd_rsp_TDATA", 152, hls_out, 3, "axis", "out_data", 1),
	Port_Property("m_axis_upd_rsp_TVALID", 1, hls_out, 3, "axis", "out_vld", 1),
	Port_Property("m_axis_upd_rsp_TREADY", 1, hls_in, 3, "axis", "out_acc", 1),
	Port_Property("regInsertFailureCount", 16, hls_out, 4, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "hash_table_top";
