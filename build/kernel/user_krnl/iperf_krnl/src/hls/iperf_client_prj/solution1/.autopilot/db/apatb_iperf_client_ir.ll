; ModuleID = '/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/kernel/user_krnl/iperf_krnl/src/hls/iperf_client_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<bool, 0>" = type { i1 }
%"class.hls::stream<appNotification, 0>" = type { %struct.appNotification }
%struct.appNotification = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"class.hls::stream<ipTuple, 0>" = type { %struct.ipTuple }
%struct.ipTuple = type { %"struct.ap_uint<32>", %"struct.ap_uint<16>" }
%"class.hls::stream<openStatus, 0>" = type { %struct.openStatus }
%struct.openStatus = type { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<ap_uint<16>, 0>" = type { %"struct.ap_uint<16>" }
%"class.hls::stream<appTxMeta, 0>" = type { %struct.appTxMeta }
%struct.appTxMeta = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>" }
%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 0>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"class.hls::stream<bool, 0>" }
%"class.hls::stream<appTxRsp, 0>" = type { %struct.appTxRsp }
%struct.appTxRsp = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" }
%"struct.ap_uint<30>" = type { %"struct.ap_int_base<30, false>" }
%"struct.ap_int_base<30, false>" = type { %"struct.ssdm_int<30, false>" }
%"struct.ssdm_int<30, false>" = type { i30 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<14>" = type { %"struct.ap_int_base<14, false>" }
%"struct.ap_int_base<14, false>" = type { %"struct.ssdm_int<14, false>" }
%"struct.ssdm_int<14, false>" = type { i14 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_iperf_client_ir(%"class.hls::stream<ap_uint<16>, 0>"* %listenPort, %"class.hls::stream<bool, 0>"* %listenPortStatus, %"class.hls::stream<appNotification, 0>"* %notifications, %"class.hls::stream<appTxMeta, 0>"* %readRequest, %"class.hls::stream<ap_uint<16>, 0>"* %rxMetaData, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxData, %"class.hls::stream<ipTuple, 0>"* %openConnection, %"class.hls::stream<openStatus, 0>"* %openConStatus, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnection, %"class.hls::stream<appTxMeta, 0>"* %txMetaData, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txData, %"class.hls::stream<appTxRsp, 0>"* %txStatus, %"struct.ap_uint<1>"* nocapture readonly %runExperiment, %"struct.ap_uint<1>"* nocapture readonly %dualModeEn, %"struct.ap_uint<14>"* nocapture readonly %useConn, %"struct.ap_uint<8>"* nocapture readonly %pkgWordCount, %"struct.ap_uint<8>"* nocapture readonly %packetGap, %"struct.ap_uint<32>"* nocapture readonly %timeInSeconds, %"struct.ap_uint<64>"* nocapture readonly %timeInCycles, %"struct.ap_uint<16>"* nocapture readonly %useIpAddr, %"struct.ap_uint<16>"* nocapture readonly %regBasePort, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress0, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress1, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress2, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress3, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress4, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress5, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress6, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress7, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress8, %"struct.ap_uint<32>"* nocapture readonly %regIpAddress9) local_unnamed_addr #1 {
entry:
  %listenPort_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %listenPort_copy) ]
  %listenPortStatus_copy = alloca %"class.hls::stream<bool, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<bool, 0>"* %listenPortStatus_copy) ]
  %notifications_copy = alloca i88, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i88* %notifications_copy) ]
  %readRequest_copy = alloca i32, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i32* %readRequest_copy) ]
  %rxMetaData_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %rxMetaData_copy) ]
  %rxData_copy.data = alloca i512
  %rxData_copy.keep = alloca i64
  %rxData_copy.strb = alloca i64
  %rxData_copy.last = alloca i1
  %openConnection_copy = alloca i48, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i48* %openConnection_copy) ]
  %openConStatus_copy = alloca i72, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i72* %openConStatus_copy) ]
  %closeConnection_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %closeConnection_copy) ]
  %txMetaData_copy = alloca i32, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i32* %txMetaData_copy) ]
  %txData_copy.data = alloca i512
  %txData_copy.keep = alloca i64
  %txData_copy.strb = alloca i64
  %txData_copy.last = alloca i1
  %txStatus_copy = alloca i64, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i64* %txStatus_copy) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<16>, 0>"* %listenPort, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %listenPort_copy, %"class.hls::stream<bool, 0>"* %listenPortStatus, %"class.hls::stream<bool, 0>"* nonnull align 512 %listenPortStatus_copy, %"class.hls::stream<appNotification, 0>"* %notifications, i88* nonnull align 512 %notifications_copy, %"class.hls::stream<appTxMeta, 0>"* %readRequest, i32* nonnull align 512 %readRequest_copy, %"class.hls::stream<ap_uint<16>, 0>"* %rxMetaData, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %rxMetaData_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxData, i512* %rxData_copy.data, i64* %rxData_copy.keep, i64* %rxData_copy.strb, i1* %rxData_copy.last, %"class.hls::stream<ipTuple, 0>"* %openConnection, i48* nonnull align 512 %openConnection_copy, %"class.hls::stream<openStatus, 0>"* %openConStatus, i72* nonnull align 512 %openConStatus_copy, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnection, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %closeConnection_copy, %"class.hls::stream<appTxMeta, 0>"* %txMetaData, i32* nonnull align 512 %txMetaData_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txData, i512* %txData_copy.data, i64* %txData_copy.keep, i64* %txData_copy.strb, i1* %txData_copy.last, %"class.hls::stream<appTxRsp, 0>"* %txStatus, i64* nonnull align 512 %txStatus_copy)
  call void @apatb_iperf_client_hw(%"class.hls::stream<ap_uint<16>, 0>"* %listenPort_copy, %"class.hls::stream<bool, 0>"* %listenPortStatus_copy, i88* %notifications_copy, i32* %readRequest_copy, %"class.hls::stream<ap_uint<16>, 0>"* %rxMetaData_copy, i512* %rxData_copy.data, i64* %rxData_copy.keep, i64* %rxData_copy.strb, i1* %rxData_copy.last, i48* %openConnection_copy, i72* %openConStatus_copy, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnection_copy, i32* %txMetaData_copy, i512* %txData_copy.data, i64* %txData_copy.keep, i64* %txData_copy.strb, i1* %txData_copy.last, i64* %txStatus_copy, %"struct.ap_uint<1>"* %runExperiment, %"struct.ap_uint<1>"* %dualModeEn, %"struct.ap_uint<14>"* %useConn, %"struct.ap_uint<8>"* %pkgWordCount, %"struct.ap_uint<8>"* %packetGap, %"struct.ap_uint<32>"* %timeInSeconds, %"struct.ap_uint<64>"* %timeInCycles, %"struct.ap_uint<16>"* %useIpAddr, %"struct.ap_uint<16>"* %regBasePort, %"struct.ap_uint<32>"* %regIpAddress0, %"struct.ap_uint<32>"* %regIpAddress1, %"struct.ap_uint<32>"* %regIpAddress2, %"struct.ap_uint<32>"* %regIpAddress3, %"struct.ap_uint<32>"* %regIpAddress4, %"struct.ap_uint<32>"* %regIpAddress5, %"struct.ap_uint<32>"* %regIpAddress6, %"struct.ap_uint<32>"* %regIpAddress7, %"struct.ap_uint<32>"* %regIpAddress8, %"struct.ap_uint<32>"* %regIpAddress9)
  call fastcc void @copy_out(%"class.hls::stream<ap_uint<16>, 0>"* %listenPort, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %listenPort_copy, %"class.hls::stream<bool, 0>"* %listenPortStatus, %"class.hls::stream<bool, 0>"* nonnull align 512 %listenPortStatus_copy, %"class.hls::stream<appNotification, 0>"* %notifications, i88* nonnull align 512 %notifications_copy, %"class.hls::stream<appTxMeta, 0>"* %readRequest, i32* nonnull align 512 %readRequest_copy, %"class.hls::stream<ap_uint<16>, 0>"* %rxMetaData, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %rxMetaData_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxData, i512* %rxData_copy.data, i64* %rxData_copy.keep, i64* %rxData_copy.strb, i1* %rxData_copy.last, %"class.hls::stream<ipTuple, 0>"* %openConnection, i48* nonnull align 512 %openConnection_copy, %"class.hls::stream<openStatus, 0>"* %openConStatus, i72* nonnull align 512 %openConStatus_copy, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnection, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %closeConnection_copy, %"class.hls::stream<appTxMeta, 0>"* %txMetaData, i32* nonnull align 512 %txMetaData_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txData, i512* %txData_copy.data, i64* %txData_copy.keep, i64* %txData_copy.strb, i1* %txData_copy.last, %"class.hls::stream<appTxRsp, 0>"* %txStatus, i64* nonnull align 512 %txStatus_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"*, %"class.hls::stream<bool, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appNotification, 0>"*, i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxMeta, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V, %"class.hls::stream<ipTuple, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<openStatus, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxMeta, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.3" %_V_last_V4, %"class.hls::stream<appTxRsp, 0>"*, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %1, %"class.hls::stream<ap_uint<16>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* align 512 %3, %"class.hls::stream<bool, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>"(i88* align 512 %5, %"class.hls::stream<appNotification, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxMeta, 0>"(i32* align 512 %7, %"class.hls::stream<appTxMeta, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %9, %"class.hls::stream<ap_uint<16>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.312"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>"(i48* align 512 %12, %"class.hls::stream<ipTuple, 0>"* %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>.274"(i72* align 512 %14, %"class.hls::stream<openStatus, 0>"* %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %16, %"class.hls::stream<ap_uint<16>, 0>"* %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxMeta, 0>"(i32* align 512 %18, %"class.hls::stream<appTxMeta, 0>"* %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.312"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>.291"(i64* align 512 %21, %"class.hls::stream<appTxRsp, 0>"* %20)
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>"(i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appNotification, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i88* %0, null
  %3 = icmp eq %"class.hls::stream<appNotification, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appNotification, 0>"(i88* nonnull align 512 %0, %"class.hls::stream<appNotification, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appNotification, 0>"(i88* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appNotification, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<appNotification, 0>"
  %3 = alloca i81
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<appNotification, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_12(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<appNotification, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<appNotification, 0>"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<appNotification, 0>", %"class.hls::stream<appNotification, 0>"* %2
  %9 = call i81 @"_llvm.fpga.pack.bits.i81.s_class.hls::stream<appNotification, 0>s"(%"class.hls::stream<appNotification, 0>" %8)
  store i81 %9, i81* %3
  %10 = bitcast i81* %3 to i8*
  %11 = bitcast i88* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>"(i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ipTuple, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i48* %0, null
  %3 = icmp eq %"class.hls::stream<ipTuple, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ipTuple, 0>"(i48* nonnull align 512 %0, %"class.hls::stream<ipTuple, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ipTuple, 0>"(i48* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ipTuple, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ipTuple, 0>"
  %3 = alloca i48
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ipTuple, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ipTuple, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ipTuple, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ipTuple, 0>", %"class.hls::stream<ipTuple, 0>"* %2
  %9 = call i48 @"_llvm.fpga.pack.bits.i48.s_class.hls::stream<ipTuple, 0>s"(%"class.hls::stream<ipTuple, 0>" %8)
  store i48 %9, i48* %3
  %10 = bitcast i48* %3 to i8*
  %11 = bitcast i48* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>"(%"class.hls::stream<openStatus, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<openStatus, 0>"* %0, null
  %3 = icmp eq i72* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<openStatus, 0>"(%"class.hls::stream<openStatus, 0>"* nonnull %0, i72* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<openStatus, 0>"(%"class.hls::stream<openStatus, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i72* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i72
  %3 = alloca %"class.hls::stream<openStatus, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i72* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i72* %2 to i8*
  %7 = bitcast i72* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i72, i72* %2
  %9 = call { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<openStatus, 0>s.i72"(i72 %8)
  %newret = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 0
  %oldret1 = insertvalue %struct.openStatus undef, %"struct.ap_uint<16>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 1
  %oldret3 = insertvalue %struct.openStatus %oldret1, %"struct.ap_uint<8>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 2
  %oldret5 = insertvalue %struct.openStatus %oldret3, %"struct.ap_uint<32>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 3
  %oldret7 = insertvalue %struct.openStatus %oldret5, %"struct.ap_uint<16>" %newret6, 3
  %oldret = insertvalue %"class.hls::stream<openStatus, 0>" undef, %struct.openStatus %oldret7, 0
  store %"class.hls::stream<openStatus, 0>" %oldret, %"class.hls::stream<openStatus, 0>"* %3
  %10 = bitcast %"class.hls::stream<openStatus, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<openStatus, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %10, i8* %11)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>"(%"class.hls::stream<appTxRsp, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<appTxRsp, 0>"* %0, null
  %3 = icmp eq i64* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appTxRsp, 0>"(%"class.hls::stream<appTxRsp, 0>"* nonnull %0, i64* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appTxRsp, 0>"(%"class.hls::stream<appTxRsp, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i64* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<appTxRsp, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %9 = call { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appTxRsp, 0>s.i64"(i64 %8)
  %newret = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %9, 0
  %oldret1 = insertvalue %struct.appTxRsp undef, %"struct.ap_uint<16>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %9, 1
  %oldret3 = insertvalue %struct.appTxRsp %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %9, 2
  %oldret5 = insertvalue %struct.appTxRsp %oldret3, %"struct.ap_uint<30>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %9, 3
  %oldret7 = insertvalue %struct.appTxRsp %oldret5, %"struct.ap_uint<2>" %newret6, 3
  %oldret = insertvalue %"class.hls::stream<appTxRsp, 0>" undef, %struct.appTxRsp %oldret7, 0
  store %"class.hls::stream<appTxRsp, 0>" %oldret, %"class.hls::stream<appTxRsp, 0>"* %3
  %10 = bitcast %"class.hls::stream<appTxRsp, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<appTxRsp, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %10, i8* %11)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"*, %"class.hls::stream<bool, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appNotification, 0>"*, i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxMeta, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V, %"class.hls::stream<ipTuple, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<openStatus, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxMeta, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="24.3" %_V_last_V4, %"class.hls::stream<appTxRsp, 0>"*, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %2, %"class.hls::stream<bool, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>.234"(%"class.hls::stream<appNotification, 0>"* %4, i88* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxMeta, 0>.255"(%"class.hls::stream<appTxMeta, 0>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %8, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %10, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>.262"(%"class.hls::stream<ipTuple, 0>"* %11, i48* align 512 %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>"(%"class.hls::stream<openStatus, 0>"* %13, i72* align 512 %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %15, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxMeta, 0>.255"(%"class.hls::stream<appTxMeta, 0>"* %17, i32* align 512 %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>"(%"class.hls::stream<appTxRsp, 0>"* %20, i64* align 512 %21)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>.234"(%"class.hls::stream<appNotification, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<appNotification, 0>"* %0, null
  %3 = icmp eq i88* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appNotification, 0>.237"(%"class.hls::stream<appNotification, 0>"* nonnull %0, i88* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appNotification, 0>.237"(%"class.hls::stream<appNotification, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i88* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i88
  %3 = alloca %"class.hls::stream<appNotification, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i88* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i88* %2 to i8*
  %7 = bitcast i88* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i88, i88* %2
  %9 = call { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appNotification, 0>s.i88"(i88 %8)
  %newret = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %9, 0
  %oldret1 = insertvalue %struct.appNotification undef, %"struct.ap_uint<16>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %9, 1
  %oldret3 = insertvalue %struct.appNotification %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %9, 2
  %oldret5 = insertvalue %struct.appNotification %oldret3, %"struct.ap_uint<32>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %9, 3
  %oldret7 = insertvalue %struct.appNotification %oldret5, %"struct.ap_uint<16>" %newret6, 3
  %newret8 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %9, 4
  %oldret9 = insertvalue %struct.appNotification %oldret7, i1 %newret8, 4
  %oldret = insertvalue %"class.hls::stream<appNotification, 0>" undef, %struct.appNotification %oldret9, 0
  store %"class.hls::stream<appNotification, 0>" %oldret, %"class.hls::stream<appNotification, 0>"* %3
  %10 = bitcast %"class.hls::stream<appNotification, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<appNotification, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appNotification, 0>s.i88"(i88 %A) #6 {
  %1 = trunc i88 %A to i81
  %2 = and i81 %1, 65535
  %3 = trunc i81 %2 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %3, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.appNotification undef, %"struct.ap_uint<16>" %.02, 0
  %4 = and i81 %1, 4294901760
  %5 = lshr i81 %4, 16
  %6 = trunc i81 %5 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %6, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.appNotification %.03, %"struct.ap_uint<16>" %.06, 1
  %7 = and i81 %1, 18446744069414584320
  %8 = lshr i81 %7, 32
  %9 = trunc i81 %8 to i32
  %.07 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %9, 0
  %.08 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.08, 0
  %.2 = insertvalue %struct.appNotification %.1, %"struct.ap_uint<32>" %.09, 2
  %10 = and i81 %1, 1208907372870555465154560
  %11 = lshr i81 %10, 64
  %12 = trunc i81 %11 to i16
  %.010 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %12, 0
  %.011 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.011, 0
  %.3 = insertvalue %struct.appNotification %.2, %"struct.ap_uint<16>" %.012, 3
  %13 = and i81 %1, -1208925819614629174706176
  %14 = lshr i81 %13, 80
  %15 = trunc i81 %14 to i1
  %.4 = insertvalue %struct.appNotification %.3, i1 %15, 4
  %oldret = extractvalue %struct.appNotification %.4, 0
  %newret = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } undef, %"struct.ap_uint<16>" %oldret, 0
  %oldret1 = extractvalue %struct.appNotification %.4, 1
  %newret2 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %newret, %"struct.ap_uint<16>" %oldret1, 1
  %oldret3 = extractvalue %struct.appNotification %.4, 2
  %newret4 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %newret2, %"struct.ap_uint<32>" %oldret3, 2
  %oldret5 = extractvalue %struct.appNotification %.4, 3
  %newret6 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %newret4, %"struct.ap_uint<16>" %oldret5, 3
  %oldret7 = extractvalue %struct.appNotification %.4, 4
  %newret8 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %newret6, i1 %oldret7, 4
  ret { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } %newret8
}

; Function Attrs: alwaysinline nounwind readnone
define internal i81 @"_llvm.fpga.pack.bits.i81.s_class.hls::stream<appNotification, 0>s"(%"class.hls::stream<appNotification, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<appNotification, 0>" %A, 0
  %A.0.0 = extractvalue %struct.appNotification %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i81
  %A.0.1 = extractvalue %struct.appNotification %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i81
  %3 = shl i81 %2, 16
  %4 = or i81 %3, %1
  %A.0.2 = extractvalue %struct.appNotification %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<32>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.2.0.0, 0
  %5 = zext i32 %A.0.2.0.0.0 to i81
  %6 = shl i81 %5, 32
  %7 = or i81 %4, %6
  %A.0.3 = extractvalue %struct.appNotification %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_uint<16>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.3.0.0, 0
  %8 = zext i16 %A.0.3.0.0.0 to i81
  %9 = shl i81 %8, 64
  %10 = or i81 %7, %9
  %A.0.4 = extractvalue %struct.appNotification %A.0, 4
  %11 = zext i1 %A.0.4 to i81
  %12 = shl i81 %11, 80
  %13 = or i81 %10, %12
  ret i81 %13
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxMeta, 0>"(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxMeta, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"class.hls::stream<appTxMeta, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appTxMeta, 0>.249"(i32* nonnull align 512 %0, %"class.hls::stream<appTxMeta, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appTxMeta, 0>.249"(i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxMeta, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<appTxMeta, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<appTxMeta, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<appTxMeta, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<appTxMeta, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<appTxMeta, 0>", %"class.hls::stream<appTxMeta, 0>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<appTxMeta, 0>s"(%"class.hls::stream<appTxMeta, 0>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<appTxMeta, 0>s"(%"class.hls::stream<appTxMeta, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<appTxMeta, 0>" %A, 0
  %A.0.0 = extractvalue %struct.appTxMeta %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i32
  %A.0.1 = extractvalue %struct.appTxMeta %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i32
  %3 = shl i32 %2, 16
  %4 = or i32 %3, %1
  ret i32 %4
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxMeta, 0>.255"(%"class.hls::stream<appTxMeta, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<appTxMeta, 0>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appTxMeta, 0>.258"(%"class.hls::stream<appTxMeta, 0>"* nonnull %0, i32* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appTxMeta, 0>.258"(%"class.hls::stream<appTxMeta, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<appTxMeta, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %9 = call { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appTxMeta, 0>s.i32"(i32 %8)
  %newret = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %9, 0
  %oldret1 = insertvalue %struct.appTxMeta undef, %"struct.ap_uint<16>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %9, 1
  %oldret3 = insertvalue %struct.appTxMeta %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %oldret = insertvalue %"class.hls::stream<appTxMeta, 0>" undef, %struct.appTxMeta %oldret3, 0
  store %"class.hls::stream<appTxMeta, 0>" %oldret, %"class.hls::stream<appTxMeta, 0>"* %3
  %10 = bitcast %"class.hls::stream<appTxMeta, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<appTxMeta, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appTxMeta, 0>s.i32"(i32 %A) #6 {
  %1 = and i32 %A, 65535
  %2 = trunc i32 %1 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.appTxMeta undef, %"struct.ap_uint<16>" %.02, 0
  %3 = and i32 %A, -65536
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.appTxMeta %.03, %"struct.ap_uint<16>" %.06, 1
  %oldret = extractvalue %struct.appTxMeta %.1, 0
  %newret = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } undef, %"struct.ap_uint<16>" %oldret, 0
  %oldret1 = extractvalue %struct.appTxMeta %.1, 1
  %newret2 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %newret, %"struct.ap_uint<16>" %oldret1, 1
  ret { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %newret2
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>.262"(%"class.hls::stream<ipTuple, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ipTuple, 0>"* %0, null
  %3 = icmp eq i48* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ipTuple, 0>.265"(%"class.hls::stream<ipTuple, 0>"* nonnull %0, i48* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ipTuple, 0>.265"(%"class.hls::stream<ipTuple, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i48* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i48
  %3 = alloca %"class.hls::stream<ipTuple, 0>"
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
  %9 = call { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<ipTuple, 0>s.i48"(i48 %8)
  %newret = extractvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 0
  %oldret1 = insertvalue %struct.ipTuple undef, %"struct.ap_uint<32>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %9, 1
  %oldret3 = insertvalue %struct.ipTuple %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %oldret = insertvalue %"class.hls::stream<ipTuple, 0>" undef, %struct.ipTuple %oldret3, 0
  store %"class.hls::stream<ipTuple, 0>" %oldret, %"class.hls::stream<ipTuple, 0>"* %3
  %10 = bitcast %"class.hls::stream<ipTuple, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<ipTuple, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<ipTuple, 0>s.i48"(i48 %A) #6 {
  %1 = and i48 %A, 4294967295
  %2 = trunc i48 %1 to i32
  %.0 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.01, 0
  %.03 = insertvalue %struct.ipTuple undef, %"struct.ap_uint<32>" %.02, 0
  %3 = and i48 %A, -4294967296
  %4 = lshr i48 %3, 32
  %5 = trunc i48 %4 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.ipTuple %.03, %"struct.ap_uint<16>" %.06, 1
  %oldret = extractvalue %struct.ipTuple %.1, 0
  %newret = insertvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } undef, %"struct.ap_uint<32>" %oldret, 0
  %oldret1 = extractvalue %struct.ipTuple %.1, 1
  %newret2 = insertvalue { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret, %"struct.ap_uint<16>" %oldret1, 1
  ret { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret2
}

; Function Attrs: alwaysinline nounwind readnone
define internal i48 @"_llvm.fpga.pack.bits.i48.s_class.hls::stream<ipTuple, 0>s"(%"class.hls::stream<ipTuple, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<ipTuple, 0>" %A, 0
  %A.0.0 = extractvalue %struct.ipTuple %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.0.0, 0
  %1 = zext i32 %A.0.0.0.0.0 to i48
  %A.0.1 = extractvalue %struct.ipTuple %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i48
  %3 = shl i48 %2, 32
  %4 = or i48 %3, %1
  ret i48 %4
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>.274"(i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<openStatus, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i72* %0, null
  %3 = icmp eq %"class.hls::stream<openStatus, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<openStatus, 0>.277"(i72* nonnull align 512 %0, %"class.hls::stream<openStatus, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<openStatus, 0>.277"(i72* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<openStatus, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<openStatus, 0>"
  %3 = alloca i72
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<openStatus, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_12(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<openStatus, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<openStatus, 0>"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<openStatus, 0>", %"class.hls::stream<openStatus, 0>"* %2
  %9 = call i72 @"_llvm.fpga.pack.bits.i72.s_class.hls::stream<openStatus, 0>s"(%"class.hls::stream<openStatus, 0>" %8)
  store i72 %9, i72* %3
  %10 = bitcast i72* %3 to i8*
  %11 = bitcast i72* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i72 @"_llvm.fpga.pack.bits.i72.s_class.hls::stream<openStatus, 0>s"(%"class.hls::stream<openStatus, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<openStatus, 0>" %A, 0
  %A.0.0 = extractvalue %struct.openStatus %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i72
  %A.0.1 = extractvalue %struct.openStatus %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<8>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.1.0.0, 0
  %2 = zext i8 %A.0.1.0.0.0 to i72
  %3 = shl i72 %2, 16
  %4 = or i72 %3, %1
  %A.0.2 = extractvalue %struct.openStatus %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<32>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.2.0.0, 0
  %5 = zext i32 %A.0.2.0.0.0 to i72
  %6 = shl i72 %5, 24
  %7 = or i72 %4, %6
  %A.0.3 = extractvalue %struct.openStatus %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_uint<16>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.3.0.0, 0
  %8 = zext i16 %A.0.3.0.0.0 to i72
  %9 = shl i72 %8, 56
  %10 = or i72 %7, %9
  ret i72 %10
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<openStatus, 0>s.i72"(i72 %A) #6 {
  %1 = and i72 %A, 65535
  %2 = trunc i72 %1 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.openStatus undef, %"struct.ap_uint<16>" %.02, 0
  %3 = and i72 %A, 16711680
  %4 = lshr i72 %3, 16
  %5 = trunc i72 %4 to i8
  %.04 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.05, 0
  %.1 = insertvalue %struct.openStatus %.03, %"struct.ap_uint<8>" %.06, 1
  %6 = and i72 %A, 72057594021150720
  %7 = lshr i72 %6, 24
  %8 = trunc i72 %7 to i32
  %.07 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %8, 0
  %.08 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.08, 0
  %.2 = insertvalue %struct.openStatus %.1, %"struct.ap_uint<32>" %.09, 2
  %9 = and i72 %A, -72057594037927936
  %10 = lshr i72 %9, 56
  %11 = trunc i72 %10 to i16
  %.010 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %11, 0
  %.011 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.011, 0
  %.3 = insertvalue %struct.openStatus %.2, %"struct.ap_uint<16>" %.012, 3
  %oldret = extractvalue %struct.openStatus %.3, 0
  %newret = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } undef, %"struct.ap_uint<16>" %oldret, 0
  %oldret1 = extractvalue %struct.openStatus %.3, 1
  %newret2 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret, %"struct.ap_uint<8>" %oldret1, 1
  %oldret3 = extractvalue %struct.openStatus %.3, 2
  %newret4 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret2, %"struct.ap_uint<32>" %oldret3, 2
  %oldret5 = extractvalue %struct.openStatus %.3, 3
  %newret6 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret4, %"struct.ap_uint<16>" %oldret5, 3
  ret { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } %newret6
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>.291"(i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxRsp, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq %"class.hls::stream<appTxRsp, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appTxRsp, 0>.294"(i64* nonnull align 512 %0, %"class.hls::stream<appTxRsp, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appTxRsp, 0>.294"(i64* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxRsp, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<appTxRsp, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<appTxRsp, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_12(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<appTxRsp, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<appTxRsp, 0>"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<appTxRsp, 0>", %"class.hls::stream<appTxRsp, 0>"* %2
  %9 = call i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<appTxRsp, 0>s"(%"class.hls::stream<appTxRsp, 0>" %8)
  store i64 %9, i64* %3
  %10 = bitcast i64* %3 to i8*
  %11 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<appTxRsp, 0>s"(%"class.hls::stream<appTxRsp, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<appTxRsp, 0>" %A, 0
  %A.0.0 = extractvalue %struct.appTxRsp %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i64
  %A.0.1 = extractvalue %struct.appTxRsp %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i64
  %3 = shl i64 %2, 16
  %4 = or i64 %3, %1
  %A.0.2 = extractvalue %struct.appTxRsp %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<30>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<30, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<30, false>" %A.0.2.0.0, 0
  %5 = zext i30 %A.0.2.0.0.0 to i64
  %6 = shl i64 %5, 32
  %7 = or i64 %4, %6
  %A.0.3 = extractvalue %struct.appTxRsp %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_uint<2>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_int_base<2, false>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<2, false>" %A.0.3.0.0, 0
  %8 = zext i2 %A.0.3.0.0.0 to i64
  %9 = shl i64 %8, 62
  %10 = or i64 %7, %9
  ret i64 %10
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appTxRsp, 0>s.i64"(i64 %A) #6 {
  %1 = and i64 %A, 65535
  %2 = trunc i64 %1 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.appTxRsp undef, %"struct.ap_uint<16>" %.02, 0
  %3 = and i64 %A, 4294901760
  %4 = lshr i64 %3, 16
  %5 = trunc i64 %4 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.appTxRsp %.03, %"struct.ap_uint<16>" %.06, 1
  %6 = and i64 %A, 4611686014132420608
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %7 to i30
  %.07 = insertvalue %"struct.ssdm_int<30, false>" undef, i30 %8, 0
  %.08 = insertvalue %"struct.ap_int_base<30, false>" undef, %"struct.ssdm_int<30, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<30>" undef, %"struct.ap_int_base<30, false>" %.08, 0
  %.2 = insertvalue %struct.appTxRsp %.1, %"struct.ap_uint<30>" %.09, 2
  %9 = and i64 %A, -4611686018427387904
  %10 = lshr i64 %9, 62
  %11 = trunc i64 %10 to i2
  %.010 = insertvalue %"struct.ssdm_int<2, false>" undef, i2 %11, 0
  %.011 = insertvalue %"struct.ap_int_base<2, false>" undef, %"struct.ssdm_int<2, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<2>" undef, %"struct.ap_int_base<2, false>" %.011, 0
  %.3 = insertvalue %struct.appTxRsp %.2, %"struct.ap_uint<2>" %.012, 3
  %oldret = extractvalue %struct.appTxRsp %.3, 0
  %newret = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } undef, %"struct.ap_uint<16>" %oldret, 0
  %oldret1 = extractvalue %struct.appTxRsp %.3, 1
  %newret2 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %newret, %"struct.ap_uint<16>" %oldret1, 1
  %oldret3 = extractvalue %struct.appTxRsp %.3, 2
  %newret4 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %newret2, %"struct.ap_uint<30>" %oldret3, 2
  %oldret5 = extractvalue %struct.appTxRsp %.3, 3
  %newret6 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %newret4, %"struct.ap_uint<2>" %oldret5, 3
  ret { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } %newret6
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.306"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i512
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i512* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i512* %5 to i8*
  %9 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile i512, i512* %5
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
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.312"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.315"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.315"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_iperf_client_hw(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<bool, 0>"*, i88*, i32*, %"class.hls::stream<ap_uint<16>, 0>"*, i512*, i64*, i64*, i1*, i48*, i72*, %"class.hls::stream<ap_uint<16>, 0>"*, i32*, i512*, i64*, i64*, i1*, i64*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<14>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*)

define void @iperf_client_hw_stub_wrapper(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<bool, 0>"*, i88*, i32*, %"class.hls::stream<ap_uint<16>, 0>"*, i512*, i64*, i64*, i1*, i48*, i72*, %"class.hls::stream<ap_uint<16>, 0>"*, i32*, i512*, i64*, i64*, i1*, i64*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<14>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*) #7 {
entry:
  %37 = alloca %"class.hls::stream<appNotification, 0>"
  %38 = alloca %"class.hls::stream<appTxMeta, 0>"
  %39 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %40 = alloca %"class.hls::stream<ipTuple, 0>"
  %41 = alloca %"class.hls::stream<openStatus, 0>"
  %42 = alloca %"class.hls::stream<appTxMeta, 0>"
  %43 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %44 = alloca %"class.hls::stream<appTxRsp, 0>"
  call void @copy_out(%"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<bool, 0>"* null, %"class.hls::stream<bool, 0>"* %1, %"class.hls::stream<appNotification, 0>"* %37, i88* %2, %"class.hls::stream<appTxMeta, 0>"* %38, i32* %3, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %39, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<ipTuple, 0>"* %40, i48* %9, %"class.hls::stream<openStatus, 0>"* %41, i72* %10, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %11, %"class.hls::stream<appTxMeta, 0>"* %42, i32* %12, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %43, i512* %13, i64* %14, i64* %15, i1* %16, %"class.hls::stream<appTxRsp, 0>"* %44, i64* %17)
  call void @iperf_client_hw_stub(%"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<bool, 0>"* %1, %"class.hls::stream<appNotification, 0>"* %37, %"class.hls::stream<appTxMeta, 0>"* %38, %"class.hls::stream<ap_uint<16>, 0>"* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %39, %"class.hls::stream<ipTuple, 0>"* %40, %"class.hls::stream<openStatus, 0>"* %41, %"class.hls::stream<ap_uint<16>, 0>"* %11, %"class.hls::stream<appTxMeta, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %43, %"class.hls::stream<appTxRsp, 0>"* %44, %"struct.ap_uint<1>"* %18, %"struct.ap_uint<1>"* %19, %"struct.ap_uint<14>"* %20, %"struct.ap_uint<8>"* %21, %"struct.ap_uint<8>"* %22, %"struct.ap_uint<32>"* %23, %"struct.ap_uint<64>"* %24, %"struct.ap_uint<16>"* %25, %"struct.ap_uint<16>"* %26, %"struct.ap_uint<32>"* %27, %"struct.ap_uint<32>"* %28, %"struct.ap_uint<32>"* %29, %"struct.ap_uint<32>"* %30, %"struct.ap_uint<32>"* %31, %"struct.ap_uint<32>"* %32, %"struct.ap_uint<32>"* %33, %"struct.ap_uint<32>"* %34, %"struct.ap_uint<32>"* %35, %"struct.ap_uint<32>"* %36)
  call void @copy_in(%"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %0, %"class.hls::stream<bool, 0>"* null, %"class.hls::stream<bool, 0>"* %1, %"class.hls::stream<appNotification, 0>"* %37, i88* %2, %"class.hls::stream<appTxMeta, 0>"* %38, i32* %3, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %39, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<ipTuple, 0>"* %40, i48* %9, %"class.hls::stream<openStatus, 0>"* %41, i72* %10, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %11, %"class.hls::stream<appTxMeta, 0>"* %42, i32* %12, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %43, i512* %13, i64* %14, i64* %15, i1* %16, %"class.hls::stream<appTxRsp, 0>"* %44, i64* %17)
  ret void
}

declare void @iperf_client_hw_stub(%"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<bool, 0>"*, %"class.hls::stream<appNotification, 0>"*, %"class.hls::stream<appTxMeta, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<ipTuple, 0>"*, %"class.hls::stream<openStatus, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<appTxMeta, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<appTxRsp, 0>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<14>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
