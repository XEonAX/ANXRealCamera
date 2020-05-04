.class public Lcom/oppo/camera/Ipa/a/k;
.super Lcom/oppo/camera/Ipa/a/b;
.source "WatermarkProcessor.java"


# instance fields
.field private a:Lcom/oppo/camera/watermark/OppoWatermark;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "WatermarkProcessor"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    const-string p1, "WatermarkProcessor"

    const-string p2, "init"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oppo/camera/watermark/OppoWatermark;

    invoke-direct {p1}, Lcom/oppo/camera/watermark/OppoWatermark;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 6

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    const-string v1, "WatermarkProcessor"

    if-nez v0, :cond_0

    const-string p1, "process, mWatermarkPath is null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;

    invoke-direct {v0}, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;-><init>()V

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageWidth:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageHeight:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageStride:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageScanline:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mOrientation:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$b;->L:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewWidth:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$b;->M:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewHeight:I

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v4, v4, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    iput-object v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkPath:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkFormat:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process, mImageWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mImageHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mImageStride: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageStride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mImageScanline: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageScanline:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOrientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreviewWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreviewHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mWatermarkPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mWatermarkFormat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$a;->a:[B

    invoke-virtual {v4, p1, v0}, Lcom/oppo/camera/watermark/OppoWatermark;->process([BLcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process, costTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
