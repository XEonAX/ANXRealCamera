.class public Lcom/oppo/camera/Ipa/a/e;
.super Lcom/oppo/camera/Ipa/a/b;
.source "JpegEncodeProcessor.java"


# instance fields
.field private a:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/e;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private a(D)[J
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/Ipa/a/e;->b(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/Ipa/a/e;->b(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertGpsCoordinate, originDegree: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", degree: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", minute: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", second: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JpegEncodeProcessor"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p1, p1, [J

    const-wide/16 v4, 0x1

    mul-long/2addr v2, v4

    const/4 p2, 0x0

    aput-wide v2, p1, p2

    const/4 p2, 0x1

    aput-wide v4, p1, p2

    mul-long/2addr v6, v4

    const/4 p2, 0x2

    aput-wide v6, p1, p2

    const/4 p2, 0x3

    aput-wide v4, p1, p2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    const/4 p2, 0x4

    aput-wide v0, p1, p2

    const/4 p2, 0x5

    const-wide/16 v0, 0x2710

    aput-wide v0, p1, p2

    return-object p1
.end method

.method private b(D)D
    .locals 1

    double-to-int v0, p1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance p2, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/e;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/a/e;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "JpegEncodeProcessor"

    const-string v3, "process, start"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v6, v1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v7, v5, Lcom/oppo/camera/Ipa/b$a;->a:[B

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/oppo/camera/Ipa/b$a;->a:[B

    array-length v7, v7

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    new-instance v15, Lcom/oppo/camera/jni/YuvProcessUtil;

    invoke-direct {v15}, Lcom/oppo/camera/jni/YuvProcessUtil;-><init>()V

    const/4 v9, 0x2

    new-array v12, v9, [I

    iget v10, v5, Lcom/oppo/camera/Ipa/b$a;->g:I

    aput v10, v12, v8

    iget v10, v5, Lcom/oppo/camera/Ipa/b$a;->g:I

    const/4 v11, 0x1

    aput v10, v12, v11

    new-array v13, v9, [I

    iget v10, v5, Lcom/oppo/camera/Ipa/b$a;->h:I

    aput v10, v13, v8

    iget v10, v5, Lcom/oppo/camera/Ipa/b$a;->h:I

    aput v10, v13, v11

    iget v14, v5, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v10, v5, Lcom/oppo/camera/Ipa/b$a;->f:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process, width: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", height: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", stride: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/oppo/camera/Ipa/b$a;->g:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mData.length: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", longitude:"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v6, Lcom/oppo/camera/Ipa/b$b;->o:D

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", latitude: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v6, Lcom/oppo/camera/Ipa/b$b;->n:D

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;

    invoke-direct {v7}, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;-><init>()V

    iget-object v8, v6, Lcom/oppo/camera/Ipa/b$b;->h:Ljava/lang/String;

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mModel:Ljava/lang/String;

    new-array v8, v9, [I

    iget v11, v6, Lcom/oppo/camera/Ipa/b$b;->j:F

    const/high16 v17, 0x41200000    # 10.0f

    mul-float v11, v11, v17

    float-to-int v11, v11

    const/16 v17, 0x0

    aput v11, v8, v17

    const/16 v11, 0xa

    const/4 v9, 0x1

    aput v11, v8, v9

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFNumber:[I

    const/4 v8, 0x2

    new-array v11, v8, [I

    iget v8, v6, Lcom/oppo/camera/Ipa/b$b;->u:F

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v8, v8, v16

    float-to-int v8, v8

    aput v8, v11, v17

    const/16 v8, 0x64

    aput v8, v11, v9

    iput-object v11, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFocalLength:[I

    const/4 v8, 0x2

    new-array v11, v8, [J

    move v8, v10

    iget-wide v9, v6, Lcom/oppo/camera/Ipa/b$b;->t:J

    const-wide/16 v19, 0x3e8

    div-long v9, v9, v19

    aput-wide v9, v11, v17

    const-wide/32 v9, 0xf4240

    move/from16 v17, v8

    const/4 v8, 0x1

    aput-wide v9, v11, v8

    iput-object v11, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mExposureTime:[J

    iget v9, v6, Lcom/oppo/camera/Ipa/b$b;->l:I

    iput v9, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFlashValue:I

    iget-wide v9, v6, Lcom/oppo/camera/Ipa/b$b;->s:J

    iput-wide v9, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFrameNum:J

    iget v9, v6, Lcom/oppo/camera/Ipa/b$b;->i:I

    iput v9, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mISO:I

    iget v9, v6, Lcom/oppo/camera/Ipa/b$b;->k:I

    if-ne v9, v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mWhiteBalanceMode:I

    const/4 v8, 0x0

    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mJpegOrientation:I

    iget-object v8, v6, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mManufacture:Ljava/lang/String;

    iget-object v8, v6, Lcom/oppo/camera/Ipa/b$b;->am:[B

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mTunningStats:[B

    sget-object v8, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FEATURE_DCIP3_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v8}, Lcom/oppo/camera/config/CameraConfig;->getConfigByteValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mSupportDCIP3:I

    iget-object v8, v6, Lcom/oppo/camera/Ipa/b$b;->aq:Ljava/lang/String;

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mUserComment:Ljava/lang/String;

    iget v8, v6, Lcom/oppo/camera/Ipa/b$b;->j:F

    iget v9, v6, Lcom/oppo/camera/Ipa/b$b;->j:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const/4 v10, 0x2

    new-array v11, v10, [J

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v22

    double-to-long v8, v8

    const/16 v21, 0x0

    aput-wide v8, v11, v21

    const-wide/16 v8, 0x64

    const/16 v16, 0x1

    aput-wide v8, v11, v16

    iput-object v11, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mApertureValue:[J

    new-array v8, v10, [J

    iget v9, v6, Lcom/oppo/camera/Ipa/b$b;->x:F

    const v10, 0x4b189680    # 1.0E7f

    mul-float/2addr v9, v10

    float-to-long v9, v9

    aput-wide v9, v8, v21

    const-wide/32 v9, 0x989680

    aput-wide v9, v8, v16

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mExposureBiasValue:[J

    iget-boolean v8, v5, Lcom/oppo/camera/Ipa/b$a;->q:Z

    if-nez v8, :cond_3

    iget v8, v6, Lcom/oppo/camera/Ipa/b$b;->v:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget v8, v6, Lcom/oppo/camera/Ipa/b$b;->v:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_3

    :cond_2
    iget v8, v5, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mImageWidth:I

    iget v8, v5, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mImageHeight:I

    goto :goto_2

    :cond_3
    iget v8, v5, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mImageWidth:I

    iget v8, v5, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mImageHeight:I

    :goto_2
    iget-object v8, v6, Lcom/oppo/camera/Ipa/b$b;->m:Landroid/location/Location;

    if-eqz v8, :cond_6

    iget-wide v8, v6, Lcom/oppo/camera/Ipa/b$b;->n:D

    invoke-direct {v0, v8, v9}, Lcom/oppo/camera/Ipa/a/e;->a(D)[J

    move-result-object v8

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLatitude:[J

    iget-wide v8, v6, Lcom/oppo/camera/Ipa/b$b;->o:D

    invoke-direct {v0, v8, v9}, Lcom/oppo/camera/Ipa/a/e;->a(D)[J

    move-result-object v8

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLongitude:[J

    iget-wide v8, v6, Lcom/oppo/camera/Ipa/b$b;->n:D

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-gez v8, :cond_4

    const-string v8, "S"

    goto :goto_3

    :cond_4
    const-string v8, "N"

    :goto_3
    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLatitudeRef:Ljava/lang/String;

    iget-wide v8, v6, Lcom/oppo/camera/Ipa/b$b;->o:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-gez v8, :cond_5

    const-string v8, "W"

    goto :goto_4

    :cond_5
    const-string v8, "E"

    :goto_4
    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLongitudeRef:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [J

    fill-array-data v8, :array_0

    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mAltitude:[J

    const/4 v8, 0x0

    iput-byte v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mAltitudeRef:B

    :cond_6
    iget-object v8, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-boolean v8, v8, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-wide v8, v8, Lcom/oppo/camera/Ipa/b$c;->k:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    iget-object v8, v0, Lcom/oppo/camera/Ipa/a/e;->a:Ljava/text/SimpleDateFormat;

    iget-object v9, v1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-wide v9, v9, Lcom/oppo/camera/Ipa/b$c;->k:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-wide v9, v1, Lcom/oppo/camera/Ipa/b$c;->k:J

    rem-long v9, v9, v19

    mul-long v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_8
    :goto_5
    iget-object v8, v0, Lcom/oppo/camera/Ipa/a/e;->a:Ljava/text/SimpleDateFormat;

    iget-object v9, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-wide v9, v9, Lcom/oppo/camera/Ipa/b$a;->p:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-wide v9, v1, Lcom/oppo/camera/Ipa/b$a;->p:J

    rem-long v9, v9, v19

    mul-long v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_6
    iput-object v8, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mDateTime:Ljava/lang/String;

    iput-object v1, v7, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mSubDateTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/oppo/camera/Ipa/b$b;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v5, Lcom/oppo/camera/Ipa/b$a;->a:[B

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/oppo/camera/jni/YuvProcessUtil;->init(Z)I

    invoke-static {v7}, Lcom/oppo/camera/jni/YuvProcessUtil;->setExifInfo(Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;)V

    iget-boolean v1, v5, Lcom/oppo/camera/Ipa/b$a;->q:Z

    if-eqz v1, :cond_9

    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    iget v8, v6, Lcom/oppo/camera/Ipa/b$b;->v:I

    :goto_7
    const-string v1, "captureX yuvProcessUtil compressYUVtoJpeg"

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget-object v7, v5, Lcom/oppo/camera/Ipa/b$a;->a:[B

    array-length v11, v7

    iget v7, v5, Lcom/oppo/camera/Ipa/b$a;->i:I

    iget-boolean v9, v6, Lcom/oppo/camera/Ipa/b$b;->e:Z

    const/16 v20, 0x1

    iget v6, v6, Lcom/oppo/camera/Ipa/b$b;->w:I

    const/16 v19, 0x0

    move/from16 v18, v9

    move-object v9, v15

    move/from16 v16, v17

    move/from16 v17, v14

    move v14, v7

    move-object v7, v15

    move/from16 v15, v17

    move/from16 v17, v8

    move/from16 v21, v6

    invoke-virtual/range {v9 .. v21}, Lcom/oppo/camera/jni/YuvProcessUtil;->compressYUVtoJpeg([BI[I[IIIIIZZZI)[B

    move-result-object v6

    iput-object v6, v5, Lcom/oppo/camera/Ipa/b$a;->a:[B

    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/oppo/camera/jni/YuvProcessUtil;->unInit(Z)V

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process, end, costTime: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 8
        0x0
        0x2710
    .end array-data
.end method
