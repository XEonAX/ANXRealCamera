.class public Lco/polarr/renderer/filters/bp;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field public static a:F

.field public static b:F

.field public static c:F

.field public static d:F

.field public static e:F

.field public static f:F

.field private static g:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/bp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/bp;->g:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 3

    const-string v0, "vignette.glsl"

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lco/polarr/renderer/filters/bp;->h:Z

    const-string p1, "vignette_amount"

    const-string p2, "vignette_feather"

    const-string v0, "vignette_highlights"

    const-string v1, "vignette_roundness"

    const-string v2, "vignette_size"

    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/bp;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lco/polarr/renderer/filters/bp;
    .locals 2
    .annotation build Lco/polarr/a/a;
    .end annotation

    sget-object v0, Lco/polarr/renderer/filters/bp;->g:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/bp;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/filters/bp;

    new-instance v1, Lco/polarr/renderer/entities/Context;

    invoke-direct {v1}, Lco/polarr/renderer/entities/Context;-><init>()V

    invoke-direct {v0, p0, v1}, Lco/polarr/renderer/filters/bp;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/bp;->k()V

    sget-object p0, Lco/polarr/renderer/filters/bp;->g:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p0

    invoke-virtual {v0, p0}, Lco/polarr/renderer/filters/bp;->a([F)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lco/polarr/renderer/filters/bp;->h:Z

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lco/polarr/renderer/filters/bp;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d()V
    .locals 5

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "crop"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lco/polarr/renderer/filters/bp;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v1, v2}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const/4 v2, 0x3

    aget v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    const/4 v2, 0x1

    aget v4, v1, v2

    sub-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "rotationMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/bp;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->rotation90MatrixInv:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lco/polarr/renderer/filters/bp;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    iget v1, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v4, "imgSize"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aget v4, v0, v3

    aget v0, v0, v2

    invoke-static {v1, v4, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "viewMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/bp;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "vignette_amount"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/bp;->a:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "vignette_feather"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/bp;->b:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "vignette_highlights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/bp;->c:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "vignette_roundness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/bp;->e:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "vignette_size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/bp;->f:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/bp;->x:I

    const-string v1, "vignette_exposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/bp;->d:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public draw()V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->draw()V

    return-void
.end method

.method public getMatrix()[F
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->getMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public setInputTextureId(I)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/bp;->a(I)V

    return-void
.end method

.method public setNeedClear(Z)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    iput-boolean p1, p0, Lco/polarr/renderer/filters/bp;->h:Z

    return-void
.end method
