.class public Lco/polarr/renderer/filters/p;
.super Lco/polarr/renderer/filters/a/a;


# static fields
.field private static e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[F

.field public b:F

.field public c:[F

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/p;->e:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lco/polarr/renderer/filters/a/a;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lco/polarr/renderer/filters/p;->a:[F

    const/high16 p1, 0x42280000    # 42.0f

    iput p1, p0, Lco/polarr/renderer/filters/p;->b:F

    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lco/polarr/renderer/filters/p;->c:[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/p;
    .locals 2

    sget-object v0, Lco/polarr/renderer/filters/p;->e:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/p;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/filters/p;

    invoke-direct {v0, p0, p1}, Lco/polarr/renderer/filters/p;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/p;->k()V

    sget-object p0, Lco/polarr/renderer/filters/p;->e:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    return-object v0
.end method

.method public static o_()V
    .locals 1

    sget-object v0, Lco/polarr/renderer/filters/p;->e:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    return-void
.end method

.method protected b_()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    iget-object v2, p0, Lco/polarr/renderer/filters/p;->E:Landroid/content/res/Resources;

    const-string v3, "vertex"

    invoke-static {v3}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    iget-object v2, p0, Lco/polarr/renderer/filters/p;->E:Landroid/content/res/Resources;

    const-string v3, "color_cursor"

    invoke-static {v3}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/p;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->x:I

    iget v0, p0, Lco/polarr/renderer/filters/p;->x:I

    const-string v1, "a_Vertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->y:I

    iget v0, p0, Lco/polarr/renderer/filters/p;->x:I

    const-string v1, "a_TexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->z:I

    iget v0, p0, Lco/polarr/renderer/filters/p;->x:I

    const-string v1, "a_Distortion"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->A:I

    iget v0, p0, Lco/polarr/renderer/filters/p;->x:I

    const-string v1, "a_Delta"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->B:I

    iget v0, p0, Lco/polarr/renderer/filters/p;->x:I

    const-string v1, "u_ModelViewProjectionMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->C:I

    iget v0, p0, Lco/polarr/renderer/filters/p;->x:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/p;->D:I

    return-void
.end method

.method protected d()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/polarr/renderer/filters/p;->a:[F

    if-eqz v1, :cond_1

    iget v1, v0, Lco/polarr/renderer/filters/p;->x:I

    const-string v2, "position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/filters/p;->a:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget-object v1, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/b/c;->d(Lco/polarr/renderer/entities/Context;)F

    move-result v1

    iget v2, v0, Lco/polarr/renderer/filters/p;->b:F

    mul-float/2addr v2, v1

    const/4 v1, 0x3

    new-array v5, v1, [F

    iget-object v6, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v6, v6, Lco/polarr/renderer/render/f;->d:I

    int-to-float v6, v6

    iget-object v7, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v7, v7, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    iget v7, v7, Lco/polarr/renderer/entities/Context$Screen;->zoom:F

    mul-float/2addr v6, v7

    div-float v6, v2, v6

    aput v6, v5, v4

    iget-object v6, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v6, v6, Lco/polarr/renderer/render/f;->e:I

    int-to-float v6, v6

    iget-object v7, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v7, v7, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    iget v7, v7, Lco/polarr/renderer/entities/Context$Screen;->zoom:F

    mul-float/2addr v6, v7

    div-float v6, v2, v6

    aput v6, v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    aput v6, v5, v7

    new-array v8, v1, [F

    iget-object v9, v0, Lco/polarr/renderer/filters/p;->a:[F

    aget v10, v9, v4

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    aput v10, v8, v4

    aget v9, v9, v3

    neg-float v9, v9

    mul-float/2addr v9, v11

    aput v9, v8, v3

    const/4 v9, 0x0

    aput v9, v8, v7

    iget-object v10, v0, Lco/polarr/renderer/filters/p;->G:[F

    const/4 v11, 0x0

    iget-object v12, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v12, v12, Lco/polarr/renderer/entities/Context;->overlayMatrix:[F

    const/4 v13, 0x0

    aget v14, v8, v4

    aget v15, v8, v3

    aget v16, v8, v7

    invoke-static/range {v10 .. v16}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v8, v0, Lco/polarr/renderer/filters/p;->G:[F

    aget v10, v5, v4

    aget v11, v5, v3

    aget v5, v5, v7

    invoke-static {v8, v4, v10, v11, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v5, v0, Lco/polarr/renderer/filters/p;->x:I

    const-string v7, "texel"

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    div-float v2, v6, v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v2, v0, Lco/polarr/renderer/filters/p;->c:[F

    const-string v5, "colorMix"

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ne v2, v1, :cond_0

    iget v1, v0, Lco/polarr/renderer/filters/p;->x:I

    const-string v2, "color"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/filters/p;->c:[F

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v1, v0, Lco/polarr/renderer/filters/p;->x:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lco/polarr/renderer/filters/p;->x:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1
    :goto_0
    iget-object v1, v0, Lco/polarr/renderer/filters/p;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/p;->a(I)V

    invoke-super/range {p0 .. p0}, Lco/polarr/renderer/filters/a/a;->d()V

    return-void
.end method

.method public draw()V
    .locals 0

    invoke-virtual {p0}, Lco/polarr/renderer/filters/p;->n()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/p;->d()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/p;->g()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/p;->e()V

    return-void
.end method

.method protected e()V
    .locals 7

    iget v0, p0, Lco/polarr/renderer/filters/p;->y:I

    if-ltz v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/filters/p;->y:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/p;->y:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mVerBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    iget v0, p0, Lco/polarr/renderer/filters/p;->z:I

    if-ltz v0, :cond_1

    iget v0, p0, Lco/polarr/renderer/filters/p;->z:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/p;->z:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_1
    iget v0, p0, Lco/polarr/renderer/filters/p;->A:I

    if-ltz v0, :cond_2

    iget v0, p0, Lco/polarr/renderer/filters/p;->A:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/p;->A:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mDistortionBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_2
    iget v0, p0, Lco/polarr/renderer/filters/p;->B:I

    if-ltz v0, :cond_3

    iget v0, p0, Lco/polarr/renderer/filters/p;->B:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/p;->B:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mDeltaBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_3
    const/4 v0, 0x4

    sget-object v1, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v1, v1, Lco/polarr/renderer/entities/Mesh;->trianglesBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1403

    sget-object v3, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v3, v3, Lco/polarr/renderer/entities/Mesh;->trianglesBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    iget v0, p0, Lco/polarr/renderer/filters/p;->y:I

    if-ltz v0, :cond_4

    iget v0, p0, Lco/polarr/renderer/filters/p;->y:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_4
    iget v0, p0, Lco/polarr/renderer/filters/p;->z:I

    if-ltz v0, :cond_5

    iget v0, p0, Lco/polarr/renderer/filters/p;->z:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_5
    iget v0, p0, Lco/polarr/renderer/filters/p;->A:I

    if-ltz v0, :cond_6

    iget v0, p0, Lco/polarr/renderer/filters/p;->A:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_6
    iget v0, p0, Lco/polarr/renderer/filters/p;->B:I

    if-ltz v0, :cond_7

    iget v0, p0, Lco/polarr/renderer/filters/p;->B:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_7
    return-void
.end method
