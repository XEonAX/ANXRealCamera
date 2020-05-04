.class public Lco/polarr/renderer/e;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 2

    const-class v0, Lco/polarr/renderer/e;

    monitor-enter v0

    :try_start_0
    sget v0, Lco/polarr/renderer/e;->a:I

    div-int/lit8 v0, v0, 0x5a
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lco/polarr/renderer/e;

    monitor-exit v1

    rem-int/lit8 v0, v0, 0x4

    return v0

    :catchall_0
    move-exception v0

    const-class v1, Lco/polarr/renderer/e;

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Lco/polarr/renderer/e;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;F)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "renderBitmaps::idList=%s::filterIntensity=%f"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/polarr/renderer/render/a;

    invoke-direct {v0}, Lco/polarr/renderer/render/a;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1}, Lco/polarr/renderer/render/a;->a(II)I

    new-instance v1, Lco/polarr/renderer/f;

    invoke-direct {v1}, Lco/polarr/renderer/f;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;IIZI)V

    invoke-virtual {v1}, Lco/polarr/renderer/f;->b()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p3}, Lco/polarr/renderer/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lco/polarr/renderer/f;->n()V

    invoke-virtual {v0}, Lco/polarr/renderer/render/a;->b()V

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(FFFFFF)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "setupVignetteParams::vignette_amount=%f::vignette_feather=%f::vignette_highlights=%f::vignette_exposure=%f::vignette_roundness=%f::vignette_size=%f"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sput p0, Lco/polarr/renderer/filters/ak;->c:F

    sput p1, Lco/polarr/renderer/filters/ak;->d:F

    sput p2, Lco/polarr/renderer/filters/ak;->e:F

    sput p3, Lco/polarr/renderer/filters/ak;->f:F

    sput p4, Lco/polarr/renderer/filters/ak;->g:F

    sput p5, Lco/polarr/renderer/filters/ak;->h:F

    return-void
.end method

