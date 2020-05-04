.class public Lcom/oppo/camera/ui/preview/a/b;
.super Lcom/oppo/camera/ui/preview/a/n;
.source "BlurTexturePreview.java"


# static fields
.field private static a:Z = false


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:I

.field private g:I

.field private h:I

.field private i:Lcom/oppo/camera/gl/s;

.field private j:Lcom/oppo/camera/gl/s;

.field private k:Z

.field private l:Lcom/sensetime/blur/STBlurPreview;

.field private m:Lcom/oppo/camera/ui/preview/a/p;

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/HandlerThread;

.field private r:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/n;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/b;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/b;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/b;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->k:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->n:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->o:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->p:Landroid/os/Handler;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->r:Landroid/content/Context;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/b;->r:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/b;Lcom/oppo/camera/ui/preview/a/p;)Lcom/oppo/camera/ui/preview/a/p;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/b;Lcom/sensetime/blur/STBlurPreview;)Lcom/sensetime/blur/STBlurPreview;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    return-object p1
.end method

.method private a(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSTBlur, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sensetime/blur/STBlurPreview;->initRender(IIZ)I

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const-string p1, "initSTBlur, X"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/b;->p()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/b;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/a/b;)Lcom/sensetime/blur/STBlurPreview;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/a/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/b;->r:Landroid/content/Context;

    return-object p0
.end method

.method private p()V
    .locals 5

    sget-boolean v0, Lcom/oppo/camera/ui/preview/a/b;->a:Z

    if-nez v0, :cond_1

    const-string v0, "license_release.lic"

    invoke-static {v0}, Lcom/oppo/camera/Ipa/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    aput-byte v4, v1, v0

    invoke-static {v1}, Lcom/sensetime/faceapi/LicenseHelper;->initLicense([B)I

    move-result v0

    const-string v1, "BlurTexturePreview"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLicense failed, resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sput-boolean v2, Lcom/oppo/camera/ui/preview/a/b;->a:Z

    const-string v0, "checkLicense success"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/oppo/camera/ui/preview/a/b;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/b;->g:I

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    const-string v1, "BlurTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputBlurTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputBlurTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/p;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEngine, sbBlurLicenseChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oppo/camera/ui/preview/a/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBlurPreviewHandlerThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sensetime/blur/STBlurPreview;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BlurPreviewHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oppo/camera/ui/preview/a/b$1;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/preview/a/b$1;-><init>(Lcom/oppo/camera/ui/preview/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->p:Landroid/os/Handler;

    :cond_0
    sget-boolean v0, Lcom/oppo/camera/ui/preview/a/b;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->p:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/b;->n:Z

    :goto_0
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/b;->k:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([BII)V
    .locals 9

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/a/b;->d:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a/b;->c(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    if-nez v1, :cond_1

    const-string v1, "BlurTexturePreview"

    const-string v2, "canProcess, Engine has not init!"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a/p;->h()I

    move-result v1

    if-gtz v1, :cond_2

    const-string v1, "BlurTexturePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canProcess, facesCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/a/p;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return v0

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->d()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "BlurTexturePreview"

    const-string v1, "canProcess, not open effect"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/b;->o:Z

    if-nez p1, :cond_4

    const-string p1, "BlurTexturePreview"

    const-string v1, "canProcess, texture is not inited"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/n$a;)Z
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->m:Lcom/oppo/camera/ui/preview/a/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->n:Z

    if-nez v0, :cond_1

    const-string p1, "BlurTexturePreview"

    const-string v0, "process, mSTBlurFilter not create, so return!"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->h()I

    move-result v3

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/b;->d:I

    invoke-static {v4}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/ui/preview/a/b;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, p0, Lcom/oppo/camera/ui/preview/a/b;->k:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    if-eqz v6, :cond_2

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/camera/ui/preview/a/b;->a(IIZ)V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/b;->k:Z

    :cond_2
    invoke-static {v1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    const/4 v3, -0x1

    const/4 v6, 0x1

    if-eqz v2, :cond_9

    const v2, 0x3f4ccccd    # 0.8f

    if-nez v4, :cond_3

    const v7, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    const/16 v9, 0x1001

    invoke-virtual {v8, v9, v7}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->d()I

    move-result v0

    new-array v4, v6, [I

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    invoke-virtual {v7}, Lcom/oppo/camera/gl/s;->d()I

    move-result v7

    aput v7, v4, v1

    invoke-virtual {v2, v0, v4, v1}, Lcom/sensetime/blur/STBlurPreview;->processTexture(I[IZ)I

    move-result v0

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/oppo/camera/ui/preview/a/b;->h:I

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    const/16 v9, 0xb4

    if-eqz v4, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v9, :cond_6

    if-eq v4, v7, :cond_5

    goto :goto_1

    :cond_5
    move v9, v8

    goto :goto_1

    :cond_6
    move v9, v1

    goto :goto_1

    :cond_7
    move v9, v7

    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v4, v9, v1, v1}, Lcom/sensetime/blur/STBlurPreview;->rotateGrdualTexture(IZZ)I

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/b;->l:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->d()I

    move-result v0

    const/4 v7, 0x4

    new-array v7, v7, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v1

    aput v2, v7, v6

    const/4 v2, 0x2

    const v8, 0x3f19999a    # 0.6f

    aput v8, v7, v2

    const/4 v2, 0x3

    const v8, 0x3e99999a    # 0.3f

    aput v8, v7, v2

    new-array v2, v6, [I

    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    invoke-virtual {v8}, Lcom/oppo/camera/gl/s;->d()I

    move-result v8

    aput v8, v2, v1

    invoke-virtual {v4, v0, v7, v2, v1}, Lcom/sensetime/blur/STBlurPreview;->processTextureGradual(I[F[IZ)I

    move-result v0

    :goto_2
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    goto :goto_3

    :cond_9
    move v0, v3

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p1, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    invoke-interface {v2}, Lcom/oppo/camera/gl/h;->d()I

    move-result v2

    iget-object p1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->e()I

    move-result p1

    invoke-static {v1, v1, v2, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eq v0, v3, :cond_a

    move v1, v6

    :cond_a
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    :goto_4
    return v1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/b;->h:I

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 3

    const-string v0, "BlurTexturePreview"

    const-string v1, "destroyEngine"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->n:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->p:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->q:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public g()Lcom/oppo/camera/gl/s;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public h()Lcom/oppo/camera/gl/s;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 4

    const-string v0, "BlurTexturePreview"

    const-string v1, "newTextures"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/b;->c:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/b;->g:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/b;->c:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/b;->g:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/b;->o:Z

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "BlurTexturePreview"

    const-string v1, "recycleTextures"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->j:Lcom/oppo/camera/gl/s;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/b;->i:Lcom/oppo/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/b;->o:Z

    return-void
.end method
