.class public Lcom/oppo/camera/Ipa/a/j;
.super Lcom/oppo/camera/Ipa/a/b;
.source "UpscaleProcessor.java"


# instance fields
.field private a:Lcom/oppo/camera/upscale/OppoUpscale;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/j;->a:Lcom/oppo/camera/upscale/OppoUpscale;

    return-void
.end method

.method private a(Lcom/oppo/camera/Ipa/b$b;)F
    .locals 3

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v2, p1, Lcom/oppo/camera/Ipa/b$b;->ag:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/oppo/camera/Ipa/b$b;->ag:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    array-length p1, p1

    if-lez p1, :cond_1

    const-string p1, "oppo.camera.high.picture.size.portrait.sharpen"

    const-string v0, "0.5"

    invoke-static {p1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_1
    const-string p1, "oppo.camera.high.picture.size.normal.sharpen"

    const-string v0, "1.6"

    invoke-static {p1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "UpscaleProcessor"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/j;->a:Lcom/oppo/camera/upscale/OppoUpscale;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    const-string p1, "UpscaleProcessor"

    const-string p2, "init"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oppo/camera/upscale/OppoUpscale;

    invoke-direct {p1}, Lcom/oppo/camera/upscale/OppoUpscale;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/a/j;->a:Lcom/oppo/camera/upscale/OppoUpscale;

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "UpscaleProcessor"

    const-string v3, "process"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ac:I

    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iget v8, v5, Lcom/oppo/camera/Ipa/b$b;->ae:I

    iget v9, v5, Lcom/oppo/camera/Ipa/b$b;->af:I

    new-instance v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;

    invoke-direct {v11}, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;-><init>()V

    iget-object v10, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v10, v10, Lcom/oppo/camera/Ipa/b$a;->i:I

    const/16 v12, 0x9

    const/16 v13, 0x11

    const/16 v14, 0x8

    if-ne v10, v13, :cond_0

    iput v14, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mFormat:I

    goto :goto_0

    :cond_0
    iput v12, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mFormat:I

    :goto_0
    iput v6, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mWidth:I

    iput v7, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mHeight:I

    const/4 v10, 0x1

    iput v10, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mYPixelStride:I

    iput v8, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mYRowStride:I

    iput v9, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mYColumnStride:I

    const/4 v15, 0x2

    iput v15, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCBPixelStride:I

    iput v8, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCBRowStride:I

    iput v15, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCRPixelStride:I

    iput v8, v11, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCRRowStride:I

    iget v15, v5, Lcom/oppo/camera/Ipa/b$b;->ag:I

    iget v10, v5, Lcom/oppo/camera/Ipa/b$b;->ah:I

    iget v12, v5, Lcom/oppo/camera/Ipa/b$b;->ai:I

    iget v14, v5, Lcom/oppo/camera/Ipa/b$b;->aj:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v3

    const-string v3, "process, inputWidth: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inputHeight: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inputStride: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inputScanline: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outputWidth: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outputHeight: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outputStride: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outputScanline: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;

    invoke-direct {v13}, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;-><init>()V

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v3, v3, Lcom/oppo/camera/Ipa/b$a;->i:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    const/16 v3, 0x8

    iput v3, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mFormat:I

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    iput v3, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mFormat:I

    :goto_1
    iput v15, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mWidth:I

    iput v10, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mHeight:I

    const/4 v3, 0x1

    iput v3, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mYPixelStride:I

    iput v12, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mYRowStride:I

    iput v14, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mYColumnStride:I

    const/4 v3, 0x2

    iput v3, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCBPixelStride:I

    iput v12, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCBRowStride:I

    iput v3, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCRPixelStride:I

    iput v12, v13, Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;->mCRRowStride:I

    mul-int v3, v12, v14

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    new-array v3, v3, [B

    new-instance v4, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;

    invoke-direct {v4}, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;-><init>()V

    const/4 v6, 0x0

    iput v6, v4, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;->mNoiseReductionStrength:I

    invoke-direct {v0, v5}, Lcom/oppo/camera/Ipa/a/j;->a(Lcom/oppo/camera/Ipa/b$b;)F

    move-result v5

    iput v5, v4, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;->mSharpen:F

    iput v6, v4, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;->mColorNoiseReductionStrength:I

    const/16 v5, 0x8

    iput v5, v4, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;->mNumberOfProcessingThreads:I

    const/4 v5, -0x1

    iput v5, v4, Lcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;->mActiveCPUMask:I

    iget-object v5, v0, Lcom/oppo/camera/Ipa/a/j;->a:Lcom/oppo/camera/upscale/OppoUpscale;

    iget-object v6, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v6, v6, Lcom/oppo/camera/Ipa/b$a;->a:[B

    move v7, v10

    move-object v10, v5

    move v5, v12

    move-object v12, v6

    move v6, v14

    move-object v14, v3

    move v8, v15

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Lcom/oppo/camera/upscale/OppoUpscale;->scaleImage(Lcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;[BLcom/oppo/camera/upscale/OppoUpscale$YUVImageParameter;[BLcom/oppo/camera/upscale/OppoUpscale$ScaleRuntimeParameter;)I

    iget-object v4, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iput-object v3, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iput v8, v3, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iput v7, v3, Lcom/oppo/camera/Ipa/b$a;->f:I

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iput v5, v3, Lcom/oppo/camera/Ipa/b$a;->g:I

    iget-object v1, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iput v6, v1, Lcom/oppo/camera/Ipa/b$a;->h:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, cost time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
