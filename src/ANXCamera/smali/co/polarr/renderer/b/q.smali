.class public Lco/polarr/renderer/b/q;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "spots"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "zPrevSpots"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Lco/polarr/renderer/b/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lco/polarr/renderer/b/t;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {p0, p1}, Lco/polarr/renderer/b/q;->c(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    :cond_0
    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V
    .locals 6

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-static {p1, p0}, Lco/polarr/renderer/filters/z;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/z;

    move-result-object v0

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/z;->a([F)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lco/polarr/renderer/filters/y;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/y;

    move-result-object v0

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/y;->a([F)V

    :goto_0
    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "spots"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, p0}, Lco/polarr/renderer/filters/bk;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bk;

    move-result-object p1

    move v1, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/polarr/renderer/entities/SpotItem;

    const/4 v4, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, v2, Lco/polarr/renderer/entities/SpotItem;->feather:F

    iput v5, p1, Lco/polarr/renderer/filters/bk;->a:F

    iget-object v5, v2, Lco/polarr/renderer/entities/SpotItem;->size:[F

    iput-object v5, p1, Lco/polarr/renderer/filters/bk;->b:[F

    iget-object v5, v2, Lco/polarr/renderer/entities/SpotItem;->position:[F

    invoke-static {v5}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v5

    iput-object v5, p1, Lco/polarr/renderer/filters/bk;->c:[F

    iget-object v5, v2, Lco/polarr/renderer/entities/SpotItem;->sourcePosition:[F

    invoke-static {v5}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v5

    iput-object v5, p1, Lco/polarr/renderer/filters/bk;->d:[F

    iget-object v2, v2, Lco/polarr/renderer/entities/SpotItem;->size:[F

    aget v2, v2, v3

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v2, v5

    iput v2, p1, Lco/polarr/renderer/filters/bk;->e:F

    iput v4, p1, Lco/polarr/renderer/filters/bk;->f:F

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, v2, v4, p1, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-static {p0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static c(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V
    .locals 7

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    iget-object v3, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget-object v5, p0, Lco/polarr/renderer/entities/Context;->retouchTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    invoke-static {p0, p1}, Lco/polarr/renderer/b/q;->b(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    invoke-static {p1, p0}, Lco/polarr/renderer/filters/c;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lco/polarr/renderer/filters/c;->a(Lco/polarr/renderer/entities/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v1, v5

    const v6, 0x3d1374bc    # 0.036f

    mul-float/2addr v4, v6

    const/4 v6, 0x1

    aput v4, v1, v6

    iput-object v1, p1, Lco/polarr/renderer/filters/c;->a:[F

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, v1, v4, p1, v6}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p1, Lco/polarr/renderer/filters/c;->a:[F

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->retouchTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, v0, v1, p1, v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object p1, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    return-void

    :array_0
    .array-data 4
        0x3d1374bc    # 0.036f
        0x0
    .end array-data
.end method
