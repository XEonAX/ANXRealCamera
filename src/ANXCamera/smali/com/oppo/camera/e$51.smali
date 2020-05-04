.class Lcom/oppo/camera/e$51;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAvailable, mBurstCaptureImageListener, mReceiveBurstPictureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbBurstShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captureX mBurstCaptureImageListener onImageAvailable"

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->r(Lcom/oppo/camera/e;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v13

    invoke-virtual {v5}, Landroid/media/Image;->getFormat()I

    move-result v10

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result v6

    const/4 v15, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v7, v6, v11

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    new-array v14, v8, [Ljava/nio/ByteBuffer;

    aput-object v7, v14, v11

    aput-object v9, v14, v15

    new-array v15, v8, [I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    aput v7, v15, v11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v9, 0x1

    aput v7, v15, v9

    new-array v7, v8, [I

    aput v12, v7, v11

    aput v13, v7, v9

    new-array v9, v8, [I

    aget-object v16, v6, v11

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    aput v16, v9, v11

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    const/4 v8, 0x1

    aput v6, v9, v8

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->s(Lcom/oppo/camera/e;)Lcom/oppo/camera/jni/NativeBufferProducer;

    move-result-object v16

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lcom/oppo/camera/jni/NativeBufferProducer;->getNativeBuffer([Ljava/nio/ByteBuffer;[I[I[IZZ)Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    move-result-object v14

    if-eqz v14, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImageAvailable, mBurstCaptureImageListener, getNativeBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v2, 0x1

    move v8, v12

    move v9, v13

    move v15, v11

    move v11, v2

    invoke-virtual/range {v6 .. v11}, Lcom/oppo/camera/d/i;->a([BIIIZ)V

    goto :goto_0

    :cond_1
    move v15, v11

    goto :goto_0

    :cond_2
    move v15, v11

    const/4 v14, 0x0

    :goto_0
    new-instance v2, Lcom/oppo/camera/Ipa/b$a;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/b$a;-><init>()V

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iput v12, v2, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v13, v2, Lcom/oppo/camera/Ipa/b$a;->f:I

    const/16 v6, 0x11

    iput v6, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    iput v12, v2, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v13, v2, Lcom/oppo/camera/Ipa/b$a;->h:I

    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/oppo/camera/Ipa/b$a;->k:J

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->n(Lcom/oppo/camera/e;)I

    move-result v6

    iput v6, v2, Lcom/oppo/camera/Ipa/b$a;->j:I

    iput-object v14, v2, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/oppo/camera/Ipa/b$a;->l:Z

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v6

    iput v6, v2, Lcom/oppo/camera/Ipa/b$a;->o:I

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->t(Lcom/oppo/camera/e;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/oppo/camera/Ipa/b$a;->m:J

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->u(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    iput-wide v3, v2, Lcom/oppo/camera/Ipa/b$a;->p:J

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$a;)V

    :cond_3
    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_4

    iget-object v7, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->a(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/camera/e;->a(JLjava/lang/String;ZZ)V

    :cond_4
    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v3

    if-lt v2, v3, :cond_5

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2, v15}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;I)I

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;J)J

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    invoke-interface {v2, v15}, Lcom/oppo/camera/e/f;->g(Z)V

    iget-object v2, v0, Lcom/oppo/camera/e$51;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_5
    invoke-virtual {v5}, Landroid/media/Image;->close()V

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    return-void
.end method
