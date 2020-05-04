.class public Lco/polarr/renderer/filters/bq;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/bq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/bq;->a:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "watermark"

    invoke-static {v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const-string p1, "opacity"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/bq;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bq;
    .locals 2

    sget-object v0, Lco/polarr/renderer/filters/bq;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/bq;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/filters/bq;

    invoke-direct {v0, p0, p1}, Lco/polarr/renderer/filters/bq;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/bq;->k()V

    sget-object p0, Lco/polarr/renderer/filters/bq;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/bq;->a(Lco/polarr/renderer/entities/Context;)V

    return-object v0
.end method

.method public static h()V
    .locals 1

    sget-object v0, Lco/polarr/renderer/filters/bq;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method private i()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/b/c;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v1

    iget-object v2, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    int-to-float v2, v2

    iget-object v3, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v3, v3

    const/4 v4, 0x2

    aget v5, v1, v4

    const/4 v6, 0x3

    aget v7, v1, v6

    iget-object v8, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v8}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v8

    iget-object v9, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-boolean v9, v9, Lco/polarr/renderer/entities/Context;->cropMode:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    aget v5, v8, v11

    aget v7, v8, v10

    :cond_0
    div-float/2addr v2, v5

    div-float/2addr v3, v7

    iget-object v9, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v9, v9, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-object v9, v9, Lco/polarr/renderer/entities/Context$WatermarkOptions;->position:[F

    iget-object v12, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v12, v12, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget v12, v12, Lco/polarr/renderer/entities/Context$WatermarkOptions;->scale:F

    iget-object v13, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v13, v13, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget v13, v13, Lco/polarr/renderer/entities/Context$WatermarkOptions;->rotation:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    div-float/2addr v2, v14

    mul-float/2addr v2, v12

    div-float/2addr v3, v14

    mul-float/2addr v3, v12

    aget v12, v9, v11

    aget v9, v9, v10

    aget v14, v8, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    aget v16, v8, v10

    div-float v16, v16, v15

    const/4 v15, 0x4

    new-array v15, v15, [F

    aget v18, v1, v11

    sub-float v18, v18, v14

    iget-object v6, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget v6, v6, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float v18, v18, v6

    add-float v18, v18, v14

    aput v18, v15, v11

    aget v6, v1, v10

    sub-float v6, v6, v16

    iget-object v14, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget v14, v14, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v6, v14

    add-float v6, v6, v16

    aput v6, v15, v10

    aget v6, v1, v4

    iget-object v14, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget v14, v14, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v6, v14

    aput v6, v15, v4

    const/4 v6, 0x3

    aget v1, v1, v6

    iget-object v14, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget v14, v14, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v1, v14

    aput v1, v15, v6

    aget v1, v8, v11

    aget v14, v15, v4

    sub-float/2addr v1, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v1, v14

    aget v16, v15, v11

    aget v17, v8, v10

    aget v18, v15, v6

    sub-float v17, v17, v18

    div-float v18, v17, v14

    aget v14, v15, v10

    sub-float v1, v1, v16

    neg-float v1, v1

    aget v16, v15, v4

    div-float v1, v1, v16

    sub-float v14, v18, v14

    neg-float v14, v14

    aget v16, v15, v6

    div-float v14, v14, v16

    aget v4, v15, v4

    aget v16, v8, v11

    div-float v22, v4, v16

    aget v4, v15, v6

    aget v6, v8, v10

    div-float v23, v4, v6

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v4

    const/16 v25, 0x0

    const/16 v27, 0x0

    iget-object v6, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->viewMatrix:[F

    const/16 v29, 0x0

    move-object/from16 v24, v4

    move-object/from16 v26, v4

    move-object/from16 v28, v6

    invoke-static/range {v24 .. v29}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v19, 0x0

    iget-object v6, v0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->viewMatrix:[F

    const/16 v21, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    invoke-static/range {v18 .. v24}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    mul-float/2addr v14, v6

    const/4 v6, 0x0

    invoke-static {v4, v11, v1, v14, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    mul-float v1, v2, v12

    sub-float/2addr v12, v1

    mul-float v1, v3, v9

    sub-float/2addr v9, v1

    invoke-static {v4, v11, v12, v9, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v6, v1, v5

    div-float v8, v1, v7

    invoke-static {v4, v11, v6, v8, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v14, v4

    move/from16 v16, v13

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-static {v4, v11, v5, v7, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {v4, v11, v2, v3, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {v0, v4}, Lco/polarr/renderer/filters/bq;->a([F)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context$WatermarkOptions;->enabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context$WatermarkOptions;->preview:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lco/polarr/renderer/filters/bq;->i()V

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget v0, p0, Lco/polarr/renderer/filters/bq;->x:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    iget-object v2, p0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lco/polarr/renderer/filters/bq;->x:I

    const-string v1, "opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/bq;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget v1, v1, Lco/polarr/renderer/entities/Context$WatermarkOptions;->opacity:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1
    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method
