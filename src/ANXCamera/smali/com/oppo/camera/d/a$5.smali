.class Lcom/oppo/camera/d/a$5;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Lcom/oppo/camera/jni/APSClient$BufferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/a;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(Lcom/oppo/camera/jni/APSClient$APSResultInfo;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback, callbackInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReprocessMetadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {v1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/d/a;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oppo/camera/d/a;->q:Z

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    const-string v0, "func_post_thumbnail"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/d/a;->a([BIIIZ)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropLeft:I

    iget v2, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropTop:I

    iget v3, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropRight:I

    iget v4, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    iget-object v1, v1, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iget-object v2, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mImage:Landroid/media/Image;

    iget-object v3, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {v3}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/d/a;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    new-instance v4, Landroid/util/Size;

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mWidth:I

    iget p1, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mHeight:I

    invoke-direct {v4, v5, p1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/oppo/camera/e/f;->a(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {p1}, Lcom/oppo/camera/d/a;->e(Lcom/oppo/camera/d/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "BaseMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataCallback, mApsReprocessAlgoFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {v2}, Lcom/oppo/camera/d/a;->f(Lcom/oppo/camera/d/a;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mApsAlgoFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {v2}, Lcom/oppo/camera/d/a;->g(Lcom/oppo/camera/d/a;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", captureNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-virtual {v2}, Lcom/oppo/camera/d/a;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    iget-object v1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {v1}, Lcom/oppo/camera/d/a;->g(Lcom/oppo/camera/d/a;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/d/a;[I)[I

    iget-object v0, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    iget-object v1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {v1}, Lcom/oppo/camera/d/a;->f(Lcom/oppo/camera/d/a;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/d/a;[I)[I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-static {p1}, Lcom/oppo/camera/d/a;->h(Lcom/oppo/camera/d/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    iget-object v1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->p()I

    move-result v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/d/a;I)I

    iget-object p1, p0, Lcom/oppo/camera/d/a$5;->a:Lcom/oppo/camera/d/a;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/d/a;I)I

    monitor-exit v0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onServiceDied()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "onServiceDied"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
