.class public Lcom/sensetime/blur/STBlurPreview;
.super Ljava/lang/Object;
.source "STBlurPreview.java"

# interfaces
.implements Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensetime/blur/STBlurPreview$Callback;,
        Lcom/sensetime/blur/STBlurPreview$ProcessThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final ST_BLUR_PARAM_TYPE_LEVEL:I = 0x1001

.field public static final ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE:I = 0x1005

.field public static final ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE:I = 0x1004

.field public static final ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE:I = 0x1003

.field public static final ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE:I = 0x1002

.field public static final ST_BUFFER_ERROR:I = -0x4

.field public static final ST_INTERNAL_ERROR:I = -0x6

.field public static final ST_OK:I = 0x0

.field public static final ST_PARAM_ERROR:I = -0x1

.field public static final ST_PROGRAM_ERROR:I = -0x3

.field public static final ST_SHADER_ERROR:I = -0x2

.field public static final ST_TEXTURE_ERROR:I = -0x5

.field private static final TAG:Ljava/lang/String; = "STBlurPreview"


# instance fields
.field private PROCESS_LIFE_CYCLE_TIME:J

.field private RESET_MASK_CYCLE_TIME:J

.field debugSegCount:J

.field debugSegSumTime:J

.field private mContext:Landroid/content/Context;

.field private mFrameNum:I

.field private mFrontCamera:Z

.field private mInitialized:Z

.field private mLastProcessTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

.field private mResetMask:Z

.field private mResetMaskTime:J

.field private mSegment:Lcom/sensetime/faceapi/FigureSegment;

