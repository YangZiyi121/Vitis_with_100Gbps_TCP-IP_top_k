; ModuleID = '/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/ip_handler/ip_handler_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 0>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: noinline
define void @apatb_ip_handler_top_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_raw, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_arp, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_icmpv6, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_ipv6udp, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_icmp, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_udp, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_tcp, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_roce, %"struct.ap_uint<32>"* nocapture readonly %myIpAddress) local_unnamed_addr #0 {
entry:
  %s_axis_raw_copy.data = alloca i512
  %s_axis_raw_copy.keep = alloca i64
  %s_axis_raw_copy.strb = alloca i64
  %s_axis_raw_copy.last = alloca i1
  %m_axis_arp_copy.data = alloca i512
  %m_axis_arp_copy.keep = alloca i64
  %m_axis_arp_copy.strb = alloca i64
  %m_axis_arp_copy.last = alloca i1
  %m_axis_icmpv6_copy.data = alloca i512
  %m_axis_icmpv6_copy.keep = alloca i64
  %m_axis_icmpv6_copy.strb = alloca i64
  %m_axis_icmpv6_copy.last = alloca i1
  %m_axis_ipv6udp_copy.data = alloca i512
  %m_axis_ipv6udp_copy.keep = alloca i64
  %m_axis_ipv6udp_copy.strb = alloca i64
  %m_axis_ipv6udp_copy.last = alloca i1
  %m_axis_icmp_copy.data = alloca i512
  %m_axis_icmp_copy.keep = alloca i64
  %m_axis_icmp_copy.strb = alloca i64
  %m_axis_icmp_copy.last = alloca i1
  %m_axis_udp_copy.data = alloca i512
  %m_axis_udp_copy.keep = alloca i64
  %m_axis_udp_copy.strb = alloca i64
  %m_axis_udp_copy.last = alloca i1
  %m_axis_tcp_copy.data = alloca i512
  %m_axis_tcp_copy.keep = alloca i64
  %m_axis_tcp_copy.strb = alloca i64
  %m_axis_tcp_copy.last = alloca i1
  %m_axis_roce_copy.data = alloca i512
  %m_axis_roce_copy.keep = alloca i64
  %m_axis_roce_copy.strb = alloca i64
  %m_axis_roce_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_raw, i512* %s_axis_raw_copy.data, i64* %s_axis_raw_copy.keep, i64* %s_axis_raw_copy.strb, i1* %s_axis_raw_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_arp, i512* %m_axis_arp_copy.data, i64* %m_axis_arp_copy.keep, i64* %m_axis_arp_copy.strb, i1* %m_axis_arp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_icmpv6, i512* %m_axis_icmpv6_copy.data, i64* %m_axis_icmpv6_copy.keep, i64* %m_axis_icmpv6_copy.strb, i1* %m_axis_icmpv6_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_ipv6udp, i512* %m_axis_ipv6udp_copy.data, i64* %m_axis_ipv6udp_copy.keep, i64* %m_axis_ipv6udp_copy.strb, i1* %m_axis_ipv6udp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_icmp, i512* %m_axis_icmp_copy.data, i64* %m_axis_icmp_copy.keep, i64* %m_axis_icmp_copy.strb, i1* %m_axis_icmp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_udp, i512* %m_axis_udp_copy.data, i64* %m_axis_udp_copy.keep, i64* %m_axis_udp_copy.strb, i1* %m_axis_udp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_tcp, i512* %m_axis_tcp_copy.data, i64* %m_axis_tcp_copy.keep, i64* %m_axis_tcp_copy.strb, i1* %m_axis_tcp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_roce, i512* %m_axis_roce_copy.data, i64* %m_axis_roce_copy.keep, i64* %m_axis_roce_copy.strb, i1* %m_axis_roce_copy.last)
  call void @apatb_ip_handler_top_hw(i512* %s_axis_raw_copy.data, i64* %s_axis_raw_copy.keep, i64* %s_axis_raw_copy.strb, i1* %s_axis_raw_copy.last, i512* %m_axis_arp_copy.data, i64* %m_axis_arp_copy.keep, i64* %m_axis_arp_copy.strb, i1* %m_axis_arp_copy.last, i512* %m_axis_icmpv6_copy.data, i64* %m_axis_icmpv6_copy.keep, i64* %m_axis_icmpv6_copy.strb, i1* %m_axis_icmpv6_copy.last, i512* %m_axis_ipv6udp_copy.data, i64* %m_axis_ipv6udp_copy.keep, i64* %m_axis_ipv6udp_copy.strb, i1* %m_axis_ipv6udp_copy.last, i512* %m_axis_icmp_copy.data, i64* %m_axis_icmp_copy.keep, i64* %m_axis_icmp_copy.strb, i1* %m_axis_icmp_copy.last, i512* %m_axis_udp_copy.data, i64* %m_axis_udp_copy.keep, i64* %m_axis_udp_copy.strb, i1* %m_axis_udp_copy.last, i512* %m_axis_tcp_copy.data, i64* %m_axis_tcp_copy.keep, i64* %m_axis_tcp_copy.strb, i1* %m_axis_tcp_copy.last, i512* %m_axis_roce_copy.data, i64* %m_axis_roce_copy.keep, i64* %m_axis_roce_copy.strb, i1* %m_axis_roce_copy.last, %"struct.ap_uint<32>"* %myIpAddress)
  call fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_raw, i512* %s_axis_raw_copy.data, i64* %s_axis_raw_copy.keep, i64* %s_axis_raw_copy.strb, i1* %s_axis_raw_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_arp, i512* %m_axis_arp_copy.data, i64* %m_axis_arp_copy.keep, i64* %m_axis_arp_copy.strb, i1* %m_axis_arp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_icmpv6, i512* %m_axis_icmpv6_copy.data, i64* %m_axis_icmpv6_copy.keep, i64* %m_axis_icmpv6_copy.strb, i1* %m_axis_icmpv6_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_ipv6udp, i512* %m_axis_ipv6udp_copy.data, i64* %m_axis_ipv6udp_copy.keep, i64* %m_axis_ipv6udp_copy.strb, i1* %m_axis_ipv6udp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_icmp, i512* %m_axis_icmp_copy.data, i64* %m_axis_icmp_copy.keep, i64* %m_axis_icmp_copy.strb, i1* %m_axis_icmp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_udp, i512* %m_axis_udp_copy.data, i64* %m_axis_udp_copy.keep, i64* %m_axis_udp_copy.strb, i1* %m_axis_udp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_tcp, i512* %m_axis_tcp_copy.data, i64* %m_axis_tcp_copy.keep, i64* %m_axis_tcp_copy.strb, i1* %m_axis_tcp_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_roce, i512* %m_axis_roce_copy.data, i64* %m_axis_roce_copy.keep, i64* %m_axis_roce_copy.strb, i1* %m_axis_roce_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V15913, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V261014, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V1591317, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V26101418, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V48121620, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V159131721, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V2610141822, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V3711151923, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V4812162024, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.3" %_V_last_V5) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V15913, i64* %_V_keep_V261014, i64* %_V_strb_V371115, i1* %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V1591317, i64* %_V_keep_V26101418, i64* %_V_strb_V37111519, i1* %_V_last_V48121620, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V159131721, i64* %_V_keep_V2610141822, i64* %_V_strb_V3711151923, i1* %_V_last_V4812162024, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V15913, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V261014, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V1591317, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V26101418, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V48121620, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V159131721, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V2610141822, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V3711151923, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V4812162024, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.3" %_V_last_V5) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %4, i512* %_V_data_V15913, i64* %_V_keep_V261014, i64* %_V_strb_V371115, i1* %_V_last_V481216)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %5, i512* %_V_data_V1591317, i64* %_V_keep_V26101418, i64* %_V_strb_V37111519, i1* %_V_last_V48121620)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %6, i512* %_V_data_V159131721, i64* %_V_keep_V2610141822, i64* %_V_strb_V3711151923, i1* %_V_last_V4812162024)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %7, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.176"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.176"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i512
  %4 = alloca i64
  %5 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i512* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i512* %3 to i8*
  %9 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile i512, i512* %3
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<512>"* %11 to i512*
  store i512 %10, i512* %12
  %13 = bitcast i64* %5 to i8*
  %14 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i64, i64* %5
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  store i64 %15, i64* %17
  %18 = bitcast i64* %4 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i64, i64* %4
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<64>"* %21 to i64*
  store i64 %20, i64* %22
  %23 = bitcast i1* %2 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %2 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.182"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.185"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.185"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<512>"* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<64>"* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_ip_handler_top_hw(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"struct.ap_uint<32>"*)

