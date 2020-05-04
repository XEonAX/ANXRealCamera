.class public Lcom/sensetime/utils/ShakeDetectorUtils;
.super Ljava/lang/Object;
.source "ShakeDetectorUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShakeDetectorUtils"

.field private static sInstance:Lcom/sensetime/utils/ShakeDetectorUtils;


# instance fields
.field private mIntervalTime:I

.field private mLastDetectTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShaking:Z

.field private mThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mIntervalTime:I

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mThreshold:F

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;
    .locals 2

    const-class v0, Lcom/sensetime/utils/ShakeDetectorUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sensetime/utils/ShakeDetectorUtils;->sInstance:Lcom/sensetime/utils/ShakeDetectorUtils;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sensetime/utils/ShakeDetectorUtils;->sInstance:Lcom/sensetime/utils/ShakeDetectorUtils;

    monitor-exit v0

    return-object p0

    :cond_0
    sget-object v1, Lcom/sensetime/utils/ShakeDetectorUtils;->sInstance:Lcom/sensetime/utils/ShakeDetectorUtils;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sensetime/utils/ShakeDetectorUtils;

    invoke-direct {v1, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sensetime/utils/ShakeDetectorUtils;->sInstance:Lcom/sensetime/utils/ShakeDetectorUtils;

    :cond_1
    sget-object p0, Lcom/sensetime/utils/ShakeDetectorUtils;->sInstance:Lcom/sensetime/utils/ShakeDetectorUtils;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyListeners(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;

    invoke-interface {v1, p1}, Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;->onShake(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getThreshold()F
    .locals 1

    iget v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mThreshold:F

    return v0
.end method

.method public isShaking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mShaking:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastDetectTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mIntervalTime:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastDetectTime:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget p1, p1, v6

    iget v6, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastX:F

    sub-float v6, v0, v6

    iget v7, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastY:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastZ:F

    sub-float v8, p1, v8

    iput v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastX:F

    iput v4, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastY:F

    iput p1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mLastZ:F

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v8, v8

    add-float/2addr v6, v8

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float p1, v6

    long-to-float v0, v2

    div-float/2addr p1, v0

    iget v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    move v1, v5

    :cond_1
    iput-boolean v1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mShaking:Z

    iget-boolean p1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mShaking:Z

    invoke-direct {p0, p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->notifyListeners(Z)V

    return-void
.end method

.method public registerOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;
    .locals 1

    iget-object v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public setThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mThreshold:F

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "ShakeDetectorUtils"

    if-nez v0, :cond_0

    const-string v0, "start, mSensorManager is null"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "start, sensor is null"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public unregisterOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;
    .locals 1

    iget-object v0, p0, Lcom/sensetime/utils/ShakeDetectorUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