.method public static a(III)V
    .locals 12

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "clearTextureHelper::textureId=%d::width=%d::height=%d"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v0, 0xde1

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method static a(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V
    .locals 9

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "start magicEraserOneTime"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    if-nez p4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const-string v5, "doMagicEraserOneTime::applyTextureId=%d::width=%d::height=%d::path=%s::compatibleLevel=%d"

    invoke-static {v5, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_2
    new-array v6, v6, [I

    const/16 v7, 0xba2

    invoke-static {v7, v6, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    new-instance v7, Lco/polarr/renderer/b/m;

    invoke-static {p0}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;)Lco/polarr/renderer/b/p;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lco/polarr/renderer/b/m;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/b/p;)V

    invoke-virtual {v7, p1, p2, p3, p5}, Lco/polarr/renderer/b/m;->a(IIII)V

    invoke-virtual {v7, p1, p4}, Lco/polarr/renderer/b/m;->a(ILco/polarr/renderer/entities/MagicEraserPath;)V

    invoke-virtual {v7}, Lco/polarr/renderer/b/m;->a()V

    invoke-virtual {v7}, Lco/polarr/renderer/b/m;->b()V

    aget p0, v6, v2

    aget p1, v6, v3

    aget p2, v6, v4

    aget p3, v6, v1

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz v5, :cond_3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_3
    const-string p0, "end magicEraserOneTime"

    invoke-static {p0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lco/polarr/renderer/render/f;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {p0}, Lco/polarr/renderer/b/i;->a(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;[BIILjava/lang/String;FZ)[B
    .locals 11

    move-object v4, p4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v4, v0, v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "renderNV21::width=%d::height=%d::filterId=%s::filterIntensity=%f::isUseVignette=%b"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "vignette_amount"

    invoke-static {p4, v0}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "overlay_amount"

    invoke-static {p4, v1}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez p6, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p4}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v7, v0, Lco/polarr/renderer/entities/Cube;->data:[B

    const/4 v9, 0x0

    iget v10, v0, Lco/polarr/renderer/entities/Cube;->size:I

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v8, p1

    invoke-static/range {v1 .. v10}, Lco/polarr/render/PolarrRenderJni;->setYUVDataWithFilter(IIIIZI[B[BZI)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/e;->a(Landroid/content/Context;[BIILjava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;[BIILjava/lang/String;Z)[B
    .locals 26

    move-object/from16 v0, p4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lco/polarr/renderer/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "renderNV12::getGlobalScreenOrientation=%d"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object v1

    const-string v2, "vignette_amount"

    invoke-static {v0, v2}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "overlay_amount"

    invoke-static {v0, v5}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_0

    invoke-static {}, Lco/polarr/renderer/a;->a()Lco/polarr/renderer/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lco/polarr/renderer/a;->a(Ljava/lang/String;)Lco/polarr/renderer/entities/FilterItem;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-object v9, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    iget v12, v1, Lco/polarr/renderer/entities/Cube;->size:I

    iget-object v1, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v1, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    const-string v2, "vignette_feather"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v14

    iget-object v1, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    const-string v2, "vignette_highlights"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iget-object v1, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    const-string v2, "vignette_exposure"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v16

    iget-object v1, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    const-string v2, "vignette_roundness"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v17

    iget-object v0, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    const-string v1, "vignette_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v18

    const/16 v19, 0x1

    sget-object v20, Lco/polarr/renderer/filters/ak;->m:[B

    invoke-static {}, Lco/polarr/renderer/e;->a()I

    move-result v21

    sget v22, Lco/polarr/renderer/filters/ak;->i:F

    sget v23, Lco/polarr/renderer/filters/ak;->j:F

    sget v24, Lco/polarr/renderer/filters/ak;->k:F

    sget v25, Lco/polarr/renderer/filters/ak;->l:F

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p1

    move/from16 v11, p5

    invoke-static/range {v3 .. v25}, Lco/polarr/render/PolarrRenderJni;->setYUVDataWithVignetteAndGrainParams(IIIIZI[B[BZIFFFFFFZ[BIFFFF)[B

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v5, :cond_1

    const/4 v6, 0x0

    const/4 v7, -0x2

    iget-object v8, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    iget v11, v1, Lco/polarr/renderer/entities/Cube;->size:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    sget-object v19, Lco/polarr/renderer/filters/ak;->n:[B

    invoke-static {}, Lco/polarr/renderer/e;->a()I

    move-result v20

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v9, p1

    move/from16 v10, p5

    invoke-static/range {v2 .. v20}, Lco/polarr/render/PolarrRenderJni;->setYUVDataWithVignetteParams(IIIIZI[B[BZIFFFFFFZ[BI)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v10, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    iget v13, v1, Lco/polarr/renderer/entities/Cube;->size:I

    sget v14, Lco/polarr/renderer/filters/ak;->c:F

    sget v15, Lco/polarr/renderer/filters/ak;->d:F

    sget v16, Lco/polarr/renderer/filters/ak;->e:F

    sget v17, Lco/polarr/renderer/filters/ak;->f:F

    sget v18, Lco/polarr/renderer/filters/ak;->g:F

    sget v19, Lco/polarr/renderer/filters/ak;->h:F

    invoke-static {}, Lco/polarr/renderer/e;->a()I

    move-result v22

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    new-array v0, v3, [B

    move-object/from16 v21, v0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-static/range {v4 .. v22}, Lco/polarr/render/PolarrRenderJni;->setYUVDataWithVignetteParams(IIIIZI[B[BZIFFFFFFZ[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lco/polarr/renderer/b/j;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static enableLogger(Z)V
    .locals 2
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static {p0}, Lco/polarr/renderer/b/n;->a(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "enableLogger::enableLogger=%b"

    invoke-static {p0, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static renderNV12(Landroid/content/Context;[BIILjava/lang/String;FZ)[B
    .locals 11
    .annotation build Lco/polarr/a/a;
    .end annotation

    move-object v4, p4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v4, v0, v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "renderNV12::width=%d::height=%d::filterId=%s::filterIntensity=%f::isUseVignette=%b"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "vignette_amount"

    invoke-static {p4, v0}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "overlay_amount"

    invoke-static {p4, v1}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez p6, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p4}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v7, v0, Lco/polarr/renderer/entities/Cube;->data:[B

    const/4 v9, 0x1

    iget v10, v0, Lco/polarr/renderer/entities/Cube;->size:I

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v8, p1

    invoke-static/range {v1 .. v10}, Lco/polarr/render/PolarrRenderJni;->setYUVDataWithFilter(IIIIZI[B[BZI)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/e;->a(Landroid/content/Context;[BIILjava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static updateGlobalScreenOrientation(I)V
    .locals 4
    .annotation build Lco/polarr/a/a;
    .end annotation

    const-class v0, Lco/polarr/renderer/e;

    monitor-enter v0

    :try_start_0
    const-string v0, "PolarrRenderImpl::updateGlobalScreenOrientation = %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sput p0, Lco/polarr/renderer/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p0, Lco/polarr/renderer/e;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lco/polarr/renderer/e;

    monitor-exit v0

    throw p0
.end method
