.class public Lco/polarr/renderer/PolarrRender;
.super Ljava/lang/Object;


# annotations
.annotation build Lco/polarr/a/a;
.end annotation


# static fields
.field public static final EXTERNAL_OES:I = 0x1
    .annotation build Lco/polarr/a/a;
    .end annotation
.end field

.field public static final TEXTURE_2D:I
    .annotation build Lco/polarr/a/a;
    .end annotation
.end field


# instance fields
.field private instance:Lco/polarr/renderer/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/polarr/renderer/f;

    invoke-direct {v0}, Lco/polarr/renderer/f;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    return-void
.end method

.method public static Version()Ljava/lang/String;
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    const-string v0, "1.4.1_oppo_camera_capture"

    return-object v0
.end method

.method public static clearTextureHelper(III)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lco/polarr/renderer/e;->a(III)V

    return-void
.end method

.method public static enableLogger(Z)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static {p0}, Lco/polarr/renderer/e;->enableLogger(Z)V

    return-void
.end method

.method public static getRenderStatesFromJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

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

    invoke-static {p0}, Lco/polarr/renderer/e;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static magicEraserOneTime(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;)V
    .locals 6
    .annotation build Lco/polarr/a/a;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/e;->a(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V

    return-void
.end method

.method public static magicEraserOneTimeCompatible(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static/range {p0 .. p5}, Lco/polarr/renderer/e;->a(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V

    return-void
.end method

.method public static renderBitmaps(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

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

    invoke-static {p0, p1, p2}, Lco/polarr/renderer/e;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renderBitmaps(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;F)Ljava/util/List;
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

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

    invoke-static {p0, p1, p2, p3}, Lco/polarr/renderer/e;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renderNV12(Landroid/content/Context;[BIILjava/lang/String;FZ)[B
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static/range {p0 .. p6}, Lco/polarr/renderer/e;->renderNV12(Landroid/content/Context;[BIILjava/lang/String;FZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static renderNV21(Landroid/content/Context;[BIILjava/lang/String;FZ)[B
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static/range {p0 .. p6}, Lco/polarr/renderer/e;->a(Landroid/content/Context;[BIILjava/lang/String;FZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static setupVignetteParams(FFFFFF)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-static/range {p0 .. p5}, Lco/polarr/renderer/e;->a(FFFFFF)V

    return-void
.end method

.method public static updateGlobalScreenOrientation(I)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    const-class v0, Lco/polarr/renderer/PolarrRender;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lco/polarr/renderer/e;->updateGlobalScreenOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p0, Lco/polarr/renderer/PolarrRender;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lco/polarr/renderer/PolarrRender;

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addBrushPathPoint(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;)V

    return-void
.end method

.method public autoEnhanceFace(Ljava/util/Map;IFZ)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IFZ)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lco/polarr/renderer/f;->a(Ljava/util/Map;IFZ)V

    return-void
.end method

.method public autoEnhanceGlobal(F)Ljava/util/Map;
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->b(F)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public autoEnhanceGlobalForFace(F)Ljava/util/Map;
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->c(F)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public brushPaintAdd(Ljava/util/List;)I
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public brushPaintFinish()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->j()V

    return-void
.end method

.method public brushStart(Lco/polarr/renderer/entities/BrushItem;)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/BrushItem;)V

    return-void
.end method

.method public clearTexture(III)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2, p3}, Lco/polarr/renderer/f;->a(III)V

    return-void
.end method

.method public combine(II)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->c(II)V

    return-void
.end method

.method public createInputTexture()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->b()V

    return-void
.end method

.method public drawFiltersFrame(Ljava/util/List;I)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(Ljava/util/List;I)V

    return-void
.end method

.method public drawFiltersFrame(Ljava/util/List;IZFFF)V
    .locals 7
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;IZFFF)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Ljava/util/List;IZFFF)V

    return-void
.end method

.method public drawFrame()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->h()V

    return-void
.end method

.method public drawFrameWithVignette()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->g()V

    return-void
.end method

.method public enableRealTimeAutoEnhancement(Z)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->c(Z)V

    return-void
.end method

.method public fastAutoEnhancement(Z)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->f(Z)V

    return-void
.end method

.method public fastRenderBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public fastRenderBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2, p3}, Lco/polarr/renderer/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public fastUpdateFilter(Ljava/lang/String;)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public fastUpdateFilter(Ljava/lang/String;F)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public getBrushLastPaint()I
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->k()I

    move-result v0

    return v0
.end method

.method public getLookup2DFilter()Lco/polarr/renderer/filters/ak;
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->o()Lco/polarr/renderer/filters/ak;

    move-result-object v0

    return-object v0
.end method

.method public getOutputId()I
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->f()I

    move-result v0

    return v0
.end method

.method public getTextureId()I
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->e()I

    move-result v0

    return v0
.end method

.method public initAllFilters()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->a()V

    return-void
.end method

.method public initRender(Landroid/content/res/Resources;IIZ)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;IIZ)V

    return-void
.end method

.method public initRender(Landroid/content/res/Resources;IIZI)V
    .locals 6
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;IIZI)V

    return-void
.end method

.method public isUseVignette()Z
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->d()Z

    move-result v0

    return v0
.end method

.method public magicEraserPathOverLay(Lco/polarr/renderer/entities/MagicEraserPath;III)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/MagicEraserPath;III)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->n()V

    return-void
.end method

.method public releaseGLRes()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->l()V

    return-void
.end method

.method public releaseNonGLRes()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->m()V

    return-void
.end method

.method public renderBitmap(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public setBrushLastPaintingTex(I)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->c(I)V

    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(F)V

    return-void
.end method

.method public setInputTexture(I)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(I)V

    return-void
.end method

.method public setNeedDrawScreen(Z)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(Z)V

    return-void
.end method

.method public setOutputTexture(I)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->b(I)V

    return-void
.end method

.method public setUseVignette(Z)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->d(Z)V

    return-void
.end method

.method public updateBrushPoints(Lco/polarr/renderer/entities/BrushItem;)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->b(Lco/polarr/renderer/entities/BrushItem;)V

    return-void
.end method

.method public updateFaces(Ljava/util/List;F)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/FaceItem;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(Ljava/util/List;F)V

    return-void
.end method

.method public updateInputTexture()V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0}, Lco/polarr/renderer/f;->i()V

    return-void
.end method

.method public updateSize(II)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/f;->a(II)V

    return-void
.end method

.method public updateStates(Ljava/lang/String;)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public updateStates(Ljava/util/Map;)V
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:Lco/polarr/renderer/f;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/f;->a(Ljava/util/Map;)V

    return-void
.end method
