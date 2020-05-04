.class public Lvisidon/Lib/Panorama;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvisidon/Lib/Panorama$PanoramaHandler;,
        Lvisidon/Lib/Panorama$PanoramaCam1Listener;,
        Lvisidon/Lib/Panorama$PanoramaBaseListener;,
        Lvisidon/Lib/Panorama$FailureCode;,
        Lvisidon/Lib/Panorama$Guide;
    }
.end annotation


# static fields
.field protected static final MAX_FRAMES:I = 0x3

.field protected static final STATE_CHANGE_POSITION:I = 0x3

.field protected static final STATE_IDLE:I = 0x0

.field protected static final STATE_TAKE_IMAGE:I = 0x1

.field protected static final STATE_WAITING_IMAGE:I = 0x2

.field static imageSet:I


# instance fields
.field protected final _mutex:Ljava/util/concurrent/locks/Lock;

.field private autoCapture:Z

.field private cumX:F

.field private cumY:F

.field private cumZ:F

.field private currentGuide:I

.field protected direction:I

.field edx:F

.field edy:F

.field protected engine:J

.field private failRotation:F

.field protected failedByCamera:I

.field private focal:I

.field private frameDelayForPreviewCapture:J

.field private frameDelayForStillCapture:J

.field frameDelayTimer:Ljava/util/Timer;

.field private frameSaving:Z

.field gyroSensor:Landroid/hardware/Sensor;

.field handler:Lvisidon/Lib/Panorama$PanoramaHandler;

.field protected hasbeeninitialized:Z

.field protected imagesTaken:I

.field protected inputHeight:I

.field protected inputWidth:I

.field protected lastDisplacement:I

.field protected lastDisplacementy:I

.field private leftCaptured:Z

.field private limitRotation:F

.field private mCurrentGyroX:F

.field private mCurrentGyroY:F

.field private mCurrentGyroZ:F

.field private mGyroVector:F

.field private mbMirrorOutput:Z

.field minimum_ovelap:F

.field private motionStrength:F

.field protected optimalRotate:F

.field private outheight:I

.field private outwidth:I

.field protected processing:Z

.field private rightCaptured:Z

.field sensorManager:Landroid/hardware/SensorManager;

.field protected state:I

.field protected stillMode:Z

.field private swipeMode:Z

.field protected transposed:Z

.field private waitStill:Z

.field private warnRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VDSelfiePanorama"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    iput v0, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    iput v2, p0, Lvisidon/Lib/Panorama;->failedByCamera:I

    iput v2, p0, Lvisidon/Lib/Panorama;->state:I

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->processing:Z

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->stillMode:Z

    iput v2, p0, Lvisidon/Lib/Panorama;->direction:I

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lvisidon/Lib/Panorama;->minimum_ovelap:F

    iput v0, p0, Lvisidon/Lib/Panorama;->edx:F

    iput v0, p0, Lvisidon/Lib/Panorama;->edy:F

    const/4 v3, 0x0

    iput-object v3, p0, Lvisidon/Lib/Panorama;->frameDelayTimer:Ljava/util/Timer;

    iput v2, p0, Lvisidon/Lib/Panorama;->outwidth:I

    iput v2, p0, Lvisidon/Lib/Panorama;->outheight:I

    iput-boolean v1, p0, Lvisidon/Lib/Panorama;->frameSaving:Z

    iput v0, p0, Lvisidon/Lib/Panorama;->motionStrength:F

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->rightCaptured:Z

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->leftCaptured:Z

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->swipeMode:Z

    iput-boolean v1, p0, Lvisidon/Lib/Panorama;->autoCapture:Z

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->waitStill:Z

    const/high16 v3, 0x41000000    # 8.0f

    iput v3, p0, Lvisidon/Lib/Panorama;->warnRotation:F

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, p0, Lvisidon/Lib/Panorama;->limitRotation:F

    const/high16 v3, 0x41600000    # 14.0f

    iput v3, p0, Lvisidon/Lib/Panorama;->failRotation:F

    const-wide/16 v3, 0x1f40

    iput-wide v3, p0, Lvisidon/Lib/Panorama;->frameDelayForStillCapture:J

    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lvisidon/Lib/Panorama;->frameDelayForPreviewCapture:J

    iput v0, p0, Lvisidon/Lib/Panorama;->mCurrentGyroX:F

    iput v0, p0, Lvisidon/Lib/Panorama;->mCurrentGyroY:F

    iput v0, p0, Lvisidon/Lib/Panorama;->mCurrentGyroZ:F

    iput v0, p0, Lvisidon/Lib/Panorama;->mGyroVector:F

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->mbMirrorOutput:Z

    const-string v0, "Visidon"

    const-string v3, "2016-06-14"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " imageHeight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " transpose "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lvisidon/Lib/Panorama;->inputHeight:I

    iput p1, p0, Lvisidon/Lib/Panorama;->inputWidth:I

    iput p3, p0, Lvisidon/Lib/Panorama;->focal:I

    iput-boolean p4, p0, Lvisidon/Lib/Panorama;->transposed:Z

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->processing:Z

    iget-boolean p4, p0, Lvisidon/Lib/Panorama;->transposed:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lvisidon/Lib/Panorama;->nativeInit(IIIZ)J

    move-result-wide v3

    iput-wide v3, p0, Lvisidon/Lib/Panorama;->engine:J

    iget-wide v3, p0, Lvisidon/Lib/Panorama;->engine:J

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-nez p4, :cond_0

    iput-boolean v2, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    const-string p1, "Error in initialization"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v1, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    int-to-double p2, p3

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    iget-boolean p4, p0, Lvisidon/Lib/Panorama;->transposed:Z

    if-nez p4, :cond_1

    int-to-double v0, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    :cond_1
    iget p1, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    const/high16 p2, 0x43340000    # 180.0f

    mul-float/2addr p1, p2

    const p2, 0x4048f5c3    # 3.14f

    div-float/2addr p1, p2

    iput p1, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    return-void
