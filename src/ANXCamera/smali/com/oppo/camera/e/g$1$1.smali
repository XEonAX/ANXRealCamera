.class Lcom/oppo/camera/e/g$1$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e/g$1;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e/g$1;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed, cameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraImpl"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {p1, v0}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {p1}, Lcom/oppo/camera/e/g;->e(Lcom/oppo/camera/e/g;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    invoke-interface {p1}, Lcom/oppo/camera/e/f$b;->b()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;I)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnected, cameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0, p1}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f$b;->a(Z)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {p1}, Lcom/oppo/camera/e/g;->d(Lcom/oppo/camera/e/g;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, cameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->d(Lcom/oppo/camera/e/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0, p1}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/e/g;->a(ZLcom/oppo/camera/e/f$b;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f$b;->a(I)V

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "openCamera"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpened, cameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object v0, v0, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {v0, p1}, Lcom/oppo/camera/e/g;->b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->c:Lcom/oppo/camera/e/f$b;

    invoke-interface {p1}, Lcom/oppo/camera/e/f$b;->a()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    invoke-static {p1}, Lcom/oppo/camera/e/g;->d(Lcom/oppo/camera/e/g;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object p1, p0, Lcom/oppo/camera/e/g$1$1;->a:Lcom/oppo/camera/e/g$1;

    iget-object p1, p1, Lcom/oppo/camera/e/g$1;->e:Lcom/oppo/camera/e/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oppo/camera/e/g;->a(Lcom/oppo/camera/e/g;I)V

    return-void
.end method
