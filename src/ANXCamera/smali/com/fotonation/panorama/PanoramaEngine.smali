.class public Lcom/fotonation/panorama/PanoramaEngine;
.super Ljava/lang/Object;
.source "PanoramaEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FNPanoramaApp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native panoramaDestroy(J)V
.end method

.method public static native panoramaGetDirCorrection(J)I
.end method

.method public static native panoramaGetDirection(J)I
.end method

.method public static native panoramaGetErrorStr(J)Ljava/lang/String;
.end method

.method public static native panoramaGetVersion()Ljava/lang/String;
.end method

.method public static native panoramaInit(IIIIIZ)J
.end method

.method public static native panoramaProcess(J[BII[I[IIII)I
.end method

.method public static native panoramaResult(J[IZ)[B
.end method

.method public static native yuv2rgb([BIII[IIII)I
.end method
