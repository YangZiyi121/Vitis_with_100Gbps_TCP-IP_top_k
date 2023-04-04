; ModuleID = '/home/yangz0e/Desktop/Vitis_with_100Gbps_TCP-IP_top_k/build/fpga-network-stack/hls/toe/toe_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<mmStatus, 0>" = type { %struct.mmStatus }
%struct.mmStatus = type { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<mmCmd, 0>" = type { %struct.mmCmd }
%struct.mmCmd = type { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" }
%"struct.ap_uint<23>" = type { %"struct.ap_int_base<23, false>" }
%"struct.ap_int_base<23, false>" = type { %"struct.ssdm_int<23, false>" }
%"struct.ssdm_int<23, false>" = type { i23 }
%"struct.ap_uint<6>" = type { %"struct.ap_int_base<6, false>" }
%"struct.ap_int_base<6, false>" = type { %"struct.ssdm_int<6, false>" }
%"struct.ssdm_int<6, false>" = type { i6 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<rtlSessionLookupReply, 0>" = type { %struct.rtlSessionLookupReply }
%struct.rtlSessionLookupReply = type { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 }
%struct.threeTupleInternal = type { %"struct.ap_uint<32>", %"struct.ap_uint<16>", %"struct.ap_uint<16>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"class.hls::stream<rtlSessionUpdateReply, 0>" = type { %struct.rtlSessionUpdateReply }
%struct.rtlSessionUpdateReply = type { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 }
%"class.hls::stream<rtlSessionLookupRequest, 0>" = type { %struct.rtlSessionLookupRequest }
%struct.rtlSessionLookupRequest = type { %struct.threeTupleInternal, i32 }
%"class.hls::stream<rtlSessionUpdateRequest, 0>" = type { %struct.rtlSessionUpdateRequest }
%struct.rtlSessionUpdateRequest = type { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 }
%"class.hls::stream<ipTuple, 0>" = type { %struct.ipTuple }
%struct.ipTuple = type { %"struct.ap_uint<32>", %"struct.ap_uint<16>" }
%"class.hls::stream<appReadRequest, 0>" = type { %struct.appReadRequest }
%struct.appReadRequest = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>" }
%"class.hls::stream<appNotification, 0>" = type { %struct.appNotification }
%struct.appNotification = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 }
%"class.hls::stream<ap_uint<16>, 0>" = type { %"struct.ap_uint<16>" }
%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 0>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"class.hls::stream<openStatus, 0>" = type { %struct.openStatus }
%struct.openStatus = type { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"class.hls::stream<appTxRsp, 0>" = type { %struct.appTxRsp }
%struct.appTxRsp = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" }
%"struct.ap_uint<30>" = type { %"struct.ap_int_base<30, false>" }
%"struct.ap_int_base<30, false>" = type { %"struct.ssdm_int<30, false>" }
%"struct.ssdm_int<30, false>" = type { i30 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_toe_top_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %ipRxData, %"class.hls::stream<mmStatus, 0>"* %txBufferWriteStatus, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxBufferReadData, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txBufferReadData, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %ipTxData, %"class.hls::stream<mmCmd, 0>"* %txBufferWriteCmd, %"class.hls::stream<mmCmd, 0>"* %txBufferReadCmd, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxBufferWriteData, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txBufferWriteData, %"class.hls::stream<rtlSessionLookupReply, 0>"* %sessionLookup_rsp, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %sessionUpdate_rsp, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %sessionLookup_req, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %sessionUpdate_req, %"class.hls::stream<ap_uint<16>, 0>"* %listenPortReq, %"class.hls::stream<appReadRequest, 0>"* %rxDataReq, %"class.hls::stream<ipTuple, 0>"* %openConnReq, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnReq, %"class.hls::stream<appReadRequest, 0>"* %txDataReqMeta, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txDataReq, %"struct.ssdm_int<1, false>"* %listenPortRsp, %"class.hls::stream<appNotification, 0>"* %notification, %"class.hls::stream<ap_uint<16>, 0>"* %rxDataRspMeta, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxDataRsp, %"class.hls::stream<openStatus, 0>"* %openConnRsp, %"class.hls::stream<appTxRsp, 0>"* %txDataRsp, %"struct.ap_uint<16>"* nocapture readonly %axis_data_count, %"struct.ap_uint<16>"* nocapture readonly %axis_max_data_count, %"struct.ap_uint<32>"* nocapture readonly %myIpAddress, %"struct.ap_uint<16>"* %regSessionCount) local_unnamed_addr #1 {
entry:
  %ipRxData_copy.data = alloca i512
  %ipRxData_copy.keep = alloca i64
  %ipRxData_copy.strb = alloca i64
  %ipRxData_copy.last = alloca i1
  %txBufferWriteStatus_copy = alloca i8, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i8* %txBufferWriteStatus_copy) ]
  %rxBufferReadData_copy.data = alloca i512
  %rxBufferReadData_copy.keep = alloca i64
  %rxBufferReadData_copy.strb = alloca i64
  %rxBufferReadData_copy.last = alloca i1
  %txBufferReadData_copy.data = alloca i512
  %txBufferReadData_copy.keep = alloca i64
  %txBufferReadData_copy.strb = alloca i64
  %txBufferReadData_copy.last = alloca i1
  %ipTxData_copy.data = alloca i512
  %ipTxData_copy.keep = alloca i64
  %ipTxData_copy.strb = alloca i64
  %ipTxData_copy.last = alloca i1
  %txBufferWriteCmd_copy = alloca i72, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i72* %txBufferWriteCmd_copy) ]
  %txBufferReadCmd_copy = alloca i72, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i72* %txBufferReadCmd_copy) ]
  %rxBufferWriteData_copy.data = alloca i512
  %rxBufferWriteData_copy.keep = alloca i64
  %rxBufferWriteData_copy.strb = alloca i64
  %rxBufferWriteData_copy.last = alloca i1
  %txBufferWriteData_copy.data = alloca i512
  %txBufferWriteData_copy.keep = alloca i64
  %txBufferWriteData_copy.strb = alloca i64
  %txBufferWriteData_copy.last = alloca i1
  %sessionLookup_rsp_copy = alloca i120, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i120* %sessionLookup_rsp_copy) ]
  %sessionUpdate_rsp_copy = alloca i152, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i152* %sessionUpdate_rsp_copy) ]
  %sessionLookup_req_copy = alloca i96, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i96* %sessionLookup_req_copy) ]
  %sessionUpdate_req_copy = alloca i144, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i144* %sessionUpdate_req_copy) ]
  %listenPortReq_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %listenPortReq_copy) ]
  %rxDataReq_copy = alloca i32, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i32* %rxDataReq_copy) ]
  %openConnReq_copy = alloca i48, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i48* %openConnReq_copy) ]
  %closeConnReq_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %closeConnReq_copy) ]
  %txDataReqMeta_copy = alloca i32, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i32* %txDataReqMeta_copy) ]
  %txDataReq_copy.data = alloca i512
  %txDataReq_copy.keep = alloca i64
  %txDataReq_copy.strb = alloca i64
  %txDataReq_copy.last = alloca i1
  %listenPortRsp_copy = alloca %"struct.ssdm_int<1, false>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"struct.ssdm_int<1, false>"* %listenPortRsp_copy) ]
  %notification_copy = alloca i88, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i88* %notification_copy) ]
  %rxDataRspMeta_copy = alloca %"class.hls::stream<ap_uint<16>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<16>, 0>"* %rxDataRspMeta_copy) ]
  %rxDataRsp_copy.data = alloca i512
  %rxDataRsp_copy.keep = alloca i64
  %rxDataRsp_copy.strb = alloca i64
  %rxDataRsp_copy.last = alloca i1
  %openConnRsp_copy = alloca i72, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i72* %openConnRsp_copy) ]
  %txDataRsp_copy = alloca i64, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i64* %txDataRsp_copy) ]
  %regSessionCount_copy = alloca i16, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %ipRxData, i512* %ipRxData_copy.data, i64* %ipRxData_copy.keep, i64* %ipRxData_copy.strb, i1* %ipRxData_copy.last, %"class.hls::stream<mmStatus, 0>"* %txBufferWriteStatus, i8* nonnull align 512 %txBufferWriteStatus_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxBufferReadData, i512* %rxBufferReadData_copy.data, i64* %rxBufferReadData_copy.keep, i64* %rxBufferReadData_copy.strb, i1* %rxBufferReadData_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txBufferReadData, i512* %txBufferReadData_copy.data, i64* %txBufferReadData_copy.keep, i64* %txBufferReadData_copy.strb, i1* %txBufferReadData_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %ipTxData, i512* %ipTxData_copy.data, i64* %ipTxData_copy.keep, i64* %ipTxData_copy.strb, i1* %ipTxData_copy.last, %"class.hls::stream<mmCmd, 0>"* %txBufferWriteCmd, i72* nonnull align 512 %txBufferWriteCmd_copy, %"class.hls::stream<mmCmd, 0>"* %txBufferReadCmd, i72* nonnull align 512 %txBufferReadCmd_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxBufferWriteData, i512* %rxBufferWriteData_copy.data, i64* %rxBufferWriteData_copy.keep, i64* %rxBufferWriteData_copy.strb, i1* %rxBufferWriteData_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txBufferWriteData, i512* %txBufferWriteData_copy.data, i64* %txBufferWriteData_copy.keep, i64* %txBufferWriteData_copy.strb, i1* %txBufferWriteData_copy.last, %"class.hls::stream<rtlSessionLookupReply, 0>"* %sessionLookup_rsp, i120* nonnull align 512 %sessionLookup_rsp_copy, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %sessionUpdate_rsp, i152* nonnull align 512 %sessionUpdate_rsp_copy, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %sessionLookup_req, i96* nonnull align 512 %sessionLookup_req_copy, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %sessionUpdate_req, i144* nonnull align 512 %sessionUpdate_req_copy, %"class.hls::stream<ap_uint<16>, 0>"* %listenPortReq, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %listenPortReq_copy, %"class.hls::stream<appReadRequest, 0>"* %rxDataReq, i32* nonnull align 512 %rxDataReq_copy, %"class.hls::stream<ipTuple, 0>"* %openConnReq, i48* nonnull align 512 %openConnReq_copy, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnReq, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %closeConnReq_copy, %"class.hls::stream<appReadRequest, 0>"* %txDataReqMeta, i32* nonnull align 512 %txDataReqMeta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txDataReq, i512* %txDataReq_copy.data, i64* %txDataReq_copy.keep, i64* %txDataReq_copy.strb, i1* %txDataReq_copy.last, %"struct.ssdm_int<1, false>"* %listenPortRsp, %"struct.ssdm_int<1, false>"* nonnull align 512 %listenPortRsp_copy, %"class.hls::stream<appNotification, 0>"* %notification, i88* nonnull align 512 %notification_copy, %"class.hls::stream<ap_uint<16>, 0>"* %rxDataRspMeta, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %rxDataRspMeta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxDataRsp, i512* %rxDataRsp_copy.data, i64* %rxDataRsp_copy.keep, i64* %rxDataRsp_copy.strb, i1* %rxDataRsp_copy.last, %"class.hls::stream<openStatus, 0>"* %openConnRsp, i72* nonnull align 512 %openConnRsp_copy, %"class.hls::stream<appTxRsp, 0>"* %txDataRsp, i64* nonnull align 512 %txDataRsp_copy, %"struct.ap_uint<16>"* %regSessionCount, i16* nonnull align 512 %regSessionCount_copy)
  call void @apatb_toe_top_hw(i512* %ipRxData_copy.data, i64* %ipRxData_copy.keep, i64* %ipRxData_copy.strb, i1* %ipRxData_copy.last, i8* %txBufferWriteStatus_copy, i512* %rxBufferReadData_copy.data, i64* %rxBufferReadData_copy.keep, i64* %rxBufferReadData_copy.strb, i1* %rxBufferReadData_copy.last, i512* %txBufferReadData_copy.data, i64* %txBufferReadData_copy.keep, i64* %txBufferReadData_copy.strb, i1* %txBufferReadData_copy.last, i512* %ipTxData_copy.data, i64* %ipTxData_copy.keep, i64* %ipTxData_copy.strb, i1* %ipTxData_copy.last, i72* %txBufferWriteCmd_copy, i72* %txBufferReadCmd_copy, i512* %rxBufferWriteData_copy.data, i64* %rxBufferWriteData_copy.keep, i64* %rxBufferWriteData_copy.strb, i1* %rxBufferWriteData_copy.last, i512* %txBufferWriteData_copy.data, i64* %txBufferWriteData_copy.keep, i64* %txBufferWriteData_copy.strb, i1* %txBufferWriteData_copy.last, i120* %sessionLookup_rsp_copy, i152* %sessionUpdate_rsp_copy, i96* %sessionLookup_req_copy, i144* %sessionUpdate_req_copy, %"class.hls::stream<ap_uint<16>, 0>"* %listenPortReq_copy, i32* %rxDataReq_copy, i48* %openConnReq_copy, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnReq_copy, i32* %txDataReqMeta_copy, i512* %txDataReq_copy.data, i64* %txDataReq_copy.keep, i64* %txDataReq_copy.strb, i1* %txDataReq_copy.last, %"struct.ssdm_int<1, false>"* %listenPortRsp_copy, i88* %notification_copy, %"class.hls::stream<ap_uint<16>, 0>"* %rxDataRspMeta_copy, i512* %rxDataRsp_copy.data, i64* %rxDataRsp_copy.keep, i64* %rxDataRsp_copy.strb, i1* %rxDataRsp_copy.last, i72* %openConnRsp_copy, i64* %txDataRsp_copy, %"struct.ap_uint<16>"* %axis_data_count, %"struct.ap_uint<16>"* %axis_max_data_count, %"struct.ap_uint<32>"* %myIpAddress, i16* %regSessionCount_copy)
  call fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %ipRxData, i512* %ipRxData_copy.data, i64* %ipRxData_copy.keep, i64* %ipRxData_copy.strb, i1* %ipRxData_copy.last, %"class.hls::stream<mmStatus, 0>"* %txBufferWriteStatus, i8* nonnull align 512 %txBufferWriteStatus_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxBufferReadData, i512* %rxBufferReadData_copy.data, i64* %rxBufferReadData_copy.keep, i64* %rxBufferReadData_copy.strb, i1* %rxBufferReadData_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txBufferReadData, i512* %txBufferReadData_copy.data, i64* %txBufferReadData_copy.keep, i64* %txBufferReadData_copy.strb, i1* %txBufferReadData_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %ipTxData, i512* %ipTxData_copy.data, i64* %ipTxData_copy.keep, i64* %ipTxData_copy.strb, i1* %ipTxData_copy.last, %"class.hls::stream<mmCmd, 0>"* %txBufferWriteCmd, i72* nonnull align 512 %txBufferWriteCmd_copy, %"class.hls::stream<mmCmd, 0>"* %txBufferReadCmd, i72* nonnull align 512 %txBufferReadCmd_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxBufferWriteData, i512* %rxBufferWriteData_copy.data, i64* %rxBufferWriteData_copy.keep, i64* %rxBufferWriteData_copy.strb, i1* %rxBufferWriteData_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txBufferWriteData, i512* %txBufferWriteData_copy.data, i64* %txBufferWriteData_copy.keep, i64* %txBufferWriteData_copy.strb, i1* %txBufferWriteData_copy.last, %"class.hls::stream<rtlSessionLookupReply, 0>"* %sessionLookup_rsp, i120* nonnull align 512 %sessionLookup_rsp_copy, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %sessionUpdate_rsp, i152* nonnull align 512 %sessionUpdate_rsp_copy, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %sessionLookup_req, i96* nonnull align 512 %sessionLookup_req_copy, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %sessionUpdate_req, i144* nonnull align 512 %sessionUpdate_req_copy, %"class.hls::stream<ap_uint<16>, 0>"* %listenPortReq, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %listenPortReq_copy, %"class.hls::stream<appReadRequest, 0>"* %rxDataReq, i32* nonnull align 512 %rxDataReq_copy, %"class.hls::stream<ipTuple, 0>"* %openConnReq, i48* nonnull align 512 %openConnReq_copy, %"class.hls::stream<ap_uint<16>, 0>"* %closeConnReq, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %closeConnReq_copy, %"class.hls::stream<appReadRequest, 0>"* %txDataReqMeta, i32* nonnull align 512 %txDataReqMeta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txDataReq, i512* %txDataReq_copy.data, i64* %txDataReq_copy.keep, i64* %txDataReq_copy.strb, i1* %txDataReq_copy.last, %"struct.ssdm_int<1, false>"* %listenPortRsp, %"struct.ssdm_int<1, false>"* nonnull align 512 %listenPortRsp_copy, %"class.hls::stream<appNotification, 0>"* %notification, i88* nonnull align 512 %notification_copy, %"class.hls::stream<ap_uint<16>, 0>"* %rxDataRspMeta, %"class.hls::stream<ap_uint<16>, 0>"* nonnull align 512 %rxDataRspMeta_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxDataRsp, i512* %rxDataRsp_copy.data, i64* %rxDataRsp_copy.keep, i64* %rxDataRsp_copy.strb, i1* %rxDataRsp_copy.last, %"class.hls::stream<openStatus, 0>"* %openConnRsp, i72* nonnull align 512 %openConnRsp_copy, %"class.hls::stream<appTxRsp, 0>"* %txDataRsp, i64* nonnull align 512 %txDataRsp_copy, %"struct.ap_uint<16>"* %regSessionCount, i16* nonnull align 512 %regSessionCount_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<mmStatus, 0>"*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V4812, %"class.hls::stream<mmCmd, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<mmCmd, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V15913, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V261014, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V1591317, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V26101418, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_last_V48121620, %"class.hls::stream<rtlSessionLookupReply, 0>"*, i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateReply, 0>"*, i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionLookupRequest, 0>"*, i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateRequest, 0>"*, i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appReadRequest, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ipTuple, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appReadRequest, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.3" %_V_last_V5, %"struct.ssdm_int<1, false>"*, %"struct.ssdm_int<1, false>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appNotification, 0>"*, i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.0" %_V_data_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.1" %_V_keep_V37, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.2" %_V_strb_V48, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.3" %_V_last_V59, %"class.hls::stream<openStatus, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxRsp, 0>"*, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ap_uint<16>"* readonly, i16* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmStatus, 0>.6234"(i8* align 512 %2, %"class.hls::stream<mmStatus, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmCmd, 0>"(i72* align 512 %7, %"class.hls::stream<mmCmd, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmCmd, 0>"(i72* align 512 %9, %"class.hls::stream<mmCmd, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V15913, i64* %_V_keep_V261014, i64* %_V_strb_V371115, i1* %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V1591317, i64* %_V_keep_V26101418, i64* %_V_strb_V37111519, i1* %_V_last_V48121620, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>.6258"(i120* align 512 %13, %"class.hls::stream<rtlSessionLookupReply, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>.6282"(i152* align 512 %15, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>"(i96* align 512 %17, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>"(i144* align 512 %19, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %21, %"class.hls::stream<ap_uint<16>, 0>"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appReadRequest, 0>"(i32* align 512 %23, %"class.hls::stream<appReadRequest, 0>"* %22)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>"(i48* align 512 %25, %"class.hls::stream<ipTuple, 0>"* %24)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %27, %"class.hls::stream<ap_uint<16>, 0>"* %26)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appReadRequest, 0>"(i32* align 512 %29, %"class.hls::stream<appReadRequest, 0>"* %28)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %30)
  call fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<1, false>"(%"struct.ssdm_int<1, false>"* align 512 %32, %"struct.ssdm_int<1, false>"* %31)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>"(i88* align 512 %34, %"class.hls::stream<appNotification, 0>"* %33)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* align 512 %36, %"class.hls::stream<ap_uint<16>, 0>"* %35)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* %_V_data_V26, i64* %_V_keep_V37, i64* %_V_strb_V48, i1* %_V_last_V59, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %37)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>.6334"(i72* align 512 %39, %"class.hls::stream<openStatus, 0>"* %38)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>.6351"(i64* align 512 %41, %"class.hls::stream<appTxRsp, 0>"* %40)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(i16* align 512 %43, %"struct.ap_uint<16>"* %42)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmStatus, 0>"(%"class.hls::stream<mmStatus, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<mmStatus, 0>"* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<mmStatus, 0>"(%"class.hls::stream<mmStatus, 0>"* nonnull %0, i8* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<mmStatus, 0>"(%"class.hls::stream<mmStatus, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i8
  %3 = alloca %"class.hls::stream<mmStatus, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %1)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %1)
  %5 = load volatile i8, i8* %2
  %6 = call { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<mmStatus, 0>s.i8"(i8 %5)
  %newret = extractvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %6, 0
  %oldret1 = insertvalue %struct.mmStatus undef, %"struct.ap_uint<4>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %6, 1
  %oldret3 = insertvalue %struct.mmStatus %oldret1, %"struct.ap_uint<1>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %6, 2
  %oldret5 = insertvalue %struct.mmStatus %oldret3, %"struct.ap_uint<1>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %6, 3
  %oldret7 = insertvalue %struct.mmStatus %oldret5, %"struct.ap_uint<1>" %newret6, 3
  %newret8 = extractvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %6, 4
  %oldret9 = insertvalue %struct.mmStatus %oldret7, %"struct.ap_uint<1>" %newret8, 4
  %oldret = insertvalue %"class.hls::stream<mmStatus, 0>" undef, %struct.mmStatus %oldret9, 0
  store %"class.hls::stream<mmStatus, 0>" %oldret, %"class.hls::stream<mmStatus, 0>"* %3
  %7 = bitcast %"class.hls::stream<mmStatus, 0>"* %3 to i8*
  %8 = bitcast %"class.hls::stream<mmStatus, 0>"* %0 to i8*
  call void @fpga_fifo_push_5(i8* %7, i8* %8)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>"(%"class.hls::stream<rtlSessionLookupReply, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<rtlSessionLookupReply, 0>"* %0, null
  %3 = icmp eq i120* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>"(%"class.hls::stream<rtlSessionLookupReply, 0>"* nonnull %0, i120* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>"(%"class.hls::stream<rtlSessionLookupReply, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i120* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i120
  %3 = alloca %"class.hls::stream<rtlSessionLookupReply, 0>"
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
  %9 = call { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionLookupReply, 0>s.i120"(i120 %8)
  %newret = extractvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 0
  %oldret1 = insertvalue %struct.rtlSessionLookupReply undef, %struct.threeTupleInternal %newret, 0
  %newret2 = extractvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 1
  %oldret3 = insertvalue %struct.rtlSessionLookupReply %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %newret4 = extractvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 2
  %oldret5 = insertvalue %struct.rtlSessionLookupReply %oldret3, i1 %newret4, 2
  %newret6 = extractvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 3
  %oldret7 = insertvalue %struct.rtlSessionLookupReply %oldret5, i32 %newret6, 3
  %oldret = insertvalue %"class.hls::stream<rtlSessionLookupReply, 0>" undef, %struct.rtlSessionLookupReply %oldret7, 0
  store %"class.hls::stream<rtlSessionLookupReply, 0>" %oldret, %"class.hls::stream<rtlSessionLookupReply, 0>"* %3
  %10 = bitcast %"class.hls::stream<rtlSessionLookupReply, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<rtlSessionLookupReply, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>"(%"class.hls::stream<rtlSessionUpdateReply, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<rtlSessionUpdateReply, 0>"* %0, null
  %3 = icmp eq i152* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>"(%"class.hls::stream<rtlSessionUpdateReply, 0>"* nonnull %0, i152* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>"(%"class.hls::stream<rtlSessionUpdateReply, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i152* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i152
  %3 = alloca %"class.hls::stream<rtlSessionUpdateReply, 0>"
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
  %9 = call { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionUpdateReply, 0>s.i152"(i152 %8)
  %newret = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 0
  %oldret1 = insertvalue %struct.rtlSessionUpdateReply undef, i32 %newret, 0
  %newret2 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 1
  %oldret3 = insertvalue %struct.rtlSessionUpdateReply %oldret1, %struct.threeTupleInternal %newret2, 1
  %newret4 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 2
  %oldret5 = insertvalue %struct.rtlSessionUpdateReply %oldret3, %"struct.ap_uint<16>" %newret4, 2
  %newret6 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 3
  %oldret7 = insertvalue %struct.rtlSessionUpdateReply %oldret5, i1 %newret6, 3
  %newret8 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %9, 4
  %oldret9 = insertvalue %struct.rtlSessionUpdateReply %oldret7, i32 %newret8, 4
  %oldret = insertvalue %"class.hls::stream<rtlSessionUpdateReply, 0>" undef, %struct.rtlSessionUpdateReply %oldret9, 0
  store %"class.hls::stream<rtlSessionUpdateReply, 0>" %oldret, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %3
  %10 = bitcast %"class.hls::stream<rtlSessionUpdateReply, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<rtlSessionUpdateReply, 0>"* %0 to i8*
  call void @fpga_fifo_push_20(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>"(i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionLookupRequest, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i96* %0, null
  %3 = icmp eq %"class.hls::stream<rtlSessionLookupRequest, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>"(i96* nonnull align 512 %0, %"class.hls::stream<rtlSessionLookupRequest, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>"(i96* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionLookupRequest, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<rtlSessionLookupRequest, 0>"
  %3 = alloca i96
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<rtlSessionLookupRequest, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_12(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<rtlSessionLookupRequest, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<rtlSessionLookupRequest, 0>"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<rtlSessionLookupRequest, 0>", %"class.hls::stream<rtlSessionLookupRequest, 0>"* %2
  %9 = call i96 @"_llvm.fpga.pack.bits.i96.s_class.hls::stream<rtlSessionLookupRequest, 0>s"(%"class.hls::stream<rtlSessionLookupRequest, 0>" %8)
  store i96 %9, i96* %3
  %10 = bitcast i96* %3 to i8*
  %11 = bitcast i96* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>"(i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateRequest, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i144* %0, null
  %3 = icmp eq %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>"(i144* nonnull align 512 %0, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>"(i144* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateRequest, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<rtlSessionUpdateRequest, 0>"
  %3 = alloca i144
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_20(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %1 to i8*
  call void @fpga_fifo_pop_20(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<rtlSessionUpdateRequest, 0>", %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %2
  %9 = call i144 @"_llvm.fpga.pack.bits.i144.s_class.hls::stream<rtlSessionUpdateRequest, 0>s"(%"class.hls::stream<rtlSessionUpdateRequest, 0>" %8)
  store i144 %9, i144* %3
  %10 = bitcast i144* %3 to i8*
  %11 = bitcast i144* %0 to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
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
  br label %empty, !llvm.loop !11

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
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<1, false>"(%"struct.ssdm_int<1, false>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ssdm_int<1, false>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ssdm_int<1, false>"* %0, null
  %3 = icmp eq %"struct.ssdm_int<1, false>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0struct.ssdm_int<1, false>"(%"struct.ssdm_int<1, false>"* nonnull align 512 %0, %"struct.ssdm_int<1, false>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.ssdm_int<1, false>"(%"struct.ssdm_int<1, false>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ssdm_int<1, false>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"struct.ssdm_int<1, false>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"struct.ssdm_int<1, false>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"struct.ssdm_int<1, false>"* %2 to i8*
  %6 = bitcast %"struct.ssdm_int<1, false>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %2
  %8 = bitcast %"struct.ssdm_int<1, false>"* %2 to i8*
  %9 = bitcast %"struct.ssdm_int<1, false>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

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
  br label %empty, !llvm.loop !14

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
  br label %empty, !llvm.loop !15

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
  br label %empty, !llvm.loop !16

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
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<mmStatus, 0>"*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V4812, %"class.hls::stream<mmCmd, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<mmCmd, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V15913, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V261014, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V1591317, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V26101418, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_last_V48121620, %"class.hls::stream<rtlSessionLookupReply, 0>"*, i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateReply, 0>"*, i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionLookupRequest, 0>"*, i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateRequest, 0>"*, i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appReadRequest, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ipTuple, 0>"*, i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appReadRequest, 0>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="55.3" %_V_last_V5, %"struct.ssdm_int<1, false>"*, %"struct.ssdm_int<1, false>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appNotification, 0>"*, i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.0" %_V_data_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.1" %_V_keep_V37, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.2" %_V_strb_V48, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="54.3" %_V_last_V59, %"class.hls::stream<openStatus, 0>"*, i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxRsp, 0>"*, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ap_uint<16>"*, i16* noalias readonly align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmStatus, 0>"(%"class.hls::stream<mmStatus, 0>"* %1, i8* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %4, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %5, i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmCmd, 0>.6222"(%"class.hls::stream<mmCmd, 0>"* %6, i72* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmCmd, 0>.6222"(%"class.hls::stream<mmCmd, 0>"* %8, i72* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %10, i512* %_V_data_V15913, i64* %_V_keep_V261014, i64* %_V_strb_V371115, i1* %_V_last_V481216)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %11, i512* %_V_data_V1591317, i64* %_V_keep_V26101418, i64* %_V_strb_V37111519, i1* %_V_last_V48121620)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>"(%"class.hls::stream<rtlSessionLookupReply, 0>"* %12, i120* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>"(%"class.hls::stream<rtlSessionUpdateReply, 0>"* %14, i152* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>.6246"(%"class.hls::stream<rtlSessionLookupRequest, 0>"* %16, i96* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>.6270"(%"class.hls::stream<rtlSessionUpdateRequest, 0>"* %18, i144* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %20, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appReadRequest, 0>.6315"(%"class.hls::stream<appReadRequest, 0>"* %22, i32* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>.6322"(%"class.hls::stream<ipTuple, 0>"* %24, i48* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %26, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appReadRequest, 0>.6315"(%"class.hls::stream<appReadRequest, 0>"* %28, i32* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %30, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<1, false>"(%"struct.ssdm_int<1, false>"* %31, %"struct.ssdm_int<1, false>"* align 512 %32)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>.6294"(%"class.hls::stream<appNotification, 0>"* %33, i88* align 512 %34)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<16>, 0>"(%"class.hls::stream<ap_uint<16>, 0>"* %35, %"class.hls::stream<ap_uint<16>, 0>"* align 512 %36)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %37, i512* %_V_data_V26, i64* %_V_keep_V37, i64* %_V_strb_V48, i1* %_V_last_V59)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>"(%"class.hls::stream<openStatus, 0>"* %38, i72* align 512 %39)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>"(%"class.hls::stream<appTxRsp, 0>"* %40, i64* align 512 %41)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.6202"(%"struct.ap_uint<16>"* %42, i16* align 512 %43)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.6202"(%"struct.ap_uint<16>"* noalias, i16* noalias readonly align 512) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmCmd, 0>"(i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<mmCmd, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i72* %0, null
  %3 = icmp eq %"class.hls::stream<mmCmd, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<mmCmd, 0>.6216"(i72* nonnull align 512 %0, %"class.hls::stream<mmCmd, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<mmCmd, 0>.6216"(i72* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<mmCmd, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<mmCmd, 0>"
  %3 = alloca i72
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<mmCmd, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<mmCmd, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<mmCmd, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<mmCmd, 0>", %"class.hls::stream<mmCmd, 0>"* %2
  %9 = call i72 @"_llvm.fpga.pack.bits.i72.s_class.hls::stream<mmCmd, 0>s"(%"class.hls::stream<mmCmd, 0>" %8)
  store i72 %9, i72* %3
  %10 = bitcast i72* %3 to i8*
  %11 = bitcast i72* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i72 @"_llvm.fpga.pack.bits.i72.s_class.hls::stream<mmCmd, 0>s"(%"class.hls::stream<mmCmd, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<mmCmd, 0>" %A, 0
  %A.0.0 = extractvalue %struct.mmCmd %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<23>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<23, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<23, false>" %A.0.0.0.0, 0
  %1 = zext i23 %A.0.0.0.0.0 to i72
  %A.0.1 = extractvalue %struct.mmCmd %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<1>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.1.0.0, 0
  %2 = zext i1 %A.0.1.0.0.0 to i72
  %3 = shl i72 %2, 23
  %4 = or i72 %3, %1
  %A.0.2 = extractvalue %struct.mmCmd %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<6>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<6, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<6, false>" %A.0.2.0.0, 0
  %5 = zext i6 %A.0.2.0.0.0 to i72
  %6 = shl i72 %5, 24
  %7 = or i72 %4, %6
  %A.0.3 = extractvalue %struct.mmCmd %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_uint<1>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.3.0.0, 0
  %8 = zext i1 %A.0.3.0.0.0 to i72
  %9 = shl i72 %8, 30
  %10 = or i72 %7, %9
  %A.0.4 = extractvalue %struct.mmCmd %A.0, 4
  %A.0.4.0 = extractvalue %"struct.ap_uint<1>" %A.0.4, 0
  %A.0.4.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.4.0, 0
  %A.0.4.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.4.0.0, 0
  %11 = zext i1 %A.0.4.0.0.0 to i72
  %12 = shl i72 %11, 31
  %A.0.5 = extractvalue %struct.mmCmd %A.0, 5
  %A.0.5.0 = extractvalue %"struct.ap_uint<32>" %A.0.5, 0
  %A.0.5.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.5.0, 0
  %A.0.5.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.5.0.0, 0
  %13 = zext i32 %A.0.5.0.0.0 to i72
  %14 = shl i72 %13, 32
  %15 = or i72 %10, %12
  %A.0.6 = extractvalue %struct.mmCmd %A.0, 6
  %A.0.6.0 = extractvalue %"struct.ap_uint<4>" %A.0.6, 0
  %A.0.6.0.0 = extractvalue %"struct.ap_int_base<4, false>" %A.0.6.0, 0
  %A.0.6.0.0.0 = extractvalue %"struct.ssdm_int<4, false>" %A.0.6.0.0, 0
  %16 = zext i4 %A.0.6.0.0.0 to i72
  %17 = shl i72 %16, 64
  %A.0.7 = extractvalue %struct.mmCmd %A.0, 7
  %A.0.7.0 = extractvalue %"struct.ap_uint<4>" %A.0.7, 0
  %A.0.7.0.0 = extractvalue %"struct.ap_int_base<4, false>" %A.0.7.0, 0
  %A.0.7.0.0.0 = extractvalue %"struct.ssdm_int<4, false>" %A.0.7.0.0, 0
  %18 = zext i4 %A.0.7.0.0.0 to i72
  %19 = shl i72 %18, 68
  %.masked = or i72 %15, %14
  %20 = or i72 %.masked, %17
  %21 = or i72 %20, %19
  ret i72 %21
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmCmd, 0>.6222"(%"class.hls::stream<mmCmd, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<mmCmd, 0>"* %0, null
  %3 = icmp eq i72* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<mmCmd, 0>.6225"(%"class.hls::stream<mmCmd, 0>"* nonnull %0, i72* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<mmCmd, 0>.6225"(%"class.hls::stream<mmCmd, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i72* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i72
  %3 = alloca %"class.hls::stream<mmCmd, 0>"
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
  %9 = call { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<mmCmd, 0>s.i72"(i72 %8)
  %newret = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 0
  %oldret1 = insertvalue %struct.mmCmd undef, %"struct.ap_uint<23>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 1
  %oldret3 = insertvalue %struct.mmCmd %oldret1, %"struct.ap_uint<1>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 2
  %oldret5 = insertvalue %struct.mmCmd %oldret3, %"struct.ap_uint<6>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 3
  %oldret7 = insertvalue %struct.mmCmd %oldret5, %"struct.ap_uint<1>" %newret6, 3
  %newret8 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 4
  %oldret9 = insertvalue %struct.mmCmd %oldret7, %"struct.ap_uint<1>" %newret8, 4
  %newret10 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 5
  %oldret11 = insertvalue %struct.mmCmd %oldret9, %"struct.ap_uint<32>" %newret10, 5
  %newret12 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 6
  %oldret13 = insertvalue %struct.mmCmd %oldret11, %"struct.ap_uint<4>" %newret12, 6
  %newret14 = extractvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %9, 7
  %oldret15 = insertvalue %struct.mmCmd %oldret13, %"struct.ap_uint<4>" %newret14, 7
  %oldret = insertvalue %"class.hls::stream<mmCmd, 0>" undef, %struct.mmCmd %oldret15, 0
  store %"class.hls::stream<mmCmd, 0>" %oldret, %"class.hls::stream<mmCmd, 0>"* %3
  %10 = bitcast %"class.hls::stream<mmCmd, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<mmCmd, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<mmCmd, 0>s.i72"(i72 %A) #7 {
  %1 = and i72 %A, 8388607
  %2 = trunc i72 %1 to i23
  %.0 = insertvalue %"struct.ssdm_int<23, false>" undef, i23 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<23, false>" undef, %"struct.ssdm_int<23, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<23>" undef, %"struct.ap_int_base<23, false>" %.01, 0
  %.03 = insertvalue %struct.mmCmd undef, %"struct.ap_uint<23>" %.02, 0
  %3 = and i72 %A, 8388608
  %4 = lshr i72 %3, 23
  %5 = trunc i72 %4 to i1
  %.04 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.05, 0
  %.1 = insertvalue %struct.mmCmd %.03, %"struct.ap_uint<1>" %.06, 1
  %6 = and i72 %A, 1056964608
  %7 = lshr i72 %6, 24
  %8 = trunc i72 %7 to i6
  %.07 = insertvalue %"struct.ssdm_int<6, false>" undef, i6 %8, 0
  %.08 = insertvalue %"struct.ap_int_base<6, false>" undef, %"struct.ssdm_int<6, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<6>" undef, %"struct.ap_int_base<6, false>" %.08, 0
  %.2 = insertvalue %struct.mmCmd %.1, %"struct.ap_uint<6>" %.09, 2
  %9 = and i72 %A, 1073741824
  %10 = lshr i72 %9, 30
  %11 = trunc i72 %10 to i1
  %.010 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %11, 0
  %.011 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.011, 0
  %.3 = insertvalue %struct.mmCmd %.2, %"struct.ap_uint<1>" %.012, 3
  %12 = and i72 %A, 2147483648
  %13 = lshr i72 %12, 31
  %14 = trunc i72 %13 to i1
  %.013 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %14, 0
  %.014 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.013, 0
  %.015 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.014, 0
  %.4 = insertvalue %struct.mmCmd %.3, %"struct.ap_uint<1>" %.015, 4
  %15 = and i72 %A, 18446744069414584320
  %16 = lshr i72 %15, 32
  %17 = trunc i72 %16 to i32
  %.016 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %17, 0
  %.017 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.016, 0
  %.018 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.017, 0
  %.5 = insertvalue %struct.mmCmd %.4, %"struct.ap_uint<32>" %.018, 5
  %18 = and i72 %A, 276701161105643274240
  %19 = lshr i72 %18, 64
  %20 = trunc i72 %19 to i4
  %.019 = insertvalue %"struct.ssdm_int<4, false>" undef, i4 %20, 0
  %.020 = insertvalue %"struct.ap_int_base<4, false>" undef, %"struct.ssdm_int<4, false>" %.019, 0
  %.021 = insertvalue %"struct.ap_uint<4>" undef, %"struct.ap_int_base<4, false>" %.020, 0
  %.6 = insertvalue %struct.mmCmd %.5, %"struct.ap_uint<4>" %.021, 6
  %21 = and i72 %A, -295147905179352825856
  %22 = lshr i72 %21, 68
  %23 = trunc i72 %22 to i4
  %.022 = insertvalue %"struct.ssdm_int<4, false>" undef, i4 %23, 0
  %.023 = insertvalue %"struct.ap_int_base<4, false>" undef, %"struct.ssdm_int<4, false>" %.022, 0
  %.024 = insertvalue %"struct.ap_uint<4>" undef, %"struct.ap_int_base<4, false>" %.023, 0
  %.7 = insertvalue %struct.mmCmd %.6, %"struct.ap_uint<4>" %.024, 7
  %oldret = extractvalue %struct.mmCmd %.7, 0
  %newret = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } undef, %"struct.ap_uint<23>" %oldret, 0
  %oldret1 = extractvalue %struct.mmCmd %.7, 1
  %newret2 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret, %"struct.ap_uint<1>" %oldret1, 1
  %oldret3 = extractvalue %struct.mmCmd %.7, 2
  %newret4 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret2, %"struct.ap_uint<6>" %oldret3, 2
  %oldret5 = extractvalue %struct.mmCmd %.7, 3
  %newret6 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret4, %"struct.ap_uint<1>" %oldret5, 3
  %oldret7 = extractvalue %struct.mmCmd %.7, 4
  %newret8 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret6, %"struct.ap_uint<1>" %oldret7, 4
  %oldret9 = extractvalue %struct.mmCmd %.7, 5
  %newret10 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret8, %"struct.ap_uint<32>" %oldret9, 5
  %oldret11 = extractvalue %struct.mmCmd %.7, 6
  %newret12 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret10, %"struct.ap_uint<4>" %oldret11, 6
  %oldret13 = extractvalue %struct.mmCmd %.7, 7
  %newret14 = insertvalue { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret12, %"struct.ap_uint<4>" %oldret13, 7
  ret { %"struct.ap_uint<23>", %"struct.ap_uint<1>", %"struct.ap_uint<6>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>" } %newret14
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<mmStatus, 0>.6234"(i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<mmStatus, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq %"class.hls::stream<mmStatus, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<mmStatus, 0>.6237"(i8* nonnull align 512 %0, %"class.hls::stream<mmStatus, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<mmStatus, 0>.6237"(i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<mmStatus, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<mmStatus, 0>"
  %3 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<mmStatus, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_5(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<mmStatus, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<mmStatus, 0>"* %1 to i8*
  call void @fpga_fifo_pop_5(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<mmStatus, 0>", %"class.hls::stream<mmStatus, 0>"* %2
  %9 = call i8 @"_llvm.fpga.pack.bits.i8.s_class.hls::stream<mmStatus, 0>s"(%"class.hls::stream<mmStatus, 0>" %8)
  store i8 %9, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %0)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i8 @"_llvm.fpga.pack.bits.i8.s_class.hls::stream<mmStatus, 0>s"(%"class.hls::stream<mmStatus, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<mmStatus, 0>" %A, 0
  %A.0.0 = extractvalue %struct.mmStatus %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<4>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<4, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<4, false>" %A.0.0.0.0, 0
  %1 = zext i4 %A.0.0.0.0.0 to i8
  %A.0.1 = extractvalue %struct.mmStatus %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<1>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.1.0.0, 0
  %2 = zext i1 %A.0.1.0.0.0 to i8
  %3 = shl i8 %2, 4
  %4 = or i8 %3, %1
  %A.0.2 = extractvalue %struct.mmStatus %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<1>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.2.0.0, 0
  %5 = zext i1 %A.0.2.0.0.0 to i8
  %6 = shl i8 %5, 5
  %7 = or i8 %4, %6
  %A.0.3 = extractvalue %struct.mmStatus %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_uint<1>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.3.0.0, 0
  %8 = zext i1 %A.0.3.0.0.0 to i8
  %9 = shl i8 %8, 6
  %10 = or i8 %7, %9
  %A.0.4 = extractvalue %struct.mmStatus %A.0, 4
  %A.0.4.0 = extractvalue %"struct.ap_uint<1>" %A.0.4, 0
  %A.0.4.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.4.0, 0
  %A.0.4.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.4.0.0, 0
  %11 = zext i1 %A.0.4.0.0.0 to i8
  %12 = shl i8 %11, 7
  %13 = or i8 %10, %12
  ret i8 %13
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<mmStatus, 0>s.i8"(i8 %A) #7 {
  %1 = and i8 %A, 15
  %2 = trunc i8 %1 to i4
  %.0 = insertvalue %"struct.ssdm_int<4, false>" undef, i4 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<4, false>" undef, %"struct.ssdm_int<4, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<4>" undef, %"struct.ap_int_base<4, false>" %.01, 0
  %.03 = insertvalue %struct.mmStatus undef, %"struct.ap_uint<4>" %.02, 0
  %3 = and i8 %A, 16
  %4 = lshr i8 %3, 4
  %5 = trunc i8 %4 to i1
  %.04 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.05, 0
  %.1 = insertvalue %struct.mmStatus %.03, %"struct.ap_uint<1>" %.06, 1
  %6 = and i8 %A, 32
  %7 = lshr i8 %6, 5
  %8 = trunc i8 %7 to i1
  %.07 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %8, 0
  %.08 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.08, 0
  %.2 = insertvalue %struct.mmStatus %.1, %"struct.ap_uint<1>" %.09, 2
  %9 = and i8 %A, 64
  %10 = lshr i8 %9, 6
  %11 = trunc i8 %10 to i1
  %.010 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %11, 0
  %.011 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.011, 0
  %.3 = insertvalue %struct.mmStatus %.2, %"struct.ap_uint<1>" %.012, 3
  %12 = and i8 %A, -128
  %13 = lshr i8 %12, 7
  %14 = trunc i8 %13 to i1
  %.013 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %14, 0
  %.014 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.013, 0
  %.015 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.014, 0
  %.4 = insertvalue %struct.mmStatus %.3, %"struct.ap_uint<1>" %.015, 4
  %oldret = extractvalue %struct.mmStatus %.4, 0
  %newret = insertvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } undef, %"struct.ap_uint<4>" %oldret, 0
  %oldret1 = extractvalue %struct.mmStatus %.4, 1
  %newret2 = insertvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %newret, %"struct.ap_uint<1>" %oldret1, 1
  %oldret3 = extractvalue %struct.mmStatus %.4, 2
  %newret4 = insertvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %newret2, %"struct.ap_uint<1>" %oldret3, 2
  %oldret5 = extractvalue %struct.mmStatus %.4, 3
  %newret6 = insertvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %newret4, %"struct.ap_uint<1>" %oldret5, 3
  %oldret7 = extractvalue %struct.mmStatus %.4, 4
  %newret8 = insertvalue { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %newret6, %"struct.ap_uint<1>" %oldret7, 4
  ret { %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" } %newret8
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>.6246"(%"class.hls::stream<rtlSessionLookupRequest, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i96* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<rtlSessionLookupRequest, 0>"* %0, null
  %3 = icmp eq i96* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>.6249"(%"class.hls::stream<rtlSessionLookupRequest, 0>"* nonnull %0, i96* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupRequest, 0>.6249"(%"class.hls::stream<rtlSessionLookupRequest, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i96* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i96
  %3 = alloca %"class.hls::stream<rtlSessionLookupRequest, 0>"
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
  %9 = call { %struct.threeTupleInternal, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionLookupRequest, 0>s.i96"(i96 %8)
  %newret = extractvalue { %struct.threeTupleInternal, i32 } %9, 0
  %oldret1 = insertvalue %struct.rtlSessionLookupRequest undef, %struct.threeTupleInternal %newret, 0
  %newret2 = extractvalue { %struct.threeTupleInternal, i32 } %9, 1
  %oldret3 = insertvalue %struct.rtlSessionLookupRequest %oldret1, i32 %newret2, 1
  %oldret = insertvalue %"class.hls::stream<rtlSessionLookupRequest, 0>" undef, %struct.rtlSessionLookupRequest %oldret3, 0
  store %"class.hls::stream<rtlSessionLookupRequest, 0>" %oldret, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %3
  %10 = bitcast %"class.hls::stream<rtlSessionLookupRequest, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<rtlSessionLookupRequest, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %struct.threeTupleInternal, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionLookupRequest, 0>s.i96"(i96 %A) #7 {
  %1 = trunc i96 %A to i64
  %2 = and i64 %1, 4294967295
  %3 = trunc i64 %2 to i32
  %.0 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %3, 0
  %.01 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.01, 0
  %.03 = insertvalue %struct.threeTupleInternal undef, %"struct.ap_uint<32>" %.02, 0
  %4 = and i64 %1, 281470681743360
  %5 = lshr i64 %4, 32
  %6 = trunc i64 %5 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %6, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.threeTupleInternal %.03, %"struct.ap_uint<16>" %.06, 1
  %7 = and i64 %1, -281474976710656
  %8 = lshr i64 %7, 48
  %9 = trunc i64 %8 to i16
  %.07 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %9, 0
  %.08 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.08, 0
  %.2 = insertvalue %struct.threeTupleInternal %.1, %"struct.ap_uint<16>" %.09, 2
  %.010 = insertvalue %struct.rtlSessionLookupRequest undef, %struct.threeTupleInternal %.2, 0
  %10 = and i96 %A, -18446744073709551616
  %11 = lshr i96 %10, 64
  %12 = trunc i96 %11 to i32
  %.111 = insertvalue %struct.rtlSessionLookupRequest %.010, i32 %12, 1
  %oldret = extractvalue %struct.rtlSessionLookupRequest %.111, 0
  %newret = insertvalue { %struct.threeTupleInternal, i32 } undef, %struct.threeTupleInternal %oldret, 0
  %oldret1 = extractvalue %struct.rtlSessionLookupRequest %.111, 1
  %newret2 = insertvalue { %struct.threeTupleInternal, i32 } %newret, i32 %oldret1, 1
  ret { %struct.threeTupleInternal, i32 } %newret2
}

; Function Attrs: alwaysinline nounwind readnone
define internal i96 @"_llvm.fpga.pack.bits.i96.s_class.hls::stream<rtlSessionLookupRequest, 0>s"(%"class.hls::stream<rtlSessionLookupRequest, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<rtlSessionLookupRequest, 0>" %A, 0
  %A.0.0 = extractvalue %struct.rtlSessionLookupRequest %A.0, 0
  %A.0.0.0 = extractvalue %struct.threeTupleInternal %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.0.0.0, 0
  %1 = zext i32 %A.0.0.0.0.0.0 to i64
  %A.0.0.1 = extractvalue %struct.threeTupleInternal %A.0.0, 1
  %A.0.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.1.0.0, 0
  %2 = zext i16 %A.0.0.1.0.0.0 to i64
  %3 = shl i64 %2, 32
  %4 = or i64 %3, %1
  %A.0.0.2 = extractvalue %struct.threeTupleInternal %A.0.0, 2
  %A.0.0.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.0.2, 0
  %A.0.0.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.2.0, 0
  %A.0.0.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.2.0.0, 0
  %5 = zext i16 %A.0.0.2.0.0.0 to i64
  %6 = shl i64 %5, 48
  %7 = or i64 %4, %6
  %8 = zext i64 %7 to i96
  %A.0.1 = extractvalue %struct.rtlSessionLookupRequest %A.0, 1
  %9 = zext i32 %A.0.1 to i96
  %10 = shl i96 %9, 64
  %11 = or i96 %10, %8
  ret i96 %11
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>.6258"(i120* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionLookupReply, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i120* %0, null
  %3 = icmp eq %"class.hls::stream<rtlSessionLookupReply, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>.6261"(i120* nonnull align 512 %0, %"class.hls::stream<rtlSessionLookupReply, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionLookupReply, 0>.6261"(i120* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionLookupReply, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<rtlSessionLookupReply, 0>"
  %3 = alloca i113
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<rtlSessionLookupReply, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<rtlSessionLookupReply, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<rtlSessionLookupReply, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<rtlSessionLookupReply, 0>", %"class.hls::stream<rtlSessionLookupReply, 0>"* %2
  %9 = call i113 @"_llvm.fpga.pack.bits.i113.s_class.hls::stream<rtlSessionLookupReply, 0>s"(%"class.hls::stream<rtlSessionLookupReply, 0>" %8)
  store i113 %9, i113* %3
  %10 = bitcast i113* %3 to i8*
  %11 = bitcast i120* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i113 @"_llvm.fpga.pack.bits.i113.s_class.hls::stream<rtlSessionLookupReply, 0>s"(%"class.hls::stream<rtlSessionLookupReply, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<rtlSessionLookupReply, 0>" %A, 0
  %A.0.0 = extractvalue %struct.rtlSessionLookupReply %A.0, 0
  %A.0.0.0 = extractvalue %struct.threeTupleInternal %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.0.0.0, 0
  %1 = zext i32 %A.0.0.0.0.0.0 to i64
  %A.0.0.1 = extractvalue %struct.threeTupleInternal %A.0.0, 1
  %A.0.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.1.0.0, 0
  %2 = zext i16 %A.0.0.1.0.0.0 to i64
  %3 = shl i64 %2, 32
  %4 = or i64 %3, %1
  %A.0.0.2 = extractvalue %struct.threeTupleInternal %A.0.0, 2
  %A.0.0.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.0.2, 0
  %A.0.0.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.2.0, 0
  %A.0.0.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.2.0.0, 0
  %5 = zext i16 %A.0.0.2.0.0.0 to i64
  %6 = shl i64 %5, 48
  %7 = or i64 %4, %6
  %8 = zext i64 %7 to i113
  %A.0.1 = extractvalue %struct.rtlSessionLookupReply %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %9 = zext i16 %A.0.1.0.0.0 to i113
  %10 = shl i113 %9, 64
  %11 = or i113 %10, %8
  %A.0.2 = extractvalue %struct.rtlSessionLookupReply %A.0, 2
  %12 = zext i1 %A.0.2 to i113
  %13 = shl i113 %12, 80
  %14 = or i113 %11, %13
  %A.0.3 = extractvalue %struct.rtlSessionLookupReply %A.0, 3
  %15 = zext i32 %A.0.3 to i113
  %16 = shl i113 %15, 81
  %17 = or i113 %14, %16
  ret i113 %17
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionLookupReply, 0>s.i120"(i120 %A) #7 {
  %1 = trunc i120 %A to i113
  %2 = trunc i113 %1 to i64
  %3 = and i64 %2, 4294967295
  %4 = trunc i64 %3 to i32
  %.0 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %4, 0
  %.01 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.01, 0
  %.03 = insertvalue %struct.threeTupleInternal undef, %"struct.ap_uint<32>" %.02, 0
  %5 = and i64 %2, 281470681743360
  %6 = lshr i64 %5, 32
  %7 = trunc i64 %6 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %7, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.threeTupleInternal %.03, %"struct.ap_uint<16>" %.06, 1
  %8 = and i64 %2, -281474976710656
  %9 = lshr i64 %8, 48
  %10 = trunc i64 %9 to i16
  %.07 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %10, 0
  %.08 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.08, 0
  %.2 = insertvalue %struct.threeTupleInternal %.1, %"struct.ap_uint<16>" %.09, 2
  %.010 = insertvalue %struct.rtlSessionLookupReply undef, %struct.threeTupleInternal %.2, 0
  %11 = and i113 %1, 1208907372870555465154560
  %12 = lshr i113 %11, 64
  %13 = trunc i113 %12 to i16
  %.011 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %13, 0
  %.012 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.011, 0
  %.013 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.012, 0
  %.114 = insertvalue %struct.rtlSessionLookupReply %.010, %"struct.ap_uint<16>" %.013, 1
  %14 = and i113 %1, 1208925819614629174706176
  %15 = lshr i113 %14, 80
  %16 = trunc i113 %15 to i1
  %.215 = insertvalue %struct.rtlSessionLookupReply %.114, i1 %16, 2
  %17 = and i113 %1, -2417851639229258349412352
  %18 = lshr i113 %17, 81
  %19 = trunc i113 %18 to i32
  %.3 = insertvalue %struct.rtlSessionLookupReply %.215, i32 %19, 3
  %oldret = extractvalue %struct.rtlSessionLookupReply %.3, 0
  %newret = insertvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } undef, %struct.threeTupleInternal %oldret, 0
  %oldret1 = extractvalue %struct.rtlSessionLookupReply %.3, 1
  %newret2 = insertvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret, %"struct.ap_uint<16>" %oldret1, 1
  %oldret3 = extractvalue %struct.rtlSessionLookupReply %.3, 2
  %newret4 = insertvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret2, i1 %oldret3, 2
  %oldret5 = extractvalue %struct.rtlSessionLookupReply %.3, 3
  %newret6 = insertvalue { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret4, i32 %oldret5, 3
  ret { %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret6
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>.6270"(%"class.hls::stream<rtlSessionUpdateRequest, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i144* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %0, null
  %3 = icmp eq i144* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>.6273"(%"class.hls::stream<rtlSessionUpdateRequest, 0>"* nonnull %0, i144* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateRequest, 0>.6273"(%"class.hls::stream<rtlSessionUpdateRequest, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i144* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i144
  %3 = alloca %"class.hls::stream<rtlSessionUpdateRequest, 0>"
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
  %9 = call { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionUpdateRequest, 0>s.i144"(i144 %8)
  %newret = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %9, 0
  %oldret1 = insertvalue %struct.rtlSessionUpdateRequest undef, i32 %newret, 0
  %newret2 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %9, 1
  %oldret3 = insertvalue %struct.rtlSessionUpdateRequest %oldret1, %struct.threeTupleInternal %newret2, 1
  %newret4 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %9, 2
  %oldret5 = insertvalue %struct.rtlSessionUpdateRequest %oldret3, %"struct.ap_uint<16>" %newret4, 2
  %newret6 = extractvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %9, 3
  %oldret7 = insertvalue %struct.rtlSessionUpdateRequest %oldret5, i32 %newret6, 3
  %oldret = insertvalue %"class.hls::stream<rtlSessionUpdateRequest, 0>" undef, %struct.rtlSessionUpdateRequest %oldret7, 0
  store %"class.hls::stream<rtlSessionUpdateRequest, 0>" %oldret, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %3
  %10 = bitcast %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %0 to i8*
  call void @fpga_fifo_push_20(i8* %10, i8* %11)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionUpdateRequest, 0>s.i144"(i144 %A) #7 {
  %1 = and i144 %A, 4294967295
  %2 = trunc i144 %1 to i32
  %.0 = insertvalue %struct.rtlSessionUpdateRequest undef, i32 %2, 0
  %3 = and i144 %A, 79228162514264337589248983040
  %4 = lshr i144 %3, 32
  %5 = trunc i144 %4 to i64
  %6 = and i64 %5, 4294967295
  %7 = trunc i64 %6 to i32
  %.01 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %7, 0
  %.02 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.01, 0
  %.03 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.02, 0
  %.04 = insertvalue %struct.threeTupleInternal undef, %"struct.ap_uint<32>" %.03, 0
  %8 = and i64 %5, 281470681743360
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i16
  %.05 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %10, 0
  %.06 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.05, 0
  %.07 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.06, 0
  %.1 = insertvalue %struct.threeTupleInternal %.04, %"struct.ap_uint<16>" %.07, 1
  %11 = and i64 %5, -281474976710656
  %12 = lshr i64 %11, 48
  %13 = trunc i64 %12 to i16
  %.08 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %13, 0
  %.09 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.08, 0
  %.010 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.09, 0
  %.2 = insertvalue %struct.threeTupleInternal %.1, %"struct.ap_uint<16>" %.010, 2
  %.111 = insertvalue %struct.rtlSessionUpdateRequest %.0, %struct.threeTupleInternal %.2, 1
  %14 = and i144 %A, 5192217630372313364192902785269760
  %15 = lshr i144 %14, 96
  %16 = trunc i144 %15 to i16
  %.012 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %16, 0
  %.013 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.012, 0
  %.014 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.013, 0
  %.215 = insertvalue %struct.rtlSessionUpdateRequest %.111, %"struct.ap_uint<16>" %.014, 2
  %17 = and i144 %A, -5192296858534827628530496329220096
  %18 = lshr i144 %17, 112
  %19 = trunc i144 %18 to i32
  %.3 = insertvalue %struct.rtlSessionUpdateRequest %.215, i32 %19, 3
  %oldret = extractvalue %struct.rtlSessionUpdateRequest %.3, 0
  %newret = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } undef, i32 %oldret, 0
  %oldret1 = extractvalue %struct.rtlSessionUpdateRequest %.3, 1
  %newret2 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %newret, %struct.threeTupleInternal %oldret1, 1
  %oldret3 = extractvalue %struct.rtlSessionUpdateRequest %.3, 2
  %newret4 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %newret2, %"struct.ap_uint<16>" %oldret3, 2
  %oldret5 = extractvalue %struct.rtlSessionUpdateRequest %.3, 3
  %newret6 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %newret4, i32 %oldret5, 3
  ret { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i32 } %newret6
}

; Function Attrs: alwaysinline nounwind readnone
define internal i144 @"_llvm.fpga.pack.bits.i144.s_class.hls::stream<rtlSessionUpdateRequest, 0>s"(%"class.hls::stream<rtlSessionUpdateRequest, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<rtlSessionUpdateRequest, 0>" %A, 0
  %A.0.0 = extractvalue %struct.rtlSessionUpdateRequest %A.0, 0
  %1 = zext i32 %A.0.0 to i144
  %A.0.1 = extractvalue %struct.rtlSessionUpdateRequest %A.0, 1
  %A.0.1.0 = extractvalue %struct.threeTupleInternal %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.1.0.0, 0
  %A.0.1.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.1.0.0.0, 0
  %2 = zext i32 %A.0.1.0.0.0.0 to i64
  %A.0.1.1 = extractvalue %struct.threeTupleInternal %A.0.1, 1
  %A.0.1.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1.1, 0
  %A.0.1.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.1.0, 0
  %A.0.1.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.1.0.0, 0
  %3 = zext i16 %A.0.1.1.0.0.0 to i64
  %4 = shl i64 %3, 32
  %5 = or i64 %4, %2
  %A.0.1.2 = extractvalue %struct.threeTupleInternal %A.0.1, 2
  %A.0.1.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.1.2, 0
  %A.0.1.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.2.0, 0
  %A.0.1.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.2.0.0, 0
  %6 = zext i16 %A.0.1.2.0.0.0 to i64
  %7 = shl i64 %6, 48
  %8 = or i64 %5, %7
  %9 = zext i64 %8 to i144
  %10 = shl i144 %9, 32
  %11 = or i144 %10, %1
  %A.0.2 = extractvalue %struct.rtlSessionUpdateRequest %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.2.0.0, 0
  %12 = zext i16 %A.0.2.0.0.0 to i144
  %13 = shl i144 %12, 96
  %14 = or i144 %11, %13
  %A.0.3 = extractvalue %struct.rtlSessionUpdateRequest %A.0, 3
  %15 = zext i32 %A.0.3 to i144
  %16 = shl i144 %15, 112
  %17 = or i144 %14, %16
  ret i144 %17
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>.6282"(i152* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateReply, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i152* %0, null
  %3 = icmp eq %"class.hls::stream<rtlSessionUpdateReply, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>.6285"(i152* nonnull align 512 %0, %"class.hls::stream<rtlSessionUpdateReply, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rtlSessionUpdateReply, 0>.6285"(i152* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rtlSessionUpdateReply, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<rtlSessionUpdateReply, 0>"
  %3 = alloca i145
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<rtlSessionUpdateReply, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_20(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<rtlSessionUpdateReply, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<rtlSessionUpdateReply, 0>"* %1 to i8*
  call void @fpga_fifo_pop_20(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<rtlSessionUpdateReply, 0>", %"class.hls::stream<rtlSessionUpdateReply, 0>"* %2
  %9 = call i145 @"_llvm.fpga.pack.bits.i145.s_class.hls::stream<rtlSessionUpdateReply, 0>s"(%"class.hls::stream<rtlSessionUpdateReply, 0>" %8)
  store i145 %9, i145* %3
  %10 = bitcast i145* %3 to i8*
  %11 = bitcast i152* %0 to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i145 @"_llvm.fpga.pack.bits.i145.s_class.hls::stream<rtlSessionUpdateReply, 0>s"(%"class.hls::stream<rtlSessionUpdateReply, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<rtlSessionUpdateReply, 0>" %A, 0
  %A.0.0 = extractvalue %struct.rtlSessionUpdateReply %A.0, 0
  %1 = zext i32 %A.0.0 to i145
  %A.0.1 = extractvalue %struct.rtlSessionUpdateReply %A.0, 1
  %A.0.1.0 = extractvalue %struct.threeTupleInternal %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.1.0.0, 0
  %A.0.1.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.1.0.0.0, 0
  %2 = zext i32 %A.0.1.0.0.0.0 to i64
  %A.0.1.1 = extractvalue %struct.threeTupleInternal %A.0.1, 1
  %A.0.1.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1.1, 0
  %A.0.1.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.1.0, 0
  %A.0.1.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.1.0.0, 0
  %3 = zext i16 %A.0.1.1.0.0.0 to i64
  %4 = shl i64 %3, 32
  %5 = or i64 %4, %2
  %A.0.1.2 = extractvalue %struct.threeTupleInternal %A.0.1, 2
  %A.0.1.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.1.2, 0
  %A.0.1.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.2.0, 0
  %A.0.1.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.2.0.0, 0
  %6 = zext i16 %A.0.1.2.0.0.0 to i64
  %7 = shl i64 %6, 48
  %8 = or i64 %5, %7
  %9 = zext i64 %8 to i145
  %10 = shl i145 %9, 32
  %11 = or i145 %10, %1
  %A.0.2 = extractvalue %struct.rtlSessionUpdateReply %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<16>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.2.0.0, 0
  %12 = zext i16 %A.0.2.0.0.0 to i145
  %13 = shl i145 %12, 96
  %14 = or i145 %11, %13
  %A.0.3 = extractvalue %struct.rtlSessionUpdateReply %A.0, 3
  %15 = zext i1 %A.0.3 to i145
  %16 = shl i145 %15, 112
  %17 = or i145 %14, %16
  %A.0.4 = extractvalue %struct.rtlSessionUpdateReply %A.0, 4
  %18 = zext i32 %A.0.4 to i145
  %19 = shl i145 %18, 113
  %20 = or i145 %17, %19
  ret i145 %20
}

; Function Attrs: alwaysinline nounwind readnone
define internal { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rtlSessionUpdateReply, 0>s.i152"(i152 %A) #7 {
  %1 = trunc i152 %A to i145
  %2 = and i145 %1, 4294967295
  %3 = trunc i145 %2 to i32
  %.0 = insertvalue %struct.rtlSessionUpdateReply undef, i32 %3, 0
  %4 = and i145 %1, 79228162514264337589248983040
  %5 = lshr i145 %4, 32
  %6 = trunc i145 %5 to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %7 to i32
  %.01 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %8, 0
  %.02 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.01, 0
  %.03 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.02, 0
  %.04 = insertvalue %struct.threeTupleInternal undef, %"struct.ap_uint<32>" %.03, 0
  %9 = and i64 %6, 281470681743360
  %10 = lshr i64 %9, 32
  %11 = trunc i64 %10 to i16
  %.05 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %11, 0
  %.06 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.05, 0
  %.07 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.06, 0
  %.1 = insertvalue %struct.threeTupleInternal %.04, %"struct.ap_uint<16>" %.07, 1
  %12 = and i64 %6, -281474976710656
  %13 = lshr i64 %12, 48
  %14 = trunc i64 %13 to i16
  %.08 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %14, 0
  %.09 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.08, 0
  %.010 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.09, 0
  %.2 = insertvalue %struct.threeTupleInternal %.1, %"struct.ap_uint<16>" %.010, 2
  %.111 = insertvalue %struct.rtlSessionUpdateReply %.0, %struct.threeTupleInternal %.2, 1
  %15 = and i145 %1, 5192217630372313364192902785269760
  %16 = lshr i145 %15, 96
  %17 = trunc i145 %16 to i16
  %.012 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %17, 0
  %.013 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.012, 0
  %.014 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.013, 0
  %.215 = insertvalue %struct.rtlSessionUpdateReply %.111, %"struct.ap_uint<16>" %.014, 2
  %18 = and i145 %1, 5192296858534827628530496329220096
  %19 = lshr i145 %18, 112
  %20 = trunc i145 %19 to i1
  %.3 = insertvalue %struct.rtlSessionUpdateReply %.215, i1 %20, 3
  %21 = and i145 %1, -10384593717069655257060992658440192
  %22 = lshr i145 %21, 113
  %23 = trunc i145 %22 to i32
  %.4 = insertvalue %struct.rtlSessionUpdateReply %.3, i32 %23, 4
  %oldret = extractvalue %struct.rtlSessionUpdateReply %.4, 0
  %newret = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } undef, i32 %oldret, 0
  %oldret1 = extractvalue %struct.rtlSessionUpdateReply %.4, 1
  %newret2 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret, %struct.threeTupleInternal %oldret1, 1
  %oldret3 = extractvalue %struct.rtlSessionUpdateReply %.4, 2
  %newret4 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret2, %"struct.ap_uint<16>" %oldret3, 2
  %oldret5 = extractvalue %struct.rtlSessionUpdateReply %.4, 3
  %newret6 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret4, i1 %oldret5, 3
  %oldret7 = extractvalue %struct.rtlSessionUpdateReply %.4, 4
  %newret8 = insertvalue { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret6, i32 %oldret7, 4
  ret { i32, %struct.threeTupleInternal, %"struct.ap_uint<16>", i1, i32 } %newret8
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appNotification, 0>.6294"(%"class.hls::stream<appNotification, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i88* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<appNotification, 0>"* %0, null
  %3 = icmp eq i88* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appNotification, 0>.6297"(%"class.hls::stream<appNotification, 0>"* nonnull %0, i88* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appNotification, 0>.6297"(%"class.hls::stream<appNotification, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i88* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<32>", %"struct.ap_uint<16>", i1 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appNotification, 0>s.i88"(i88 %A) #7 {
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
define internal i81 @"_llvm.fpga.pack.bits.i81.s_class.hls::stream<appNotification, 0>s"(%"class.hls::stream<appNotification, 0>" %A) #7 {
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appReadRequest, 0>"(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appReadRequest, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"class.hls::stream<appReadRequest, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appReadRequest, 0>.6309"(i32* nonnull align 512 %0, %"class.hls::stream<appReadRequest, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appReadRequest, 0>.6309"(i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appReadRequest, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<appReadRequest, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<appReadRequest, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<appReadRequest, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<appReadRequest, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<appReadRequest, 0>", %"class.hls::stream<appReadRequest, 0>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<appReadRequest, 0>s"(%"class.hls::stream<appReadRequest, 0>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<appReadRequest, 0>s"(%"class.hls::stream<appReadRequest, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<appReadRequest, 0>" %A, 0
  %A.0.0 = extractvalue %struct.appReadRequest %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i32
  %A.0.1 = extractvalue %struct.appReadRequest %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<16>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i32
  %3 = shl i32 %2, 16
  %4 = or i32 %3, %1
  ret i32 %4
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appReadRequest, 0>.6315"(%"class.hls::stream<appReadRequest, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<appReadRequest, 0>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appReadRequest, 0>.6318"(%"class.hls::stream<appReadRequest, 0>"* nonnull %0, i32* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appReadRequest, 0>.6318"(%"class.hls::stream<appReadRequest, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<appReadRequest, 0>"
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
  %9 = call { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appReadRequest, 0>s.i32"(i32 %8)
  %newret = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %9, 0
  %oldret1 = insertvalue %struct.appReadRequest undef, %"struct.ap_uint<16>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %9, 1
  %oldret3 = insertvalue %struct.appReadRequest %oldret1, %"struct.ap_uint<16>" %newret2, 1
  %oldret = insertvalue %"class.hls::stream<appReadRequest, 0>" undef, %struct.appReadRequest %oldret3, 0
  store %"class.hls::stream<appReadRequest, 0>" %oldret, %"class.hls::stream<appReadRequest, 0>"* %3
  %10 = bitcast %"class.hls::stream<appReadRequest, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<appReadRequest, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appReadRequest, 0>s.i32"(i32 %A) #7 {
  %1 = and i32 %A, 65535
  %2 = trunc i32 %1 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.appReadRequest undef, %"struct.ap_uint<16>" %.02, 0
  %3 = and i32 %A, -65536
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.05, 0
  %.1 = insertvalue %struct.appReadRequest %.03, %"struct.ap_uint<16>" %.06, 1
  %oldret = extractvalue %struct.appReadRequest %.1, 0
  %newret = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } undef, %"struct.ap_uint<16>" %oldret, 0
  %oldret1 = extractvalue %struct.appReadRequest %.1, 1
  %newret2 = insertvalue { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %newret, %"struct.ap_uint<16>" %oldret1, 1
  ret { %"struct.ap_uint<16>", %"struct.ap_uint<16>" } %newret2
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ipTuple, 0>.6322"(%"class.hls::stream<ipTuple, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i48* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ipTuple, 0>"* %0, null
  %3 = icmp eq i48* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ipTuple, 0>.6325"(%"class.hls::stream<ipTuple, 0>"* nonnull %0, i48* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ipTuple, 0>.6325"(%"class.hls::stream<ipTuple, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i48* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<ipTuple, 0>s.i48"(i48 %A) #7 {
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
define internal i48 @"_llvm.fpga.pack.bits.i48.s_class.hls::stream<ipTuple, 0>s"(%"class.hls::stream<ipTuple, 0>" %A) #7 {
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<openStatus, 0>.6334"(i72* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<openStatus, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i72* %0, null
  %3 = icmp eq %"class.hls::stream<openStatus, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<openStatus, 0>.6337"(i72* nonnull align 512 %0, %"class.hls::stream<openStatus, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<openStatus, 0>.6337"(i72* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<openStatus, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i72 @"_llvm.fpga.pack.bits.i72.s_class.hls::stream<openStatus, 0>s"(%"class.hls::stream<openStatus, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<openStatus, 0>" %A, 0
  %A.0.0 = extractvalue %struct.openStatus %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<16>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i72
  %A.0.1 = extractvalue %struct.openStatus %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<8>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"class.std::ios_base::Init" %A.0.1.0.0, 0
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
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<8>", %"struct.ap_uint<32>", %"struct.ap_uint<16>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<openStatus, 0>s.i72"(i72 %A) #7 {
  %1 = and i72 %A, 65535
  %2 = trunc i72 %1 to i16
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.01, 0
  %.03 = insertvalue %struct.openStatus undef, %"struct.ap_uint<16>" %.02, 0
  %3 = and i72 %A, 16711680
  %4 = lshr i72 %3, 16
  %5 = trunc i72 %4 to i8
  %.04 = insertvalue %"class.std::ios_base::Init" undef, i8 %5, 0
  %.05 = insertvalue %"struct.ap_int_base<8, false>" undef, %"class.std::ios_base::Init" %.04, 0
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<appTxRsp, 0>.6351"(i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxRsp, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq %"class.hls::stream<appTxRsp, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<appTxRsp, 0>.6354"(i64* nonnull align 512 %0, %"class.hls::stream<appTxRsp, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<appTxRsp, 0>.6354"(i64* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<appTxRsp, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<appTxRsp, 0>s"(%"class.hls::stream<appTxRsp, 0>" %A) #7 {
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
define internal { %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<30>", %"struct.ap_uint<2>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<appTxRsp, 0>s.i64"(i64 %A) #7 {
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
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6442"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6442"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
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
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6448"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6451"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.6451"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_toe_top_hw(i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i72*, i72*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i120*, i152*, i96*, i144*, %"class.hls::stream<ap_uint<16>, 0>"*, i32*, i48*, %"class.hls::stream<ap_uint<16>, 0>"*, i32*, i512*, i64*, i64*, i1*, %"struct.ssdm_int<1, false>"*, i88*, %"class.hls::stream<ap_uint<16>, 0>"*, i512*, i64*, i64*, i1*, i72*, i64*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<32>"*, i16*)

define void @toe_top_hw_stub_wrapper(i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i72*, i72*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i120*, i152*, i96*, i144*, %"class.hls::stream<ap_uint<16>, 0>"*, i32*, i48*, %"class.hls::stream<ap_uint<16>, 0>"*, i32*, i512*, i64*, i64*, i1*, %"struct.ssdm_int<1, false>"*, i88*, %"class.hls::stream<ap_uint<16>, 0>"*, i512*, i64*, i64*, i1*, i72*, i64*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<32>"*, i16*) #8 {
entry:
  %53 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %54 = alloca %"class.hls::stream<mmStatus, 0>"
  %55 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %56 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %57 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %58 = alloca %"class.hls::stream<mmCmd, 0>"
  %59 = alloca %"class.hls::stream<mmCmd, 0>"
  %60 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %61 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %62 = alloca %"class.hls::stream<rtlSessionLookupReply, 0>"
  %63 = alloca %"class.hls::stream<rtlSessionUpdateReply, 0>"
  %64 = alloca %"class.hls::stream<rtlSessionLookupRequest, 0>"
  %65 = alloca %"class.hls::stream<rtlSessionUpdateRequest, 0>"
  %66 = alloca %"class.hls::stream<appReadRequest, 0>"
  %67 = alloca %"class.hls::stream<ipTuple, 0>"
  %68 = alloca %"class.hls::stream<appReadRequest, 0>"
  %69 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %70 = alloca %"class.hls::stream<appNotification, 0>"
  %71 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %72 = alloca %"class.hls::stream<openStatus, 0>"
  %73 = alloca %"class.hls::stream<appTxRsp, 0>"
  %74 = alloca %"struct.ap_uint<16>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %53, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<mmStatus, 0>"* %54, i8* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %55, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %56, i512* %9, i64* %10, i64* %11, i1* %12, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %57, i512* %13, i64* %14, i64* %15, i1* %16, %"class.hls::stream<mmCmd, 0>"* %58, i72* %17, %"class.hls::stream<mmCmd, 0>"* %59, i72* %18, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %60, i512* %19, i64* %20, i64* %21, i1* %22, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %61, i512* %23, i64* %24, i64* %25, i1* %26, %"class.hls::stream<rtlSessionLookupReply, 0>"* %62, i120* %27, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %63, i152* %28, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %64, i96* %29, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %65, i144* %30, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %31, %"class.hls::stream<appReadRequest, 0>"* %66, i32* %32, %"class.hls::stream<ipTuple, 0>"* %67, i48* %33, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %34, %"class.hls::stream<appReadRequest, 0>"* %68, i32* %35, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %69, i512* %36, i64* %37, i64* %38, i1* %39, %"struct.ssdm_int<1, false>"* null, %"struct.ssdm_int<1, false>"* %40, %"class.hls::stream<appNotification, 0>"* %70, i88* %41, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %71, i512* %43, i64* %44, i64* %45, i1* %46, %"class.hls::stream<openStatus, 0>"* %72, i72* %47, %"class.hls::stream<appTxRsp, 0>"* %73, i64* %48, %"struct.ap_uint<16>"* %74, i16* %52)
  call void @toe_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %53, %"class.hls::stream<mmStatus, 0>"* %54, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %55, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %56, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %57, %"class.hls::stream<mmCmd, 0>"* %58, %"class.hls::stream<mmCmd, 0>"* %59, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %60, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %61, %"class.hls::stream<rtlSessionLookupReply, 0>"* %62, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %63, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %64, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %65, %"class.hls::stream<ap_uint<16>, 0>"* %31, %"class.hls::stream<appReadRequest, 0>"* %66, %"class.hls::stream<ipTuple, 0>"* %67, %"class.hls::stream<ap_uint<16>, 0>"* %34, %"class.hls::stream<appReadRequest, 0>"* %68, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %69, %"struct.ssdm_int<1, false>"* %40, %"class.hls::stream<appNotification, 0>"* %70, %"class.hls::stream<ap_uint<16>, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %71, %"class.hls::stream<openStatus, 0>"* %72, %"class.hls::stream<appTxRsp, 0>"* %73, %"struct.ap_uint<16>"* %49, %"struct.ap_uint<16>"* %50, %"struct.ap_uint<32>"* %51, %"struct.ap_uint<16>"* %74)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %53, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<mmStatus, 0>"* %54, i8* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %55, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %56, i512* %9, i64* %10, i64* %11, i1* %12, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %57, i512* %13, i64* %14, i64* %15, i1* %16, %"class.hls::stream<mmCmd, 0>"* %58, i72* %17, %"class.hls::stream<mmCmd, 0>"* %59, i72* %18, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %60, i512* %19, i64* %20, i64* %21, i1* %22, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %61, i512* %23, i64* %24, i64* %25, i1* %26, %"class.hls::stream<rtlSessionLookupReply, 0>"* %62, i120* %27, %"class.hls::stream<rtlSessionUpdateReply, 0>"* %63, i152* %28, %"class.hls::stream<rtlSessionLookupRequest, 0>"* %64, i96* %29, %"class.hls::stream<rtlSessionUpdateRequest, 0>"* %65, i144* %30, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %31, %"class.hls::stream<appReadRequest, 0>"* %66, i32* %32, %"class.hls::stream<ipTuple, 0>"* %67, i48* %33, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %34, %"class.hls::stream<appReadRequest, 0>"* %68, i32* %35, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %69, i512* %36, i64* %37, i64* %38, i1* %39, %"struct.ssdm_int<1, false>"* null, %"struct.ssdm_int<1, false>"* %40, %"class.hls::stream<appNotification, 0>"* %70, i88* %41, %"class.hls::stream<ap_uint<16>, 0>"* null, %"class.hls::stream<ap_uint<16>, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %71, i512* %43, i64* %44, i64* %45, i1* %46, %"class.hls::stream<openStatus, 0>"* %72, i72* %47, %"class.hls::stream<appTxRsp, 0>"* %73, i64* %48, %"struct.ap_uint<16>"* %74, i16* %52)
  ret void
}

declare void @toe_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<mmStatus, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<mmCmd, 0>"*, %"class.hls::stream<mmCmd, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<rtlSessionLookupReply, 0>"*, %"class.hls::stream<rtlSessionUpdateReply, 0>"*, %"class.hls::stream<rtlSessionLookupRequest, 0>"*, %"class.hls::stream<rtlSessionUpdateRequest, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<appReadRequest, 0>"*, %"class.hls::stream<ipTuple, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<appReadRequest, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"struct.ssdm_int<1, false>"*, %"class.hls::stream<appNotification, 0>"*, %"class.hls::stream<ap_uint<16>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<openStatus, 0>"*, %"class.hls::stream<appTxRsp, 0>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<16>"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_5(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_20(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_5(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_20(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_5(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_20(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

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
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
