.class public Lco/polarr/renderer/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_MASK_BRUSH_COUNT:I = 0x4

.field public static final MAX_PAINT_BRUSH_COUNT:I = 0x4

.field public static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static c:F

.field private static final z:[[F


# instance fields
.field public b:Lco/polarr/renderer/entities/BrushItem;

.field d:[F

.field e:F

.field f:F

.field g:F

.field h:[F

.field i:[F

.field private final j:Lco/polarr/renderer/filters/h;

.field private final k:Lco/polarr/renderer/filters/i;

.field private final l:Lco/polarr/renderer/filters/a/d;

.field private final m:Lco/polarr/renderer/render/f;

.field private final n:Lco/polarr/renderer/render/f;

.field private final o:Lco/polarr/renderer/render/f;

.field private final p:Lco/polarr/renderer/render/f;

.field private final q:Lco/polarr/renderer/filters/as;

.field private final r:Lco/polarr/renderer/filters/az;

.field private final s:Lco/polarr/renderer/filters/bb;

.field private final t:Lco/polarr/renderer/filters/ay;

.field private u:Lco/polarr/renderer/render/f;

.field private final v:Landroid/content/res/Resources;

.field private final w:Lco/polarr/renderer/filters/ba;

.field private x:Lco/polarr/renderer/render/f;

.field private y:Lco/polarr/renderer/render/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/b/b;->a:Landroid/util/LruCache;

    const/4 v0, 0x4

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lco/polarr/renderer/b/b;->z:[[F

    const/high16 v0, 0x437f0000    # 255.0f

    sput v0, Lco/polarr/renderer/b/b;->c:F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/polarr/renderer/entities/BrushItem;

    invoke-direct {v0}, Lco/polarr/renderer/entities/BrushItem;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    sget v0, Lco/polarr/renderer/b/b;->c:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lco/polarr/renderer/b/b;->g:F

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lco/polarr/renderer/b/b;->i:[F

    iput-object p2, p0, Lco/polarr/renderer/b/b;->v:Landroid/content/res/Resources;

    new-instance v1, Lco/polarr/renderer/filters/h;

    invoke-direct {v1, p1, p2}, Lco/polarr/renderer/filters/h;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    new-instance v1, Lco/polarr/renderer/filters/i;

    invoke-direct {v1, p1, p2}, Lco/polarr/renderer/filters/i;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    invoke-static {p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v1

    iput-object v1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    new-instance v1, Lco/polarr/renderer/filters/ba;

    invoke-direct {v1, p2, p1}, Lco/polarr/renderer/filters/ba;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ba;->k()V

    new-array v0, v0, [I

    array-length v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/16 v3, 0x1908

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v2

    iput-object v2, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    aget v2, v0, v4

    invoke-static {v2, v3, v4, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v2

    iput-object v2, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget-object v2, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    const/16 v5, 0xde1

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/high16 v2, 0x46180000    # 9728.0f

    const/16 v6, 0x2801

    invoke-static {v5, v6, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2800

    invoke-static {v5, v6, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-static {v1, v3, v4, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v1

    iput-object v1, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0, v3, v4, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/b/b;->o:Lco/polarr/renderer/render/f;

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/as;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/as;

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/b/b;->q:Lco/polarr/renderer/filters/as;

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/az;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/az;

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/bb;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bb;

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/b/b;->s:Lco/polarr/renderer/filters/bb;

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/ay;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ay;

    move-result-object p1

    iput-object p1, p0, Lco/polarr/renderer/b/b;->t:Lco/polarr/renderer/filters/ay;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(D)D
    .locals 2

    invoke-static {p0, p1}, Lco/polarr/renderer/b/t;->a(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;FF)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/polarr/renderer/entities/BrushItem;",
            "Landroid/graphics/PointF;",
            "FF)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lco/polarr/renderer/entities/BrushItem;->size:F

    sget v3, Lco/polarr/renderer/b/b;->c:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v0, Lco/polarr/renderer/entities/BrushItem;->spacing:F

    const/4 v4, 0x4

    new-array v5, v4, [F

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v9, v8, p2

    const/4 v10, 0x0

    aput v9, v7, v10

    div-float v8, v8, p3

    const/4 v9, 0x1

    aput v8, v7, v9

    const/4 v8, 0x3

    new-array v11, v8, [F

    iget v12, v1, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, p2

    aput v12, v11, v10

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, p3

    aput v1, v11, v9

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, v11, v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    const-string v13, "paint"

    if-nez v12, :cond_0

    new-array v2, v8, [F

    aget v3, v11, v10

    aput v3, v2, v10

    aget v3, v11, v9

    aput v3, v2, v9

    aget v3, v11, v6

    aput v3, v2, v6

    iput-object v2, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    iget-object v2, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    aget v2, v11, v10

    aget v3, v7, v10

    mul-float/2addr v2, v3

    aput v2, v11, v10

    aget v2, v11, v9

    aget v3, v7, v9

    mul-float/2addr v2, v3

    aput v2, v11, v9

    iget-object v2, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    aget v3, v11, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    aget v3, v11, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    aget v2, v11, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_0
    iget-object v12, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    aget v12, v11, v9

    iget-object v14, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    aget v14, v14, v9

    sub-float/2addr v12, v14

    float-to-double v14, v12

    aget v12, v11, v10

    iget-object v4, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    aget v4, v4, v10

    sub-float/2addr v12, v4

    float-to-double v9, v12

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v5, v8

    :cond_1
    mul-float/2addr v3, v2

    aget v9, v11, v6

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iget-object v9, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    invoke-static {v11, v9}, Lco/polarr/renderer/b/h;->a([F[F)F

    move-result v9

    int-to-float v10, v3

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_c

    iget-boolean v10, v0, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    const/4 v12, 0x0

    if-eqz v10, :cond_7

    move v10, v3

    :goto_0
    int-to-float v4, v10

    cmpg-float v17, v4, v9

    if-gtz v17, :cond_3

    :try_start_0
    iget-object v14, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    div-float/2addr v4, v9

    invoke-static {v14, v11, v4, v5}, Lco/polarr/renderer/b/h;->a([F[FF[F)V

    const/4 v4, 0x0

    aget v14, v5, v4

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    aget v15, v5, v14

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v14, v5, v6

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    aget v14, v5, v8

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v10, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    iget-object v3, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x4

    goto :goto_1

    :cond_4
    move/from16 v16, v8

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v5, v3, v16

    new-array v8, v8, [F

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v4, 0x0

    aput v9, v8, v4

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v10, 0x1

    aput v9, v8, v10

    add-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v8, v6

    iput-object v8, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_6

    iget v6, v0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    iget v6, v0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    float-to-double v13, v6

    move v6, v5

    float-to-double v4, v2

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v10, v10, v17

    mul-double/2addr v10, v13

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v13, v13, v17

    iget v11, v0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    move v15, v2

    move/from16 v17, v3

    float-to-double v2, v11

    mul-double/2addr v13, v2

    mul-double/2addr v13, v4

    add-double/2addr v9, v13

    double-to-float v2, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move v15, v2

    move/from16 v17, v3

    move v6, v5

    :goto_3
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    aget v5, v7, v3

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v6, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget v8, v7, v3

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int v5, v6, v16

    move v2, v15

    move/from16 v3, v17

    goto/16 :goto_2

    :cond_6
    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :goto_4
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_8

    :cond_7
    move v15, v2

    const/4 v2, 0x0

    aget v3, v11, v2

    aput v3, v5, v2

    const/4 v3, 0x1

    aget v4, v11, v3

    aput v4, v5, v3

    aget v4, v11, v6

    aput v4, v5, v6

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v2, v5, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v2, v5, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    aget v2, v5, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v16, 0x4

    goto :goto_5

    :cond_9
    move/from16 v16, v8

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int v3, v2, v16

    new-array v5, v8, [F

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v4, 0x0

    aput v8, v5, v4

    add-int/lit8 v8, v3, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x1

    aput v8, v5, v9

    add-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, v6

    iput-object v5, v0, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_b

    iget v5, v0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    iget v10, v0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    float-to-double v10, v10

    move v13, v15

    float-to-double v14, v13

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v8, v8, v17

    mul-double/2addr v8, v10

    mul-double/2addr v8, v14

    add-double/2addr v5, v8

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v10, v10, v17

    iget v6, v0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    move/from16 p2, v13

    float-to-double v12, v6

    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    add-double/2addr v8, v10

    double-to-float v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move/from16 p2, v15

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    :goto_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v4, 0x0

    aget v6, v7, v4

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v8, 0x1

    aget v9, v7, v8

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int v3, v3, v16

    move/from16 v15, p2

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_b
    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_8
    return-object v1
.end method

.method private a(Lco/polarr/renderer/filters/a/a;I)V
    .locals 2

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p2

    invoke-virtual {v0, p2}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, p2, v1}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/a;->draw()V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method private a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V
    .locals 2

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v0

    iget v1, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget v1, p2, Lco/polarr/renderer/render/f;->d:I

    iget p2, p2, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, p2}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/a;->draw()V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method public static a(Ljava/util/List;Lco/polarr/renderer/entities/BrushItem;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lco/polarr/renderer/entities/BrushItem;",
            "FF)V"
        }
    .end annotation

    iget-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {p1, v0, p2, p3}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;FF)Ljava/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 7

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    const-string v1, "effect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v2, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v2, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    iget-object v3, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v2, v3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->v:Landroid/content/res/Resources;

    invoke-static {v0}, Lco/polarr/renderer/filters/Basic;->getInstance(Landroid/content/res/Resources;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const v4, 0x8006

    invoke-static {v4}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/4 v4, 0x1

    const/16 v5, 0x303

    const/16 v6, 0x302

    invoke-static {v6, v5, v2, v4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    iget-object v2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v2, v2, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/ba;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lco/polarr/renderer/filters/ba;->a:F

    iput v1, v0, Lco/polarr/renderer/filters/ba;->b:F

    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    const-string v1, "blur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    const-string v1, "mosaic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v0, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v0, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    :goto_1
    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iput v0, p1, Lco/polarr/renderer/filters/ba;->c:I

    iget-object p1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ba;->draw()V

    goto :goto_2

    :cond_3
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/Basic;->setInputTextureId(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    :goto_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lco/polarr/renderer/b/b;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method private b(Lco/polarr/renderer/render/f;)V
    .locals 3

    iget v0, p1, Lco/polarr/renderer/render/f;->c:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2601

    const v2, 0x812f

    invoke-static {v2, v2, v0, v0}, Lco/polarr/renderer/b/i;->a(IIII)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget v1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget v1, p1, Lco/polarr/renderer/render/f;->d:I

    iget p1, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, p1}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->o()V

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-virtual {p0}, Lco/polarr/renderer/b/b;->e()V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method private b(Z)V
    .locals 6

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v2, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, v2}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->v:Landroid/content/res/Resources;

    invoke-static {v0}, Lco/polarr/renderer/filters/Basic;->getInstance(Landroid/content/res/Resources;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    const/16 v2, 0xbe2

    if-nez p1, :cond_0

    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v3, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v3}, Lco/polarr/renderer/filters/Basic;->setInputTextureId(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const v3, 0x8006

    invoke-static {v3}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 v3, 0x302

    const/4 v4, 0x1

    const/16 v5, 0x303

    invoke-static {v3, v5, v1, v4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v1, v1, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    const-string v3, "effect"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/ba;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lco/polarr/renderer/filters/ba;->a:F

    iput v1, v0, Lco/polarr/renderer/filters/ba;->b:F

    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    const-string v1, "blur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    const-string v1, "mosaic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    iget-object p1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v0, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    iget-object v0, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    :goto_1
    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iput v0, p1, Lco/polarr/renderer/filters/ba;->c:I

    iget-object p1, p0, Lco/polarr/renderer/b/b;->w:Lco/polarr/renderer/filters/ba;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ba;->draw()V

    goto :goto_2

    :cond_4
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/Basic;->setInputTextureId(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    :goto_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->o:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget-object v2, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    iget-object v3, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v0, v1, v2, v3}, Lco/polarr/renderer/b/i;->b(IIII)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->s:Lco/polarr/renderer/filters/bb;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/bb;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->s:Lco/polarr/renderer/filters/bb;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iput v1, v0, Lco/polarr/renderer/filters/bb;->a:I

    iget-object v0, p0, Lco/polarr/renderer/b/b;->s:Lco/polarr/renderer/filters/bb;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->o:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iput v1, v0, Lco/polarr/renderer/filters/bb;->b:I

    iget-object v0, p0, Lco/polarr/renderer/b/b;->s:Lco/polarr/renderer/filters/bb;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iput v1, v0, Lco/polarr/renderer/filters/bb;->c:I

    iget-object v0, p0, Lco/polarr/renderer/b/b;->s:Lco/polarr/renderer/filters/bb;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v0, v1}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    return-void
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    iget-object v2, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    iget-object v3, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    int-to-float v0, v0

    const/high16 v4, 0x42100000    # 36.0f

    div-float v5, v4, v0

    int-to-float v1, v1

    div-float v6, v4, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v2, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget v0, v2, Lco/polarr/renderer/render/f;->c:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2600

    const v5, 0x812f

    invoke-static {v5, v5, v0, v0}, Lco/polarr/renderer/b/i;->a(IIII)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->q:Lco/polarr/renderer/filters/as;

    iput v4, v0, Lco/polarr/renderer/filters/as;->a:F

    iget v1, v3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v1, v1

    iput v1, v0, Lco/polarr/renderer/filters/as;->b:F

    iget-object v0, p0, Lco/polarr/renderer/b/b;->q:Lco/polarr/renderer/filters/as;

    iget v1, v3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v1, v1

    iput v1, v0, Lco/polarr/renderer/filters/as;->c:F

    iget-object v0, p0, Lco/polarr/renderer/b/b;->q:Lco/polarr/renderer/filters/as;

    iget v1, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/as;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->q:Lco/polarr/renderer/filters/as;

    invoke-direct {p0, v0, v2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    return-void
.end method

.method private h()V
    .locals 10

    iget-object v0, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    :goto_0
    const/16 v2, 0x800

    if-gt v0, v2, :cond_1

    if-le v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget-object v4, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    iget-object v5, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    invoke-static {v4, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    invoke-static {v5, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget v0, v4, Lco/polarr/renderer/render/f;->c:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2601

    const v6, 0x812f

    invoke-static {v6, v6, v0, v0}, Lco/polarr/renderer/b/i;->a(IIII)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    sget-object v6, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v6, v1, Lco/polarr/renderer/filters/az;->b:Lco/polarr/renderer/entities/Mesh;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v2, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v7, v9

    iput-object v7, v1, Lco/polarr/renderer/filters/az;->a:[F

    iget-object v7, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v7, v7, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v7}, Lco/polarr/renderer/filters/az;->a(I)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    invoke-direct {p0, v1, v5}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    new-array v7, v6, [F

    aput v8, v7, v0

    aput v3, v7, v9

    iput-object v7, v1, Lco/polarr/renderer/filters/az;->a:[F

    iget v7, v5, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v7}, Lco/polarr/renderer/filters/az;->a(I)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    invoke-direct {p0, v1, v4}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    new-array v7, v6, [F

    aput v2, v7, v0

    aput v8, v7, v9

    iput-object v7, v1, Lco/polarr/renderer/filters/az;->a:[F

    iget v2, v4, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v2}, Lco/polarr/renderer/filters/az;->a(I)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    invoke-direct {p0, v1, v5}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    new-array v2, v6, [F

    aput v8, v2, v0

    aput v3, v2, v9

    iput-object v2, v1, Lco/polarr/renderer/filters/az;->a:[F

    iget v0, v5, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v0}, Lco/polarr/renderer/filters/az;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->r:Lco/polarr/renderer/filters/az;

    invoke-direct {p0, v0, v4}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    return-void

    :cond_1
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v2, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    invoke-static {p1, v0, v1, v2}, Lco/polarr/renderer/b/i;->b(IIII)V

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    iget-object v0, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p0, p1, v0}, Lco/polarr/renderer/b/b;->a(II)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->t:Lco/polarr/renderer/filters/ay;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ay;->a(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->t:Lco/polarr/renderer/filters/ay;

    iget-object v0, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iput v0, p1, Lco/polarr/renderer/filters/ay;->a:I

    iget-object p1, p0, Lco/polarr/renderer/b/b;->t:Lco/polarr/renderer/filters/ay;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ay;->getMatrix()[F

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->t:Lco/polarr/renderer/filters/ay;

    invoke-direct {p0, p1, p2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/filters/a/a;I)V

    return-void
.end method

.method public a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lco/polarr/renderer/b/b;->h:[F

    iget v0, p2, Lco/polarr/renderer/entities/BrushItem;->size:F

    sget v1, Lco/polarr/renderer/b/b;->c:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lco/polarr/renderer/b/b;->g:F

    iget v0, p0, Lco/polarr/renderer/b/b;->g:F

    iget v1, p2, Lco/polarr/renderer/entities/BrushItem;->spacing:F

    mul-float/2addr v0, v1

    iput v0, p0, Lco/polarr/renderer/b/b;->e:F

    iget-wide v0, p2, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    invoke-static {v0, v1}, Lco/polarr/renderer/b/b;->a(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lco/polarr/renderer/b/b;->f:F

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    const-string v1, "paint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget-boolean v0, p2, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iput-boolean v0, p1, Lco/polarr/renderer/filters/h;->e:Z

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget v0, p0, Lco/polarr/renderer/b/b;->g:F

    iput v0, p1, Lco/polarr/renderer/filters/h;->a:F

    iget v0, p0, Lco/polarr/renderer/b/b;->f:F

    iput v0, p1, Lco/polarr/renderer/filters/h;->b:F

    iget p2, p2, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p2, p1, Lco/polarr/renderer/filters/h;->c:F

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    const/4 p2, 0x4

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    iput-object p2, p1, Lco/polarr/renderer/filters/h;->d:[F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    iget v1, p0, Lco/polarr/renderer/b/b;->g:F

    iput v1, v0, Lco/polarr/renderer/filters/i;->a:F

    iget v1, p2, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput v1, v0, Lco/polarr/renderer/filters/i;->b:F

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    iget-object v1, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    iget-object p2, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    iput p1, v0, Lco/polarr/renderer/filters/i;->c:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    iput p1, p2, Lco/polarr/renderer/filters/i;->c:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget v0, p0, Lco/polarr/renderer/b/b;->g:F

    iput v0, p1, Lco/polarr/renderer/filters/h;->a:F

    iget v0, p0, Lco/polarr/renderer/b/b;->f:F

    iput v0, p1, Lco/polarr/renderer/filters/h;->b:F

    iget v0, p2, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput v0, p1, Lco/polarr/renderer/filters/h;->c:F

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->channel:[F

    iput-object v0, p1, Lco/polarr/renderer/filters/h;->d:[F

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget-boolean p2, p2, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iput-boolean p2, p1, Lco/polarr/renderer/filters/h;->e:Z

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lco/polarr/renderer/filters/h;->f:Z

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Lco/polarr/renderer/entities/BrushItem;ZZ)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lco/polarr/renderer/entities/BrushItem;

    invoke-direct {p2}, Lco/polarr/renderer/entities/BrushItem;-><init>()V

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    :cond_1
    if-eqz p5, :cond_2

    iget p5, p3, Lco/polarr/renderer/entities/BrushItem;->size:F

    iput p5, p2, Lco/polarr/renderer/entities/BrushItem;->size:F

    iget-wide v0, p3, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    iput-wide v0, p2, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    iget p5, p3, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p5, p2, Lco/polarr/renderer/entities/BrushItem;->flow:F

    :cond_2
    iget-object p5, p2, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    iput-object p5, p3, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    iget p5, p2, Lco/polarr/renderer/entities/BrushItem;->size:F

    iput p5, p3, Lco/polarr/renderer/entities/BrushItem;->size:F

    iget p5, p2, Lco/polarr/renderer/entities/BrushItem;->spacing:F

    iput p5, p3, Lco/polarr/renderer/entities/BrushItem;->spacing:F

    iget-wide v0, p2, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    iput-wide v0, p3, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    iget p5, p2, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p5, p3, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iget-object p5, p2, Lco/polarr/renderer/entities/BrushItem;->channel:[F

    iput-object p5, p3, Lco/polarr/renderer/entities/BrushItem;->channel:[F

    iget-boolean p5, p2, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iput-boolean p5, p3, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iget-object p5, p2, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    iput-object p5, p3, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    iget-object p5, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    iput-object p5, p3, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    iget p5, p2, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    iput p5, p3, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    iget-boolean p5, p2, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    iput-boolean p5, p3, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    iget-object p5, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    iput-object v0, p5, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    iget-object p5, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    iput-object v0, p5, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    iget-object p5, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget v0, p2, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    iput v0, p5, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    iget-object p5, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-boolean p2, p2, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    iput-boolean p2, p5, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-boolean p5, p3, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iput-boolean p5, p2, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lco/polarr/renderer/b/b;->h:[F

    const/high16 p2, 0x41200000    # 10.0f

    iget p5, p3, Lco/polarr/renderer/entities/BrushItem;->size:F

    sget v0, Lco/polarr/renderer/b/b;->c:F

    mul-float/2addr p5, v0

    invoke-static {p2, p5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lco/polarr/renderer/b/b;->g:F

    iget p2, p0, Lco/polarr/renderer/b/b;->g:F

    iget p5, p3, Lco/polarr/renderer/entities/BrushItem;->spacing:F

    mul-float/2addr p2, p5

    iput p2, p0, Lco/polarr/renderer/b/b;->e:F

    iget-wide v0, p3, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    invoke-static {v0, v1}, Lco/polarr/renderer/b/b;->a(D)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lco/polarr/renderer/b/b;->f:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    iget-object p5, p1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget p5, p5, Lco/polarr/renderer/render/f;->d:I

    int-to-float p5, p5

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p5, v0, p5

    const/4 v1, 0x0

    aput p5, p2, v1

    const/4 p5, 0x1

    iget-object v2, p1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    aput v0, p2, p5

    iput-object p2, p0, Lco/polarr/renderer/b/b;->d:[F

    iget-object p2, p3, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    const-string p5, "paint"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-boolean p2, p3, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    if-eqz p2, :cond_3

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget-boolean p2, p3, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iput-boolean p2, p1, Lco/polarr/renderer/filters/h;->e:Z

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget p2, p0, Lco/polarr/renderer/b/b;->g:F

    iput p2, p1, Lco/polarr/renderer/filters/h;->a:F

    iget p2, p0, Lco/polarr/renderer/b/b;->f:F

    iput p2, p1, Lco/polarr/renderer/filters/h;->b:F

    iget p2, p3, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p2, p1, Lco/polarr/renderer/filters/h;->c:F

    iget-object p1, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    const/4 p2, 0x4

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    iput-object p2, p1, Lco/polarr/renderer/filters/h;->d:[F

    goto/16 :goto_1

    :cond_3
    iget-object p2, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    iget p4, p0, Lco/polarr/renderer/b/b;->g:F

    iput p4, p2, Lco/polarr/renderer/filters/i;->a:F

    iget p4, p3, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p4, p2, Lco/polarr/renderer/filters/i;->b:F

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    iget-object p4, p3, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    iget-object p3, p3, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    iput p1, p2, Lco/polarr/renderer/filters/i;->c:I

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget p5, p0, Lco/polarr/renderer/b/b;->g:F

    iput p5, p2, Lco/polarr/renderer/filters/h;->a:F

    iget p5, p0, Lco/polarr/renderer/b/b;->f:F

    iput p5, p2, Lco/polarr/renderer/filters/h;->b:F

    iget p5, p3, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p5, p2, Lco/polarr/renderer/filters/h;->c:F

    iget-object p2, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget-object p5, p3, Lco/polarr/renderer/entities/BrushItem;->channel:[F

    iput-object p5, p2, Lco/polarr/renderer/filters/h;->d:[F

    iget-object p2, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iget-boolean p5, p3, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    iput-boolean p5, p2, Lco/polarr/renderer/filters/h;->e:Z

    iget-object p2, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    iput-boolean v1, p2, Lco/polarr/renderer/filters/h;->f:Z

    if-eqz p4, :cond_6

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-virtual {p2}, Lco/polarr/renderer/render/d;->d()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/g;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;

    move-result-object p2

    iget p4, p0, Lco/polarr/renderer/b/b;->g:F

    iput p4, p2, Lco/polarr/renderer/filters/g;->d:F

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-virtual {p2}, Lco/polarr/renderer/render/d;->d()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/g;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;

    move-result-object p2

    iget p4, p0, Lco/polarr/renderer/b/b;->f:F

    iput p4, p2, Lco/polarr/renderer/filters/g;->e:F

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-virtual {p2}, Lco/polarr/renderer/render/d;->d()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/g;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;

    move-result-object p1

    iget p2, p3, Lco/polarr/renderer/entities/BrushItem;->flow:F

    iput p2, p1, Lco/polarr/renderer/filters/g;->f:F

    :cond_6
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Lco/polarr/renderer/render/f;)V
    .locals 5

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    const-string v1, "blur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "mosaic"

    const-string v3, "effect"

    if-nez v0, :cond_1

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    const-string v4, "eraser"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "paint"

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v3

    :goto_1
    iput-object v0, p2, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    iput-object p3, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    iget-object p3, p1, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    iput-object p3, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iput-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object p2, p2, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    const/4 p3, 0x0

    iput-object p3, p2, Lco/polarr/renderer/entities/BrushItem;->prevPoint:[F

    iget-object p2, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object p3, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget p3, p3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p2, p3}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p3

    invoke-virtual {p2, p3}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object p3, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget p3, p3, Lco/polarr/renderer/render/f;->d:I

    iget-object v0, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {p2, p3, v0}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object p2, p2, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0, v0, v0, p3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    goto :goto_2

    :cond_2
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :goto_2
    invoke-virtual {p0}, Lco/polarr/renderer/b/b;->e()V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/d;->p()V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object p2, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lco/polarr/renderer/b/b;->h()V

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object p2, p2, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lco/polarr/renderer/b/b;->g()V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lco/polarr/renderer/b/b;->p:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p2}, Lco/polarr/renderer/b/b;->b(Lco/polarr/renderer/render/f;)V

    :goto_3
    iget-object p2, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v2, p1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    invoke-static {p2, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object p2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    invoke-virtual {p0, p1, p2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object p2, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p2

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object p2, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {p1, p2, v1}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v0, v0, v0, p3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    goto :goto_4

    :cond_5
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :goto_4
    invoke-virtual {p0}, Lco/polarr/renderer/b/b;->e()V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method public a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Z)V
    .locals 7

    iget-boolean v0, p2, Lco/polarr/renderer/entities/BrushItem;->blend:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lco/polarr/renderer/entities/BrushItem;

    invoke-direct {v0}, Lco/polarr/renderer/entities/BrushItem;-><init>()V

    iget-object v1, p2, Lco/polarr/renderer/entities/BrushItem;->pointId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lco/polarr/renderer/b/b;->a:Landroid/util/LruCache;

    iget-object v2, p2, Lco/polarr/renderer/entities/BrushItem;->pointId:Ljava/lang/String;

    iget-object v3, p2, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lco/polarr/renderer/entities/BrushItem;->pointId:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lco/polarr/renderer/b/b;->a:Landroid/util/LruCache;

    iget-object v2, p2, Lco/polarr/renderer/entities/BrushItem;->pointId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p2, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    :cond_2
    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Lco/polarr/renderer/entities/BrushItem;ZZ)V

    iget-object p1, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    invoke-virtual {p0, p1}, Lco/polarr/renderer/b/b;->b(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public a(Lco/polarr/renderer/entities/Context;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v4, "local_adjustments"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v6, "prevBrushes"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x0

    if-ge v8, v12, :cond_8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lco/polarr/renderer/entities/Adjustment;

    iget-object v15, v12, Lco/polarr/renderer/entities/Adjustment;->brush_mode:Ljava/lang/String;

    const-string v7, "mask"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-lt v10, v13, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v7, Lco/polarr/renderer/b/b;->z:[[F

    aget-object v7, v7, v10

    iput-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->channel:[F

    iget-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/polarr/renderer/entities/BrushItem;

    sget-object v14, Lco/polarr/renderer/b/b;->z:[[F

    aget-object v14, v14, v10

    iput-object v14, v13, Lco/polarr/renderer/entities/BrushItem;->channel:[F

    goto :goto_1

    :cond_2
    iget-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v9, 0x1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    if-eqz v7, :cond_7

    iget-object v7, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    if-eqz v7, :cond_7

    if-lt v11, v13, :cond_5

    goto :goto_3

    :cond_5
    iget-object v7, v1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    aget-object v7, v7, v11

    iput-object v7, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget-object v7, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v13, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v13, v13, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v7, v13}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v7, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v13

    invoke-virtual {v7, v13}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v7, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v13, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v13, v13, Lco/polarr/renderer/render/f;->d:I

    iget-object v15, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v15, v15, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v7, v13, v15}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v7, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v7}, Lco/polarr/renderer/filters/a/d;->o()V

    invoke-static {v14, v14, v14, v14}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lco/polarr/renderer/b/b;->e()V

    const/4 v7, 0x0

    :goto_2
    iget-object v13, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_6

    iget-object v13, v12, Lco/polarr/renderer/entities/Adjustment;->brush:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/polarr/renderer/entities/BrushItem;

    invoke-virtual {v0, v1, v13, v2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iget-object v7, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v7}, Lco/polarr/renderer/filters/a/d;->p()V

    iget-object v7, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v7, v7, Lco/polarr/renderer/render/f;->c:I

    iput v7, v12, Lco/polarr/renderer/entities/Adjustment;->paintTextureId:I

    add-int/lit8 v11, v11, 0x1

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v3, v7, :cond_9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    new-array v3, v13, [F

    fill-array-data v3, :array_0

    iput-object v3, v1, Lco/polarr/renderer/entities/Context;->overlayMask:[F

    iget-object v3, v1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iput-object v3, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget-object v3, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v5, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v3, v5}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v3, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v5

    invoke-virtual {v3, v5}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v3, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v5, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->d:I

    iget-object v7, v0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v7, v7, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v3, v5, v7}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v3, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/d;->o()V

    invoke-static {v14, v14, v14, v14}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lco/polarr/renderer/b/b;->e()V

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/BrushItem;

    invoke-virtual {v0, v1, v5, v2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/d;->p()V

    goto :goto_5

    :cond_b
    move-object v4, v5

    :goto_5
    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Lco/polarr/renderer/render/f;)V
    .locals 3

    iput-object p1, p0, Lco/polarr/renderer/b/b;->x:Lco/polarr/renderer/render/f;

    iget-object v0, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v1, p1, Lco/polarr/renderer/render/f;->d:I

    iget v2, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v1, p1, Lco/polarr/renderer/render/f;->d:I

    iget v2, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->o:Lco/polarr/renderer/render/f;

    iget v1, p1, Lco/polarr/renderer/render/f;->d:I

    iget v2, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v0}, Lco/polarr/renderer/b/b;->b(Lco/polarr/renderer/render/f;)V

    iget v0, p1, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget v2, p1, Lco/polarr/renderer/render/f;->d:I

    iget p1, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v0, v1, v2, p1}, Lco/polarr/renderer/b/i;->b(IIII)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v2, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, v2}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v3, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    iget-object v4, p0, Lco/polarr/renderer/b/b;->u:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v4, v4

    invoke-static {v2, v1, v3, v4}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;FF)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lco/polarr/renderer/b/b;->b(Ljava/util/List;)V

    iget-object p1, p0, Lco/polarr/renderer/b/b;->l:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lco/polarr/renderer/b/b;->b(Z)V

    return-void
.end method

.method public a([F)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    aget v4, p1, v3

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    const/4 v5, 0x2

    aget v5, p1, v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    const/4 v6, 0x3

    aget p1, p1, v6

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    invoke-static {v1, v4, v5, v0}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    const-string v1, "paint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/b/b;->b:Lco/polarr/renderer/entities/BrushItem;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/b;->k:Lco/polarr/renderer/filters/i;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/i;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/b/b;->j:Lco/polarr/renderer/filters/h;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lco/polarr/renderer/filters/h;->a(Ljava/util/List;Z)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 4

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lco/polarr/renderer/b/b;->m:Lco/polarr/renderer/render/f;

    iput-object v0, p0, Lco/polarr/renderer/b/b;->y:Lco/polarr/renderer/render/f;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/polarr/renderer/b/b;->a(Z)V

    invoke-direct {p0}, Lco/polarr/renderer/b/b;->f()V

    iget-object v1, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/high16 v1, 0x46180000    # 9728.0f

    const/16 v3, 0x2801

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2800

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public d()Lco/polarr/renderer/render/f;
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/b/b;->n:Lco/polarr/renderer/render/f;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lco/polarr/renderer/b/b;->a([F)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
