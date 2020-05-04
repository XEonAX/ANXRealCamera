.class public Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;
.super Ljava/lang/Object;
.source "OppoWatermark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/watermark/OppoWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkParameter"
.end annotation


# instance fields
.field public mImageFormat:I

.field public mImageHeight:I

.field public mImageScanline:I

.field public mImageStride:I

.field public mImageWidth:I

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mWatermarkFormat:I

.field public mWatermarkPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageFormat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageWidth:I

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageHeight:I

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageStride:I

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageScanline:I

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mOrientation:I

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewWidth:I

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkPath:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkFormat:I

    return-void
.end method
