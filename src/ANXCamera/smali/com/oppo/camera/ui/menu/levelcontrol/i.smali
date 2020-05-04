.class public Lcom/oppo/camera/ui/menu/levelcontrol/i;
.super Ljava/lang/Object;
.source "Ring.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->m:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vertex_tex.sh"

    invoke-static {v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "frag_tex.sh"

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->c:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    const-string v0, "aTexCoor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->d:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->b:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    const-string v0, "uCamera"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->f:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    const-string v0, "uLightLocation"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->g:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    const-string v0, "uMMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(FFFFF)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x6

    iput v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->h:I

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->h:I

    mul-int/lit8 v2, v1, 0x3

    new-array v2, v2, [F

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v4, v8, :cond_0

    add-int/lit8 v9, v5, 0x1

    int-to-float v10, v4

    mul-float v11, v10, p1

    int-to-float v8, v8

    div-float/2addr v11, v8

    add-float v11, p5, v11

    aput v11, v2, v5

    add-int/lit8 v5, v9, 0x1

    sub-float v12, p4, p2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    aput v12, v2, v9

    add-int/lit8 v9, v5, 0x1

    aput p3, v2, v5

    add-int/lit8 v5, v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v10, v14

    div-float/2addr v10, v8

    aput v10, v1, v6

    add-int/lit8 v6, v5, 0x1

    aput v14, v1, v5

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-float v15, v4

    mul-float v16, v15, p1

    div-float v16, v16, v8

    add-float v16, p5, v16

    aput v16, v2, v9

    add-int/lit8 v9, v5, 0x1

    add-float v17, p4, p2

    div-float v17, v17, v13

    aput v17, v2, v5

    add-int/lit8 v5, v9, 0x1

    aput p3, v2, v9

    add-int/lit8 v9, v6, 0x1

    mul-float/2addr v15, v14

    div-float/2addr v15, v8

    aput v15, v1, v6

    add-int/lit8 v6, v9, 0x1

    aput v7, v1, v9

    add-int/lit8 v8, v5, 0x1

    aput v11, v2, v5

    add-int/lit8 v5, v8, 0x1

    aput v17, v2, v8

    add-int/lit8 v8, v5, 0x1

    aput p3, v2, v5

    add-int/lit8 v5, v6, 0x1

    aput v10, v1, v6

    add-int/lit8 v6, v5, 0x1

    aput v7, v1, v5

    add-int/lit8 v5, v8, 0x1

    aput v11, v2, v8

    add-int/lit8 v8, v5, 0x1

    aput v12, v2, v5

    add-int/lit8 v5, v8, 0x1

    aput p3, v2, v8

    add-int/lit8 v8, v6, 0x1

    aput v10, v1, v6

    add-int/lit8 v6, v8, 0x1

    aput v14, v1, v8

    add-int/lit8 v8, v5, 0x1

    aput v16, v2, v5

    add-int/lit8 v5, v8, 0x1

    aput v12, v2, v8

    add-int/lit8 v8, v5, 0x1

    aput p3, v2, v5

    add-int/lit8 v5, v6, 0x1

    aput v15, v1, v6

    add-int/lit8 v6, v5, 0x1

    aput v14, v1, v5

    add-int/lit8 v5, v8, 0x1

    aput v16, v2, v8

    add-int/lit8 v8, v5, 0x1

    aput v17, v2, v5

    add-int/lit8 v5, v8, 0x1

    aput p3, v2, v8

    add-int/lit8 v8, v6, 0x1

    aput v15, v1, v6

    add-int/lit8 v6, v8, 0x1

    aput v7, v1, v8

    goto/16 :goto_0

    :cond_0
    array-length v4, v2

    new-array v4, v4, [F

    move v5, v3

    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_2

    rem-int/lit8 v6, v5, 0x3

    if-ne v6, v8, :cond_1

    aput v7, v4, v5

    goto :goto_2

    :cond_1
    aget v6, v2, v5

    aput v6, v4, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->b:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->d()[F

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->e:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->e()[F

    move-result-object v3

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->f:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->f()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->g:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->g()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v6, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->c:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v12, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->d:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->h:I

    const/4 v2, 0x4

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method
