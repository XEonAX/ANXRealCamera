.class public Lcom/oppo/camera/facebeauty/FaceSlender2D;
.super Ljava/lang/Object;
.source "FaceSlender2D.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "face_slender_2d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native destroySlender()I
.end method

.method public native initSlender(II)I
.end method

.method public native processSlender(I[I[I)I
.end method

.method public native resetSlender()I
.end method