.end method

.method public constructor <init>(IIIZLandroid/content/Context;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lvisidon/Lib/Panorama;-><init>(IIIZZLandroid/content/Context;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V

    return-void
.end method

.method public constructor <init>(IIIZZLandroid/content/Context;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lvisidon/Lib/Panorama;-><init>(IIIZ)V

    const-string p1, "Visidon"

    const-string p2, "2016-06-14"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "panorama"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1, p7}, Lvisidon/Lib/Panorama$PanoramaHandler;-><init>(Lvisidon/Lib/Panorama;Landroid/os/Looper;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V

    iput-object p2, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {p0, p6, p5}, Lvisidon/Lib/Panorama;->initializeGyroscope(Landroid/content/Context;Z)V

    return-void
.end method

.method private StartFrameDelayTimer(J)V
    .locals 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvisidon/Lib/Panorama;->frameDelayTimer:Ljava/util/Timer;

    iget-object v1, p0, Lvisidon/Lib/Panorama;->frameDelayTimer:Ljava/util/Timer;

    new-instance v2, Lvisidon/Lib/Panorama$1;

    invoke-direct {v2, p0}, Lvisidon/Lib/Panorama$1;-><init>(Lvisidon/Lib/Panorama;)V

    move-wide v3, p1

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic access$000(Lvisidon/Lib/Panorama;)V
    .locals 0

    invoke-direct {p0}, Lvisidon/Lib/Panorama;->requestCancelDueToTimer()V

    return-void
.end method

.method static synthetic access$1000(Lvisidon/Lib/Panorama;)Z
    .locals 0

    iget-boolean p0, p0, Lvisidon/Lib/Panorama;->rightCaptured:Z

    return p0
.end method

.method static synthetic access$1002(Lvisidon/Lib/Panorama;Z)Z
    .locals 0

    iput-boolean p1, p0, Lvisidon/Lib/Panorama;->rightCaptured:Z

    return p1
.end method

.method static synthetic access$1100(Lvisidon/Lib/Panorama;)Z
    .locals 0

    iget-boolean p0, p0, Lvisidon/Lib/Panorama;->leftCaptured:Z

    return p0
.end method

.method static synthetic access$1102(Lvisidon/Lib/Panorama;Z)Z
    .locals 0

    iput-boolean p1, p0, Lvisidon/Lib/Panorama;->leftCaptured:Z

    return p1
.end method

.method static synthetic access$1200(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->warnRotation:F

    return p0
.end method

.method static synthetic access$1300(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->motionStrength:F

    return p0
.end method

.method static synthetic access$1400(Lvisidon/Lib/Panorama;)Z
    .locals 0

    iget-boolean p0, p0, Lvisidon/Lib/Panorama;->waitStill:Z

    return p0
.end method

.method static synthetic access$1500(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->cumX:F

    return p0
.end method

.method static synthetic access$1502(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->cumX:F

    return p1
.end method

.method static synthetic access$1600(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->cumY:F

    return p0
.end method

.method static synthetic access$1602(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->cumY:F

    return p1
.end method

.method static synthetic access$1700(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->cumZ:F

    return p0
.end method

.method static synthetic access$1702(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->cumZ:F

    return p1
.end method

.method static synthetic access$1800(Lvisidon/Lib/Panorama;)I
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->focal:I

    return p0
.end method

.method static synthetic access$1900(Lvisidon/Lib/Panorama;)Z
    .locals 0

    iget-boolean p0, p0, Lvisidon/Lib/Panorama;->autoCapture:Z

    return p0
.end method

.method static synthetic access$200(Lvisidon/Lib/Panorama;J)[I
    .locals 0

    invoke-direct {p0, p1, p2}, Lvisidon/Lib/Panorama;->nativeProcess(J)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->mCurrentGyroX:F

    return p0
.end method

.method static synthetic access$2002(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->mCurrentGyroX:F

    return p1
.end method

.method static synthetic access$2100(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->mCurrentGyroY:F

    return p0
.end method

.method static synthetic access$2102(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->mCurrentGyroY:F

    return p1
.end method

.method static synthetic access$2200(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->mCurrentGyroZ:F

    return p0
.end method

.method static synthetic access$2202(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->mCurrentGyroZ:F

    return p1
.end method

.method static synthetic access$2302(Lvisidon/Lib/Panorama;F)F
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->mGyroVector:F

    return p1
.end method

.method static synthetic access$2400(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->limitRotation:F

    return p0
.end method

.method static synthetic access$2500(Lvisidon/Lib/Panorama;)J
    .locals 2

    iget-wide v0, p0, Lvisidon/Lib/Panorama;->frameDelayForStillCapture:J

    return-wide v0
.end method

.method static synthetic access$2600(Lvisidon/Lib/Panorama;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lvisidon/Lib/Panorama;->StartFrameDelayTimer(J)V

    return-void
.end method

.method static synthetic access$2700(Lvisidon/Lib/Panorama;)Z
    .locals 0

    iget-boolean p0, p0, Lvisidon/Lib/Panorama;->frameSaving:Z

    return p0
.end method

.method static synthetic access$300(Lvisidon/Lib/Panorama;)I
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->outwidth:I

    return p0
.end method

.method static synthetic access$302(Lvisidon/Lib/Panorama;I)I
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->outwidth:I

    return p1
.end method

.method static synthetic access$400(Lvisidon/Lib/Panorama;)I
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->outheight:I

    return p0
.end method

.method static synthetic access$402(Lvisidon/Lib/Panorama;I)I
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->outheight:I

    return p1
.end method

.method static synthetic access$502(Lvisidon/Lib/Panorama;I)I
    .locals 0

    iput p1, p0, Lvisidon/Lib/Panorama;->currentGuide:I

    return p1
.end method

.method static synthetic access$600(Lvisidon/Lib/Panorama;Landroid/graphics/Bitmap;J)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lvisidon/Lib/Panorama;->nativeGetImage(Landroid/graphics/Bitmap;J)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lvisidon/Lib/Panorama;)Z
    .locals 0

    iget-boolean p0, p0, Lvisidon/Lib/Panorama;->mbMirrorOutput:Z

    return p0
.end method

.method static synthetic access$800(Lvisidon/Lib/Panorama;IIZJ)[B
    .locals 0

    invoke-direct/range {p0 .. p5}, Lvisidon/Lib/Panorama;->nativeGetJPEGImage(IIZJ)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lvisidon/Lib/Panorama;)F
    .locals 0

    iget p0, p0, Lvisidon/Lib/Panorama;->failRotation:F

    return p0
.end method

.method private native nativeAddYUVFrame([BIIIFJ)I
.end method

.method private native nativeCancelProcessing(J)V
.end method

.method private native nativeGetImage(Landroid/graphics/Bitmap;J)I
.end method

.method private native nativeGetJPEGImage(IIZJ)[B
.end method

.method private native nativeGetNV21Image(J)[B
.end method

.method private native nativeGuidanceImage([BIIFFLandroid/graphics/Bitmap;ZJ)V
.end method

.method private native nativeInit(IIIZ)J
.end method

.method private native nativeProcess(J)[I
.end method

.method private native nativeReleaseOutput(J)V
.end method

.method private requestCancelDueToTimer()V
    .locals 3

    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    sget-object v1, Lvisidon/Lib/Panorama$FailureCode;->TIMEOUT:Lvisidon/Lib/Panorama$FailureCode;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected CancelFrameDelayTimer()V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama;->frameDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public CancelProcessing()I
    .locals 3

    iget v0, p0, Lvisidon/Lib/Panorama;->imagesTaken:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel processing (images taken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Visidon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lvisidon/Lib/Panorama;->state:I

    iput v1, p0, Lvisidon/Lib/Panorama;->imagesTaken:I

    iput v1, p0, Lvisidon/Lib/Panorama;->direction:I

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->CancelFrameDelayTimer()V

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->Reset()V

    :cond_0
    iget-wide v1, p0, Lvisidon/Lib/Panorama;->engine:J

    invoke-direct {p0, v1, v2}, Lvisidon/Lib/Panorama;->nativeCancelProcessing(J)V

    const/4 v1, -0x1

    iput v1, p0, Lvisidon/Lib/Panorama;->currentGuide:I

    const/4 v1, 0x0

    iput v1, p0, Lvisidon/Lib/Panorama;->motionStrength:F

    return v0
.end method

.method public Release()V
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    const-string v1, "Visidon"

    if-nez v0, :cond_0

    const-string v0, "Engine not initialized!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "release"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    iput-boolean v0, p0, Lvisidon/Lib/Panorama;->processing:Z

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->CancelFrameDelayTimer()V

    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lvisidon/Lib/Panorama;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public SetInputSaving(Z)V
    .locals 1

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Visidon"

    const-string v0, "Engine not initialized!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean p1, p0, Lvisidon/Lib/Panorama;->frameSaving:Z

    return-void
.end method

.method public VDSetMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lvisidon/Lib/Panorama;->stillMode:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, Lvisidon/Lib/Panorama;->minimum_ovelap:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    iput p1, p0, Lvisidon/Lib/Panorama;->minimum_ovelap:F

    :goto_0
    return-void
.end method

.method public addPreviewFrame([BII)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v10, ".yuv"

    const-string v11, "_im"

    const-string v12, "saving failed"

    iget-boolean v1, v9, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v9, Lvisidon/Lib/Panorama;->processing:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v9, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v13, 0x1

    iput-boolean v13, v9, Lvisidon/Lib/Panorama;->processing:Z

    iget v1, v9, Lvisidon/Lib/Panorama;->imagesTaken:I

    add-int/2addr v1, v13

    iput v1, v9, Lvisidon/Lib/Panorama;->imagesTaken:I

    iget v1, v9, Lvisidon/Lib/Panorama;->lastDisplacement:I

    iget-boolean v2, v9, Lvisidon/Lib/Panorama;->transposed:Z

    if-eqz v2, :cond_2

    iget v1, v9, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    :cond_2
    move v14, v1

    iget-boolean v1, v9, Lvisidon/Lib/Panorama;->frameSaving:Z

    const/4 v15, 0x0

    if-eqz v1, :cond_3

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_3
    move-object v7, v15

    :goto_0
    iget v6, v9, Lvisidon/Lib/Panorama;->mGyroVector:F

    iget-wide v4, v9, Lvisidon/Lib/Panorama;->engine:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v16, v4

    move/from16 v4, p3

    move v5, v14

    move-object v0, v7

    move-wide/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lvisidon/Lib/Panorama;->nativeAddYUVFrame([BIIIFJ)I

    iget-wide v1, v9, Lvisidon/Lib/Panorama;->frameDelayForPreviewCapture:J

    invoke-direct {v9, v1, v2}, Lvisidon/Lib/Panorama;->StartFrameDelayTimer(J)V

    const/4 v1, 0x0

    iput-boolean v1, v9, Lvisidon/Lib/Panorama;->processing:Z

    iget-object v2, v9, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean v2, v9, Lvisidon/Lib/Panorama;->frameSaving:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    const-string v2, "Visidon"

    const-string v4, "Save input frame"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    const-string v5, "/sdcard/VDPanorama"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/camera/l/a;->f(Ljava/lang/String;)Z

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/VDPanorama/image_set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lvisidon/Lib/Panorama;->imageSet:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lvisidon/Lib/Panorama;->imagesTaken:I

    sub-int/2addr v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/oppo/camera/l/a;->f:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oppo/camera/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    mul-int v5, p2, p3

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    :try_start_1
    invoke-virtual {v4, v0, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    const/4 v0, 0x4

    new-array v5, v0, [B

    int-to-byte v6, v14

    aput-byte v6, v5, v1

    shr-int/lit8 v6, v14, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v13

    const/4 v6, 0x2

    shr-int/lit8 v7, v14, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    shr-int/lit8 v6, v14, 0x18

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    invoke-virtual {v4, v5, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame saved to: /sdcard/VDPanorama/image_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lvisidon/Lib/Panorama;->imageSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lvisidon/Lib/Panorama;->imagesTaken:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v15, v0

    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v15, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-virtual {v15, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_5
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_6
    :goto_3
    iput v3, v9, Lvisidon/Lib/Panorama;->state:I

    return-void
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Visidon"

    const-string v0, "Engine not initialized!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v0, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getGuidanceBitmap([BIILandroid/graphics/Bitmap;)I
    .locals 10

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    int-to-float v0, v0

    iget v1, p0, Lvisidon/Lib/Panorama;->inputWidth:I

    int-to-float v1, v1

    div-float v4, v0, v1

    iget v0, p0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    int-to-float v0, v0

    iget v1, p0, Lvisidon/Lib/Panorama;->inputHeight:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v7, 0x0

    iget-wide v8, p0, Lvisidon/Lib/Panorama;->engine:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lvisidon/Lib/Panorama;->nativeGuidanceImage([BIIFFLandroid/graphics/Bitmap;ZJ)V

    iget v0, p0, Lvisidon/Lib/Panorama;->direction:I

    return v0
.end method

.method public getJPEGImage(IIZ)V
    .locals 1

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Visidon"

    const-string p2, "Engine not initialized!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean p3, p0, Lvisidon/Lib/Panorama;->mbMirrorOutput:Z

    iget-object p3, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 v0, 0x5

    invoke-virtual {p3, v0, p1, p2}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {p2, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getNV21Image()V
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Visidon"

    const-string v1, "Engine not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getOutHeight()I
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Visidon"

    const-string v1, "Engine not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lvisidon/Lib/Panorama;->outheight:I

    return v0
.end method

.method public getOutWidth()I
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Visidon"

    const-string v1, "Engine not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lvisidon/Lib/Panorama;->outwidth:I

    return v0
.end method

.method public getPhoto()V
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Visidon"

    const-string v1, "Engine not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lvisidon/Lib/Panorama;->failedByCamera:I

    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getState()I
    .locals 2

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->rightCaptured:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->leftCaptured:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->rightCaptured:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->leftCaptured:Z

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->rightCaptured:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->leftCaptured:Z

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getXRotation()F
    .locals 2

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->cumX:F

    iget-object v1, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public getXdisplacement()F
    .locals 2

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    int-to-float v0, v0

    iget v1, p0, Lvisidon/Lib/Panorama;->inputWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public getYRotation()F
    .locals 2

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->cumY:F

    iget-object v1, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public getYdisplacement()F
    .locals 2

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    int-to-float v0, v0

    iget v1, p0, Lvisidon/Lib/Panorama;->inputHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public getZRotation()F
    .locals 2

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->cumZ:F

    iget-object v1, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public initializeGyroscope(Landroid/content/Context;Z)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lvisidon/Lib/Panorama;->gyroSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_0
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lvisidon/Lib/Panorama;->sensorManager:Landroid/hardware/SensorManager;

    iget-object p1, p0, Lvisidon/Lib/Panorama;->sensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lvisidon/Lib/Panorama;->gyroSensor:Landroid/hardware/Sensor;

    :goto_0
    iget-object p1, p0, Lvisidon/Lib/Panorama;->gyroSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_1

    const-string p1, "Visidon"

    const-string p2, "No Gyroscope data available."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lvisidon/Lib/Panorama;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :goto_1
    return-void
.end method

.method public initialized()Z
    .locals 1

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    return v0
.end method

.method protected native nativeAddFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIFJ)I
.end method

.method protected native nativeAddJpegFrame([BIIJ)I
.end method

.method protected native nativeGuidanceImageBytebuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFLandroid/graphics/Bitmap;ZJ)V
.end method

.method protected native nativeMeasureOverlap([BIIFFJ)[F
.end method

.method protected native nativeMeasureOverlapBytebuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIFFJ)[F
.end method

.method protected native nativeRelease(J)I
.end method

.method public process()V
    .locals 2

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Visidon"

    const-string v1, "Engine not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPosition([F)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x3

    aget v1, p1, v1

    float-to-int v1, v1

    iput v1, v0, Lvisidon/Lib/Panorama;->direction:I

    const/4 v1, 0x2

    aget v2, p1, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iput v4, v0, Lvisidon/Lib/Panorama;->failedByCamera:I

    iget-object v1, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput v3, v0, Lvisidon/Lib/Panorama;->cumX:F

    iput v3, v0, Lvisidon/Lib/Panorama;->cumY:F

    iput v4, v0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    iput v4, v0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    iget-object v1, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v2, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, v0, Lvisidon/Lib/Panorama;->gyroSensor:Landroid/hardware/Sensor;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    aget v2, p1, v1

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v2, v2, v7

    if-gez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lvisidon/Lib/Panorama;->gyroSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_b

    aget v1, p1, v1

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_b

    :cond_2
    aget v1, p1, v4

    iget v2, v0, Lvisidon/Lib/Panorama;->edx:F

    sub-float/2addr v1, v2

    aget v7, p1, v4

    sub-float/2addr v7, v2

    mul-float/2addr v1, v7

    aget v2, p1, v6

    iget v7, v0, Lvisidon/Lib/Panorama;->edy:F

    sub-float/2addr v2, v7

    aget v8, p1, v6

    sub-float/2addr v8, v7

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lvisidon/Lib/Panorama;->motionStrength:F

    aget v1, p1, v4

    iput v1, v0, Lvisidon/Lib/Panorama;->edx:F

    aget v1, p1, v6

    iput v1, v0, Lvisidon/Lib/Panorama;->edy:F

    iget v1, v0, Lvisidon/Lib/Panorama;->imagesTaken:I

    if-nez v1, :cond_3

    aput v3, p1, v4

    aput v3, p1, v6

    iget-object v1, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    aget v1, p1, v4

    iget v2, v0, Lvisidon/Lib/Panorama;->inputWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, v0, Lvisidon/Lib/Panorama;->focal:I

    int-to-float v3, v2

    mul-float/2addr v3, v5

    div-float/2addr v1, v3

    aget v3, p1, v6

    iget v7, v0, Lvisidon/Lib/Panorama;->inputHeight:I

    int-to-float v7, v7

    mul-float/2addr v3, v7

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v3, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v5

    iget-boolean v2, v0, Lvisidon/Lib/Panorama;->transposed:Z

    if-eqz v2, :cond_4

    neg-float v1, v1

    :cond_4
    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v5

    iget-boolean v3, v0, Lvisidon/Lib/Panorama;->transposed:Z

    const/high16 v7, 0x43340000    # 180.0f

    const v8, 0x4048f5c3    # 3.14f

    const-wide v9, 0x40091eb851eb851fL    # 3.14

    const-wide v11, 0x4066800000000000L    # 180.0

    if-eqz v3, :cond_6

    float-to-double v13, v1

    mul-double/2addr v13, v11

    div-double/2addr v13, v9

    iget v3, v0, Lvisidon/Lib/Panorama;->limitRotation:F

    float-to-double v5, v3

    cmpl-double v5, v13, v5

    if-lez v5, :cond_5

    mul-float/2addr v3, v8

    div-float v1, v3, v7

    :cond_5
    float-to-double v5, v1

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    iget v3, v0, Lvisidon/Lib/Panorama;->limitRotation:F

    neg-float v9, v3

    float-to-double v9, v9

    cmpg-double v5, v5, v9

    if-gez v5, :cond_8

    neg-float v1, v3

    mul-float/2addr v1, v8

    div-float/2addr v1, v7

    goto :goto_0

    :cond_6
    float-to-double v5, v2

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    iget v3, v0, Lvisidon/Lib/Panorama;->limitRotation:F

    float-to-double v13, v3

    cmpl-double v5, v5, v13

    if-lez v5, :cond_7

    mul-float/2addr v3, v8

    div-float v2, v3, v7

    :cond_7
    float-to-double v5, v2

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    iget v3, v0, Lvisidon/Lib/Panorama;->limitRotation:F

    neg-float v9, v3

    float-to-double v9, v9

    cmpg-double v5, v5, v9

    if-gez v5, :cond_8

    neg-float v2, v3

    mul-float/2addr v2, v8

    div-float/2addr v2, v7

    :cond_8
    :goto_0
    iget v3, v0, Lvisidon/Lib/Panorama;->cumY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v0, Lvisidon/Lib/Panorama;->cumX:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_a

    float-to-double v5, v3

    cmpg-double v3, v5, v7

    if-ltz v3, :cond_a

    iget-object v3, v0, Lvisidon/Lib/Panorama;->gyroSensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const-string v1, "Visidon"

    const-string v2, "ignore camera measurement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    :goto_1
    aget v3, p1, v4

    iput v3, v0, Lvisidon/Lib/Panorama;->edx:F

    const/4 v3, 0x1

    aget v3, p1, v3

    iput v3, v0, Lvisidon/Lib/Panorama;->edy:F

    iput v2, v0, Lvisidon/Lib/Panorama;->cumY:F

    iput v1, v0, Lvisidon/Lib/Panorama;->cumX:F

    :goto_2
    iget v1, v0, Lvisidon/Lib/Panorama;->cumY:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    iget v1, v0, Lvisidon/Lib/Panorama;->focal:I

    int-to-double v7, v1

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    double-to-int v1, v5

    iput v1, v0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    iget v1, v0, Lvisidon/Lib/Panorama;->cumX:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    iget v3, v0, Lvisidon/Lib/Panorama;->focal:I

    int-to-double v5, v3

    mul-double/2addr v1, v5

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    iput v4, v0, Lvisidon/Lib/Panorama;->failedByCamera:I

    goto :goto_3

    :cond_b
    iget v1, v0, Lvisidon/Lib/Panorama;->failedByCamera:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lvisidon/Lib/Panorama;->failedByCamera:I

    :goto_3
    iget-object v1, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setSwipeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lvisidon/Lib/Panorama;->swipeMode:Z

    return-void
.end method

.method public start()V
    .locals 5

    invoke-virtual {p0}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Visidon"

    const-string v1, "Engine not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lvisidon/Lib/Panorama;->failedByCamera:I

    iput-boolean v0, p0, Lvisidon/Lib/Panorama;->processing:Z

    iget-object v0, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    iget v3, p0, Lvisidon/Lib/Panorama;->optimalRotate:F

    const-string v4, "target"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateOrientationWithCameraInfo([BII)V
    .locals 10

    iget-boolean v0, p0, Lvisidon/Lib/Panorama;->hasbeeninitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    int-to-float v0, v0

    iget v1, p0, Lvisidon/Lib/Panorama;->inputHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    iget v0, p0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    int-to-float v0, v0

    iget v1, p0, Lvisidon/Lib/Panorama;->inputWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-wide v8, p0, Lvisidon/Lib/Panorama;->engine:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v9}, Lvisidon/Lib/Panorama;->nativeMeasureOverlap([BIIFFJ)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lvisidon/Lib/Panorama;->setPosition([F)V

    iget-object p1, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lvisidon/Lib/Panorama$PanoramaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lvisidon/Lib/Panorama;->handler:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {p2, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