.field private mSegmentBuffer:[B

.field private mSegmentBufferHeight:I

.field private mSegmentBufferWidth:I

.field private mSegmentModel:Ljava/lang/String;

.field private mSegmentOption:I

.field private mSegmentOutBuffer:Ljava/nio/ByteBuffer;

.field private mSegmentOutBufferInfo:[I

.field private final mSyncObject:Ljava/lang/Object;

.field private mTmpFaceRects:[Landroid/graphics/Rect;

.field private mTmpYaws:[F

.field private mTrack:Lcom/sensetime/faceapi/FaceTrack;

.field private mUseSegment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    sget-object v4, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    sget-object v4, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    iget-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->destroy()I

    :cond_0
    iput-boolean p2, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v8, Lcom/sensetime/blur/STBlurPreview$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sensetime/blur/STBlurPreview$1;-><init>(Lcom/sensetime/blur/STBlurPreview;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    invoke-direct {v1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-static {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->registerOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensetime/utils/ShakeDetectorUtils;->start()V

    invoke-static {p1}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->start(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/faceapi/FigureSegment;)Lcom/sensetime/faceapi/FigureSegment;
    .locals 0

    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sensetime/blur/STBlurPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/faceapi/FaceTrack;)Lcom/sensetime/faceapi/FaceTrack;
    .locals 0

    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sensetime/blur/STBlurPreview;[BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method private doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 2

    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPreviewCallback data.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->onSegment([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->onTrack([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMaskTextureByFace(Z)I
    .locals 11

    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    new-array v3, v1, [Landroid/graphics/Rect;

    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    aget v6, v6, v5

    aput v6, v4, v5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v4

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v6, v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const/4 v5, 0x0

    iget v7, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    iget v8, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result p1

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 v9, p1, 0x168

    iget-boolean v10, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static/range {v4 .. v10}, Lcom/sensetime/blur/BlurFilterLibrary;->getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getMaskTextureBySegment(Z)I
    .locals 10

    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    iget v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    iget v3, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v0, v5

    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    iput-boolean v5, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    :cond_1
    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    new-array v0, p1, [I

    invoke-static {v1, v2, v3, p1, v0}, Lcom/sensetime/blur/BlurFilterLibrary;->processMaskBuffer([BIIZ[I)I

    move-result p1

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMask error result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "STBlurPreview"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean p1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaskTextureBySegment out after process outTexture : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "STBlurPreview"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    aget v4, v0, v5

    :cond_4
    return v4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sensetime/blur/BlurFilterLibrary;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSegment([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v6, p3

    move-object/from16 v11, p5

    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v3, v2, v13

    mul-int/2addr v3, v6

    aget v2, v2, v12

    mul-int/2addr v2, v0

    if-eq v3, v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    const/16 v3, 0xf0

    iget-object v4, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    invoke-virtual {v2, v0, v6, v3, v4}, Lcom/sensetime/faceapi/FigureSegment;->createOutputBuffer(III[I)I

    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v3, v2, v13

    aget v2, v2, v12

    mul-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static/range {p4 .. p4}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    sget-object v4, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iget-object v3, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget v10, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sensetime/faceapi/FigureSegment;->segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[BI)I

    iget-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v4, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "STBlurPreview"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    iget-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v0, v0, v13

    iput v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    iget-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v0, v0, v12

    iput v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_3

    iget-boolean v0, v1, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const/4 v2, 0x0

    invoke-interface {v11, v0, v2, v2}, Lcom/sensetime/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/sensetime/faceapi/model/FaceInfo;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onTrack([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 7

    invoke-static {p4}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v6

    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/faceapi/FaceTrack;->track([BLcom/sensetime/faceapi/model/CvPixelFormat;IILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p1

    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrack dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sensetime/blur/STBlurPreview;->onFaceUpdate([Lcom/sensetime/faceapi/model/FaceInfo;IIZ)V

    if-eqz p5, :cond_2

    const/16 v0, 0x5a

    invoke-static {p1, p2, p3, p4, v0}, Lcom/sensetime/faceapi/utils/FaceRotationUtil;->rotateFaceInfos([Lcom/sensetime/faceapi/model/FaceInfo;IIZI)V

    iget-boolean p1, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const/4 p2, 0x0

    invoke-interface {p5, p1, p2, p2}, Lcom/sensetime/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/sensetime/faceapi/model/FaceInfo;)V

    :cond_2
    return-void
.end method

.method public static setDebug(Z)I
    .locals 0

    sput-boolean p0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    invoke-static {p0}, Lcom/sensetime/blur/BlurFilterLibrary;->setDebug(Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()I
    .locals 3

    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->unregisterOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->stop()V

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->stop()V

    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    const-string v1, "STBlurPreview"

    if-eqz v0, :cond_0

    const-string v0, "destroy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->release()V

    :try_start_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "destroy process thread join"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    :cond_2
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceTrack;->release()V

    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    :cond_3
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FigureSegment;->release()V

    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->destroyRender()I

    move-result v0

    return v0
.end method

.method public destroyRender()I
    .locals 1

    invoke-static {}, Lcom/sensetime/blur/BlurFilterLibrary;->destroy()I

    move-result v0

    return v0
.end method

.method public getTimeLog()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v3, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRender(IIZ)I
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    invoke-static {p1, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->init(II)I

    move-result p1

    iget-object p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    const v0, 0x3e19999a    # 0.15f

    const v1, 0x3c23d70a    # 0.01f

    const/16 v2, 0x1005

    const/16 v3, 0x1004

    if-nez p2, :cond_1

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v2, p2}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz p3, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    :cond_1
    const p2, 0x3ec7ae14    # 0.39f

    invoke-virtual {p0, v2, p2}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz p3, :cond_2

    invoke-virtual {p0, v3, v0}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    :goto_0
    if-eqz p3, :cond_3

    const/16 p2, 0x1c

    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    goto :goto_1

    :cond_3
    const/16 p2, 0x18

    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    :goto_1
    return p1
.end method

.method public onFaceUpdate([Lcom/sensetime/faceapi/model/FaceInfo;IIZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    iget-object p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter p2

    if-eqz p1, :cond_0

    :try_start_0
    array-length p3, p1

    if-lez p3, :cond_0

    array-length p3, p1

    new-array p4, p3, [Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    new-array p4, p3, [F

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    aput v1, p4, v0

    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPreviewCallback([BIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 6

    const-string v0, "STBlurPreview"

    const/4 v1, 0x1

    if-le p6, v1, :cond_1

    iget v1, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    rem-int/2addr v1, p6

    if-eqz v1, :cond_1

    sget-boolean p1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "onPreviewCallback drop this frame"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean p6, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p6, :cond_2

    const-string p6, "onPreviewCallback do"

    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    if-nez p5, :cond_3

    new-instance p5, Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-direct {p5, p0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;-><init>(Lcom/sensetime/blur/STBlurPreview;)V

    iput-object p5, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    iget-object p5, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-virtual {p5}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->start()V

    :cond_3
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->updateBuffer([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void
.end method

.method public onSegmentUpdate([BIIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    iput p4, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    iput p5, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onShake(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->resetMask()V

    :cond_0
    return-void
.end method

.method public processOESTexture(I[IZ)I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_0

    :cond_1
    sget-boolean p3, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, -0x1

    :goto_0
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, v0, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTextureByMask(IIZ[I)I

    move-result p1

    return p1
.end method

.method public processOESTextureGradual(I[F[IZ)I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_0

    :cond_1
    sget-boolean p4, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_2

    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, -0x1

    :goto_0
    move v1, p4

    iget-boolean v2, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTexureByMaskGradual(IIZI[F[I)I

    move-result p1

    return p1
.end method

.method public processTexture(I[IZ)I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_0

    :cond_1
    sget-boolean p3, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "STBlurPreview"

    const-string v0, "processTexture mask beyond the life cycle!"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, -0x1

    :goto_0
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, v0, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->processTextureByMask(IIZ[I)I

    move-result p1

    return p1
.end method

.method public processTextureGradual(I[F[IZ)I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_0

    :cond_1
    sget-boolean p4, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_2

    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, -0x1

    :goto_0
    move v1, p4

    iget-boolean v2, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sensetime/blur/BlurFilterLibrary;->processTexureByMaskGradual(IIZI[F[I)I

    move-result p1

    return p1
.end method

.method public resetMask()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    return-void
.end method

.method public rotateGrdualTexture(IZZ)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sensetime/blur/BlurFilterLibrary;->rotateGradualTexture(IZZ)I

    move-result p1

    return p1
.end method

.method public rotateMaskTexture(IZZ)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sensetime/blur/BlurFilterLibrary;->rotateMaskTexture(IZZ)I

    move-result p1

    return p1
.end method

.method public setDebugMask(Z)I
    .locals 0

    invoke-static {p1}, Lcom/sensetime/blur/BlurFilterLibrary;->setDebugMask(Z)I

    move-result p1

    return p1
.end method

.method public setParam(IF)I
    .locals 0

    invoke-static {p1, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->setParam(IF)I

    move-result p1

    return p1
.end method

.method public setSegmentOption(I)V
    .locals 0

    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    return-void
.end method
