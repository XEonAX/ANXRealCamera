.class Lcom/oppo/camera/a/a$1;
.super Ljava/lang/Object;
.source "ApsController.java"

# interfaces
.implements Lcom/oppo/camera/jni/APSClient$BufferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/a/a;


# direct methods
.method constructor <init>(Lcom/oppo/camera/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(Lcom/oppo/camera/jni/APSClient$APSResultInfo;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLocalBufferCallback, onDataCallback, callbackInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "captureX mLocalBufferCallback onDataCallback"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v2}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/APSClient$BufferCallback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mBufferType:I

    const/4 v6, 0x2

    if-ne v2, v5, :cond_2

    const-string v0, "mLocalBufferCallback, onDataCallback, RAW callback will notify to basemode."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->b(Lcom/oppo/camera/a/a;)Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v1}, Lcom/oppo/camera/a/a;->b(Lcom/oppo/camera/a/a;)Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->b(Lcom/oppo/camera/a/a;)Landroid/media/Image;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mImage:Landroid/media/Image;

    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/APSClient$BufferCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/jni/APSClient$BufferCallback;->onDataCallback(Lcom/oppo/camera/jni/APSClient$APSResultInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    iget-wide v1, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mIdentity:J

    invoke-virtual {v0, v6, v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    iput-object v4, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    return-void

    :goto_1
    iput-object v4, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v2}, Lcom/oppo/camera/a/a;->d(Lcom/oppo/camera/a/a;)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v2}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/APSClient$BufferCallback;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/oppo/camera/jni/APSClient$BufferCallback;->onDataCallback(Lcom/oppo/camera/jni/APSClient$APSResultInfo;)V

    :cond_3
    new-instance v2, Lcom/oppo/camera/Ipa/b$a;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/b$a;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v5}, Lcom/oppo/camera/a/a;->e(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/NativeBufferProducer;

    move-result-object v5

    iget-object v6, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    iget-object v7, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/oppo/camera/jni/NativeBufferProducer;->getNativeBufferFromByteArray([BIZ)Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    iget v3, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mWidth:I

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v3, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mHeight:I

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->f:I

    const/16 v3, 0x11

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    iget v3, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mStride:I

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->g:I

    iget v3, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mScanline:I

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->h:I

    iget v3, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mRotation:I

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->j:I

    iget-wide v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mIdentity:J

    iput-wide v5, v2, Lcom/oppo/camera/Ipa/b$a;->k:J

    const/4 v3, -0x1

    iput v3, v2, Lcom/oppo/camera/Ipa/b$a;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/oppo/camera/Ipa/b$a;->p:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLocalBufferCallback, onDataCallback, mData.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mRotation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", format: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", stride: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mStride:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scanline: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mScanline:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mIdentity:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v1}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v1}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$a;)V

    :cond_4
    iput-object v4, p1, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    iget-object p1, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {p1}, Lcom/oppo/camera/a/a;->f(Lcom/oppo/camera/a/a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDied()V
    .locals 4

    const-string v0, "ApsController"

    const-string v1, "onServiceDied, will kill Camera process, need check why APS died"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/a/a$1;->a:Lcom/oppo/camera/a/a;

    invoke-static {v0}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    :cond_0
    return-void
.end method
