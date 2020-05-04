.class public Lcom/color/support/d/h;
.super Ljava/lang/Object;
.source "ColorRoundRectUtil.java"


# static fields
.field private static a:Lcom/color/support/d/h;


# instance fields
.field private b:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    return-void
.end method

.method public static declared-synchronized a()Lcom/color/support/d/h;
    .locals 2

    const-class v0, Lcom/color/support/d/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/support/d/h;->a:Lcom/color/support/d/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/color/support/d/h;

    invoke-direct {v1}, Lcom/color/support/d/h;-><init>()V

    sput-object v1, Lcom/color/support/d/h;->a:Lcom/color/support/d/h;

    :cond_0
    sget-object v1, Lcom/color/support/d/h;->a:Lcom/color/support/d/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(FFFFF)Landroid/graphics/Path;
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/color/support/d/h;->a(FFFFFZZZZ)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public a(FFFFFZZZZ)Landroid/graphics/Path;
    .locals 43

    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p5, v1

    if-gez v2, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move/from16 v10, p5

    :goto_0
    sub-float v11, p3, v8

    sub-float v12, p4, v9

    const/high16 v1, 0x40000000    # 2.0f

    div-float v13, v11, v1

    div-float v14, v12, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v1, v10, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_2

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v1, v10, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3e0e1bf0

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    move v15, v1

    goto :goto_1

    :cond_2
    move v15, v2

    :goto_1
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v1, v10, v1

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v1, v10, v1

    sub-float/2addr v1, v3

    const v3, 0x3e99999a    # 0.3f

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3d2de440

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    :cond_3
    move/from16 v16, v2

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v2, v8, v13

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x41b08f5c    # 22.07f

    const v18, 0x420b70a4    # 34.86f

    const v19, 0x4155c28f    # 13.36f

    const v20, 0x424ca3d7    # 51.16f

    const v21, 0x40947ae1    # 4.64f

    const v22, 0x4286e666    # 67.45f

    const v23, 0x42a73d71    # 83.62f

    const v24, 0x430030a4    # 128.19f

    const/high16 v25, 0x42c80000    # 100.0f

    if-nez p7, :cond_4

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v2, v8, v11

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v34, v13

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    div-float v26, v10, v25

    mul-float v2, v26, v24

    mul-float v7, v2, v15

    sub-float v2, v11, v7

    invoke-static {v13, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v32, v8, v11

    mul-float v2, v26, v23

    mul-float v27, v2, v16

    sub-float v2, v32, v27

    mul-float v28, v26, v22

    sub-float v4, v32, v28

    mul-float v29, v26, v21

    add-float v5, v9, v29

    mul-float v30, v26, v20

    sub-float v6, v32, v30

    mul-float v31, v26, v19

    add-float v33, v9, v31

    move/from16 v3, p2

    move/from16 v34, v13

    move v13, v7

    move/from16 v7, v33

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    mul-float v2, v26, v18

    sub-float v36, v32, v2

    mul-float v26, v26, v17

    add-float v37, v9, v26

    sub-float v38, v32, v26

    add-float v39, v9, v2

    sub-float v40, v32, v31

    add-float v41, v9, v30

    move-object/from16 v35, v1

    invoke-virtual/range {v35 .. v41}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    sub-float v2, v32, v29

    add-float v29, v9, v28

    add-float v31, v9, v27

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float v33, v9, v3

    move-object/from16 v27, v1

    move/from16 v28, v2

    move/from16 v30, v32

    invoke-virtual/range {v27 .. v33}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_2
    if-nez p9, :cond_5

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v2, v8, v11

    add-float v3, v9, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v13, v34

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v2, v8, v11

    div-float v3, v10, v25

    mul-float v4, v3, v24

    mul-float/2addr v4, v15

    sub-float v5, v12, v4

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v9

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v5, v9, v12

    mul-float v6, v3, v23

    mul-float v6, v6, v16

    sub-float v28, v5, v6

    mul-float v7, v3, v21

    sub-float v29, v2, v7

    mul-float v13, v3, v22

    sub-float v30, v5, v13

    mul-float v33, v3, v19

    sub-float v31, v2, v33

    mul-float v35, v3, v20

    sub-float v32, v5, v35

    move-object/from16 v26, v1

    move/from16 v27, v2

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    mul-float v26, v3, v17

    sub-float v37, v2, v26

    mul-float v3, v3, v18

    sub-float v38, v5, v3

    sub-float v39, v2, v3

    sub-float v40, v5, v26

    sub-float v41, v2, v35

    sub-float v42, v5, v33

    move-object/from16 v36, v1

    invoke-virtual/range {v36 .. v42}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    sub-float v27, v2, v13

    sub-float v28, v5, v7

    sub-float v29, v2, v6

    sub-float/2addr v11, v4

    move/from16 v13, v34

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float v31, v8, v2

    move-object/from16 v26, v1

    move/from16 v30, v5

    move/from16 v32, v5

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_3
    if-nez p8, :cond_6

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v2, v9, v12

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    div-float v2, v10, v25

    mul-float v3, v2, v24

    mul-float/2addr v3, v15

    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v4, v8

    add-float v5, v9, v12

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    mul-float v4, v2, v23

    mul-float v4, v4, v16

    add-float v27, v8, v4

    mul-float v6, v2, v22

    add-float v29, v8, v6

    mul-float v7, v2, v21

    sub-float v30, v5, v7

    mul-float v11, v2, v20

    add-float v31, v8, v11

    mul-float v33, v2, v19

    sub-float v32, v5, v33

    move-object/from16 v26, v1

    move/from16 v28, v5

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    mul-float v26, v2, v18

    add-float v35, v8, v26

    mul-float v2, v2, v17

    sub-float v36, v5, v2

    add-float v37, v8, v2

    sub-float v38, v5, v26

    add-float v39, v8, v33

    sub-float v40, v5, v11

    move-object/from16 v34, v1

    invoke-virtual/range {v34 .. v40}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v2, v8, v7

    sub-float v6, v5, v6

    sub-float/2addr v5, v4

    sub-float/2addr v12, v3

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v7, v9, v3

    move v3, v6

    move/from16 v4, p1

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_4
    if-nez p6, :cond_7

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_7
    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    div-float v10, v10, v25

    mul-float v24, v24, v10

    mul-float v2, v24, v15

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v9

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    mul-float v23, v23, v10

    mul-float v23, v23, v16

    add-float v3, v9, v23

    mul-float v21, v21, v10

    add-float v4, v8, v21

    mul-float v22, v22, v10

    add-float v5, v9, v22

    mul-float v19, v19, v10

    add-float v6, v8, v19

    mul-float v20, v20, v10

    add-float v7, v9, v20

    move-object/from16 p3, v1

    move/from16 p4, p1

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    invoke-virtual/range {p3 .. p9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    mul-float v17, v17, v10

    add-float v3, v8, v17

    mul-float v10, v10, v18

    add-float v4, v9, v10

    add-float v5, v8, v10

    add-float v6, v9, v17

    add-float v7, v8, v20

    add-float v10, v9, v19

    move-object/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v10

    invoke-virtual/range {p3 .. p9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    add-float v3, v8, v22

    add-float v4, v9, v21

    add-float v5, v8, v23

    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v8

    move-object/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, p2

    move/from16 p8, v2

    move/from16 p9, p2

    invoke-virtual/range {p3 .. p9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_5
    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/color/support/d/h;->b:Landroid/graphics/Path;

    return-object v1
.end method

.method public a(Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .locals 6

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/color/support/d/h;->a(FFFFF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