define void @ip_handler_top_hw_stub_wrapper(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"struct.ap_uint<32>"*) #5 {
entry:
  %33 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %34 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %35 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %36 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %37 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %38 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %39 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %40 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %33, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %34, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %35, i512* %8, i64* %9, i64* %10, i1* %11, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %36, i512* %12, i64* %13, i64* %14, i1* %15, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %37, i512* %16, i64* %17, i64* %18, i1* %19, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %38, i512* %20, i64* %21, i64* %22, i1* %23, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %39, i512* %24, i64* %25, i64* %26, i1* %27, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %40, i512* %28, i64* %29, i64* %30, i1* %31)
  call void @ip_handler_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %33, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %34, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %35, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %36, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %37, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %38, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %39, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %40, %"struct.ap_uint<32>"* %32)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %33, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %34, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %35, i512* %8, i64* %9, i64* %10, i1* %11, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %36, i512* %12, i64* %13, i64* %14, i1* %15, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %37, i512* %16, i64* %17, i64* %18, i1* %19, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %38, i512* %20, i64* %21, i64* %22, i1* %23, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %39, i512* %24, i64* %25, i64* %26, i1* %27, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %40, i512* %28, i64* %29, i64* %30, i1* %31)
  ret void
}

declare void @ip_handler_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"struct.ap_uint<32>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
