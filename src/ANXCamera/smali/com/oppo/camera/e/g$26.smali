.class Lcom/oppo/camera/e/g$26;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e/g;->a(ILcom/oppo/camera/e/f$e;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/oppo/camera/e/f$e;

.field final synthetic e:Lcom/oppo/camera/e/g;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e/g;ZIILcom/oppo/camera/e/f$e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    iput-boolean p2, p0, Lcom/oppo/camera/e/g$26;->a:Z

    iput p3, p0, Lcom/oppo/camera/e/g$26;->b:I

    iput p4, p0, Lcom/oppo/camera/e/g$26;->c:I

    iput-object p5, p0, Lcom/oppo/camera/e/g$26;->d:Lcom/oppo/camera/e/f$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "createCustomCaptureSession"

    const-string v1, "createHighSpeedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCaptureSession, mDeviceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v3}, Lcom/oppo/camera/e/g;->H(Lcom/oppo/camera/e/g;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v3}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isHFR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e/g$26;->a:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", operationMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/e/g$26;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", previewTemplate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/e/g$26;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OneCameraImpl"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    iget-object v5, p0, Lcom/oppo/camera/e/g$26;->d:Lcom/oppo/camera/e/f$e;

    invoke-static {v2, v5}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$e;)Lcom/oppo/camera/e/f$e;

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    iget v5, p0, Lcom/oppo/camera/e/g$26;->b:I

    invoke-static {v2, v5}, Lcom/oppo/camera/e/g;->e(Lcom/oppo/camera/e/g;I)I

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    iget-boolean v5, p0, Lcom/oppo/camera/e/g$26;->a:Z

    invoke-static {v2, v5}, Lcom/oppo/camera/e/g;->c(Lcom/oppo/camera/e/g;Z)Z

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    iget v5, p0, Lcom/oppo/camera/e/g$26;->c:I

    invoke-static {v2, v5}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;I)I

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->c(Lcom/oppo/camera/e/g;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "createCaptureSession, wait old session to close"

    invoke-static {v4, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Z)Z

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->I(Lcom/oppo/camera/e/g;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v5}, Lcom/oppo/camera/e/g;->J(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string v0, "createCaptureSession, outputs is empty"

    invoke-static {v4, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;I)V

    iget-object v5, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v5}, Lcom/oppo/camera/e/g;->K(Lcom/oppo/camera/e/g;)V

    iget-boolean v5, p0, Lcom/oppo/camera/e/g$26;->a:Z

    if-eqz v5, :cond_3

    const-string v0, "createCaptureSession, createConstrainedHighSpeedCaptureSession start"

    invoke-static {v4, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v5, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v5}, Lcom/oppo/camera/e/g;->L(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v6}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v6, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "createCaptureSession, createCustomCaptureSession start"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget v9, p0, Lcom/oppo/camera/e/g$26;->b:I

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->L(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v10

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/color/compat/hardware/camera2/CameraDevicesNative;->createCustomCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    iget-object v5, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v5}, Lcom/oppo/camera/e/g;->M(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->M(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v5, Lcom/oppo/camera/e/b;

    iget-object v6, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v6}, Lcom/oppo/camera/e/g;->g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oppo/camera/e/b;-><init>(Landroid/os/Handler;)V

    new-instance v6, Landroid/hardware/camera2/params/SessionConfiguration;

    iget v9, p0, Lcom/oppo/camera/e/g$26;->b:I

    iget-object v10, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v10}, Lcom/oppo/camera/e/g;->L(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v10

    invoke-direct {v6, v9, v8, v5, v10}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    invoke-virtual {v6, v2}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    const-string v2, "createCaptureSession, createCaptureSession start"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v2}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    :goto_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->i(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$e;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->i(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/e/f$e;->c()V

    :cond_6
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCaptureSession, mOutSurfaceList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v1}, Lcom/oppo/camera/e/g;->N(Lcom/oppo/camera/e/g;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/e/g$26;->e:Lcom/oppo/camera/e/g;

    invoke-static {v1}, Lcom/oppo/camera/e/g;->N(Lcom/oppo/camera/e/g;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e/g$26;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
