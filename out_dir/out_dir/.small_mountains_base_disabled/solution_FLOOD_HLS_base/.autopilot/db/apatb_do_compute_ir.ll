; ModuleID = '/home/acce2632/acce-fpga/.small_mountains_base_disabled/solution_FLOOD_HLS_base/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.parameters = type { [60 x [80 x float]], float, i32, float, [9 x %struct.Cloud_t] }
%struct.Cloud_t = type { float, float, float, float, float, float, i32 }
%struct.results = type { i32, float, double, i32, double, i64, i64, i64 }

; Function Attrs: noinline
define void @apatb_do_compute_ir(%struct.parameters* noalias nonnull %p, %struct.results* noalias nocapture nonnull %r) local_unnamed_addr #0 {
entry:
  %malloccall.0 = call i8* @malloc(i64 19200)
  %p_copy.0 = bitcast i8* %malloccall.0 to [60 x [80 x float]]*
  %malloccall.1 = call i8* @malloc(i64 4)
  %p_copy.1 = bitcast i8* %malloccall.1 to float*
  %malloccall.2 = call i8* @malloc(i64 4)
  %p_copy.2 = bitcast i8* %malloccall.2 to i32*
  %malloccall.3 = call i8* @malloc(i64 4)
  %p_copy.3 = bitcast i8* %malloccall.3 to float*
  %malloccall.4 = call i8* @malloc(i64 288)
  %p_copy.4 = bitcast i8* %malloccall.4 to [9 x i224]*
  %r_copy = alloca i416, align 512
  call fastcc void @copy_in(%struct.parameters* nonnull %p, [60 x [80 x float]]* %p_copy.0, float* %p_copy.1, i32* %p_copy.2, float* %p_copy.3, [9 x i224]* %p_copy.4, %struct.results* nonnull %r, i416* nonnull align 512 %r_copy)
  call void @apatb_do_compute_hw([60 x [80 x float]]* %p_copy.0, float* %p_copy.1, i32* %p_copy.2, float* %p_copy.3, [9 x i224]* %p_copy.4, i416* %r_copy)
  call void @copy_back(%struct.parameters* %p, [60 x [80 x float]]* %p_copy.0, float* %p_copy.1, i32* %p_copy.2, float* %p_copy.3, [9 x i224]* %p_copy.4, %struct.results* %r, i416* %r_copy)
  call void @free(i8* %malloccall.0)
  call void @free(i8* %malloccall.1)
  call void @free(i8* %malloccall.2)
  call void @free(i8* %malloccall.3)
  call void @free(i8* %malloccall.4)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%struct.parameters* noalias readonly "unpacked"="0", [60 x [80 x float]]* noalias "unpacked"="1.0" %.0, float* noalias nocapture "unpacked"="1.1" %.1, i32* noalias nocapture "unpacked"="1.2" %.2, float* noalias nocapture "unpacked"="1.3" %.3, [9 x i224]* noalias "unpacked"="1.4" %.4, %struct.results* noalias readonly "unpacked"="2", i416* noalias align 512 "unpacked"="3") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.parameters([60 x [80 x float]]* %.0, float* %.1, i32* %.2, float* %.3, [9 x i224]* %.4, %struct.parameters* %0)
  call fastcc void @onebyonecpy_hls.p0struct.results.216(i416* align 512 %2, %struct.results* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.parameters([60 x [80 x float]]* noalias "unpacked"="0.0" %dst.01, float* noalias nocapture "unpacked"="0.1" %dst.12, i32* noalias nocapture "unpacked"="0.2" %dst.23, float* noalias nocapture "unpacked"="0.3" %dst.34, [9 x i224]* noalias "unpacked"="0.4" %dst.45, %struct.parameters* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %struct.parameters* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct.parameters, %struct.parameters* %src, i64 0, i32 0
  call void @arraycpy_hls.p0a60a80f32([60 x [80 x float]]* %dst.01, [60 x [80 x float]]* %src.0, i64 60)
  %src.1 = getelementptr %struct.parameters, %struct.parameters* %src, i64 0, i32 1
  %1 = load float, float* %src.1, align 4
  store float %1, float* %dst.12, align 4
  %src.2 = getelementptr %struct.parameters, %struct.parameters* %src, i64 0, i32 2
  %2 = load i32, i32* %src.2, align 4
  store i32 %2, i32* %dst.23, align 4
  %src.3 = getelementptr %struct.parameters, %struct.parameters* %src, i64 0, i32 3
  %3 = load float, float* %src.3, align 4
  store float %3, float* %dst.34, align 4
  %src.4 = getelementptr %struct.parameters, %struct.parameters* %src, i64 0, i32 4
  call void @arraycpy_hls.p0a9struct.Cloud_t([9 x i224]* %dst.45, [9 x %struct.Cloud_t]* %src.4, i64 9)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a60a80f32([60 x [80 x float]]* %dst, [60 x [80 x float]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [60 x [80 x float]]* %src, null
  %1 = icmp eq [60 x [80 x float]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [60 x [80 x float]], [60 x [80 x float]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [60 x [80 x float]], [60 x [80 x float]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a80f32([80 x float]* %dst.addr, [80 x float]* %src.addr, i64 80)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a80f32([80 x float]* %dst, [80 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [80 x float]* %src, null
  %1 = icmp eq [80 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [80 x float], [80 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [80 x float], [80 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a9struct.Cloud_t([9 x i224]* %dst, [9 x %struct.Cloud_t]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [9 x %struct.Cloud_t]* %src, null
  %1 = icmp eq [9 x i224]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond15 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond15, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx16 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 0
  %3 = getelementptr [9 x i224], [9 x i224]* %dst, i64 0, i64 %for.loop.idx16
  %4 = load float, float* %src.addr.01, align 4
  %5 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %4)
  %6 = load i224, i224* %3, align 4
  %7 = zext i32 %5 to i224
  %8 = and i224 %6, -4294967296
  %.partset6 = or i224 %8, %7
  store i224 %.partset6, i224* %3, align 4
  %src.addr.13 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 1
  %9 = load float, float* %src.addr.13, align 4
  %10 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %9)
  %11 = zext i32 %10 to i224
  %12 = shl i224 %11, 32
  %13 = and i224 %.partset6, -18446744069414584321
  %.partset5 = or i224 %13, %12
  store i224 %.partset5, i224* %3, align 4
  %src.addr.25 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 2
  %14 = load float, float* %src.addr.25, align 4
  %15 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %14)
  %16 = zext i32 %15 to i224
  %17 = shl i224 %16, 64
  %18 = and i224 %.partset5, -79228162495817593519834398721
  %.partset4 = or i224 %18, %17
  store i224 %.partset4, i224* %3, align 4
  %src.addr.37 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 3
  %19 = load float, float* %src.addr.37, align 4
  %20 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %19)
  %21 = zext i32 %20 to i224
  %22 = shl i224 %21, 96
  %23 = and i224 %.partset4, -340282366841710300949110269838224261121
  %.partset3 = or i224 %23, %22
  store i224 %.partset3, i224* %3, align 4
  %src.addr.49 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 4
  %24 = load float, float* %src.addr.49, align 4
  %25 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %24)
  %26 = zext i32 %25 to i224
  %27 = shl i224 %26, 128
  %28 = and i224 %.partset3, -1461501636990620551282746369252908412224164331521
  %.partset2 = or i224 %28, %27
  store i224 %.partset2, i224* %3, align 4
  %src.addr.511 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 5
  %29 = load float, float* %src.addr.511, align 4
  %30 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %29)
  %31 = zext i32 %30 to i224
  %32 = shl i224 %31, 160
  %33 = and i224 %.partset2, -6277101733925179126504886505003981583386072424808101969921
  %.partset1 = or i224 %33, %32
  store i224 %.partset1, i224* %3, align 4
  %src.addr.613 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %src, i64 0, i64 %for.loop.idx16, i32 6
  %34 = load i32, i32* %src.addr.613, align 4
  %35 = zext i32 %34 to i224
  %36 = shl i224 %35, 192
  %37 = and i224 %.partset1, 6277101735386680763835789423207666416102355444464034512895
  %.partset = or i224 %37, %36
  store i224 %.partset, i224* %3, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.results(%struct.results* noalias %dst, i416* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %struct.results* %dst, null
  %1 = icmp eq i416* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 0
  %3 = load i416, i416* %src, align 512
  %.partselect7 = trunc i416 %3 to i32
  store i32 %.partselect7, i32* %dst.0, align 512
  %dst.1 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 1
  %4 = lshr i416 %3, 32
  %.partselect6 = trunc i416 %4 to i32
  %5 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect6)
  store float %5, float* %dst.1, align 4
  %dst.2 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 2
  %6 = lshr i416 %3, 64
  %.partselect5 = trunc i416 %6 to i64
  %7 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect5)
  store double %7, double* %dst.2, align 8
  %dst.3 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 3
  %8 = lshr i416 %3, 128
  %.partselect4 = trunc i416 %8 to i32
  store i32 %.partselect4, i32* %dst.3, align 16
  %dst.4 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 4
  %9 = lshr i416 %3, 160
  %.partselect3 = trunc i416 %9 to i64
  %10 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect3)
  store double %10, double* %dst.4, align 8
  %dst.5 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 5
  %11 = lshr i416 %3, 224
  %.partselect2 = trunc i416 %11 to i64
  store i64 %.partselect2, i64* %dst.5, align 32
  %dst.6 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 6
  %12 = lshr i416 %3, 288
  %.partselect1 = trunc i416 %12 to i64
  store i64 %.partselect1, i64* %dst.6, align 8
  %dst.7 = getelementptr %struct.results, %struct.results* %dst, i64 0, i32 7
  %13 = lshr i416 %3, 352
  %.partselect = trunc i416 %13 to i64
  store i64 %.partselect, i64* %dst.7, align 16
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%struct.parameters* noalias "unpacked"="0", [60 x [80 x float]]* noalias readonly "unpacked"="1.0" %.0, float* noalias nocapture readonly "unpacked"="1.1" %.1, i32* noalias nocapture readonly "unpacked"="1.2" %.2, float* noalias nocapture readonly "unpacked"="1.3" %.3, [9 x i224]* noalias readonly "unpacked"="1.4" %.4, %struct.results* noalias "unpacked"="2", i416* noalias readonly align 512 "unpacked"="3") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.parameters.209(%struct.parameters* %0, [60 x [80 x float]]* %.0, float* %.1, i32* %.2, float* %.3, [9 x i224]* %.4)
  call fastcc void @onebyonecpy_hls.p0struct.results(%struct.results* %1, i416* align 512 %2)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.parameters.209(%struct.parameters* noalias "unpacked"="0" %dst, [60 x [80 x float]]* noalias readonly "unpacked"="1.0" %src.01, float* noalias nocapture readonly "unpacked"="1.1" %src.12, i32* noalias nocapture readonly "unpacked"="1.2" %src.23, float* noalias nocapture readonly "unpacked"="1.3" %src.34, [9 x i224]* noalias readonly "unpacked"="1.4" %src.45) unnamed_addr #2 {
entry:
  %0 = icmp eq %struct.parameters* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct.parameters, %struct.parameters* %dst, i64 0, i32 0
  call void @arraycpy_hls.p0a60a80f32([60 x [80 x float]]* %dst.0, [60 x [80 x float]]* %src.01, i64 60)
  %dst.1 = getelementptr %struct.parameters, %struct.parameters* %dst, i64 0, i32 1
  %1 = load float, float* %src.12, align 4
  store float %1, float* %dst.1, align 4
  %dst.2 = getelementptr %struct.parameters, %struct.parameters* %dst, i64 0, i32 2
  %2 = load i32, i32* %src.23, align 4
  store i32 %2, i32* %dst.2, align 4
  %dst.3 = getelementptr %struct.parameters, %struct.parameters* %dst, i64 0, i32 3
  %3 = load float, float* %src.34, align 4
  store float %3, float* %dst.3, align 4
  %dst.4 = getelementptr %struct.parameters, %struct.parameters* %dst, i64 0, i32 4
  call void @arraycpy_hls.p0a9struct.Cloud_t.224([9 x %struct.Cloud_t]* %dst.4, [9 x i224]* %src.45, i64 9)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.results.216(i416* noalias align 512 %dst, %struct.results* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i416* %dst, null
  %1 = icmp eq %struct.results* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 0
  %3 = load i32, i32* %src.0, align 4
  %4 = zext i32 %3 to i416
  %src.1 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 1
  %5 = load float, float* %src.1, align 4
  %6 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %5)
  %7 = zext i32 %6 to i416
  %8 = shl i416 %7, 32
  %.partset6 = or i416 %8, %4
  %src.2 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 2
  %9 = load double, double* %src.2, align 8
  %10 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %9)
  %11 = zext i64 %10 to i416
  %12 = shl i416 %11, 64
  %.partset5 = or i416 %.partset6, %12
  %src.3 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 3
  %13 = load i32, i32* %src.3, align 4
  %14 = zext i32 %13 to i416
  %15 = shl i416 %14, 128
  %.partset4 = or i416 %.partset5, %15
  %src.4 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 4
  %16 = load double, double* %src.4, align 8
  %17 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %16)
  %18 = zext i64 %17 to i416
  %19 = shl i416 %18, 160
  %src.5 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 5
  %20 = load i64, i64* %src.5, align 8
  %21 = zext i64 %20 to i416
  %22 = shl i416 %21, 224
  %src.6 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 6
  %23 = load i64, i64* %src.6, align 8
  %24 = zext i64 %23 to i416
  %25 = shl i416 %24, 288
  %src.7 = getelementptr %struct.results, %struct.results* %src, i64 0, i32 7
  %26 = load i64, i64* %src.7, align 8
  %27 = zext i64 %26 to i416
  %28 = shl i416 %27, 352
  %.masked.masked = or i416 %.partset4, %19
  %.masked8 = or i416 %.masked.masked, %22
  %29 = or i416 %.masked8, %25
  %.partset = or i416 %29, %28
  store i416 %.partset, i416* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i64 @_llvm.fpga.pack.bits.i64.f64(double %A) #5 {
  %A.cast = bitcast double %A to i64
  ret i64 %A.cast
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @_llvm.fpga.pack.bits.i32.f32(float %A) #5 {
  %A.cast = bitcast float %A to i32
  ret i32 %A.cast
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal double @_llvm.fpga.unpack.bits.f64.i64(i64 %A) #5 {
  %A.cast = bitcast i64 %A to double
  ret double %A.cast
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal float @_llvm.fpga.unpack.bits.f32.i32(i32 %A) #5 {
  %A.cast = bitcast i32 %A to float
  ret float %A.cast
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a9struct.Cloud_t.224([9 x %struct.Cloud_t]* %dst, [9 x i224]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [9 x i224]* %src, null
  %1 = icmp eq [9 x %struct.Cloud_t]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond15 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond15, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx16 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [9 x i224], [9 x i224]* %src, i64 0, i64 %for.loop.idx16
  %dst.addr.02 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 0
  %4 = load i224, i224* %3, align 4
  %.partselect6 = trunc i224 %4 to i32
  %5 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect6)
  store float %5, float* %dst.addr.02, align 4
  %dst.addr.14 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 1
  %6 = load i224, i224* %3, align 4
  %7 = lshr i224 %6, 32
  %.partselect5 = trunc i224 %7 to i32
  %8 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect5)
  store float %8, float* %dst.addr.14, align 4
  %dst.addr.26 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 2
  %9 = load i224, i224* %3, align 4
  %10 = lshr i224 %9, 64
  %.partselect4 = trunc i224 %10 to i32
  %11 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect4)
  store float %11, float* %dst.addr.26, align 4
  %dst.addr.38 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 3
  %12 = load i224, i224* %3, align 4
  %13 = lshr i224 %12, 96
  %.partselect3 = trunc i224 %13 to i32
  %14 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect3)
  store float %14, float* %dst.addr.38, align 4
  %dst.addr.410 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 4
  %15 = load i224, i224* %3, align 4
  %16 = lshr i224 %15, 128
  %.partselect2 = trunc i224 %16 to i32
  %17 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect2)
  store float %17, float* %dst.addr.410, align 4
  %dst.addr.512 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 5
  %18 = load i224, i224* %3, align 4
  %19 = lshr i224 %18, 160
  %.partselect1 = trunc i224 %19 to i32
  %20 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect1)
  store float %20, float* %dst.addr.512, align 4
  %dst.addr.614 = getelementptr [9 x %struct.Cloud_t], [9 x %struct.Cloud_t]* %dst, i64 0, i64 %for.loop.idx16, i32 6
  %21 = load i224, i224* %3, align 4
  %22 = lshr i224 %21, 192
  %.partselect = trunc i224 %22 to i32
  store i32 %.partselect, i32* %dst.addr.614, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_do_compute_hw([60 x [80 x float]]*, float*, i32*, float*, [9 x i224]*, i416*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%struct.parameters* noalias "unpacked"="0", [60 x [80 x float]]* noalias readonly "unpacked"="1.0" %.0, float* noalias nocapture readonly "unpacked"="1.1" %.1, i32* noalias nocapture readonly "unpacked"="1.2" %.2, float* noalias nocapture readonly "unpacked"="1.3" %.3, [9 x i224]* noalias readonly "unpacked"="1.4" %.4, %struct.results* noalias "unpacked"="2", i416* noalias readonly align 512 "unpacked"="3") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.parameters.209(%struct.parameters* %0, [60 x [80 x float]]* %.0, float* %.1, i32* %.2, float* %.3, [9 x i224]* %.4)
  call fastcc void @onebyonecpy_hls.p0struct.results(%struct.results* %1, i416* align 512 %2)
  ret void
}

define void @do_compute_hw_stub_wrapper([60 x [80 x float]]*, float*, i32*, float*, [9 x i224]*, i416*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 19464)
  %6 = bitcast i8* %malloccall to %struct.parameters*
  %7 = alloca %struct.results
  call void @copy_out(%struct.parameters* %6, [60 x [80 x float]]* %0, float* %1, i32* %2, float* %3, [9 x i224]* %4, %struct.results* %7, i416* %5)
  call void @do_compute_hw_stub(%struct.parameters* %6, %struct.results* %7)
  call void @copy_in(%struct.parameters* %6, [60 x [80 x float]]* %0, float* %1, i32* %2, float* %3, [9 x i224]* %4, %struct.results* %7, i416* %5)
  ret void
}

declare void @do_compute_hw_stub(%struct.parameters* noalias nonnull, %struct.results* noalias nocapture nonnull)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone willreturn }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
