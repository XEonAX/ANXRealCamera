.class public Lcom/oppo/camera/Ipa/a/c;
.super Lcom/oppo/camera/Ipa/a/b;
.source "FaceBeautyProcessor.java"


# instance fields
.field private a:Lcom/oppo/camera/ffd/OppoFFD;

.field private b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

.field private c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "FaceBeautyProcessor"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    invoke-virtual {v1}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->release()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    iget-object v2, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    invoke-virtual {v2}, Lcom/oppo/camera/ffd/OppoFFD;->release()I

    iput-object v1, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    const-string v1, "unInit X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 3

    const-string p1, "FaceBeautyProcessor"

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/ffd/OppoFFD;

    invoke-direct {v0}, Lcom/oppo/camera/ffd/OppoFFD;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    const/4 v1, 0x3

    const-string v2, "/system/etc/camera/"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ffd/OppoFFD;->initialize(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/oppo/camera/ffd/OppoFFD;->setDebug(ZZZZ)I

    new-instance v0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    invoke-direct {v0}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    new-instance v0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    invoke-direct {v0}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object v2, p2, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v2, v2, Lcom/oppo/camera/Ipa/b$b;->E:Z

    iput-boolean v2, v0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->mbFrontCamera:Z

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object v2, p2, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v2, v2, Lcom/oppo/camera/Ipa/b$b;->F:Z

    iput-boolean v2, v0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->mbPortraitMode:Z

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object p2, p2, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean p2, p2, Lcom/oppo/camera/Ipa/b$b;->G:Z

    iput-boolean p2, v0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->mbSuperNight:Z

    iget-object p2, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    invoke-virtual {p2, v0}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->initialize(Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;)I

    new-instance p2, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;

    invoke-direct {p2}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;-><init>()V

    iput-boolean v1, p2, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbFbDump:Z

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mFbEnable:Z

    iput-boolean v0, p2, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mb3DFb:Z

    iget-object v0, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->setDebug(Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;)V

    const-string p2, "init X"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v3, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    new-instance v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;

    invoke-direct {v4}, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;-><init>()V

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v5, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mWidth:I

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v5, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mHeight:I

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v5, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mStride:I

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->h:I

    iput v5, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mScanline:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process, mWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/oppo/camera/Ipa/b$a;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FaceBeautyProcessor"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    const/16 v7, 0x11

    if-eq v5, v7, :cond_0

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    const/16 v8, 0x112

    if-eq v5, v8, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not support face beauty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-boolean v8, v3, Lcom/oppo/camera/Ipa/b$b;->E:Z

    iget-boolean v9, v3, Lcom/oppo/camera/Ipa/b$b;->F:Z

    iget-boolean v10, v3, Lcom/oppo/camera/Ipa/b$b;->G:Z

    invoke-virtual {v5, v8, v9, v10}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->equal(ZZZ)Z

    move-result v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    invoke-virtual {v5}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->release()I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    new-instance v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    invoke-direct {v5}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;-><init>()V

    iput-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    iget-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object v10, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v10, v10, Lcom/oppo/camera/Ipa/b$b;->E:Z

    iput-boolean v10, v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->mbFrontCamera:Z

    iget-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object v10, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v10, v10, Lcom/oppo/camera/Ipa/b$b;->F:Z

    iput-boolean v10, v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->mbPortraitMode:Z

    iget-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    iget-object v10, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v10, v10, Lcom/oppo/camera/Ipa/b$b;->G:Z

    iput-boolean v10, v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;->mbSuperNight:Z

    iget-object v5, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    iget-object v10, p0, Lcom/oppo/camera/Ipa/a/c;->b:Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;

    invoke-virtual {v5, v10}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->initialize(Lcom/oppo/camera/facebeauty/OppoFaceBeauty$InitParameter;)I

    new-instance v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;

    invoke-direct {v5}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;-><init>()V

    iput-boolean v9, v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbFbDump:Z

    iput-boolean v8, v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mFbEnable:Z

    iput-boolean v8, v5, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mb3DFb:Z

    iget-object v10, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    invoke-virtual {v10, v5}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->setDebug(Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;)V

    :cond_1
    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    if-ne v5, v7, :cond_2

    iput v8, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mFormat:I

    goto :goto_0

    :cond_2
    iput v9, v4, Lcom/oppo/camera/ffd/OppoFFD$ImageInfo;->mFormat:I

    :goto_0
    new-instance v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;

    invoke-direct {v5}, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;-><init>()V

    iget v10, v2, Lcom/oppo/camera/Ipa/b$a;->j:I

    iput v10, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mDeviceOrientation:I

    iget-object v10, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v10, v10, Lcom/oppo/camera/Ipa/b$b;->E:Z

    iput-boolean v10, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mFrontCamera:Z

    iget-object v10, p0, Lcom/oppo/camera/Ipa/a/c;->a:Lcom/oppo/camera/ffd/OppoFFD;

    iget-object v11, v2, Lcom/oppo/camera/Ipa/b$a;->a:[B

    invoke-virtual {v10, v11, v4, v5}, Lcom/oppo/camera/ffd/OppoFFD;->process([BLcom/oppo/camera/ffd/OppoFFD$ImageInfo;Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process, ffd costTime: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mFaceNum: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mFaceNum:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mbForbidBeauty: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v10, v10, Lcom/oppo/camera/Ipa/b$b;->H:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v4, v4, Lcom/oppo/camera/Ipa/b$b;->H:Z

    if-eqz v4, :cond_3

    iget v4, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mFaceNum:I

    if-gtz v4, :cond_3

    const-string p1, "process, not need face beauty"

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;

    invoke-direct {v4}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;-><init>()V

    iget v10, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    if-ne v10, v7, :cond_4

    iput v8, v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mFormat:I

    goto :goto_1

    :cond_4
    iput v9, v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mFormat:I

    :goto_1
    iget v7, v2, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v7, v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mWidth:I

    iget v7, v2, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v7, v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mHeight:I

    iget v7, v2, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v7, v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mStride:I

    iget v7, v2, Lcom/oppo/camera/Ipa/b$a;->h:I

    iput v7, v4, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;->mScanline:I

    new-instance v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;

    invoke-direct {v7}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;-><init>()V

    iget v8, v2, Lcom/oppo/camera/Ipa/b$a;->j:I

    iput v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mDeviceOrientation:I

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v8, v8, Lcom/oppo/camera/Ipa/b$b;->z:I

    iput v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mFaceBeautyLevel:I

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v8, v8, Lcom/oppo/camera/Ipa/b$b;->i:I

    iput v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mISO:I

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v8, v8, Lcom/oppo/camera/Ipa/b$b;->B:Z

    iput-boolean v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mbVideoMode:Z

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v8, v8, Lcom/oppo/camera/Ipa/b$b;->C:Z

    iput-boolean v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mbFlashSnapshot:Z

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->A:[I

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->A:[I

    array-length v8, v8

    if-lez v8, :cond_5

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->A:[I

    array-length v8, v8

    iput v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mAppBeautyParamSize:I

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->A:[I

    iput-object v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mAppBeautyParam:[I

    :cond_5
    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->K:[I

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->K:[I

    array-length v8, v8

    if-lez v8, :cond_6

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->K:[I

    array-length v8, v8

    iput v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mBeauty3DParamSize:I

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v8, v8, Lcom/oppo/camera/Ipa/b$b;->K:[I

    iput-object v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mBeauty3DParam:[I

    :cond_6
    iget-object v3, v3, Lcom/oppo/camera/Ipa/b$b;->y:[B

    iput-object v3, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mSensorName:[B

    const-string v3, "/system/etc/camera/"

    iput-object v3, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mModelPath:Ljava/lang/String;

    const-string v3, " "

    const-string v8, "persist.sys.locale"

    invoke-static {v8, v3}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mLanguage:Ljava/lang/String;

    const-string v8, "ro.oppo.version"

    invoke-static {v8, v3}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mVersion:Ljava/lang/String;

    const-string v8, "persist.sys.oppo.region"

    invoke-static {v8, v3}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mRegion:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v3, v3, Lcom/oppo/camera/Ipa/b$b;->D:Ljava/lang/String;

    iput-object v3, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mProjectName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget p1, p1, Lcom/oppo/camera/Ipa/b$b;->J:I

    iput p1, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mMasterFaceIndex:I

    iget p1, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mFFDResultSize:I

    new-array p1, p1, [B

    iget-object v3, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mFFDResult:Ljava/nio/ByteBuffer;

    array-length v8, p1

    invoke-virtual {v3, p1, v9, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mAttrResultSize:I

    new-array v3, v3, [B

    iget-object v8, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mAttrResult:Ljava/nio/ByteBuffer;

    array-length v10, v3

    invoke-virtual {v8, v3, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v5, v5, Lcom/oppo/camera/ffd/OppoFFD$ProcessParameter;->mFaceNum:I

    iput v5, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mFaceNum:I

    iput-object p1, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mFFDResult:[B

    iput-object v3, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mAttrResult:[B

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FACE_BEAUTY_VERSION_CODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    iput p1, v7, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mVersionCode:I

    iget-object p1, p0, Lcom/oppo/camera/Ipa/a/c;->c:Lcom/oppo/camera/facebeauty/OppoFaceBeauty;

    iget-object v2, v2, Lcom/oppo/camera/Ipa/b$a;->a:[B

    invoke-virtual {p1, v2, v4, v7}, Lcom/oppo/camera/facebeauty/OppoFaceBeauty;->process([BLcom/oppo/camera/facebeauty/OppoFaceBeauty$ImageInfo;Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process, face beauty costTime: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
