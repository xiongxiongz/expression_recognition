; ModuleID = 'G:/用户/桌面/研究生学习/软硬件协同/traffic_light_recognition/HLS/pool/pool/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }

; Function Attrs: noinline
define void @apatb_Pool_ir(%"struct.ap_uint<16>"* nocapture readonly %CHin, %"struct.ap_uint<16>"* nocapture readonly %Hin, %"struct.ap_uint<16>"* nocapture readonly %Win, %"struct.ap_uint<8>"* nocapture readonly %Kx, %"struct.ap_uint<8>"* nocapture readonly %Ky, %"struct.ap_uint<2>"* nocapture readonly %mode, float* noalias nocapture nonnull readonly %feature_in, float* noalias nocapture nonnull %feature_out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8589934588)
  %feature_in_copy = bitcast i8* %malloccall to [2147483647 x float]*
  %malloccall1 = tail call i8* @malloc(i64 8589934588)
  %feature_out_copy = bitcast i8* %malloccall1 to [2147483647 x float]*
  %0 = bitcast float* %feature_in to [2147483647 x float]*
  %1 = bitcast float* %feature_out to [2147483647 x float]*
  call fastcc void @copy_in([2147483647 x float]* nonnull %0, [2147483647 x float]* %feature_in_copy, [2147483647 x float]* nonnull %1, [2147483647 x float]* %feature_out_copy)
  %2 = getelementptr inbounds [2147483647 x float], [2147483647 x float]* %feature_in_copy, i32 0, i32 0
  %3 = getelementptr inbounds [2147483647 x float], [2147483647 x float]* %feature_out_copy, i32 0, i32 0
  call void @apatb_Pool_hw(%"struct.ap_uint<16>"* %CHin, %"struct.ap_uint<16>"* %Hin, %"struct.ap_uint<16>"* %Win, %"struct.ap_uint<8>"* %Kx, %"struct.ap_uint<8>"* %Ky, %"struct.ap_uint<2>"* %mode, float* %2, float* %3)
  call void @copy_back([2147483647 x float]* %0, [2147483647 x float]* %feature_in_copy, [2147483647 x float]* %1, [2147483647 x float]* %feature_out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %1, [2147483647 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %3, [2147483647 x float]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* noalias, [2147483647 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2147483647 x float]* %0, null
  %3 = icmp eq [2147483647 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2147483647 x float], [2147483647 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2147483647 x float], [2147483647 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2147483647
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %0, [2147483647 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %2, [2147483647 x float]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_Pool_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<2>"*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %2, [2147483647 x float]* %3)
  ret void
}

define void @Pool_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<2>"*, float*, float*) #4 {
entry:
  %8 = bitcast float* %6 to [2147483647 x float]*
  %9 = bitcast float* %7 to [2147483647 x float]*
  call void @copy_out([2147483647 x float]* null, [2147483647 x float]* %8, [2147483647 x float]* null, [2147483647 x float]* %9)
  %10 = bitcast [2147483647 x float]* %8 to float*
  %11 = bitcast [2147483647 x float]* %9 to float*
  call void @Pool_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, %"struct.ap_uint<16>"* %2, %"struct.ap_uint<8>"* %3, %"struct.ap_uint<8>"* %4, %"struct.ap_uint<2>"* %5, float* %10, float* %11)
  call void @copy_in([2147483647 x float]* null, [2147483647 x float]* %8, [2147483647 x float]* null, [2147483647 x float]* %9)
  ret void
}

declare void @Pool_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<2>"*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
