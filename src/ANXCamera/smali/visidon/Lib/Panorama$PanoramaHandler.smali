.class Lvisidon/Lib/Panorama$PanoramaHandler;
.super Landroid/os/Handler;
.source "Panorama.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoramaHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;
    }
.end annotation


# static fields
.field private static final CURRENT_GYRO_DATA_PERCENTAGE:F = 0.4f

.field public static final MSG_GET_IMAGE:I = 0x2

.field public static final MSG_GET_JPEG_IMAGE:I = 0x5

.field public static final MSG_GET_NV21_IMAGE:I = 0x3

.field public static final MSG_RELEASE:I = 0x9

.field public static final MSG_REQUEST_CANCEL:I = 0x6

.field public static final MSG_REQUEST_PROCESS:I = 0x8

.field public static final MSG_START:I = 0x1

.field public static final MSG_TAKEPHOTO:I = 0x7

.field public static final MSG_UPDATE:I = 0x4

.field private static final NS2S:F = 1.0E-9f

.field private static final PREVIOUS_GYRO_DATA_PERCENTAGE:F = 0.6f


# instance fields
.field captureCam1Callback:Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;

.field private captureState:I

.field images:I

.field listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

.field private maxPosition:F

.field private minPosition:F

.field nextframe:I

.field private photosFromLeft:I

.field private photosFromRight:I

.field private previousCapture:F

.field processing:Z

.field target:F

.field final synthetic this$0:Lvisidon/Lib/Panorama;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lvisidon/Lib/Panorama;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->processing:Z

    iput p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    const/4 v0, 0x0

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->previousCapture:F

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->minPosition:F

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->maxPosition:F

    iput p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromLeft:I

    iput p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromRight:I

    iput p2, p1, Lvisidon/Lib/Panorama;->state:I

    iput p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    return-void
.end method

