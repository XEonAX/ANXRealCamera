.class public Lco/polarr/renderer/b/h;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_CENTERCROP:I = 0x1

.field public static final TYPE_CENTERINSIDE:I = 0x2

.field public static final TYPE_FITEND:I = 0x4

.field public static final TYPE_FITSTART:I = 0x3

.field public static final TYPE_FITXY:I


# direct methods
.method public static a([F[F)F
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-double v2, v2

    aget v4, p0, v1

    aget v5, p1, v1

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-double p0, v2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a([FFIFI)V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p1, v2

    int-to-float v0, p4

    sub-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    int-to-float p2, p2

    div-float p2, p1, p2

    const/4 v1, 0x0

    aput p2, p0, v1

    const/4 p2, 0x0

    const/4 v1, 0x1

    aput p2, p0, v1

    const/4 v1, 0x2

    aput p2, p0, v1

    const/4 v3, 0x3

    aput p2, p0, v3

    const/4 v3, 0x4

    aput p2, p0, v3

    const/4 v3, 0x5

    aput p1, p0, v3

    const/4 p1, 0x6

    aput p2, p0, p1

    const/4 p1, 0x7

    aput p2, p0, p1

    const/16 p1, 0x8

    aput p2, p0, p1

    const/16 p1, 0x9

    aput p2, p0, p1

    add-float/2addr v0, p3

    mul-float/2addr v0, v2

    const/16 p1, 0xa

    aput v0, p0, p1

    const/16 p1, 0xb

    const/high16 v0, -0x40800000    # -1.0f

    aput v0, p0, p1

    const/16 p1, 0xc

    aput p2, p0, p1

    const/16 p1, 0xd

    aput p2, p0, p1

    mul-int/2addr p4, v1

    int-to-float p1, p4

    mul-float/2addr p1, p3

    mul-float/2addr p1, v2

    const/16 p3, 0xe

    aput p1, p0, p3

    const/16 p1, 0xf

    aput p2, p0, p1

    return-void
.end method

.method public static a([FIIIII)V
    .locals 27

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-lez v2, :cond_8

    if-lez v1, :cond_8

    if-lez v3, :cond_8

    if-lez v4, :cond_8

    const/16 v5, 0x10

    new-array v14, v5, [F

    new-array v5, v5, [F

    if-nez v0, :cond_0

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40400000    # 3.0f

    move-object v6, v14

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    move-object v15, v5

    invoke-static/range {v15 .. v25}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v8, v14

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_0
    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v1, v3

    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_4

    :cond_1
    mul-float/2addr v1, v9

    div-float/2addr v1, v3

    sub-float/2addr v1, v11

    move v8, v10

    move v9, v11

    goto :goto_2

    :cond_2
    mul-float/2addr v1, v9

    div-float/2addr v1, v3

    sub-float v0, v11, v1

    move v1, v11

    goto :goto_1

    :cond_3
    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_4

    :cond_4
    mul-float/2addr v3, v9

    div-float/2addr v3, v1

    sub-float v0, v11, v3

    move v1, v11

    goto :goto_0

    :cond_5
    mul-float/2addr v3, v9

    div-float/2addr v3, v1

    sub-float v0, v3, v11

    move v1, v0

    move v0, v10

    goto :goto_0

    :cond_6
    neg-float v0, v3

    div-float/2addr v0, v1

    div-float v1, v3, v1

    :goto_0
    move/from16 v26, v10

    move v10, v0

    move/from16 v0, v26

    :goto_1
    move v9, v1

    move v8, v10

    move v10, v0

    goto :goto_3

    :cond_7
    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    move v8, v10

    move v9, v11

    move v10, v0

    :goto_2
    move v11, v1

    :goto_3
    const/4 v7, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40400000    # 3.0f

    move-object v6, v14

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_4
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    move-object v15, v5

    invoke-static/range {v15 .. v25}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 p1, v0

    move-object/from16 p2, v14

    move/from16 p3, v1

    move-object/from16 p4, v5

    move/from16 p5, v2

    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_8
    return-void
.end method

.method public static a([F[FF[F)V
    .locals 6

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget p0, p0, v4

    aget v5, p1, v0

    sub-float/2addr v5, v1

    mul-float/2addr v5, p2

    add-float/2addr v1, v5

    aput v1, p3, v0

    aget v0, p1, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, p2

    add-float/2addr v3, v0

    aput v3, p3, v2

    aget p1, p1, v4

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    aput p0, p3, v4

    return-void
.end method

.method public static a()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a([FZZ)[F
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const/4 p2, 0x0

    invoke-static {p0, p2, p1, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3
    return-object p0
.end method
