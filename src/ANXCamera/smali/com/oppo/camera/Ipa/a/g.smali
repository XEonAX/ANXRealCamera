.class public Lcom/oppo/camera/Ipa/a/g;
.super Lcom/oppo/camera/Ipa/a/b;
.source "SingleBlurProcessor.java"


# static fields
.field private static a:Z = false


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/a/g;->b:Z

    return-void
.end method

.method private b(Lcom/oppo/camera/Ipa/b;)Landroid/graphics/Matrix;
    .locals 6

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p1, Lcom/oppo/camera/Ipa/b$b;->ao:Landroid/graphics/Rect;

    iget v3, v0, Lcom/oppo/camera/Ipa/b$a;->f:I

    iget v0, v0, Lcom/oppo/camera/Ipa/b$a;->e:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-boolean v4, p1, Lcom/oppo/camera/Ipa/b$b;->E:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget p1, p1, Lcom/oppo/camera/Ipa/b$b;->ap:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p1, v3

    mul-float/2addr p1, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    int-to-float v4, v0

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    invoke-virtual {v1, p1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-int/lit8 v3, v3, 0x2

    int-to-float p1, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SingleBlurProcessor"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sensetime/blur/BlurImageLibrary;->destroyImageBlur()I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/Ipa/a/g;->b:Z

    const-string v1, "unInit X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init, version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sensetime/blur/BlurImageLibrary;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SingleBlurProcessor"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/oppo/camera/Ipa/a/g;->a:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sput-boolean v0, Lcom/oppo/camera/Ipa/a/g;->a:Z

    const-string p1, "license_release.lic"

    invoke-static {p1}, Lcom/oppo/camera/Ipa/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    array-length v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [B

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    aput-byte v1, v2, p1

    invoke-static {v2}, Lcom/sensetime/blur/BlurImageLibrary;->initLicense([B)I

    move-result v1

    :cond_0
    const-string p1, "doubleloss_large.model"

    invoke-static {p1}, Lcom/oppo/camera/Ipa/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sensetime/blur/BlurImageLibrary;->createImageBlur(Ljava/lang/String;)I

    move-result p1

    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/a/g;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init X, initLicenseResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createBlurResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v5, v1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v6, v1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-object v7, v5, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/Ipa/a/g;->b(Lcom/oppo/camera/Ipa/b;)Landroid/graphics/Matrix;

    move-result-object v1

    const-string v8, ", faceCount: "

    const-string v9, "SingleBlurProcessor"

    if-eqz v7, :cond_4

    iget-boolean v12, v0, Lcom/oppo/camera/Ipa/a/g;->b:Z

    if-eqz v12, :cond_4

    array-length v12, v7

    new-array v15, v12, [F

    new-array v14, v12, [I

    new-array v13, v12, [I

    new-array v11, v12, [I

    new-array v10, v12, [I

    move-wide/from16 v29, v2

    move-object/from16 v17, v15

    const/4 v15, 0x0

    :goto_0
    const-string v2, ", h: "

    if-ge v15, v12, :cond_0

    aget-object v3, v7, v15

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v18, v7

    iget-object v7, v5, Lcom/oppo/camera/Ipa/b$b;->ao:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget-object v0, v5, Lcom/oppo/camera/Ipa/b$b;->ao:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v3, v7, v0}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v7

    float-to-int v3, v3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v19, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v1

    float-to-int v1, v7

    iget v7, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    int-to-float v7, v7

    move-object/from16 v20, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v5

    float-to-int v5, v7

    aput v5, v14, v15

    iget v5, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    float-to-int v0, v5

    aput v0, v13, v15

    aput v3, v11, v15

    aput v1, v10, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process, left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v14, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v13, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v11, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v10, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v0

    iget v1, v4, Lcom/oppo/camera/Ipa/b$a;->i:I

    const/16 v3, 0x112

    if-ne v1, v3, :cond_1

    sget-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV12:Lcom/sensetime/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v0

    :cond_1
    iget-object v1, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, w: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stride: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scanline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", faceLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v14, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", faceTop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v13, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", faceWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v11, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", faceHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", img name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget v15, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v2, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iget v3, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    iget v5, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    const/high16 v26, 0x3f800000    # 1.0f

    const v27, 0x3f333333    # 0.7f

    move-object v7, v13

    move-object v13, v1

    move-object v1, v14

    move v14, v0

    move-object/from16 v0, v17

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    move-object/from16 v21, v1

    move-object/from16 v22, v7

    move-object/from16 v23, v11

    move-object/from16 v24, v10

    move-object/from16 v25, v0

    invoke-static/range {v13 .. v27}, Lcom/sensetime/blur/BlurImageLibrary;->blurImage([BIIIIIII[I[I[I[I[FFF)I

    move-result v11

    move-object/from16 v31, v9

    goto :goto_2

    :cond_2
    move-object v7, v13

    move-object v1, v14

    move-object/from16 v0, v17

    iget-object v2, v4, Lcom/oppo/camera/Ipa/b$a;->b:[B

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/oppo/camera/Ipa/b$a;->c:[B

    if-eqz v2, :cond_3

    iget-object v13, v4, Lcom/oppo/camera/Ipa/b$a;->b:[B

    iget-object v14, v4, Lcom/oppo/camera/Ipa/b$a;->c:[B

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v15

    iget v2, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v3, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iget v5, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    iget-object v6, v4, Lcom/oppo/camera/Ipa/b$a;->b:[B

    array-length v6, v6

    move-object/from16 v31, v9

    iget v9, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    div-int v19, v6, v9

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    const/high16 v27, 0x3f800000    # 1.0f

    const v28, 0x3f333333    # 0.7f

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 v21, v12

    move-object/from16 v22, v1

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v10

    move-object/from16 v26, v0

    invoke-static/range {v13 .. v28}, Lcom/sensetime/blur/BlurImageLibrary;->blurImageSplit([B[BIIIIIII[I[I[I[I[FFF)I

    move-result v11

    goto :goto_2

    :cond_3
    move-object/from16 v31, v9

    goto :goto_1

    :cond_4
    move-wide/from16 v29, v2

    move-object/from16 v31, v9

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    const/4 v11, -0x1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process X, blurResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/oppo/camera/Ipa/a/g;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", costTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v31

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