.method public constructor <init>(Lvisidon/Lib/Panorama;Landroid/os/Looper;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lvisidon/Lib/Panorama$PanoramaHandler;-><init>(Lvisidon/Lib/Panorama;Landroid/os/Looper;)V

    new-instance p1, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;-><init>(Lvisidon/Lib/Panorama$PanoramaHandler;Lvisidon/Lib/Panorama$1;)V

    iput-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureCam1Callback:Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;

    iput-object p3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    return-void
.end method

.method private takeAction(FF)V
    .locals 8

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->failedByCamera:I

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v1, v0, Lvisidon/Lib/Panorama;->failedByCamera:I

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->REGISTRATION_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    invoke-virtual {p0, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->onFailure(Lvisidon/Lib/Panorama$FailureCode;)V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$900(Lvisidon/Lib/Panorama;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$900(Lvisidon/Lib/Panorama;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->WRONG_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    invoke-virtual {p0, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->onFailure(Lvisidon/Lib/Panorama$FailureCode;)V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_2
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x40a00000    # 5.0f

    if-nez v0, :cond_4

    iput v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->previousCapture:F

    iput v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromRight:I

    iput v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromLeft:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0, v1}, Lvisidon/Lib/Panorama;->access$1002(Lvisidon/Lib/Panorama;Z)Z

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0, v1}, Lvisidon/Lib/Panorama;->access$1102(Lvisidon/Lib/Panorama;Z)Z

    cmpl-float v0, p1, v5

    if-lez v0, :cond_3

    iput v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->nextframe:I

    iput v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    :cond_3
    const/high16 v0, -0x3f600000    # -5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iput v3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->nextframe:I

    iput v3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    :cond_4
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    const/4 v6, 0x4

    if-ne v0, v4, :cond_a

    cmpl-float v0, p1, v2

    if-lez v0, :cond_5

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->maxPosition:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    iput p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->maxPosition:F

    :cond_5
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->previousCapture:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v7, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v7, v7, Lvisidon/Lib/Panorama;->minimum_ovelap:F

    add-float/2addr v0, v7

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_6

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v4, v0, Lvisidon/Lib/Panorama;->state:I

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromRight:I

    add-int/2addr v0, v4

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromRight:I

    iput p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->previousCapture:F

    :cond_7
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_8

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->maxPosition:F

    sub-float/2addr v0, v5

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a

    :cond_8
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0, v4}, Lvisidon/Lib/Panorama;->access$1002(Lvisidon/Lib/Panorama;Z)Z

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->minPosition:F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1100(Lvisidon/Lib/Panorama;)Z

    move-result v0

    if-nez v0, :cond_9

    iput v3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    goto :goto_0

    :cond_9
    iput v6, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    :goto_0
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromRight:I

    if-nez v0, :cond_a

    add-int/2addr v0, v4

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromRight:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v4, v0, Lvisidon/Lib/Panorama;->state:I

    :cond_a
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    if-ne v0, v3, :cond_10

    cmpg-float v0, p1, v2

    if-gez v0, :cond_b

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->minPosition:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    iput p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->minPosition:F

    :cond_b
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->previousCapture:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v2, v2, Lvisidon/Lib/Panorama;->minimum_ovelap:F

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    neg-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v4, v0, Lvisidon/Lib/Panorama;->state:I

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromLeft:I

    add-int/2addr v0, v4

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromLeft:I

    iput p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->previousCapture:F

    :cond_d
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    neg-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->minPosition:F

    add-float/2addr v0, v5

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    :cond_e
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0, v4}, Lvisidon/Lib/Panorama;->access$1102(Lvisidon/Lib/Panorama;Z)Z

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->maxPosition:F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1000(Lvisidon/Lib/Panorama;)Z

    move-result v0

    if-nez v0, :cond_f

    iput v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    goto :goto_1

    :cond_f
    iput v6, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    :goto_1
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromLeft:I

    if-nez v0, :cond_10

    add-int/2addr v0, v4

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->photosFromLeft:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v4, v0, Lvisidon/Lib/Panorama;->state:I

    :cond_10
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    if-ne v0, v6, :cond_11

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->state:I

    if-eq v0, v4, :cond_11

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v3, v0, Lvisidon/Lib/Panorama;->state:I

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->MAX_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    invoke-virtual {p0, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->onFailure(Lvisidon/Lib/Panorama$FailureCode;)V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_11
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    const/high16 v2, 0x40800000    # 4.0f

    if-ne v0, v4, :cond_12

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    sub-float/2addr v0, p1

    mul-float/2addr v0, v2

    float-to-int v1, v0

    :cond_12
    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    if-ne v0, v3, :cond_13

    iget v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    neg-float v0, v0

    sub-float/2addr v0, p1

    mul-float/2addr v0, v2

    float-to-int v1, v0

    :cond_13
    iget p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    if-gt p1, v3, :cond_16

    const/4 p1, -0x1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-boolean v0, v0, Lvisidon/Lib/Panorama;->transposed:Z

    if-eqz v0, :cond_14

    move p1, v4

    :cond_14
    int-to-float p1, p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p2}, Lvisidon/Lib/Panorama;->access$1200(Lvisidon/Lib/Panorama;)F

    move-result p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_15

    sget-object p1, Lvisidon/Lib/Panorama$Guide;->MOVE_UP:Lvisidon/Lib/Panorama$Guide;

    invoke-virtual {p0, p1, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V

    return-void

    :cond_15
    iget-object p2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p2}, Lvisidon/Lib/Panorama;->access$1200(Lvisidon/Lib/Panorama;)F

    move-result p2

    neg-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_16

    sget-object p1, Lvisidon/Lib/Panorama$Guide;->MOVE_DOWN:Lvisidon/Lib/Panorama$Guide;

    invoke-virtual {p0, p1, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V

    return-void

    :cond_16
    iget p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    if-nez p1, :cond_17

    sget-object p1, Lvisidon/Lib/Panorama$Guide;->MOVE_FREE:Lvisidon/Lib/Panorama$Guide;

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Lvisidon/Lib/Panorama$PanoramaHandler;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V

    :cond_17
    iget p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    if-eq p1, v4, :cond_18

    if-ne p1, v3, :cond_19

    :cond_18
    sget-object p1, Lvisidon/Lib/Panorama$Guide;->MOVE:Lvisidon/Lib/Panorama$Guide;

    invoke-virtual {p0, p1, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V

    :cond_19
    return-void
.end method

.method private updateStateMachine()V
    .locals 11

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_6

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-boolean v0, v0, Lvisidon/Lib/Panorama;->stillMode:Z

    if-eqz v0, :cond_1

    sget-object v0, Lvisidon/Lib/Panorama$Guide;->HOLD:Lvisidon/Lib/Panorama$Guide;

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lvisidon/Lib/Panorama$PanoramaHandler;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V

    :cond_1
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1300(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v6, v0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v6, v8

    if-ltz v0, :cond_2

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1400(Lvisidon/Lib/Panorama;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->processing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->imagesTaken:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvisidon/Lib/Panorama;->access$1502(Lvisidon/Lib/Panorama;F)F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0, v1}, Lvisidon/Lib/Panorama;->access$1602(Lvisidon/Lib/Panorama;F)F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0, v1}, Lvisidon/Lib/Panorama;->access$1702(Lvisidon/Lib/Panorama;F)F

    iput v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->maxPosition:F

    iput v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->minPosition:F

    :cond_3
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v1

    div-float/2addr v1, v5

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$1800(Lvisidon/Lib/Panorama;)I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    mul-double/2addr v6, v3

    double-to-int v1, v6

    iput v1, v0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v1

    div-float/2addr v1, v5

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$1800(Lvisidon/Lib/Panorama;)I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    mul-double/2addr v6, v3

    double-to-int v1, v6

    iput v1, v0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-virtual {v0}, Lvisidon/Lib/Panorama;->CancelFrameDelayTimer()V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    const/4 v1, 0x2

    iput v1, v0, Lvisidon/Lib/Panorama;->state:I

    invoke-virtual {p0}, Lvisidon/Lib/Panorama$PanoramaHandler;->onTakeImage()V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-boolean v0, v0, Lvisidon/Lib/Panorama;->transposed:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->imagesTaken:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1900(Lvisidon/Lib/Panorama;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v2, v0, Lvisidon/Lib/Panorama;->state:I

    :cond_5
    :goto_0
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->state:I

    if-eq v0, v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v1

    div-float/2addr v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    iget-object v6, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v6}, Lvisidon/Lib/Panorama;->access$1800(Lvisidon/Lib/Panorama;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v1, v6

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lvisidon/Lib/Panorama;->lastDisplacement:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v1

    div-float/2addr v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    iget-object v5, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v5}, Lvisidon/Lib/Panorama;->access$1800(Lvisidon/Lib/Panorama;)I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v1, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-double v1, v2

    div-double/2addr v1, v4

    double-to-float v1, v1

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$1700(Lvisidon/Lib/Panorama;)F

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-boolean v2, v2, Lvisidon/Lib/Panorama;->transposed:Z

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v10, v1

    move v1, v0

    move v0, v10

    :goto_1
    invoke-direct {p0, v0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler;->takeAction(FF)V

    :goto_2
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public Reset()V
    .locals 2

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureCam1Callback:Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->cancelRequested:Z

    new-instance v0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;-><init>(Lvisidon/Lib/Panorama$PanoramaHandler;Lvisidon/Lib/Panorama$1;)V

    iput-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureCam1Callback:Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-wide v0, p1, Lvisidon/Lib/Panorama;->engine:J

    invoke-virtual {p1, v0, v1}, Lvisidon/Lib/Panorama;->nativeRelease(J)I

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-wide v3, p1, Lvisidon/Lib/Panorama;->engine:J

    invoke-static {p1, v3, v4}, Lvisidon/Lib/Panorama;->access$200(Lvisidon/Lib/Panorama;J)[I

    move-result-object p1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    aget v3, p1, v1

    invoke-static {v0, v3}, Lvisidon/Lib/Panorama;->access$302(Lvisidon/Lib/Panorama;I)I

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    aget p1, p1, v2

    invoke-static {v0, p1}, Lvisidon/Lib/Panorama;->access$402(Lvisidon/Lib/Panorama;I)I

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p1}, Lvisidon/Lib/Panorama;->access$300(Lvisidon/Lib/Panorama;)I

    move-result p1

    if-gtz p1, :cond_0

    const-string p1, "Visidon"

    const-string v0, "Failed to create panorama"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lvisidon/Lib/Panorama$FailureCode;->PROCESSING_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    invoke-virtual {p0, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->onFailure(Lvisidon/Lib/Panorama$FailureCode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p1}, Lvisidon/Lib/Panorama;->access$300(Lvisidon/Lib/Panorama;)I

    move-result p1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$400(Lvisidon/Lib/Panorama;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->onProcessingReady(II)V

    :goto_0
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v1, p1, Lvisidon/Lib/Panorama;->state:I

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget p1, p1, Lvisidon/Lib/Panorama;->direction:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v2, p1, Lvisidon/Lib/Panorama;->state:I

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lvisidon/Lib/Panorama$FailureCode;

    invoke-virtual {p0, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->onFailure(Lvisidon/Lib/Panorama$FailureCode;)V

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x0

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p1}, Lvisidon/Lib/Panorama;->access$700(Lvisidon/Lib/Panorama;)Z

    move-result v6

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-wide v7, p1, Lvisidon/Lib/Panorama;->engine:J

    invoke-static/range {v3 .. v8}, Lvisidon/Lib/Panorama;->access$800(Lvisidon/Lib/Panorama;IIZJ)[B

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lvisidon/Lib/Panorama$PanoramaHandler;->onJPEGImageReady([B)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lvisidon/Lib/Panorama$PanoramaHandler;->updateStateMachine()V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-wide v2, v2, Lvisidon/Lib/Panorama;->engine:J

    invoke-static {v0, v1, v2, v3}, Lvisidon/Lib/Panorama;->access$600(Lvisidon/Lib/Panorama;Landroid/graphics/Bitmap;J)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lvisidon/Lib/Panorama$PanoramaHandler;->onBitmapReady(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2}, Lvisidon/Lib/Panorama$PanoramaHandler;->onSetPreviewParameters(Z)V

    const-string v3, "target"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->target:F

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->images:I

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v1, p1, Lvisidon/Lib/Panorama;->imagesTaken:I

    iput v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->captureState:I

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lvisidon/Lib/Panorama;->access$502(Lvisidon/Lib/Panorama;I)I

    sget p1, Lvisidon/Lib/Panorama;->imageSet:I

    add-int/2addr p1, v2

    sput p1, Lvisidon/Lib/Panorama;->imageSet:I

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iput v2, p1, Lvisidon/Lib/Panorama;->state:I

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    invoke-interface {v0, p1}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onBitmapReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFailure(Lvisidon/Lib/Panorama$FailureCode;)V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    invoke-interface {v0, p1}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onFailure(Lvisidon/Lib/Panorama$FailureCode;)V

    return-void
.end method

.method public onGuide(Lvisidon/Lib/Panorama$Guide;I)V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    invoke-interface {v0, p1, p2}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V

    return-void
.end method

.method public onJPEGImageReady([B)V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    invoke-interface {v0, p1}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onJPEGImageReady([B)V

    return-void
.end method

.method public onProcessingReady(II)V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    invoke-interface {v0, p1, p2}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onProcessingReady(II)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v0, v0, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->timestamp:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lvisidon/Lib/Panorama;->access$1502(Lvisidon/Lib/Panorama;F)F

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v3, v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lvisidon/Lib/Panorama;->access$1602(Lvisidon/Lib/Panorama;F)F

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$1700(Lvisidon/Lib/Panorama;)F

    move-result v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v3, v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lvisidon/Lib/Panorama;->access$1702(Lvisidon/Lib/Panorama;F)F

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$2000(Lvisidon/Lib/Panorama;)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v7, v4

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v7

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    invoke-static {v1, v2}, Lvisidon/Lib/Panorama;->access$2002(Lvisidon/Lib/Panorama;F)F

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$2100(Lvisidon/Lib/Panorama;)F

    move-result v2

    mul-float/2addr v2, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    mul-float/2addr v4, v7

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    invoke-static {v1, v2}, Lvisidon/Lib/Panorama;->access$2102(Lvisidon/Lib/Panorama;F)F

    iget-object v1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v1}, Lvisidon/Lib/Panorama;->access$2200(Lvisidon/Lib/Panorama;)F

    move-result v2

    mul-float/2addr v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v3, v7

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lvisidon/Lib/Panorama;->access$2202(Lvisidon/Lib/Panorama;F)F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2000(Lvisidon/Lib/Panorama;)F

    move-result v1

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$2000(Lvisidon/Lib/Panorama;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$2100(Lvisidon/Lib/Panorama;)F

    move-result v2

    iget-object v3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v3}, Lvisidon/Lib/Panorama;->access$2100(Lvisidon/Lib/Panorama;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$2200(Lvisidon/Lib/Panorama;)F

    move-result v2

    iget-object v3, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v3}, Lvisidon/Lib/Panorama;->access$2200(Lvisidon/Lib/Panorama;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lvisidon/Lib/Panorama;->access$2302(Lvisidon/Lib/Panorama;F)F

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-boolean v0, v0, Lvisidon/Lib/Panorama;->transposed:Z

    const/high16 v1, 0x43340000    # 180.0f

    const v2, 0x4048f5c3    # 3.14f

    const-wide v3, 0x40091eb851eb851fL    # 3.14

    const-wide v5, 0x4066800000000000L    # 180.0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v7, v5

    div-double/2addr v7, v3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v7

    mul-float/2addr v7, v2

    div-float/2addr v7, v1

    invoke-static {v0, v7}, Lvisidon/Lib/Panorama;->access$1502(Lvisidon/Lib/Panorama;F)F

    :cond_0
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v7, v5

    div-double/2addr v7, v3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v0

    neg-float v0, v0

    float-to-double v3, v0

    cmpg-double v0, v7, v3

    if-gez v0, :cond_3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    invoke-static {v0, v3}, Lvisidon/Lib/Panorama;->access$1502(Lvisidon/Lib/Panorama;F)F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v7, v5

    div-double/2addr v7, v3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_2

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v7

    mul-float/2addr v7, v2

    div-float/2addr v7, v1

    invoke-static {v0, v7}, Lvisidon/Lib/Panorama;->access$1602(Lvisidon/Lib/Panorama;F)F

    :cond_2
    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v7, v5

    div-double/2addr v7, v3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v0

    neg-float v0, v0

    float-to-double v3, v0

    cmpg-double v0, v7, v3

    if-gez v0, :cond_3

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$2400(Lvisidon/Lib/Panorama;)F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    invoke-static {v0, v3}, Lvisidon/Lib/Panorama;->access$1602(Lvisidon/Lib/Panorama;F)F

    :cond_3
    :goto_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->timestamp:J

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget p1, p1, Lvisidon/Lib/Panorama;->state:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget p1, p1, Lvisidon/Lib/Panorama;->failedByCamera:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p1}, Lvisidon/Lib/Panorama;->access$1600(Lvisidon/Lib/Panorama;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$1800(Lvisidon/Lib/Panorama;)I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p1, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {p1}, Lvisidon/Lib/Panorama;->access$1500(Lvisidon/Lib/Panorama;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$1800(Lvisidon/Lib/Panorama;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p1, Lvisidon/Lib/Panorama;->lastDisplacement:I

    :cond_4
    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object p1, p1, Lvisidon/Lib/Panorama;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onSetPreviewParameters(Z)V
    .locals 1

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onSetPreviewParameters(Z)V

    return-void
.end method

.method protected onTakeImage()V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler;->listener1:Lvisidon/Lib/Panorama$PanoramaCam1Listener;

    invoke-interface {v0}, Lvisidon/Lib/Panorama$PanoramaCam1Listener;->onTakeImage()V

    return-void
.end method
