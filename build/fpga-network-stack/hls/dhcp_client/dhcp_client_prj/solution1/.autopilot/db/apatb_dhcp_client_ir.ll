; ModuleID = '/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/dhcp_client/dhcp_client_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<bool, 0>" = type { i1 }
%"class.hls::stream<udpMetadata, 0>" = type { %struct.udpMetadata }
%struct.udpMetadata = type { %struct.sockaddr_in, %struct.sockaddr_in }
%struct.sockaddr_in = type { %"struct.ap_uint<16>", %"struct.ap_uint<32>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<ap_uint<16>, 0>" = type { %"struct.ap_uint<16>" }
%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<64>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<64>, 0, 0, 0>" = type { %"struct.ap_uint<64>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"class.hls::stream<bool, 0>" }
%"struct.ap_uint<48>" = type { %"struct.ap_int_base<48, false>" }
%"struct.ap_int_base<48, false>" = type { %"struct.ssdm_int<48, false>" }
%"struct.ssdm_int<48, false>" = type { i48 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_dhcp_client_ir(%"class.hls::stream<ap_uint<16>, 0>"* %openPort, %"class.hls::stream<bool, 0>"* %confirmPortStatus, %"class.hls::stream<udpMetadata, 0>"* %dataInMeta, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %dataIn, %"class.hls::stream<udpMetadata, 0>"* %dataOutMeta, %"class.hls::stream<ap_uint<16>, 0>"* %dataOutLength, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %dataOut, %"struct.ap_uint<1>"* %dhcpEnable, %"struct.ap_uint<32>"* %inputIpAddress, %"struct.ap_uint<32>"* %dhcpIpAddressOut, %"struct.ap_uint<48>"* %myMacAddress) local_unnamed_addr #1 {
entry:
  %openPort_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %openPort_copy) ]
  %confirmPortStatus_copy = alloca %"class.hls::stream<bool, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<bool, 0>"* %confirmPortStatus_copy) ]
  %dataInMeta_copy = alloca %"class.hls::stream<udpMetadata, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<udpMetadata, 0>"* %dataInMeta_copy) ]
  %dataIn_copy.data = alloca i64
  %dataIn_copy.keep = alloca i8
  %dataIn_copy.strb = alloca i8
  %dataIn_copy.last = alloca i1
  %dataOutMeta_copy = alloca i96, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i96* %dataOutMeta_copy) ]
  %dataOutLength_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %dataOutLength_copy) ]
  %dataOut_copy.data = alloca i64
  %dataOut_copy.keep = alloca i8
  %dataOut_copy.strb = alloca i8
  %dataOut_copy.last = alloca i1
  %dhcpEnable_copy = alloca i1, align 512
  %inputIpAddress_copy = alloca i32, align 512
  %dhcpIpAddressOut_copy = alloca i32, align 512
  %myMacAddress_copy = alloca i48, align 512
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<16>, 0>"* %openPort, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %openPort_copy, %"class.hls::stream<bool, 0>"* %confirmPortStatus, %"class.hls::stream<bool, 0>"* nonnull align 512 %confirmPortStatus_copy, %"class.hls::stream<udpMetadata, 0>"* %dataInMeta, %"class.hls::stream<udpMetadata, 0>"* nonnull align 512 %dataInMeta_copy, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %dataIn, i64* %dataIn_copy.data, i8* %dataIn_copy.keep, i8* %dataIn_copy.strb, i1* %dataIn_copy.last, %"class.hls::stream<udpMetadata, 0>"* %dataOutMeta, i96* nonnull align 512 %dataOutMeta_copy, %"class.hls::stream<ap_uint<16>, 0>"* %dataOutLength, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %dataOutLength_copy, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %dataOut, i64* %dataOut_copy.data, i8* %dataOut_copy.keep, i8* %dataOut_copy.strb, i1* %dataOut_copy.last, %"struct.ap_uint<1>"* %dhcpEnable, i1* nonnull align 512 %dhcpEnable_copy, %"struct.ap_uint<32>"* %inputIpAddress, i32* nonnull align 512 %inputIpAddress_copy, %"struct.ap_uint<32>"* %dhcpIpAddressOut, i32* nonnull align 512 %dhcpIpAddressOut_copy, %"struct.ap_uint<48>"* %myMacAddress, i48* nonnull align 512 %myMacAddress_copy)
  call void @apatb_dhcp_client_hw(%"class.hls::stream<ap_uint<16>, 0>"* %openPort_copy, %"class.hls::stream<bool, 0>"* %confirmPortStatus_copy, %"class.hls::stream<udpMetadata, 0>"* %dataInMeta_copy, i64* %dataIn_copy.data, i8* %dataIn_copy.keep, i8* %dataIn_copy.strb, i1* %dataIn_copy.last, i96* %dataOutMeta_copy, %"class.hls::stream<ap_uint<16>, 0>"* %dataOutLength_copy, i64* %dataOut_copy.data, i8* %dataOut_copy.keep, i8* %dataOut_copy.strb, i1* %dataOut_copy.last, i1* %dhcpEnable_copy, i32* %inputIpAddress_copy, i32* %dhcpIpAddressOut_copy, i48* %myMacAddress_copy)
  call fastcc void @copy_out(%"class.hls::stream<ap_uint<16>, 0>"* %openPort, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %openPort_copy, %"class.hls::stream<bool, 0>"* %confirmPortStatus, %"class.hls::stream<bool, 0>"* nonnull align 512 %confirmPortStatus_copy, %"class.hls::stream<udpMetadata, 0>"* %dataInMeta, %"class.hls::stream<udpMetadata, 0>"* nonnull align 512 %dataInMeta_copy, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %dataIn, i64* %dataIn_copy.data, i8* %dataIn_copy.keep, i8* %dataIn_copy.strb, i1* %dataIn_copy.last, %"class.hls::stream<udpMetadata, 0>"* %dataOutMeta, i96* nonnull align 512 %dataOutMeta_copy, %"class.hls::stream<ap_uint<16>, 0>"* %dataOutLength, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %dataOutLength_copy, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %dataOut, i64* %dataOut_copy.data, i8* %dataOut_copy.keep, i8* %dataOut_copy.strb, i1* %dataOut_copy.last, %"struct.ap_uint<1>"* %dhcpEnable, i1* nonnull align 512 %dhcpEnable_copy, %"struct.ap_uint<32>"* %inputIpAddress, i32* nonnull align 512 %inputIpAddress_copy, %"struct.ap_uint<32>"* %dhcpIpAddressOut, i32* nonnull align 512 %dhcpIpAddressOut_copy, %"struct.ap_uint<48>"* %myMacAddress, i48* nonnull align 512 %myMacAddress_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"*, %"class.hls::stream<bool, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<udpMetadata, 0>"*, %"class.hls::stream<udpMetadata, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V, %"class.hls::stream<udpMetadata, 0>"*, i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.0" %_V_data_V1, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.1" %_V_keep_V2, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.3" %_V_last_V4, %"struct.ap_uint<1>"* readonly, i1* noalias align 512, %"struct.ap_uint<32>"* readonly, i32* noalias align 512, %"struct.ap_uint<32>"* readonly, i32* noalias align 512, %"struct.ap_uint<48>"* readonly, i48* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %1, %"class.hls::stream<ap_uint<16>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* align 512 %3, %"class.hls::stream<bool, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>"(%"class.hls::stream<udpMetadata, 0>"* align 512 %5, %"class.hls::stream<udpMetadata, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>.210"(i96* align 512 %8, %"class.hls::stream<udpMetadata, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %10, %"class.hls::stream<ap_uint<16>, 0>"* %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(i64* %_V_data_V1, i8* %_V_keep_V2, i8* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.193"(i1* align 512 %13, %"struct.ap_uint<1>"* %12)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* align 512 %15, %"struct.ap_uint<32>"* %14)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* align 512 %17, %"struct.ap_uint<32>"* %16)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>"(i48* align 512 %19, %"struct.ap_uint<48>"* %18)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<16>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<16>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<16>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<16>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<16>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<16>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<16>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<16>, 0>", %"class.hls::stream<ap_uint<16>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<16>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<bool, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<bool, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* nonnull align 512 %0, %"class.hls::stream<bool, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<bool, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<bool, 0>", %"class.hls::stream<bool, 0>"* %2
  %8 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<bool, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>"(%"class.hls::stream<udpMetadata, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<udpMetadata, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<udpMetadata, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<udpMetadata, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<udpMetadata, 0>"(%"class.hls::stream<udpMetadata, 0>"* nonnull align 512 %0, %"class.hls::stream<udpMetadata, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<udpMetadata, 0>"(%"class.hls::stream<udpMetadata, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<udpMetadata, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<udpMetadata, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<udpMetadata, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<udpMetadata, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<udpMetadata, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<udpMetadata, 0>", %"class.hls::stream<udpMetadata, 0>"* %2
  %8 = bitcast %"class.hls::stream<udpMetadata, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<udpMetadata, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* noalias, i1* noalias readonly align 512) unnamed_addr #5 {
entry:
  %2 = icmp eq %"struct.ap_uint<1>"* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>"(i48* noalias align 512, %"struct.ap_uint<48>"* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i48* %0, null
  %3 = icmp eq %"struct.ap_uint<48>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<48>", %"struct.ap_uint<48>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i48, i48* %.0.0.04, align 8
  store i48 %5, i48* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"*, %"class.hls::stream<bool, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<udpMetadata, 0>"*, %"class.hls::stream<udpMetadata, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V, %"class.hls::stream<udpMetadata, 0>"*, i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.0" %_V_data_V1, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.1" %_V_keep_V2, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.3" %_V_last_V4, %"struct.ap_uint<1>"*, i1* noalias readonly align 512, %"struct.ap_uint<32>"*, i32* noalias readonly align 512, %"struct.ap_uint<32>"*, i32* noalias readonly align 512, %"struct.ap_uint<48>"*, i48* noalias readonly align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %2, %"class.hls::stream<bool, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>"(%"class.hls::stream<udpMetadata, 0>"* %4, %"class.hls::stream<udpMetadata, 0>"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.228"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %6, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>.201"(%"class.hls::stream<udpMetadata, 0>"* %7, i96* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %9, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.228"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %11, i64* %_V_data_V1, i8* %_V_keep_V2, i8* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %12, i1* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.184"(%"struct.ap_uint<32>"* %14, i32* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.184"(%"struct.ap_uint<32>"* %16, i32* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>.171"(%"struct.ap_uint<48>"* %18, i48* align 512 %19)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>.171"(%"struct.ap_uint<48>"* noalias, i48* noalias readonly align 512) unnamed_addr #5 {
entry:
  %2 = icmp eq %"struct.ap_uint<48>"* %0, null
  %3 = icmp eq i48* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<48>", %"struct.ap_uint<48>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i48, i48* %1, align 512
  store i48 %5, i48* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* noalias align 512, %"struct.ap_uint<32>"* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"struct.ap_uint<32>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %.0.0.04, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.184"(%"struct.ap_uint<32>"* noalias, i32* noalias readonly align 512) unnamed_addr #5 {
entry:
  %2 = icmp eq %"struct.ap_uint<32>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %1, align 512
  store i32 %5, i32* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.193"(i1* noalias align 512, %"struct.ap_uint<1>"* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq %"struct.ap_uint<1>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i1* %.0.0.04 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>.201"(%"class.hls::stream<udpMetadata, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<udpMetadata, 0>"* %0, null
  %3 = icmp eq i96* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<udpMetadata, 0>.204"(%"class.hls::stream<udpMetadata, 0>"* nonnull %0, i96* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<udpMetadata, 0>.204"(%"class.hls::stream<udpMetadata, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i96* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i96
  %3 = alloca %"class.hls::stream<udpMetadata, 0>"
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
  %9 = call { %struct.sockaddr_in, %struct.sockaddr_in } @"_llvm.fpga.unpack.bits.s_class.hls::stream<udpMetadata, 0>s.i96"(i96 %8)
  %newret = extractvalue { %struct.sockaddr_in, %struct.sockaddr_in } %9, 0
  %oldret1 = insertvalue %struct.udpMetadata undef, %struct.sockaddr_in %newret, 0
  %newret2 = extractvalue { %struct.sockaddr_in, %struct.sockaddr_in } %9, 1
  %oldret3 = insertvalue %struct.udpMetadata %oldret1, %struct.sockaddr_in %newret2, 1
  %oldret = insertvalue %"class.hls::stream<udpMetadata, 0>" undef, %struct.udpMetadata %oldret3, 0
  store %"class.hls::stream<udpMetadata, 0>" %oldret, %"class.hls::stream<udpMetadata, 0>"* %3
  %10 = bitcast %"class.hls::stream<udpMetadata, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<udpMetadata, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %struct.sockaddr_in, %struct.sockaddr_in } @"_llvm.fpga.unpack.bits.s_class.hls::stream<udpMetadata, 0>s.i96"(i96 %A) #7 {
  %1 = trunc i96 %A to i48
  %2 = and i48 %1, 65535
  %3 = trunc i48 %2 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %3, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.sockaddr_in undef, %"struct.ap_uint<16>" %.02, 0
  %4 = and i48 %1, -65536
  %5 = lshr i48 %4, 16
  %6 = trunc i48 %5 to i32
  %.04 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %6, 0
  %.05 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.05, 0
  %.1 = insertvalue %struct.sockaddr_in %.03, %"struct.ap_uint<32>" %.06, 1
  %.07 = insertvalue %struct.udpMetadata undef, %struct.sockaddr_in %.1, 0
  %7 = and i96 %A, -281474976710656
  %8 = lshr i96 %7, 48
  %9 = trunc i96 %8 to i48
  %10 = and i48 %9, 65535
  %11 = trunc i48 %10 to i16
  %.08 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %11, 0
  %.09 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.08, 0
  %.010 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.09, 0
  %.011 = insertvalue %struct.sockaddr_in undef, %"struct.ap_uint<16>" %.010, 0
  %12 = and i48 %9, -65536
  %13 = lshr i48 %12, 16
  %14 = trunc i48 %13 to i32
  %.012 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %14, 0
  %.013 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.012, 0
  %.014 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.013, 0
  %.115 = insertvalue %struct.sockaddr_in %.011, %"struct.ap_uint<32>" %.014, 1
  %.116 = insertvalue %struct.udpMetadata %.07, %struct.sockaddr_in %.115, 1
  %oldret = extractvalue %struct.udpMetadata %.116, 0
  %newret = insertvalue { %struct.sockaddr_in, %struct.sockaddr_in } undef, %struct.sockaddr_in %oldret, 0
  %oldret1 = extractvalue %struct.udpMetadata %.116, 1
  %newret2 = insertvalue { %struct.sockaddr_in, %struct.sockaddr_in } %newret, %struct.sockaddr_in %oldret1, 1
  ret { %struct.sockaddr_in, %struct.sockaddr_in } %newret2
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<udpMetadata, 0>.210"(i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<udpMetadata, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i96* %0, null
  %3 = icmp eq %"class.hls::stream<udpMetadata, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<udpMetadata, 0>.213"(i96* nonnull align 512 %0, %"class.hls::stream<udpMetadata, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<udpMetadata, 0>.213"(i96* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<udpMetadata, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<udpMetadata, 0>"
  %3 = alloca i96
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<udpMetadata, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<udpMetadata, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<udpMetadata, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<udpMetadata, 0>", %"class.hls::stream<udpMetadata, 0>"* %2
  %9 = call i96 @"_llvm.fpga.pack.bits.i96.s_class.hls::stream<udpMetadata, 0>s"(%"class.hls::stream<udpMetadata, 0>" %8)
  store i96 %9, i96* %3
  %10 = bitcast i96* %3 to i8*
  %11 = bitcast i96* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i96 @"_llvm.fpga.pack.bits.i96.s_class.hls::stream<udpMetadata, 0>s"(%"class.hls::stream<udpMetadata, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<udpMetadata, 0>" %A, 0
  %A.0.0 = extractvalue %struct.udpMetadata %A.0, 0
  %A.0.0.0 = extractvalue %struct.sockaddr_in %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0.0 to i48
  %A.0.0.1 = extractvalue %struct.sockaddr_in %A.0.0, 1
  %A.0.0.1.0 = extractvalue %"struct.ap_uint<32>" %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.1.0.0, 0
  %2 = zext i32 %A.0.0.1.0.0.0 to i48
  %3 = shl i48 %2, 16
  %4 = or i48 %3, %1
  %5 = zext i48 %4 to i96
  %A.0.1 = extractvalue %struct.udpMetadata %A.0, 1
  %A.0.1.0 = extractvalue %struct.sockaddr_in %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0.0, 0
  %A.0.1.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0.0, 0
  %6 = zext i16 %A.0.1.0.0.0.0 to i48
  %A.0.1.1 = extractvalue %struct.sockaddr_in %A.0.1, 1
  %A.0.1.1.0 = extractvalue %"struct.ap_uint<32>" %A.0.1.1, 0
  %A.0.1.1.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.1.1.0, 0
  %A.0.1.1.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.1.1.0.0, 0
  %7 = zext i32 %A.0.1.1.0.0.0 to i48
  %8 = shl i48 %7, 16
  %9 = or i48 %8, %6
  %10 = zext i48 %9 to i96
  %11 = shl i96 %10, 48
  %12 = or i96 %11, %5
  ret i96 %12
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.222"(i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.222"(i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<64>"* %8 to i64*
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<8>"* %12 to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %_V_keep_V)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<8>"* %14 to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %_V_strb_V)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %17 = bitcast %"struct.ap_uint<1>"* %16 to i1*
  %18 = bitcast i1* %17 to i8*
  %19 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.228"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.231"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* nonnull align 512 %0, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.231"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i8
  %5 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i64* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_8(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i64* %3 to i8*
  %9 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_pop_8(i8* %8, i8* %9)
  %10 = load volatile i64, i64* %3
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<64>"* %11 to i64*
  store i64 %10, i64* %12
  call void @fpga_fifo_pop_1(i8* %5, i8* %_V_keep_V)
  %13 = load volatile i8, i8* %5
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %15 = bitcast %"struct.ap_uint<8>"* %14 to i8*
  store i8 %13, i8* %15
  call void @fpga_fifo_pop_1(i8* %4, i8* %_V_strb_V)
  %16 = load volatile i8, i8* %4
  %17 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %18 = bitcast %"struct.ap_uint<8>"* %17 to i8*
  store i8 %16, i8* %18
  %19 = bitcast i1* %2 to i8*
  %20 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i1* %2 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i1
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  store i1 %23, i1* %25
  %26 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %26, i8* %27)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_dhcp_client_hw(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<bool, 0>"*, %"class.hls::stream<udpMetadata, 0>"*, i64*, i8*, i8*, i1*, i96*, %"class.hls::stream<ap_uint<16>, 0>"*, i64*, i8*, i8*, i1*, i1*, i32*, i32*, i48*)

define void @dhcp_client_hw_stub_wrapper(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<bool, 0>"*, %"class.hls::stream<udpMetadata, 0>"*, i64*, i8*, i8*, i1*, i96*, %"class.hls::stream<ap_uint<16>, 0>"*, i64*, i8*, i8*, i1*, i1*, i32*, i32*, i48*) #8 {
entry:
  %17 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %18 = alloca %"class.hls::stream<udpMetadata, 0>"
  %19 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %20 = alloca %"struct.ap_uint<1>"
  %21 = alloca %"struct.ap_uint<32>"
  %22 = alloca %"struct.ap_uint<32>"
  %23 = alloca %"struct.ap_uint<48>"
  call void @copy_out(%"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<bool, 0>"* null, %"class.hls::stream<bool, 0>"* %1, %"class.hls::stream<udpMetadata, 0>"* null, %"class.hls::stream<udpMetadata, 0>"* %2, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %17, i64* %3, i8* %4, i8* %5, i1* %6, %"class.hls::stream<udpMetadata, 0>"* %18, i96* %7, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %8, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %19, i64* %9, i8* %10, i8* %11, i1* %12, %"struct.ap_uint<1>"* %20, i1* %13, %"struct.ap_uint<32>"* %21, i32* %14, %"struct.ap_uint<32>"* %22, i32* %15, %"struct.ap_uint<48>"* %23, i48* %16)
  call void @dhcp_client_hw_stub(%"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<bool, 0>"* %1, %"class.hls::stream<udpMetadata, 0>"* %2, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %17, %"class.hls::stream<udpMetadata, 0>"* %18, %"class.hls::stream<ap_uint<16>, 0>"* %8, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %19, %"struct.ap_uint<1>"* %20, %"struct.ap_uint<32>"* %21, %"struct.ap_uint<32>"* %22, %"struct.ap_uint<48>"* %23)
  call void @copy_in(%"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<bool, 0>"* null, %"class.hls::stream<bool, 0>"* %1, %"class.hls::stream<udpMetadata, 0>"* null, %"class.hls::stream<udpMetadata, 0>"* %2, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %17, i64* %3, i8* %4, i8* %5, i1* %6, %"class.hls::stream<udpMetadata, 0>"* %18, i96* %7, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %8, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %19, i64* %9, i8* %10, i8* %11, i1* %12, %"struct.ap_uint<1>"* %20, i1* %13, %"struct.ap_uint<32>"* %21, i32* %14, %"struct.ap_uint<32>"* %22, i32* %15, %"struct.ap_uint<48>"* %23, i48* %16)
  ret void
}

declare void @dhcp_client_hw_stub(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<bool, 0>"*, %"class.hls::stream<udpMetadata, 0>"*, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, %"class.hls::stream<udpMetadata, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<48>"*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

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
