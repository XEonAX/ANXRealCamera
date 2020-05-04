.class public Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;
.super Ljava/lang/Object;
.source "OppoFaceBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/facebeauty/OppoFaceBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public mFormat:I

.field public mHeight:I

.field public mScanline:I

.field public mStride:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mFormat:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mWidth:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mHeight:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mStride:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mScanline:I

    return-void
.end method
