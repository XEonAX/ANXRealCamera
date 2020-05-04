.class Lcom/oppo/camera/e/g$4;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e/g;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e/d;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/oppo/camera/e/f$a;

.field final synthetic e:Lcom/oppo/camera/e/g;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;ILandroid/os/Handler;Lcom/oppo/camera/e/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iput-object p2, p0, Lcom/oppo/camera/e/g$4;->a:Lcom/oppo/camera/e/d;

    iput p3, p0, Lcom/oppo/camera/e/g$4;->b:I

    iput-object p4, p0, Lcom/oppo/camera/e/g$4;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/oppo/camera/e/g$4;->d:Lcom/oppo/camera/e/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->O(Lcom/oppo/camera/e/g;)Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v1}, Lcom/oppo/camera/e/g;->P(Lcom/oppo/camera/e/g;)Z

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget-object v3, p0, Lcom/oppo/camera/e/g$4;->a:Lcom/oppo/camera/e/d;

    invoke-static {v2, v3}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "burstCapture, pictureNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/e/g$4;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", checkAeAfState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraCaptureSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v3}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e/g$4;->a:Lcom/oppo/camera/e/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", checkApertureState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e/g$4;->c:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget-object v1, p0, Lcom/oppo/camera/e/g$4;->d:Lcom/oppo/camera/e/f$a;

    invoke-static {v0, v1}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$a;)Lcom/oppo/camera/e/f$a;

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget v1, p0, Lcom/oppo/camera/e/g$4;->b:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;I)I

    return-void

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget-object v1, p0, Lcom/oppo/camera/e/g$4;->d:Lcom/oppo/camera/e/f$a;

    invoke-static {v0, v1}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$a;)Lcom/oppo/camera/e/f$a;

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget v1, p0, Lcom/oppo/camera/e/g$4;->b:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->H(Lcom/oppo/camera/e/g;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/e/g$4;->a:Lcom/oppo/camera/e/d;

    invoke-virtual {v1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    sget-object v2, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->Q(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget-object v2, p0, Lcom/oppo/camera/e/g$4;->a:Lcom/oppo/camera/e/d;

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    iget-object v4, p0, Lcom/oppo/camera/e/g$4;->d:Lcom/oppo/camera/e/f$a;

    invoke-static {v2, v4}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$a;)Lcom/oppo/camera/e/f$a;

    const/4 v2, 0x0

    move-object v4, v0

    move v0, v2

    :goto_0
    iget v5, p0, Lcom/oppo/camera/e/g$4;->b:I

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/oppo/camera/e/g$4;->a:Lcom/oppo/camera/e/d;

    invoke-virtual {v5}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v5

    sget-object v6, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    if-ne v5, v6, :cond_3

    iget-object v4, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v4}, Lcom/oppo/camera/e/g;->R(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v5}, Lcom/oppo/camera/e/g;->G(Lcom/oppo/camera/e/g;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v6}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v7}, Lcom/oppo/camera/e/g;->S(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v8}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "burstCapture, with loop, request hashcode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->G(Lcom/oppo/camera/e/g;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v4}, Lcom/oppo/camera/e/g;->S(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/e/g$4;->c:Landroid/os/Handler;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oppo/camera/e/g$4;->c:Landroid/os/Handler;

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/oppo/camera/e/g$4;->e:Lcom/oppo/camera/e/g;

    invoke-static {v5}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "burstCapture, with burst, request hashcode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method
