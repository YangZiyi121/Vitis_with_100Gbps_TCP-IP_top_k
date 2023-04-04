; ModuleID = '/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/hash_table/hash_table_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<htLookupReq<64>, 0>" = type { %"struct.htLookupReq<64>" }
%"struct.htLookupReq<64>" = type { %"struct.ap_uint<64>", i32 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"class.hls::stream<htUpdateReq<64, 16>, 0>" = type { %"struct.htUpdateReq<64, 16>" }
%"struct.htUpdateReq<64, 16>" = type { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"class.hls::stream<htLookupResp<64, 16>, 0>" = type { %"struct.htLookupResp<64, 16>" }
%"struct.htLookupResp<64, 16>" = type { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 }
%"class.hls::stream<htUpdateResp<64, 16>, 0>" = type { %"struct.htUpdateResp<64, 16>" }
%"struct.htUpdateResp<64, 16>" = type { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_hash_table_top_ir(%"class.hls::stream<htLookupReq<64>, 0>"* %s_axis_lup_req, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %s_axis_upd_req, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %m_axis_lup_rsp, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %m_axis_upd_rsp, %"struct.ap_uint<16>"* %regInsertFailureCount) local_unnamed_addr #1 {
entry:
  %s_axis_lup_req_copy = alloca i96, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i96* %s_axis_lup_req_copy) ]
  %s_axis_upd_req_copy = alloca i144, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i144* %s_axis_upd_req_copy) ]
  %m_axis_lup_rsp_copy = alloca i120, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i120* %m_axis_lup_rsp_copy) ]
  %m_axis_upd_rsp_copy = alloca i152, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i152* %m_axis_upd_rsp_copy) ]
  %regInsertFailureCount_copy = alloca i16, align 512
  call fastcc void @copy_in(%"class.hls::stream<htLookupReq<64>, 0>"* %s_axis_lup_req, i96* nonnull align 512 %s_axis_lup_req_copy, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %s_axis_upd_req, i144* nonnull align 512 %s_axis_upd_req_copy, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %m_axis_lup_rsp, i120* nonnull align 512 %m_axis_lup_rsp_copy, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %m_axis_upd_rsp, i152* nonnull align 512 %m_axis_upd_rsp_copy, %"struct.ap_uint<16>"* %regInsertFailureCount, i16* nonnull align 512 %regInsertFailureCount_copy)
  call void @apatb_hash_table_top_hw(i96* %s_axis_lup_req_copy, i144* %s_axis_upd_req_copy, i120* %m_axis_lup_rsp_copy, i152* %m_axis_upd_rsp_copy, i16* %regInsertFailureCount_copy)
  call fastcc void @copy_out(%"class.hls::stream<htLookupReq<64>, 0>"* %s_axis_lup_req, i96* nonnull align 512 %s_axis_lup_req_copy, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %s_axis_upd_req, i144* nonnull align 512 %s_axis_upd_req_copy, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %m_axis_lup_rsp, i120* nonnull align 512 %m_axis_lup_rsp_copy, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %m_axis_upd_rsp, i152* nonnull align 512 %m_axis_upd_rsp_copy, %"struct.ap_uint<16>"* %regInsertFailureCount, i16* nonnull align 512 %regInsertFailureCount_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<htLookupReq<64>, 0>"*, i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateReq<64, 16>, 0>"*, i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htLookupResp<64, 16>, 0>"*, i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateResp<64, 16>, 0>"*, i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ap_uint<16>"* readonly, i16* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupReq<64>, 0>.71"(i96* align 512 %1, %"class.hls::stream<htLookupReq<64>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>"(i144* align 512 %3, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>.93"(i120* align 512 %5, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>"(i152* align 512 %7, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(i16* align 512 %9, %"struct.ap_uint<16>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupReq<64>, 0>"(%"class.hls::stream<htLookupReq<64>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<htLookupReq<64>, 0>"* %0, null
  %3 = icmp eq i96* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupReq<64>, 0>"(%"class.hls::stream<htLookupReq<64>, 0>"* nonnull %0, i96* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupReq<64>, 0>"(%"class.hls::stream<htLookupReq<64>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i96* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i96
  %3 = alloca %"class.hls::stream<htLookupReq<64>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i96* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i96* %2 to i8*
  %7 = bitcast i96* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i96, i96* %2
  %9 = call { %"struct.ap_uint<64>", i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htLookupReq<64>, 0>s.i96"(i96 %8)
  %newret = extractvalue { %"struct.ap_uint<64>", i32 } %9, 0
  %oldret1 = insertvalue %"struct.htLookupReq<64>" undef, %"struct.ap_uint<64>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<64>", i32 } %9, 1
  %oldret3 = insertvalue %"struct.htLookupReq<64>" %oldret1, i32 %newret2, 1
  %oldret = insertvalue %"class.hls::stream<htLookupReq<64>, 0>" undef, %"struct.htLookupReq<64>" %oldret3, 0
  store %"class.hls::stream<htLookupReq<64>, 0>" %oldret, %"class.hls::stream<htLookupReq<64>, 0>"* %3
  %10 = bitcast %"class.hls::stream<htLookupReq<64>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<htLookupReq<64>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>"(i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateReq<64, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i144* %0, null
  %3 = icmp eq %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>"(i144* nonnull align 512 %0, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>"(i144* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateReq<64, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<htUpdateReq<64, 16>, 0>"
  %3 = alloca i144
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_24(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_24(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<htUpdateReq<64, 16>, 0>", %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %2
  %9 = call i144 @"_llvm.fpga.pack.bits.i144.s_class.hls::stream<htUpdateReq<64, 16>, 0>s"(%"class.hls::stream<htUpdateReq<64, 16>, 0>" %8)
  store i144 %9, i144* %3
  %10 = bitcast i144* %3 to i8*
  %11 = bitcast i144* %0 to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>"(%"class.hls::stream<htLookupResp<64, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<htLookupResp<64, 16>, 0>"* %0, null
  %3 = icmp eq i120* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>"(%"class.hls::stream<htLookupResp<64, 16>, 0>"* nonnull %0, i120* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>"(%"class.hls::stream<htLookupResp<64, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i120* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i120
  %3 = alloca %"class.hls::stream<htLookupResp<64, 16>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i120* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i120* %2 to i8*
  %7 = bitcast i120* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i120, i120* %2
  %9 = call { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htLookupResp<64, 16>, 0>s.i120"(i120 %8)
  %newret = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 0
  %oldret1 = insertvalue %"struct.htLookupResp<64, 16>" undef, %"struct.ap_uint<64>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 1
  %oldret3 = insertvalue %"struct.htLookupResp<64, 16>" %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 2
  %oldret5 = insertvalue %"struct.htLookupResp<64, 16>" %oldret3, i1 %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 3
  %oldret7 = insertvalue %"struct.htLookupResp<64, 16>" %oldret5, i32 %newret6, 3
  %oldret = insertvalue %"class.hls::stream<htLookupResp<64, 16>, 0>" undef, %"struct.htLookupResp<64, 16>" %oldret7, 0
  store %"class.hls::stream<htLookupResp<64, 16>, 0>" %oldret, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %3
  %10 = bitcast %"class.hls::stream<htLookupResp<64, 16>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<htLookupResp<64, 16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>"(i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateResp<64, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i152* %0, null
  %3 = icmp eq %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>"(i152* nonnull align 512 %0, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>"(i152* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateResp<64, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<htUpdateResp<64, 16>, 0>"
  %3 = alloca i145
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_24(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_24(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<htUpdateResp<64, 16>, 0>", %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %2
  %9 = call i145 @"_llvm.fpga.pack.bits.i145.s_class.hls::stream<htUpdateResp<64, 16>, 0>s"(%"class.hls::stream<htUpdateResp<64, 16>, 0>" %8)
  store i145 %9, i145* %3
  %10 = bitcast i145* %3 to i8*
  %11 = bitcast i152* %0 to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(i16* noalias align 512, %"struct.ap_uint<16>"* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq %"struct.ap_uint<16>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %.0.0.04, align 2
  store i16 %5, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<htLookupReq<64>, 0>"*, i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateReq<64, 16>, 0>"*, i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htLookupResp<64, 16>, 0>"*, i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htUpdateResp<64, 16>, 0>"*, i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ap_uint<16>"*, i16* noalias readonly align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupReq<64>, 0>"(%"class.hls::stream<htLookupReq<64>, 0>"* %0, i96* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>.82"(%"class.hls::stream<htUpdateReq<64, 16>, 0>"* %2, i144* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>"(%"class.hls::stream<htLookupResp<64, 16>, 0>"* %4, i120* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>.104"(%"class.hls::stream<htUpdateResp<64, 16>, 0>"* %6, i152* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.64"(%"struct.ap_uint<16>"* %8, i16* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.64"(%"struct.ap_uint<16>"* noalias, i16* noalias readonly align 512) unnamed_addr #5 {
entry:
  %2 = icmp eq %"struct.ap_uint<16>"* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %1, align 512
  store i16 %5, i16* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupReq<64>, 0>.71"(i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htLookupReq<64>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i96* %0, null
  %3 = icmp eq %"class.hls::stream<htLookupReq<64>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupReq<64>, 0>.74"(i96* nonnull align 512 %0, %"class.hls::stream<htLookupReq<64>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupReq<64>, 0>.74"(i96* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htLookupReq<64>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<htLookupReq<64>, 0>"
  %3 = alloca i96
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<htLookupReq<64>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<htLookupReq<64>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<htLookupReq<64>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<htLookupReq<64>, 0>", %"class.hls::stream<htLookupReq<64>, 0>"* %2
  %9 = call i96 @"_llvm.fpga.pack.bits.i96.s_class.hls::stream<htLookupReq<64>, 0>s"(%"class.hls::stream<htLookupReq<64>, 0>" %8)
  store i96 %9, i96* %3
  %10 = bitcast i96* %3 to i8*
  %11 = bitcast i96* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i96 @"_llvm.fpga.pack.bits.i96.s_class.hls::stream<htLookupReq<64>, 0>s"(%"class.hls::stream<htLookupReq<64>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<htLookupReq<64>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.htLookupReq<64>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<64>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<64, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<64, false>" %A.0.0.0.0, 0
  %1 = zext i64 %A.0.0.0.0.0 to i96
  %A.0.1 = extractvalue %"struct.htLookupReq<64>" %A.0, 1
  %2 = zext i32 %A.0.1 to i96
  %3 = shl i96 %2, 64
  %4 = or i96 %3, %1
  ret i96 %4
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<64>", i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htLookupReq<64>, 0>s.i96"(i96 %A) #7 {
  %1 = and i96 %A, 18446744073709551615
  %2 = trunc i96 %1 to i64
  %.0 = insertvalue %"struct.ssdm_int<64, false>" undef, i64 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<64, false>" undef, %"struct.ssdm_int<64, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<64>" undef, %"struct.ap_int_base<64, false>" %.01, 0
  %.03 = insertvalue %"struct.htLookupReq<64>" undef, %"struct.ap_uint<64>" %.02, 0
  %3 = and i96 %A, -18446744073709551616
  %4 = lshr i96 %3, 64
  %5 = trunc i96 %4 to i32
  %.1 = insertvalue %"struct.htLookupReq<64>" %.03, i32 %5, 1
  %oldret = extractvalue %"struct.htLookupReq<64>" %.1, 0
  %newret = insertvalue { %"struct.ap_uint<64>", i32 } undef, %"struct.ap_uint<64>" %oldret, 0
  %oldret1 = extractvalue %"struct.htLookupReq<64>" %.1, 1
  %newret2 = insertvalue { %"struct.ap_uint<64>", i32 } %newret, i32 %oldret1, 1
  ret { %"struct.ap_uint<64>", i32 } %newret2
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>.82"(%"class.hls::stream<htUpdateReq<64, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %0, null
  %3 = icmp eq i144* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>.85"(%"class.hls::stream<htUpdateReq<64, 16>, 0>"* nonnull %0, i144* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateReq<64, 16>, 0>.85"(%"class.hls::stream<htUpdateReq<64, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i144* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i144
  %3 = alloca %"class.hls::stream<htUpdateReq<64, 16>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i144* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i144* %2 to i8*
  %7 = bitcast i144* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile i144, i144* %2
  %9 = call { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htUpdateReq<64, 16>, 0>s.i144"(i144 %8)
  %newret = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %9, 0
  %oldret1 = insertvalue %"struct.htUpdateReq<64, 16>" undef, i32 %newret, 0
  %newret2 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %9, 1
  %oldret3 = insertvalue %"struct.htUpdateReq<64, 16>" %oldret1, %"struct.ap_uint<64>" %newret2, 1
  %newret4 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %9, 2
  %oldret5 = insertvalue %"struct.htUpdateReq<64, 16>" %oldret3, %"struct.ap_uint<16>" %newret4, 2
  %newret6 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %9, 3
  %oldret7 = insertvalue %"struct.htUpdateReq<64, 16>" %oldret5, i32 %newret6, 3
  %oldret = insertvalue %"class.hls::stream<htUpdateReq<64, 16>, 0>" undef, %"struct.htUpdateReq<64, 16>" %oldret7, 0
  store %"class.hls::stream<htUpdateReq<64, 16>, 0>" %oldret, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %3
  %10 = bitcast %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_24(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htUpdateReq<64, 16>, 0>s.i144"(i144 %A) #7 {
  %1 = and i144 %A, 4294967295
  %2 = trunc i144 %1 to i32
  %.0 = insertvalue %"struct.htUpdateReq<64, 16>" undef, i32 %2, 0
  %3 = and i144 %A, 79228162514264337589248983040
  %4 = lshr i144 %3, 32
  %5 = trunc i144 %4 to i64
  %.01 = insertvalue %"struct.ssdm_int<64, false>" undef, i64 %5, 0
  %.02 = insertvalue %"struct.ap_int_base<64, false>" undef, %"struct.ssdm_int<64, false>" %.01, 0
  %.03 = insertvalue %"struct.ap_uint<64>" undef, %"struct.ap_int_base<64, false>" %.02, 0
  %.1 = insertvalue %"struct.htUpdateReq<64, 16>" %.0, %"struct.ap_uint<64>" %.03, 1
  %6 = and i144 %A, 5192217630372313364192902785269760
  %7 = lshr i144 %6, 96
  %8 = trunc i144 %7 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %8, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.2 = insertvalue %"struct.htUpdateReq<64, 16>" %.1, %"struct.ap_uint<16>" %.06, 2
  %9 = and i144 %A, -5192296858534827628530496329220096
  %10 = lshr i144 %9, 112
  %11 = trunc i144 %10 to i32
  %.3 = insertvalue %"struct.htUpdateReq<64, 16>" %.2, i32 %11, 3
  %oldret = extractvalue %"struct.htUpdateReq<64, 16>" %.3, 0
  %newret = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } undef, i32 %oldret, 0
  %oldret1 = extractvalue %"struct.htUpdateReq<64, 16>" %.3, 1
  %newret2 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %newret, %"struct.ap_uint<64>" %oldret1, 1
  %oldret3 = extractvalue %"struct.htUpdateReq<64, 16>" %.3, 2
  %newret4 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %newret2, %"struct.ap_uint<16>" %oldret3, 2
  %oldret5 = extractvalue %"struct.htUpdateReq<64, 16>" %.3, 3
  %newret6 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %newret4, i32 %oldret5, 3
  ret { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i32 } %newret6
}

; Function Attrs: alwaysinline nounwind readnone
define internal i144 @"_llvm.fpga.pack.bits.i144.s_class.hls::stream<htUpdateReq<64, 16>, 0>s"(%"class.hls::stream<htUpdateReq<64, 16>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<htUpdateReq<64, 16>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.htUpdateReq<64, 16>" %A.0, 0
  %1 = zext i32 %A.0.0 to i144
  %A.0.1 = extractvalue %"struct.htUpdateReq<64, 16>" %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<64>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<64, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<64, false>" %A.0.1.0.0, 0
  %2 = zext i64 %A.0.1.0.0.0 to i144
  %3 = shl i144 %2, 32
  %4 = or i144 %3, %1
  %A.0.2 = extractvalue %"struct.htUpdateReq<64, 16>" %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.2.0.0, 0
  %5 = zext i16 %A.0.2.0.0.0 to i144
  %6 = shl i144 %5, 96
  %7 = or i144 %4, %6
  %A.0.3 = extractvalue %"struct.htUpdateReq<64, 16>" %A.0, 3
  %8 = zext i32 %A.0.3 to i144
  %9 = shl i144 %8, 112
  %10 = or i144 %7, %9
  ret i144 %10
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>.93"(i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htLookupResp<64, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i120* %0, null
  %3 = icmp eq %"class.hls::stream<htLookupResp<64, 16>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>.96"(i120* nonnull align 512 %0, %"class.hls::stream<htLookupResp<64, 16>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htLookupResp<64, 16>, 0>.96"(i120* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<htLookupResp<64, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<htLookupResp<64, 16>, 0>"
  %3 = alloca i113
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<htLookupResp<64, 16>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<htLookupResp<64, 16>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<htLookupResp<64, 16>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<htLookupResp<64, 16>, 0>", %"class.hls::stream<htLookupResp<64, 16>, 0>"* %2
  %9 = call i113 @"_llvm.fpga.pack.bits.i113.s_class.hls::stream<htLookupResp<64, 16>, 0>s"(%"class.hls::stream<htLookupResp<64, 16>, 0>" %8)
  store i113 %9, i113* %3
  %10 = bitcast i113* %3 to i8*
  %11 = bitcast i120* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i113 @"_llvm.fpga.pack.bits.i113.s_class.hls::stream<htLookupResp<64, 16>, 0>s"(%"class.hls::stream<htLookupResp<64, 16>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<htLookupResp<64, 16>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.htLookupResp<64, 16>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<64>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<64, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<64, false>" %A.0.0.0.0, 0
  %1 = zext i64 %A.0.0.0.0.0 to i113
  %A.0.1 = extractvalue %"struct.htLookupResp<64, 16>" %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i113
  %3 = shl i113 %2, 64
  %4 = or i113 %3, %1
  %A.0.2 = extractvalue %"struct.htLookupResp<64, 16>" %A.0, 2
  %5 = zext i1 %A.0.2 to i113
  %6 = shl i113 %5, 80
  %7 = or i113 %4, %6
  %A.0.3 = extractvalue %"struct.htLookupResp<64, 16>" %A.0, 3
  %8 = zext i32 %A.0.3 to i113
  %9 = shl i113 %8, 81
  %10 = or i113 %7, %9
  ret i113 %10
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htLookupResp<64, 16>, 0>s.i120"(i120 %A) #7 {
  %1 = trunc i120 %A to i113
  %2 = and i113 %1, 18446744073709551615
  %3 = trunc i113 %2 to i64
  %.0 = insertvalue %"struct.ssdm_int<64, false>" undef, i64 %3, 0
  %.01 = insertvalue %"struct.ap_int_base<64, false>" undef, %"struct.ssdm_int<64, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<64>" undef, %"struct.ap_int_base<64, false>" %.01, 0
  %.03 = insertvalue %"struct.htLookupResp<64, 16>" undef, %"struct.ap_uint<64>" %.02, 0
  %4 = and i113 %1, 1208907372870555465154560
  %5 = lshr i113 %4, 64
  %6 = trunc i113 %5 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %6, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %"struct.htLookupResp<64, 16>" %.03, %"struct.ap_uint<16>" %.06, 1
  %7 = and i113 %1, 1208925819614629174706176
  %8 = lshr i113 %7, 80
  %9 = trunc i113 %8 to i1
  %.2 = insertvalue %"struct.htLookupResp<64, 16>" %.1, i1 %9, 2
  %10 = and i113 %1, -2417851639229258349412352
  %11 = lshr i113 %10, 81
  %12 = trunc i113 %11 to i32
  %.3 = insertvalue %"struct.htLookupResp<64, 16>" %.2, i32 %12, 3
  %oldret = extractvalue %"struct.htLookupResp<64, 16>" %.3, 0
  %newret = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } undef, %"struct.ap_uint<64>" %oldret, 0
  %oldret1 = extractvalue %"struct.htLookupResp<64, 16>" %.3, 1
  %newret2 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret, %"struct.ap_uint<16>" %oldret1, 1
  %oldret3 = extractvalue %"struct.htLookupResp<64, 16>" %.3, 2
  %newret4 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret2, i1 %oldret3, 2
  %oldret5 = extractvalue %"struct.htLookupResp<64, 16>" %.3, 3
  %newret6 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret4, i32 %oldret5, 3
  ret { %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret6
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>.104"(%"class.hls::stream<htUpdateResp<64, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %0, null
  %3 = icmp eq i152* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>.107"(%"class.hls::stream<htUpdateResp<64, 16>, 0>"* nonnull %0, i152* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<htUpdateResp<64, 16>, 0>.107"(%"class.hls::stream<htUpdateResp<64, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i152* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i152
  %3 = alloca %"class.hls::stream<htUpdateResp<64, 16>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i152* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i152* %2 to i8*
  %7 = bitcast i152* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile i152, i152* %2
  %9 = call { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htUpdateResp<64, 16>, 0>s.i152"(i152 %8)
  %newret = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 0
  %oldret1 = insertvalue %"struct.htUpdateResp<64, 16>" undef, i32 %newret, 0
  %newret2 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 1
  %oldret3 = insertvalue %"struct.htUpdateResp<64, 16>" %oldret1, %"struct.ap_uint<64>" %newret2, 1
  %newret4 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 2
  %oldret5 = insertvalue %"struct.htUpdateResp<64, 16>" %oldret3, %"struct.ap_uint<16>" %newret4, 2
  %newret6 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 3
  %oldret7 = insertvalue %"struct.htUpdateResp<64, 16>" %oldret5, i1 %newret6, 3
  %newret8 = extractvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %9, 4
  %oldret9 = insertvalue %"struct.htUpdateResp<64, 16>" %oldret7, i32 %newret8, 4
  %oldret = insertvalue %"class.hls::stream<htUpdateResp<64, 16>, 0>" undef, %"struct.htUpdateResp<64, 16>" %oldret9, 0
  store %"class.hls::stream<htUpdateResp<64, 16>, 0>" %oldret, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %3
  %10 = bitcast %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_24(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<htUpdateResp<64, 16>, 0>s.i152"(i152 %A) #7 {
  %1 = trunc i152 %A to i145
  %2 = and i145 %1, 4294967295
  %3 = trunc i145 %2 to i32
  %.0 = insertvalue %"struct.htUpdateResp<64, 16>" undef, i32 %3, 0
  %4 = and i145 %1, 79228162514264337589248983040
  %5 = lshr i145 %4, 32
  %6 = trunc i145 %5 to i64
  %.01 = insertvalue %"struct.ssdm_int<64, false>" undef, i64 %6, 0
  %.02 = insertvalue %"struct.ap_int_base<64, false>" undef, %"struct.ssdm_int<64, false>" %.01, 0
  %.03 = insertvalue %"struct.ap_uint<64>" undef, %"struct.ap_int_base<64, false>" %.02, 0
  %.1 = insertvalue %"struct.htUpdateResp<64, 16>" %.0, %"struct.ap_uint<64>" %.03, 1
  %7 = and i145 %1, 5192217630372313364192902785269760
  %8 = lshr i145 %7, 96
  %9 = trunc i145 %8 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %9, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.2 = insertvalue %"struct.htUpdateResp<64, 16>" %.1, %"struct.ap_uint<16>" %.06, 2
  %10 = and i145 %1, 5192296858534827628530496329220096
  %11 = lshr i145 %10, 112
  %12 = trunc i145 %11 to i1
  %.3 = insertvalue %"struct.htUpdateResp<64, 16>" %.2, i1 %12, 3
  %13 = and i145 %1, -10384593717069655257060992658440192
  %14 = lshr i145 %13, 113
  %15 = trunc i145 %14 to i32
  %.4 = insertvalue %"struct.htUpdateResp<64, 16>" %.3, i32 %15, 4
  %oldret = extractvalue %"struct.htUpdateResp<64, 16>" %.4, 0
  %newret = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } undef, i32 %oldret, 0
  %oldret1 = extractvalue %"struct.htUpdateResp<64, 16>" %.4, 1
  %newret2 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret, %"struct.ap_uint<64>" %oldret1, 1
  %oldret3 = extractvalue %"struct.htUpdateResp<64, 16>" %.4, 2
  %newret4 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret2, %"struct.ap_uint<16>" %oldret3, 2
  %oldret5 = extractvalue %"struct.htUpdateResp<64, 16>" %.4, 3
  %newret6 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret4, i1 %oldret5, 3
  %oldret7 = extractvalue %"struct.htUpdateResp<64, 16>" %.4, 4
  %newret8 = insertvalue { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret6, i32 %oldret7, 4
  ret { i32, %"struct.ap_uint<64>", %"struct.ap_uint<16>", i1, i32 } %newret8
}

; Function Attrs: alwaysinline nounwind readnone
define internal i145 @"_llvm.fpga.pack.bits.i145.s_class.hls::stream<htUpdateResp<64, 16>, 0>s"(%"class.hls::stream<htUpdateResp<64, 16>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<htUpdateResp<64, 16>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.htUpdateResp<64, 16>" %A.0, 0
  %1 = zext i32 %A.0.0 to i145
  %A.0.1 = extractvalue %"struct.htUpdateResp<64, 16>" %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<64>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<64, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<64, false>" %A.0.1.0.0, 0
  %2 = zext i64 %A.0.1.0.0.0 to i145
  %3 = shl i145 %2, 32
  %4 = or i145 %3, %1
  %A.0.2 = extractvalue %"struct.htUpdateResp<64, 16>" %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.2.0.0, 0
  %5 = zext i16 %A.0.2.0.0.0 to i145
  %6 = shl i145 %5, 96
  %7 = or i145 %4, %6
  %A.0.3 = extractvalue %"struct.htUpdateResp<64, 16>" %A.0, 3
  %8 = zext i1 %A.0.3 to i145
  %9 = shl i145 %8, 112
  %10 = or i145 %7, %9
  %A.0.4 = extractvalue %"struct.htUpdateResp<64, 16>" %A.0, 4
  %11 = zext i32 %A.0.4 to i145
  %12 = shl i145 %11, 113
  %13 = or i145 %10, %12
  ret i145 %13
}

declare void @apatb_hash_table_top_hw(i96*, i144*, i120*, i152*, i16*)

define void @hash_table_top_hw_stub_wrapper(i96*, i144*, i120*, i152*, i16*) #8 {
entry:
  %5 = alloca %"class.hls::stream<htLookupReq<64>, 0>"
  %6 = alloca %"class.hls::stream<htUpdateReq<64, 16>, 0>"
  %7 = alloca %"class.hls::stream<htLookupResp<64, 16>, 0>"
  %8 = alloca %"class.hls::stream<htUpdateResp<64, 16>, 0>"
  %9 = alloca %"struct.ap_uint<16>"
  call void @copy_out(%"class.hls::stream<htLookupReq<64>, 0>"* %5, i96* %0, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %6, i144* %1, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %7, i120* %2, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %8, i152* %3, %"struct.ap_uint<16>"* %9, i16* %4)
  call void @hash_table_top_hw_stub(%"class.hls::stream<htLookupReq<64>, 0>"* %5, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %6, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %7, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %8, %"struct.ap_uint<16>"* %9)
  call void @copy_in(%"class.hls::stream<htLookupReq<64>, 0>"* %5, i96* %0, %"class.hls::stream<htUpdateReq<64, 16>, 0>"* %6, i144* %1, %"class.hls::stream<htLookupResp<64, 16>, 0>"* %7, i120* %2, %"class.hls::stream<htUpdateResp<64, 16>, 0>"* %8, i152* %3, %"struct.ap_uint<16>"* %9, i16* %4)
  ret void
}

declare void @hash_table_top_hw_stub(%"class.hls::stream<htLookupReq<64>, 0>"*, %"class.hls::stream<htUpdateReq<64, 16>, 0>"*, %"class.hls::stream<htLookupResp<64, 16>, 0>"*, %"class.hls::stream<htUpdateResp<64, 16>, 0>"*, %"struct.ap_uint<16>"*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_24(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_24(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_24(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { alwaysinline nounwind readnone }
attributes #8 = { "fpga.wrapper.func"="stub" }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
