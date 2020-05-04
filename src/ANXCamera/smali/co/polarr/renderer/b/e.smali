.class public Lco/polarr/renderer/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/b/e$a;
    }
.end annotation


# instance fields
.field a:Lco/polarr/renderer/entities/DistortionBrushItem;

.field b:[F

.field c:F

.field d:Z

.field e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/polarr/renderer/entities/DistortionBrushItem;

    invoke-direct {v0}, Lco/polarr/renderer/entities/DistortionBrushItem;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lco/polarr/renderer/b/e;->b:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lco/polarr/renderer/b/e;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/polarr/renderer/b/e;->d:Z

    new-instance v0, Lco/polarr/renderer/b/e$1;

    invoke-direct {v0, p0}, Lco/polarr/renderer/b/e$1;-><init>(Lco/polarr/renderer/b/e;)V

    iput-object v0, p0, Lco/polarr/renderer/b/e;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/polarr/renderer/b/e;->d:Z

    sget-object v0, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->currentRender:Lco/polarr/renderer/render/b;

    iget-object v1, p0, Lco/polarr/renderer/b/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/render/b;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-virtual {v0}, Lco/polarr/renderer/render/d;->c()V

    return-void
.end method

.method static synthetic a(Lco/polarr/renderer/b/e;)V
    .locals 0

    invoke-direct {p0}, Lco/polarr/renderer/b/e;->a()V

    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/Context;Ljava/util/List;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/polarr/renderer/entities/Context;",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/Context$FaceFeaturesState;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    if-nez v2, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->distortionVertices:[[F

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ge v5, v7, :cond_12

    iget-object v7, v0, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    array-length v7, v7

    if-gt v7, v5, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v21, v2

    move/from16 v22, v5

    goto/16 :goto_b

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;

    iget-object v10, v0, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    aget-object v10, v10, v5

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    iget-object v11, v10, Lco/polarr/renderer/render/c;->a:Lco/polarr/renderer/render/c$a;

    iget-object v10, v10, Lco/polarr/renderer/render/c;->b:Lco/polarr/renderer/b/f$b;

    if-eqz v11, :cond_1

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Lco/polarr/renderer/b/e$a;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lco/polarr/renderer/b/e$a;-><init>(Lco/polarr/renderer/b/e$1;)V

    iget-object v12, v10, Lco/polarr/renderer/b/f$b;->p:[F

    aget v12, v12, v4

    iget-object v13, v10, Lco/polarr/renderer/b/f$b;->p:[F

    aget v13, v13, v9

    array-length v14, v3

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int/lit8 v15, v14, -0x1

    move v8, v4

    :goto_2
    array-length v9, v3

    if-ge v8, v9, :cond_11

    iget-object v9, v11, Lco/polarr/renderer/render/c$a;->f:[I

    aget v9, v9, v8

    int-to-float v9, v9

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v9, v9, v17

    iput v9, v6, Lco/polarr/renderer/b/e$a;->a:F

    iget-object v9, v11, Lco/polarr/renderer/render/c$a;->e:[I

    aget v9, v9, v8

    int-to-float v9, v9

    div-float v9, v9, v17

    iput v9, v6, Lco/polarr/renderer/b/e$a;->b:F

    iget-object v9, v11, Lco/polarr/renderer/render/c$a;->a:[I

    aget v9, v9, v8

    int-to-float v9, v9

    div-float v9, v9, v17

    iput v9, v6, Lco/polarr/renderer/b/e$a;->e:F

    iget-object v9, v11, Lco/polarr/renderer/render/c$a;->b:[I

    aget v9, v9, v8

    int-to-float v9, v9

    div-float v9, v9, v17

    iput v9, v6, Lco/polarr/renderer/b/e$a;->f:F

    iget-object v9, v11, Lco/polarr/renderer/render/c$a;->d:[I

    aget v9, v9, v8

    int-to-float v9, v9

    div-float v9, v9, v17

    iput v9, v6, Lco/polarr/renderer/b/e$a;->c:F

    iget-object v9, v11, Lco/polarr/renderer/render/c$a;->c:[I

    aget v9, v9, v8

    int-to-float v9, v9

    div-float v9, v9, v17

    iput v9, v6, Lco/polarr/renderer/b/e$a;->d:F

    iget v9, v6, Lco/polarr/renderer/b/e$a;->c:F

    iget v4, v6, Lco/polarr/renderer/b/e$a;->d:F

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v6, Lco/polarr/renderer/b/e$a;->g:F

    iget v4, v6, Lco/polarr/renderer/b/e$a;->e:F

    iget v9, v6, Lco/polarr/renderer/b/e$a;->f:F

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v6, Lco/polarr/renderer/b/e$a;->h:F

    iget v4, v6, Lco/polarr/renderer/b/e$a;->a:F

    iget v9, v6, Lco/polarr/renderer/b/e$a;->g:F

    iget v1, v6, Lco/polarr/renderer/b/e$a;->b:F

    sub-float/2addr v9, v1

    iget v1, v6, Lco/polarr/renderer/b/e$a;->h:F

    sub-float/2addr v9, v1

    const/4 v1, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const v18, 0x3e99999a    # 0.3f

    mul-float v9, v9, v18

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v6, Lco/polarr/renderer/b/e$a;->i:F

    aget-object v4, v3, v8

    const/4 v9, 0x0

    aget v4, v4, v9

    aget-object v17, v3, v8

    const/16 v16, 0x1

    aget v17, v17, v16

    neg-float v1, v13

    move-object/from16 v19, v11

    const/4 v9, 0x2

    new-array v11, v9, [F

    mul-float/2addr v4, v12

    mul-float v17, v17, v1

    sub-float v4, v4, v17

    const/4 v9, 0x0

    aput v4, v11, v9

    aget-object v4, v3, v8

    aget v4, v4, v9

    mul-float/2addr v4, v1

    aget-object v1, v3, v8

    aget v1, v1, v16

    mul-float/2addr v1, v12

    add-float/2addr v4, v1

    aput v4, v11, v16

    aput-object v11, v3, v8

    iget v1, v6, Lco/polarr/renderer/b/e$a;->e:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->v:[F

    const/4 v9, 0x0

    aget v1, v1, v9

    iget-object v11, v10, Lco/polarr/renderer/b/f$b;->v:[F

    aget v11, v11, v16

    iget-object v4, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->eye_size:[F

    aget v4, v4, v9

    iget v9, v6, Lco/polarr/renderer/b/e$a;->e:F

    mul-float/2addr v4, v9

    mul-float v4, v4, v18

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v4, v9

    const/4 v9, 0x2

    new-array v0, v9, [F

    aget-object v9, v3, v8

    const/16 v17, 0x0

    aget v9, v9, v17

    sub-float/2addr v9, v1

    mul-float/2addr v9, v4

    add-float/2addr v9, v1

    aput v9, v0, v17

    aget-object v1, v3, v8

    const/4 v9, 0x1

    aget v1, v1, v9

    sub-float/2addr v1, v11

    mul-float/2addr v1, v4

    add-float/2addr v1, v11

    aput v1, v0, v9

    aput-object v0, v3, v8

    goto :goto_3

    :cond_5
    move/from16 v9, v16

    :goto_3
    iget v0, v6, Lco/polarr/renderer/b/e$a;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, v10, Lco/polarr/renderer/b/f$b;->u:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v4, v10, Lco/polarr/renderer/b/f$b;->u:[F

    aget v4, v4, v9

    iget-object v11, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->eye_size:[F

    aget v11, v11, v9

    iget v9, v6, Lco/polarr/renderer/b/e$a;->f:F

    mul-float/2addr v11, v9

    mul-float v11, v11, v18

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v11, v9

    aget-object v9, v3, v8

    aget v9, v9, v1

    aget-object v20, v3, v8

    move-object/from16 v21, v2

    const/4 v1, 0x2

    new-array v2, v1, [F

    sub-float/2addr v9, v0

    mul-float/2addr v9, v11

    add-float/2addr v9, v0

    const/4 v0, 0x0

    aput v9, v2, v0

    const/4 v0, 0x1

    aget v1, v20, v0

    sub-float/2addr v1, v4

    mul-float/2addr v1, v11

    add-float/2addr v1, v4

    aput v1, v2, v0

    aput-object v2, v3, v8

    goto :goto_4

    :cond_6
    move-object/from16 v21, v2

    move v0, v9

    :goto_4
    iget v1, v6, Lco/polarr/renderer/b/e$a;->g:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->s:[F

    const/4 v4, 0x0

    aget v1, v1, v4

    iget-object v9, v10, Lco/polarr/renderer/b/f$b;->s:[F

    aget v9, v9, v0

    iget v0, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->face_width:F

    iget v9, v6, Lco/polarr/renderer/b/e$a;->g:F

    iget v11, v6, Lco/polarr/renderer/b/e$a;->h:F

    aget-object v17, v3, v8

    aget v17, v17, v4

    aget-object v20, v3, v8

    const/4 v4, 0x2

    new-array v2, v4, [F

    sub-float v17, v17, v1

    mul-float/2addr v0, v9

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v9, v4, v11

    mul-float/2addr v0, v9

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v9

    add-float/2addr v0, v4

    mul-float v17, v17, v0

    add-float v17, v17, v1

    const/4 v0, 0x0

    aput v17, v2, v0

    const/4 v1, 0x1

    aget v4, v20, v1

    aput v4, v2, v1

    aput-object v2, v3, v8

    goto :goto_5

    :cond_7
    move v1, v0

    const/4 v0, 0x0

    :goto_5
    iget v2, v6, Lco/polarr/renderer/b/e$a;->a:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v2, v10, Lco/polarr/renderer/b/f$b;->t:[F

    aget v2, v2, v0

    iget-object v0, v10, Lco/polarr/renderer/b/f$b;->t:[F

    aget v0, v0, v1

    iget v1, v6, Lco/polarr/renderer/b/e$a;->a:F

    iget v4, v6, Lco/polarr/renderer/b/e$a;->b:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v4

    mul-float/2addr v1, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v4

    iget v4, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->mouth_width:F

    iget v9, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->mouth_height:F

    aget-object v11, v3, v8

    const/16 v17, 0x0

    aget v11, v11, v17

    aget-object v20, v3, v8

    move/from16 v22, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    new-array v15, v5, [F

    sub-float/2addr v11, v2

    mul-float/2addr v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v11, v4

    add-float/2addr v11, v2

    aput v11, v15, v17

    const/4 v2, 0x1

    aget v4, v20, v2

    sub-float/2addr v4, v0

    mul-float/2addr v9, v1

    add-float/2addr v9, v5

    mul-float/2addr v4, v9

    add-float/2addr v4, v0

    aput v4, v15, v2

    aput-object v15, v3, v8

    goto :goto_6

    :cond_8
    move v2, v1

    move/from16 v22, v5

    move/from16 v23, v15

    :goto_6
    iget v0, v6, Lco/polarr/renderer/b/e$a;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, v10, Lco/polarr/renderer/b/f$b;->t:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    iget-object v5, v10, Lco/polarr/renderer/b/f$b;->t:[F

    aget v5, v5, v2

    const/4 v9, 0x2

    new-array v11, v9, [F

    aget-object v9, v3, v8

    aget v9, v9, v4

    sub-float/2addr v9, v0

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v15

    add-float/2addr v9, v0

    aput v9, v11, v4

    aget-object v9, v3, v8

    aget v9, v9, v2

    sub-float/2addr v9, v5

    mul-float/2addr v9, v15

    add-float/2addr v9, v5

    aput v9, v11, v2

    const/4 v9, 0x2

    new-array v15, v9, [F

    iget-object v9, v10, Lco/polarr/renderer/b/f$b;->q:[[F

    aget-object v9, v9, v4

    invoke-static {v11, v9}, Lco/polarr/renderer/b/t;->a([F[F)F

    move-result v9

    aput v9, v15, v4

    iget-object v9, v10, Lco/polarr/renderer/b/f$b;->q:[[F

    aget-object v9, v9, v2

    invoke-static {v11, v9}, Lco/polarr/renderer/b/t;->a([F[F)F

    move-result v9

    aput v9, v15, v2

    aget v9, v15, v4

    aget v4, v15, v2

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aget-object v4, v3, v8

    iget-object v9, v10, Lco/polarr/renderer/b/f$b;->t:[F

    invoke-static {v4, v9}, Lco/polarr/renderer/b/t;->a([F[F)F

    move-result v4

    const v9, 0x3dcccccd    # 0.1f

    div-float/2addr v2, v9

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v4, v9

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v9, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->smile:F

    iget v11, v6, Lco/polarr/renderer/b/e$a;->i:F

    iget v15, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->smile:F

    iget v1, v6, Lco/polarr/renderer/b/e$a;->a:F

    aget-object v24, v3, v8

    const/16 v17, 0x0

    aget v24, v24, v17

    aget-object v25, v3, v8

    move/from16 v27, v13

    move/from16 v26, v14

    const/4 v14, 0x2

    new-array v13, v14, [F

    sub-float v24, v24, v0

    mul-float/2addr v15, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v15, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v15, v1

    mul-float v24, v24, v15

    add-float v24, v24, v0

    aput v24, v13, v17

    const/4 v0, 0x1

    aget v14, v25, v0

    sub-float/2addr v14, v5

    mul-float/2addr v9, v11

    sub-float v2, v1, v2

    mul-float/2addr v2, v4

    mul-float/2addr v9, v2

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v9, v1

    add-float/2addr v14, v9

    add-float/2addr v14, v5

    aput v14, v13, v0

    aput-object v13, v3, v8

    goto :goto_7

    :cond_9
    move v0, v2

    move/from16 v27, v13

    move/from16 v26, v14

    :goto_7
    iget v1, v6, Lco/polarr/renderer/b/e$a;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->r:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v4, v10, Lco/polarr/renderer/b/f$b;->r:[F

    aget v4, v4, v0

    iget v0, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->nose_width:F

    iget v5, v6, Lco/polarr/renderer/b/e$a;->b:F

    iget v9, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->nose_height:F

    iget v11, v6, Lco/polarr/renderer/b/e$a;->b:F

    iget v13, v6, Lco/polarr/renderer/b/e$a;->a:F

    aget-object v14, v3, v8

    aget v14, v14, v2

    aget-object v15, v3, v8

    move/from16 v24, v12

    const/4 v2, 0x2

    new-array v12, v2, [F

    sub-float/2addr v14, v1

    mul-float/2addr v0, v5

    mul-float v0, v0, v18

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    mul-float/2addr v14, v0

    add-float/2addr v14, v1

    const/4 v0, 0x0

    aput v14, v12, v0

    const/4 v0, 0x1

    aget v1, v15, v0

    sub-float/2addr v1, v4

    mul-float/2addr v9, v11

    sub-float v5, v2, v13

    mul-float/2addr v9, v5

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v5

    add-float/2addr v9, v2

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    aput v1, v12, v0

    aput-object v12, v3, v8

    goto :goto_8

    :cond_a
    move/from16 v24, v12

    :goto_8
    iget v1, v6, Lco/polarr/renderer/b/e$a;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const v2, 0x3e19999a    # 0.15f

    if-eqz v1, :cond_b

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->s:[F

    const/4 v4, 0x0

    aget v1, v1, v4

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->s:[F

    aget v1, v1, v0

    add-float/2addr v1, v2

    iget v0, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->chin_height:F

    iget v5, v6, Lco/polarr/renderer/b/e$a;->c:F

    iget v9, v6, Lco/polarr/renderer/b/e$a;->h:F

    iget v11, v6, Lco/polarr/renderer/b/e$a;->a:F

    iget v12, v6, Lco/polarr/renderer/b/e$a;->b:F

    aget-object v13, v3, v8

    aget v13, v13, v4

    aget-object v14, v3, v8

    const/4 v15, 0x2

    new-array v2, v15, [F

    aput v13, v2, v4

    const/4 v4, 0x1

    aget v13, v14, v4

    sub-float/2addr v13, v1

    mul-float/2addr v0, v5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v9

    mul-float/2addr v0, v5

    sub-float v5, v4, v11

    mul-float/2addr v0, v5

    sub-float v5, v4, v12

    mul-float/2addr v0, v5

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    mul-float/2addr v13, v0

    add-float/2addr v13, v1

    const/4 v0, 0x1

    aput v13, v2, v0

    aput-object v2, v3, v8

    :cond_b
    iget v1, v6, Lco/polarr/renderer/b/e$a;->d:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->s:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v1, v10, Lco/polarr/renderer/b/f$b;->s:[F

    aget v1, v1, v0

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v1, v4

    iget v4, v7, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->forehead_height:F

    iget v5, v6, Lco/polarr/renderer/b/e$a;->d:F

    iget v9, v6, Lco/polarr/renderer/b/e$a;->h:F

    aget-object v11, v3, v8

    aget v11, v11, v2

    aget-object v12, v3, v8

    const/4 v13, 0x2

    new-array v14, v13, [F

    aput v11, v14, v2

    aget v2, v12, v0

    sub-float/2addr v2, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v9, v5, v9

    mul-float/2addr v4, v9

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v9

    add-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    aput v2, v14, v0

    aput-object v14, v3, v8

    :cond_c
    const/4 v1, 0x2

    new-array v2, v1, [F

    aget-object v1, v3, v8

    const/4 v4, 0x0

    aget v1, v1, v4

    mul-float v1, v1, v24

    aget-object v5, v3, v8

    aget v5, v5, v0

    mul-float v5, v5, v27

    sub-float/2addr v1, v5

    aput v1, v2, v4

    aget-object v1, v3, v8

    aget v1, v1, v4

    mul-float v1, v1, v27

    aget-object v4, v3, v8

    aget v4, v4, v0

    mul-float v4, v4, v24

    add-float/2addr v1, v4

    aput v1, v2, v0

    aput-object v2, v3, v8

    rem-int v0, v8, v26

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_d

    aget-object v0, v3, v8

    aget-object v2, v3, v8

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v4

    move/from16 v14, v23

    goto :goto_9

    :cond_d
    move/from16 v14, v23

    const/4 v4, 0x0

    if-ne v0, v14, :cond_e

    aget-object v0, v3, v8

    aget-object v2, v3, v8

    aget v2, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v4

    :cond_e
    :goto_9
    move/from16 v0, v26

    if-ge v8, v0, :cond_f

    aget-object v2, v3, v8

    aget-object v4, v3, v8

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v5

    goto :goto_a

    :cond_f
    const/4 v5, 0x1

    mul-int v1, v0, v14

    if-le v8, v1, :cond_10

    aget-object v1, v3, v8

    aget-object v2, v3, v8

    aget v2, v2, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v5

    :cond_10
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move v15, v14

    move-object/from16 v11, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move/from16 v12, v24

    move/from16 v13, v27

    const/4 v4, 0x0

    move v14, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_11
    move-object/from16 v21, v2

    move/from16 v22, v5

    const/4 v6, 0x1

    :goto_b
    add-int/lit8 v5, v22, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_12
    move-object/from16 v21, v2

    if-nez v6, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x0

    :goto_c
    array-length v1, v3

    if-ge v0, v1, :cond_14

    const/4 v1, 0x2

    new-array v2, v1, [F

    aget-object v4, v3, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v6, v21, v0

    aget v6, v6, v5

    sub-float/2addr v4, v6

    aput v4, v2, v5

    aget-object v4, v3, v0

    const/4 v6, 0x1

    aget v4, v4, v6

    aget-object v7, v21, v0

    aget v7, v7, v6

    sub-float/2addr v4, v7

    aput v4, v2, v6

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v1, v3}, Lco/polarr/renderer/entities/Mesh;->setDeltaPoints([[F)V

    goto :goto_e

    :cond_15
    :goto_d
    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v2, v2, Lco/polarr/renderer/entities/Mesh;->distortion:[F

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, v1, Lco/polarr/renderer/entities/Mesh;->delta:[F

    :goto_e
    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v0}, Lco/polarr/renderer/entities/Mesh;->compile()V

    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/Context;[F)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p1, v0, Lco/polarr/renderer/entities/Mesh;->distortion:[F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->distortionVertices:[[F

    invoke-virtual {p1, v0}, Lco/polarr/renderer/entities/Mesh;->setDistortionPoints([[F)V

    :goto_0
    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {p0}, Lco/polarr/renderer/entities/Mesh;->compile()V

    return-void
.end method


# virtual methods
.method public a(Lco/polarr/renderer/entities/Context;[FZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    aget v5, p2, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, p2, v4

    aget v5, p2, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, p2, v3

    invoke-static/range {p2 .. p2}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    iget-object v6, v0, Lco/polarr/renderer/b/e;->b:[F

    if-nez v6, :cond_1

    iput-object v5, v0, Lco/polarr/renderer/b/e;->b:[F

    :cond_1
    aget v6, v5, v4

    iget-object v7, v0, Lco/polarr/renderer/b/e;->b:[F

    aget v8, v7, v4

    aget v9, v5, v3

    aget v7, v7, v3

    iget-object v10, v1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v10}, Lco/polarr/renderer/entities/Mesh;->getDistortionPoints()[[F

    move-result-object v10

    array-length v11, v10

    new-array v11, v11, [[F

    move v12, v4

    :goto_1
    array-length v13, v10

    if-ge v12, v13, :cond_8

    aget-object v13, v10, v12

    aget v14, v13, v4

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v2

    if-eqz v14, :cond_7

    aget v14, v13, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v2

    if-nez v14, :cond_2

    goto/16 :goto_3

    :cond_2
    aget v14, v5, v4

    iget v15, v0, Lco/polarr/renderer/b/e;->c:F

    aget v16, v5, v3

    aget v17, v13, v4

    aget v18, v13, v3

    const/4 v2, 0x2

    new-array v3, v2, [F

    mul-float/2addr v14, v15

    aput v14, v3, v4

    const/4 v14, 0x1

    aput v16, v3, v14

    new-array v14, v2, [F

    mul-float v17, v17, v15

    aput v17, v14, v4

    const/4 v15, 0x1

    aput v18, v14, v15

    invoke-static {v3, v14}, Lco/polarr/renderer/b/t;->a([F[F)F

    move-result v3

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->radius:F

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_6

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->radius:F

    div-float/2addr v3, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Lco/polarr/renderer/b/t;->a(F)F

    move-result v3

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->strength:F

    mul-float/2addr v3, v14

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget-object v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->mode:Ljava/lang/String;

    const-string v15, "pinch"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->rate:F

    mul-float/2addr v3, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v3, v14, v3

    new-array v2, v2, [F

    aget v14, v13, v4

    aget v15, v5, v4

    sub-float/2addr v14, v15

    mul-float/2addr v14, v3

    aget v15, v5, v4

    add-float/2addr v14, v15

    aput v14, v2, v4

    const/4 v14, 0x1

    aget v13, v13, v14

    aget v15, v5, v14

    sub-float/2addr v13, v15

    mul-float/2addr v13, v3

    aget v3, v5, v14

    add-float/2addr v13, v3

    aput v13, v2, v14

    aput-object v2, v11, v12

    :goto_2
    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget-object v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->mode:Ljava/lang/String;

    const-string v15, "bulge"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->rate:F

    mul-float/2addr v14, v3

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    new-array v2, v2, [F

    aget v3, v13, v4

    aget v16, v5, v4

    sub-float v3, v3, v16

    mul-float/2addr v3, v14

    aget v16, v5, v4

    add-float v3, v3, v16

    aput v3, v2, v4

    const/4 v3, 0x1

    aget v13, v13, v3

    aget v16, v5, v3

    sub-float v13, v13, v16

    mul-float/2addr v13, v14

    aget v14, v5, v3

    add-float/2addr v13, v14

    aput v13, v2, v3

    aput-object v2, v11, v12

    goto :goto_2

    :cond_4
    const/high16 v15, 0x3f800000    # 1.0f

    iget-object v14, v0, Lco/polarr/renderer/b/e;->a:Lco/polarr/renderer/entities/DistortionBrushItem;

    iget-object v14, v14, Lco/polarr/renderer/entities/DistortionBrushItem;->mode:Ljava/lang/String;

    const-string v15, "restore"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-array v2, v2, [F

    aput-object v2, v11, v12

    aget-object v2, v11, v12

    iget-object v14, v1, Lco/polarr/renderer/entities/Context;->distortionVertices:[[F

    aget-object v14, v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v3, v15

    invoke-static {v2, v13, v14, v3}, Lco/polarr/renderer/b/t;->a([F[F[FF)[F

    goto :goto_2

    :cond_5
    new-array v2, v2, [F

    aget v14, v13, v4

    sub-float v15, v6, v8

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    aput v14, v2, v4

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-float v15, v9, v7

    mul-float/2addr v3, v15

    add-float/2addr v13, v3

    aput v13, v2, v14

    aput-object v2, v11, v12

    goto :goto_4

    :cond_6
    const/4 v14, 0x1

    aput-object v13, v11, v12

    goto :goto_4

    :cond_7
    :goto_3
    move v14, v3

    aput-object v13, v11, v12

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v3, v14

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_8
    iget-object v2, v1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v2, v11}, Lco/polarr/renderer/entities/Mesh;->setDistortionPoints([[F)V

    iget-object v2, v1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    iget-object v3, v1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v3, v3, Lco/polarr/renderer/entities/Mesh;->distortion:[F

    const-string v4, "distortion_mesh"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v1}, Lco/polarr/renderer/entities/Mesh;->compile()V

    iput-object v5, v0, Lco/polarr/renderer/b/e;->b:[F

    return-void
.end method
