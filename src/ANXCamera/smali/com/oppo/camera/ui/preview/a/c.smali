.class public Lcom/oppo/camera/ui/preview/a/c;
.super Lcom/oppo/camera/ui/preview/a/n;
.source "FaceSlenderTexturePreview.java"


# instance fields
.field private a:Lcom/oppo/camera/gl/s;

.field private b:Lcom/oppo/camera/gl/s;

.field private c:Lcom/oppo/camera/ui/preview/a/p;

.field private g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/n;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/c;->h:Z

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/c;->i:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/c;->j:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/c;->k:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/c;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/c;)Lcom/oppo/camera/facebeauty/FaceSlender2D;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/c;Lcom/oppo/camera/facebeauty/FaceSlender2D;)Lcom/oppo/camera/facebeauty/FaceSlender2D;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/c;Lcom/oppo/camera/ui/preview/a/p;)Lcom/oppo/camera/ui/preview/a/p;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    return-object p1
.end method

.method private b(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFaceSlender2D, textureWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textureHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSlenderTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initFaceSlender2D"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/facebeauty/FaceSlender2D;->destroySlender()I

    :cond_0
    new-instance v2, Lcom/oppo/camera/facebeauty/FaceSlender2D;

    invoke-direct {v2}, Lcom/oppo/camera/facebeauty/FaceSlender2D;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/facebeauty/FaceSlender2D;->initSlender(II)I

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string p1, "initFaceSlender2D, X"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "FaceSlenderTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/oppo/camera/ui/preview/a/c;->i:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/c;->j:I

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    const-string v1, "prepareTextures, texture id: "

    const-string v2, "FaceSlenderTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/p;)V
    .locals 2

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "createEngine"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureSizeChanged, sizeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSlenderTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/c;->h:Z

    return-void
.end method

.method public a(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a/c;->c(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    const-string v1, "FaceSlenderTexturePreview"

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/c;->k:Z

    if-nez p1, :cond_2

    const-string p1, "canProcess, texture is not inited"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->g()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->a()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/c;->l:Z

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/c;->l()I

    :cond_5
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/c;->l:Z

    return v0

    :cond_6
    :goto_0
    const-string p1, "canProcess, mRequest or FD is null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canProcess, mOutputTexture or mInputTexture is null, mOutputTexture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInputTexture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/n$a;)Z
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    const-string v1, "FaceSlenderTexturePreview"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->f()[I

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/c;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->g()I

    move-result v1

    iget-object v3, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->h()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/oppo/camera/ui/preview/a/c;->b(II)V

    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/c;->h:Z

    :cond_2
    const/4 v1, 0x2

    iget v3, p1, Lcom/oppo/camera/ui/preview/a/n$a;->f:I

    if-ne v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    if-eqz v1, :cond_4

    const-string v1, "FaceSlenderTexturePreview.processSlender"

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    iget-object p1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/s;->d()I

    move-result p1

    const/4 v4, 0x1

    new-array v5, v4, [I

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    invoke-virtual {v6}, Lcom/oppo/camera/gl/s;->d()I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v3, p1, v5, v0}, Lcom/oppo/camera/facebeauty/FaceSlender2D;->processSlender(I[I[I)I

    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v4

    :cond_4
    return v2

    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, ffd: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, mRequest: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", frameInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
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

    const/4 v0, 0x4

    return v0
.end method

.method public f()V
    .locals 4

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "destroyEngine"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/c;->c:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/c;->e:Lcom/oppo/camera/gl/GLRootView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/c;->e:Lcom/oppo/camera/gl/GLRootView;

    new-instance v2, Lcom/oppo/camera/ui/preview/a/c$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/preview/a/c$1;-><init>(Lcom/oppo/camera/ui/preview/a/c;)V

    invoke-static {v1, v2}, Lcom/oppo/camera/p;->a(Lcom/oppo/camera/gl/q;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyEngine, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "destroyEngine, mRootView not initialized yet."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Lcom/oppo/camera/gl/s;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public h()Lcom/oppo/camera/gl/s;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 4

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "newTextures"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/c;->i:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/c;->j:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/c;->i:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/c;->j:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/c;->k:Z

    return-void
.end method

.method public k()V
    .locals 5

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/c;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    const/4 v1, 0x0

    const-string v2, "recycleTextures, texture id: "

    const-string v3, "FaceSlenderTexturePreview"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/c;->a:Lcom/oppo/camera/gl/s;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/c;->b:Lcom/oppo/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/c;->k:Z

    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c;->g:Lcom/oppo/camera/facebeauty/FaceSlender2D;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/facebeauty/FaceSlender2D;->resetSlender()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
