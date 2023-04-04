; ModuleID = '/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/ipv4/ipv4_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ipv4Meta, 0>" = type { %struct.ipv4Meta }
%struct.ipv4Meta = type { %"struct.ap_uint<32>", %"struct.ap_uint<16>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
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
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_ipv4_top_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_rx_data, %"class.hls::stream<ipv4Meta, 0>"* %m_axis_rx_meta, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_rx_data, %"class.hls::stream<ipv4Meta, 0>"* %s_axis_tx_meta, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_tx_data, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_tx_data, %"struct.ap_uint<32>"* nocapture readonly %local_ipv4_address, %"struct.ap_uint<8>"* nocapture readonly %protocol) local_unnamed_addr #1 {
entry:
  %s_axis_rx_data_copy.data = alloca i512
  %s_axis_rx_data_copy.keep = alloca i64
  %s_axis_rx_data_copy.strb = alloca i64
  %s_axis_rx_data_copy.last = alloca i1
  %m_axis_rx_meta_copy = alloca i48, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i48* %m_axis_rx_meta_copy) ]
  %m_axis_rx_data_copy.data = alloca i512
  %m_axis_rx_data_copy.keep = alloca i64
  %m_axis_rx_data_copy.strb = alloca i64
  %m_axis_rx_data_copy.last = alloca i1
  %s_axis_tx_meta_copy = alloca i48, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i48* %s_axis_tx_meta_copy) ]
  %s_axis_tx_data_copy.data = alloca i512
  %s_axis_tx_data_copy.keep = alloca i64
  %s_axis_tx_data_copy.strb = alloca i64
  %s_axis_tx_data_copy.last = alloca i1
  %m_axis_tx_data_copy.data = alloca i512
  %m_axis_tx_data_copy.keep = alloca i64
  %m_axis_tx_data_copy.strb = alloca i64
  %m_axis_tx_data_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_rx_data, i512* %s_axis_rx_data_copy.data, i64* %s_axis_rx_data_copy.keep, i64* %s_axis_rx_data_copy.strb, i1* %s_axis_rx_data_copy.last, %"class.hls::stream<ipv4Meta, 0>"* %m_axis_rx_meta, i48* nonnull align 512 %m_axis_rx_meta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_rx_data, i512* %m_axis_rx_data_copy.data, i64* %m_axis_rx_data_copy.keep, i64* %m_axis_rx_data_copy.strb, i1* %m_axis_rx_data_copy.last, %"class.hls::stream<ipv4Meta, 0>"* %s_axis_tx_meta, i48* nonnull align 512 %s_axis_tx_meta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_tx_data, i512* %s_axis_tx_data_copy.data, i64* %s_axis_tx_data_copy.keep, i64* %s_axis_tx_data_copy.strb, i1* %s_axis_tx_data_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_tx_data, i512* %m_axis_tx_data_copy.data, i64* %m_axis_tx_data_copy.keep, i64* %m_axis_tx_data_copy.strb, i1* %m_axis_tx_data_copy.last)
  call void @apatb_ipv4_top_hw(i512* %s_axis_rx_data_copy.data, i64* %s_axis_rx_data_copy.keep, i64* %s_axis_rx_data_copy.strb, i1* %s_axis_rx_data_copy.last, i48* %m_axis_rx_meta_copy, i512* %m_axis_rx_data_copy.data, i64* %m_axis_rx_data_copy.keep, i64* %m_axis_rx_data_copy.strb, i1* %m_axis_rx_data_copy.last, i48* %s_axis_tx_meta_copy, i512* %s_axis_tx_data_copy.data, i64* %s_axis_tx_data_copy.keep, i64* %s_axis_tx_data_copy.strb, i1* %s_axis_tx_data_copy.last, i512* %m_axis_tx_data_copy.data, i64* %m_axis_tx_data_copy.keep, i64* %m_axis_tx_data_copy.strb, i1* %m_axis_tx_data_copy.last, %"struct.ap_uint<32>"* %local_ipv4_address, %"struct.ap_uint<8>"* %protocol)
  call fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_rx_data, i512* %s_axis_rx_data_copy.data, i64* %s_axis_rx_data_copy.keep, i64* %s_axis_rx_data_copy.strb, i1* %s_axis_rx_data_copy.last, %"class.hls::stream<ipv4Meta, 0>"* %m_axis_rx_meta, i48* nonnull align 512 %m_axis_rx_meta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_rx_data, i512* %m_axis_rx_data_copy.data, i64* %m_axis_rx_data_copy.keep, i64* %m_axis_rx_data_copy.strb, i1* %m_axis_rx_data_copy.last, %"class.hls::stream<ipv4Meta, 0>"* %s_axis_tx_meta, i48* nonnull align 512 %s_axis_tx_meta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %s_axis_tx_data, i512* %s_axis_tx_data_copy.data, i64* %s_axis_tx_data_copy.keep, i64* %s_axis_tx_data_copy.strb, i1* %s_axis_tx_data_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %m_axis_tx_data, i512* %m_axis_tx_data_copy.data, i64* %m_axis_tx_data_copy.keep, i64* %m_axis_tx_data_copy.strb, i1* %m_axis_tx_data_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<ipv4Meta, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V4, %"class.hls::stream<ipv4Meta, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.3" %_V_last_V48) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipv4Meta, 0>.285"(i48* align 512 %2, %"class.hls::stream<ipv4Meta, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipv4Meta, 0>.285"(i48* align 512 %5, %"class.hls::stream<ipv4Meta, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<ipv4Meta, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V4, %"class.hls::stream<ipv4Meta, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="14.3" %_V_last_V48) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipv4Meta, 0>"(%"class.hls::stream<ipv4Meta, 0>"* %1, i48* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipv4Meta, 0>"(%"class.hls::stream<ipv4Meta, 0>"* %4, i48* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %6, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %7, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i1* %_V_last_V48)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipv4Meta, 0>"(%"class.hls::stream<ipv4Meta, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<ipv4Meta, 0>"* %0, null
  %3 = icmp eq i48* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ipv4Meta, 0>.279"(%"class.hls::stream<ipv4Meta, 0>"* nonnull %0, i48* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ipv4Meta, 0>.279"(%"class.hls::stream<ipv4Meta, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i48* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca i48
  %3 = alloca %"class.hls::stream<ipv4Meta, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i48* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i48* %2 to i8*
  %7 = bitcast i48* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i48, i48* %2
  %9 = call { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<ipv4Meta, 0>s.i48"(i48 %8)
  %newret = extractvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 0
  %oldret1 = insertvalue %struct.ipv4Meta undef, %"struct.ap_uint<32>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 1
  %oldret3 = insertvalue %struct.ipv4Meta %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %oldret = insertvalue %"class.hls::stream<ipv4Meta, 0>" undef, %struct.ipv4Meta %oldret3, 0
  store %"class.hls::stream<ipv4Meta, 0>" %oldret, %"class.hls::stream<ipv4Meta, 0>"* %3
  %10 = bitcast %"class.hls::stream<ipv4Meta, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<ipv4Meta, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<ipv4Meta, 0>s.i48"(i48 %A) #6 {
  %1 = and i48 %A, 4294967295
  %2 = trunc i48 %1 to i32
  %.0 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.01, 0
  %.03 = insertvalue %struct.ipv4Meta undef, %"struct.ap_uint<32>" %.02, 0
  %3 = and i48 %A, -4294967296
  %4 = lshr i48 %3, 32
  %5 = trunc i48 %4 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.ipv4Meta %.03, %"struct.ap_uint<16>" %.06, 1
  %oldret = extractvalue %struct.ipv4Meta %.1, 0
  %newret = insertvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } undef, %"struct.ap_uint<32>" %oldret, 0
  %oldret1 = extractvalue %struct.ipv4Meta %.1, 1
  %newret2 = insertvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret, %"struct.ap_uint<16>" %oldret1, 1
  ret { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret2
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipv4Meta, 0>.285"(i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ipv4Meta, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq i48* %0, null
  %3 = icmp eq %"class.hls::stream<ipv4Meta, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ipv4Meta, 0>.288"(i48* nonnull align 512 %0, %"class.hls::stream<ipv4Meta, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ipv4Meta, 0>.288"(i48* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ipv4Meta, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ipv4Meta, 0>"
  %3 = alloca i48
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ipv4Meta, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ipv4Meta, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ipv4Meta, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ipv4Meta, 0>", %"class.hls::stream<ipv4Meta, 0>"* %2
  %9 = call i48 @"_llvm.fpga.pack.bits.i48.s_class.hls::stream<ipv4Meta, 0>s"(%"class.hls::stream<ipv4Meta, 0>" %8)
  store i48 %9, i48* %3
  %10 = bitcast i48* %3 to i8*
  %11 = bitcast i48* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i48 @"_llvm.fpga.pack.bits.i48.s_class.hls::stream<ipv4Meta, 0>s"(%"class.hls::stream<ipv4Meta, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<ipv4Meta, 0>" %A, 0
  %A.0.0 = extractvalue %struct.ipv4Meta %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.0.0, 0
  %1 = zext i32 %A.0.0.0.0.0 to i48
  %A.0.1 = extractvalue %struct.ipv4Meta %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i48
  %3 = shl i48 %2, 32
  %4 = or i48 %3, %1
  ret i48 %4
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.300"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.300"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i512* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i512* %2 to i8*
  %9 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile i512, i512* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<512>"* %11 to i512*
  store i512 %10, i512* %12
  %13 = bitcast i64* %4 to i8*
  %14 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i64, i64* %4
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  store i64 %15, i64* %17
  %18 = bitcast i64* %3 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i64, i64* %3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<64>"* %21 to i64*
  store i64 %20, i64* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %30, i8* %31)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.309"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.309"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
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
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_ipv4_top_hw(i512*, i64*, i64*, i1*, i48*, i512*, i64*, i64*, i1*, i48*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"struct.ap_uint<32>"*, %"struct.ap_uint<8>"*)

define void @ipv4_top_hw_stub_wrapper(i512*, i64*, i64*, i1*, i48*, i512*, i64*, i64*, i1*, i48*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"struct.ap_uint<32>"*, %"struct.ap_uint<8>"*) #7 {
entry:
  %20 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %21 = alloca %"class.hls::stream<ipv4Meta, 0>"
  %22 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %23 = alloca %"class.hls::stream<ipv4Meta, 0>"
  %24 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %25 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %20, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<ipv4Meta, 0>"* %21, i48* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %22, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<ipv4Meta, 0>"* %23, i48* %9, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %24, i512* %10, i64* %11, i64* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %25, i512* %14, i64* %15, i64* %16, i1* %17)
  call void @ipv4_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %20, %"class.hls::stream<ipv4Meta, 0>"* %21, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %22, %"class.hls::stream<ipv4Meta, 0>"* %23, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %24, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %25, %"struct.ap_uint<32>"* %18, %"struct.ap_uint<8>"* %19)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %20, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<ipv4Meta, 0>"* %21, i48* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %22, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<ipv4Meta, 0>"* %23, i48* %9, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %24, i512* %10, i64* %11, i64* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %25, i512* %14, i64* %15, i64* %16, i1* %17)
  ret void
}

declare void @ipv4_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<ipv4Meta, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<ipv4Meta, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<8>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { alwaysinline nounwind readnone }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
