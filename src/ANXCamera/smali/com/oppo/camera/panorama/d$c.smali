.class Lcom/oppo/camera/panorama/d$c;
.super Landroid/os/Handler;
.source "FNPanoramaProcess.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Lcom/oppo/camera/panorama/d$b;

.field final synthetic b:Lcom/oppo/camera/panorama/d;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/oppo/camera/panorama/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/panorama/d$c;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/oppo/camera/panorama/d;Landroid/os/Looper;Lcom/oppo/camera/panorama/d$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/panorama/d$c;-><init>(Lcom/oppo/camera/panorama/d;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const-string v3, "FNPanoramaProcess"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eq v2, v8, :cond_a

    if-eq v2, v4, :cond_7

    const/4 v9, 0x3

    if-eq v2, v9, :cond_3

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_1

    const-string v1, "panoramaResult, already destory!"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-array v1, v4, [I

    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v9

    invoke-static {v9, v10, v1, v8}, Lcom/fotonation/panorama/PanoramaEngine;->panoramaResult(J[IZ)[B

    move-result-object v12

    if-eqz v12, :cond_2

    :try_start_0
    new-instance v2, Landroid/graphics/YuvImage;

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->i(Lcom/oppo/camera/panorama/d;)I

    move-result v13

    aget v14, v1, v5

    aget v15, v1, v8

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    aget v6, v1, v5

    aget v1, v1, v8

    invoke-direct {v4, v5, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x5a

    invoke-virtual {v2, v4, v1, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    invoke-interface {v2, v1}, Lcom/oppo/camera/panorama/d$b;->a([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_2
    const-string v1, "panoramaResult failed!"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1, v6, v7}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;J)J

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-nez v2, :cond_4

    const-string v1, "panoramaProcess, already destory!"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    new-array v15, v4, [I

    new-array v2, v4, [I

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v10

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->d(Lcom/oppo/camera/panorama/d;)I

    move-result v13

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->c(Lcom/oppo/camera/panorama/d;)I

    move-result v14

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->f(Lcom/oppo/camera/panorama/d;)I

    move-result v17

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->g(Lcom/oppo/camera/panorama/d;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v5}, Lcom/oppo/camera/panorama/d;->h(Lcom/oppo/camera/panorama/d;)F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    move-object v12, v1

    move-object/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v10 .. v19}, Lcom/fotonation/panorama/PanoramaEngine;->panoramaProcess(J[BII[I[IIII)I

    move-result v3

    const/16 v4, 0x65

    if-eqz v3, :cond_5

    if-eq v4, v3, :cond_5

    const/16 v5, 0x66

    if-ne v5, v3, :cond_6

    :cond_5
    if-ne v4, v3, :cond_6

    iget-object v4, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;FZ)I

    iget-object v4, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v4, v5, v5, v8}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;FFZ)V

    :cond_6
    new-instance v4, Lcom/oppo/camera/panorama/d$d;

    iget-object v5, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-direct {v4, v5}, Lcom/oppo/camera/panorama/d$d;-><init>(Lcom/oppo/camera/panorama/d;)V

    iget-object v5, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v5}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/oppo/camera/panorama/d$d;->a(J)V

    invoke-virtual {v4, v3}, Lcom/oppo/camera/panorama/d$d;->a(I)V

    invoke-virtual {v4, v2}, Lcom/oppo/camera/panorama/d$d;->a([I)V

    invoke-virtual {v4, v1}, Lcom/oppo/camera/panorama/d$d;->a([B)V

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    invoke-interface {v1, v4}, Lcom/oppo/camera/panorama/d$b;->a(Lcom/oppo/camera/panorama/d$d;)V

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1, v9}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;I)I

    goto/16 :goto_1

    :cond_7
    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1}, Lcom/oppo/camera/panorama/d;->e(Lcom/oppo/camera/panorama/d;)I

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, PanoramaFinish, mPanoramaState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->e(Lcom/oppo/camera/panorama/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    invoke-interface {v1}, Lcom/oppo/camera/panorama/d$b;->I_()V

    :cond_8
    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/fotonation/panorama/PanoramaEngine;->panoramaDestroy(J)V

    :cond_9
    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1, v6, v7}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;J)J

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1, v5}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;I)I

    goto/16 :goto_1

    :cond_a
    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v9

    cmp-long v2, v6, v9

    if-eqz v2, :cond_b

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    invoke-interface {v1, v8}, Lcom/oppo/camera/panorama/d$b;->b(Z)V

    return-void

    :cond_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->c(Lcom/oppo/camera/panorama/d;)I

    move-result v2

    mul-int/lit8 v11, v2, 0x2

    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->d(Lcom/oppo/camera/panorama/d;)I

    move-result v2

    mul-int/lit8 v12, v2, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage, panoramaInit, W:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v4}, Lcom/oppo/camera/panorama/d;->d(Lcom/oppo/camera/panorama/d;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", H: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v4}, Lcom/oppo/camera/panorama/d;->c(Lcom/oppo/camera/panorama/d;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ResW: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ResH: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v2}, Lcom/oppo/camera/panorama/d;->d(Lcom/oppo/camera/panorama/d;)I

    move-result v9

    iget-object v3, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v3}, Lcom/oppo/camera/panorama/d;->c(Lcom/oppo/camera/panorama/d;)I

    move-result v10

    if-eqz v1, :cond_c

    const/16 v1, 0x22

    goto :goto_0

    :cond_c
    const/16 v1, 0x12

    :goto_0
    move v13, v1

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Lcom/fotonation/panorama/PanoramaEngine;->panoramaInit(IIIIIZ)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;J)J

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1, v5}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;I)I

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;)J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    invoke-interface {v1}, Lcom/oppo/camera/panorama/d$b;->J_()V

    return-void

    :cond_d
    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1, v8}, Lcom/oppo/camera/panorama/d;->b(Lcom/oppo/camera/panorama/d;I)I

    iget-object v1, v0, Lcom/oppo/camera/panorama/d$c;->a:Lcom/oppo/camera/panorama/d$b;

    invoke-interface {v1}, Lcom/oppo/camera/panorama/d$b;->H_()V

    :catch_0
    :goto_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v1}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/oppo/camera/panorama/d$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/oppo/camera/panorama/d$c;->c:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    neg-float v3, v3

    const v4, 0x42652ee0

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v5, v4

    mul-float/2addr v5, v0

    invoke-static {v2, v3, v5, v1}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;FFZ)V

    iget-object v2, p0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    invoke-static {v2, v3, v1}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;FZ)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;FFZ)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/d$c;->b:Lcom/oppo/camera/panorama/d;

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/panorama/d;->a(Lcom/oppo/camera/panorama/d;FZ)I

    :goto_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/oppo/camera/panorama/d$c;->c:J

    :cond_1
    return-void
.end method
