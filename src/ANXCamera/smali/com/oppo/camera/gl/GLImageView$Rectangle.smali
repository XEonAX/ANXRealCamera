.class public Lcom/oppo/camera/gl/GLImageView$Rectangle;
.super Ljava/lang/Object;
.source "GLImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/GLImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rectangle"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/gl/GLImageView;

.field private final b:[S

.field private final c:I

.field private final d:I

.field private final e:Ljava/nio/FloatBuffer;

.field private final f:Ljava/nio/ShortBuffer;

.field private g:Ljava/nio/FloatBuffer;

.field private h:Ljava/nio/FloatBuffer;

.field private i:[F

.field private j:[F

.field private k:[F


# direct methods
.method public constructor <init>(Lcom/oppo/camera/gl/GLImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [S

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->b:[S

    const/16 p1, 0xc

    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->c:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->d:I

    new-array v1, p1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->i:[F

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->j:[F

    new-array p1, v0, [F

    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->k:[F

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->j:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->j:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->i:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->h:Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->i:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->k:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->e:Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->e:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->k:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->b:[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->f:Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->f:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->b:[S

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->f:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    :array_1
    .array-data 4
        -0x40f00000    # -0.5625f
        0x3f800000    # 1.0f
        0x0
        -0x40f00000    # -0.5625f
        -0x40800000    # -1.0f
        0x0
        0x3f100000    # 0.5625f
        -0x40800000    # -1.0f
        0x0
        0x3f100000    # 0.5625f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40f00000    # -0.5625f
        0x3f800000    # 1.0f
        0x0
        -0x40f00000    # -0.5625f
        -0x40800000    # -1.0f
        0x0
        0x3f100000    # 0.5625f
        -0x40800000    # -1.0f
        0x0
        0x3f100000    # 0.5625f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method private a(I)F
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLImageView;->l(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->k(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->c(III)F

    move-result p1

    return p1
.end method


# virtual methods
.method public draw([FIIIIII)V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    const-string v4, "GLImageView.draw"

    invoke-static {v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    const/16 v7, 0x19

    const/4 v8, 0x4

    if-ge v6, v7, :cond_3

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->f(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_0

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->q(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    :cond_0
    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->r(Lcom/oppo/camera/gl/GLImageView;)I

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    if-le v6, v7, :cond_1

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6, v7}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;I)I

    :cond_1
    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v7}, Lcom/oppo/camera/gl/GLImageView;->f(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v7

    iget-object v9, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v9}, Lcom/oppo/camera/gl/GLImageView;->s(Lcom/oppo/camera/gl/GLImageView;)Landroid/view/animation/PathInterpolator;

    move-result-object v9

    iget-object v10, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v10}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41c80000    # 25.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v7}, Lcom/oppo/camera/gl/GLImageView;->q(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v7

    iget-object v9, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v9}, Lcom/oppo/camera/gl/GLImageView;->s(Lcom/oppo/camera/gl/GLImageView;)Landroid/view/animation/PathInterpolator;

    move-result-object v9

    iget-object v10, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v10}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v7}, Lcom/oppo/camera/gl/GLImageView;->f(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v7}, Lcom/oppo/camera/gl/GLImageView;->q(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_0
    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static/range {p2 .. p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/4 v10, 0x3

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0xc

    iget-object v14, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    move/from16 v9, p2

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static/range {p3 .. p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/4 v10, 0x2

    const/16 v13, 0x8

    iget-object v14, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->e:Ljava/nio/FloatBuffer;

    move/from16 v9, p3

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v6, p1

    move/from16 v9, p4

    invoke-static {v9, v5, v7, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->b:[S

    array-length v6, v6

    iget-object v9, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->f:Ljava/nio/ShortBuffer;

    const/16 v10, 0x1403

    invoke-static {v8, v6, v10, v9}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iget-object v5, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->f(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->q(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static/range {p2 .. p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/4 v12, 0x3

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0xc

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->h:Ljava/nio/FloatBuffer;

    move/from16 v11, p2

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->b:[S

    array-length v1, v1

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->f:Ljava/nio/ShortBuffer;

    invoke-static {v8, v1, v10, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static/range {p2 .. p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static/range {p3 .. p3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setChangeToSize(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChangeToSize, sizeRatioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleFrameIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSizeRatioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v5

    if-eq v5, p1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    sget-object v5, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-static {v2, v5}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v2

    if-ge v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    mul-float/2addr v2, v0

    sub-float v0, p1, v2

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2, v3}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;I)I

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    iget-object v3, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v2, v3}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;F)F

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;F)F

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x6

    if-nez p1, :cond_4

    iget-object v6, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    if-eq v6, v1, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v6

    if-ne v6, v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    sget-object v6, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-static {v5, v6}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v5

    if-gt v5, v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a(I)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v6

    div-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v5, v2

    sub-float/2addr v0, v5

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2, v3}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;I)I

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    iget-object v3, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v2, v3}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;F)F

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;F)F

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    if-ne p1, v5, :cond_6

    iget-object v5, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v5

    if-eq v5, v2, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v2

    if-eq v2, p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    sget-object v2, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-static {p1, v2}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result p1

    if-gt p1, v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, v3}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a(I)F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v0, v3}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;I)I

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v0, v2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;F)F

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1, v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;F)F

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1, v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;F)F

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1, v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;F)F

    :goto_0
    return-void
.end method

.method public updateSize(F)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/gl/GLImageView;->d(Lcom/oppo/camera/gl/GLImageView;I)I

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLImageView;->o(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a(I)F

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result v1

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v6, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v1, v6}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->p(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->l(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    neg-float p1, p1

    invoke-virtual {v1, v4, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    mul-float/2addr v2, v5

    div-float/2addr v2, p1

    sub-float v2, v0, v2

    invoke-virtual {v1, v4, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    mul-float/2addr v2, v5

    div-float/2addr v2, p1

    sub-float p1, v0, v2

    invoke-virtual {v1, v3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->g:Ljava/nio/FloatBuffer;

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$Rectangle;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method
