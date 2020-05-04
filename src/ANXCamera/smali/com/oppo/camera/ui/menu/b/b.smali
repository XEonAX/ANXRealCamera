.class public Lcom/oppo/camera/ui/menu/b/b;
.super Ljava/lang/Object;
.source "HeadlineDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/b/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/nio/FloatBuffer;

.field private n:Ljava/nio/FloatBuffer;

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->d:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/b/b;->f:Landroid/content/Context;

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->i:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->j:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->k:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->l:I

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/b/b;->m:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/b/b;->n:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->o:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->p:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->q:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->r:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->s:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->t:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->u:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->v:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->w:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->x:F

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/b;->f:Landroid/content/Context;

    iput p2, p0, Lcom/oppo/camera/ui/menu/b/b;->q:F

    iput p3, p0, Lcom/oppo/camera/ui/menu/b/b;->r:F

    return-void
.end method

.method private a(DFFI)Lcom/oppo/camera/ui/menu/b/b$a;
    .locals 27

    move/from16 v0, p4

    move/from16 v1, p5

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v3, v2, v1

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v1, v4

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v1, 0x3

    new-array v2, v2, [F

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    cmpg-double v14, v14, v4

    if-gez v14, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    add-float/2addr v9, v3

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    add-int/lit8 v16, v10, 0x1

    move-object/from16 p5, v1

    move/from16 v18, v9

    move-wide/from16 v0, p1

    neg-double v8, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v0, v8, v19

    double-to-float v0, v0

    aput v0, v2, v10

    add-int/lit8 v0, v16, 0x1

    const/4 v1, 0x0

    aput v1, v2, v16

    add-int/lit8 v1, v0, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move v10, v3

    move-wide/from16 v21, v4

    mul-double v3, v8, v19

    double-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v11, 0x1

    div-double v3, v12, v6

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v3, v19, v3

    double-to-float v3, v3

    aput v3, p5, v11

    add-int/lit8 v4, v0, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p5, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move-wide/from16 v25, v6

    mul-double v5, v8, v23

    double-to-float v5, v5

    aput v5, v2, v1

    add-int/lit8 v1, v0, 0x1

    aput p3, v2, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v8

    double-to-float v5, v5

    aput v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    div-double v5, v14, v25

    sub-double v5, v19, v5

    double-to-float v5, v5

    aput v5, p5, v4

    add-int/lit8 v4, v1, 0x1

    const/4 v6, 0x0

    aput v6, p5, v1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v6, v8, v19

    double-to-float v6, v6

    aput v6, v2, v0

    add-int/lit8 v0, v1, 0x1

    aput p3, v2, v1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v2, v0

    add-int/lit8 v0, v4, 0x1

    aput v3, p5, v4

    add-int/lit8 v4, v0, 0x1

    const/4 v6, 0x0

    aput v6, p5, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v19, v12

    mul-double v11, v8, v16

    double-to-float v11, v11

    aput v11, v2, v1

    add-int/lit8 v1, v0, 0x1

    aput v6, v2, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v6, v11

    aput v6, v2, v1

    add-int/lit8 v1, v4, 0x1

    aput v3, p5, v4

    add-int/lit8 v3, v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p5, v1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v4, v11

    aput v4, v2, v0

    add-int/lit8 v0, v1, 0x1

    const/4 v4, 0x0

    aput v4, v2, v1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v4, v11

    aput v4, v2, v0

    add-int/lit8 v0, v3, 0x1

    aput v5, p5, v3

    add-int/lit8 v3, v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p5, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v4, v6

    aput v4, v2, v1

    add-int/lit8 v1, v0, 0x1

    aput p3, v2, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v8, v6

    double-to-float v4, v8

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    aput v5, p5, v3

    add-int/lit8 v11, v1, 0x1

    const/4 v3, 0x0

    aput v3, p5, v1

    move-object/from16 v1, p5

    move v3, v10

    move/from16 v9, v18

    move-wide/from16 v4, v21

    move-wide/from16 v6, v25

    move v10, v0

    goto/16 :goto_0

    :cond_0
    move-object/from16 p5, v1

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v2, p5

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/oppo/camera/ui/menu/b/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oppo/camera/ui/menu/b/b$a;-><init>(Lcom/oppo/camera/ui/menu/b/b$1;)V

    iput-object v0, v1, Lcom/oppo/camera/ui/menu/b/b$a;->a:Ljava/nio/FloatBuffer;

    iput-object v3, v1, Lcom/oppo/camera/ui/menu/b/b$a;->b:Ljava/nio/FloatBuffer;

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, "HeadlineDrawer"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->q:F

    float-to-double v2, v0

    iget v4, p0, Lcom/oppo/camera/ui/menu/b/b;->r:F

    const/high16 v5, 0x43870000    # 270.0f

    const/16 v6, 0x14

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/ui/menu/b/b;->a(DFFI)Lcom/oppo/camera/ui/menu/b/b$a;

    move-result-object v0

    iget-object v1, v0, Lcom/oppo/camera/ui/menu/b/b$a;->a:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/b/b;->m:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/b;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/oppo/camera/ui/menu/b/b;->o:I

    iget-object v0, v0, Lcom/oppo/camera/ui/menu/b/b$a;->b:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/b/b;->n:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "headline_vertex.sh"

    invoke-static {v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "headline_frag.sh"

    invoke-static {v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->c:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->b:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "aTexCoor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->d:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->e:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uPreviousStart"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->g:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uPreviousEnd"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->h:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uPreviousRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->i:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uNextStart"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->j:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uNextEnd"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->k:I

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    const-string v1, "uNextRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/b;->l:I

    return-void
.end method

.method public a(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineDrawer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/b/b;->p:F

    return-void
.end method

.method public a(FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviousTabLocation, start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineDrawer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/b/b;->s:F

    iput p2, p0, Lcom/oppo/camera/ui/menu/b/b;->t:F

    return-void
.end method

.method public a(I[F)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->a:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->e:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->p:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->g:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->s:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->h:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->t:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->i:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->u:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->j:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->v:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->k:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->w:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->l:I

    iget v2, v0, Lcom/oppo/camera/ui/menu/b/b;->x:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p2

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v4, v0, Lcom/oppo/camera/ui/menu/b/b;->c:I

    iget-object v9, v0, Lcom/oppo/camera/ui/menu/b/b;->m:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v10, v0, Lcom/oppo/camera/ui/menu/b/b;->d:I

    iget-object v15, v0, Lcom/oppo/camera/ui/menu/b/b;->n:Ljava/nio/FloatBuffer;

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v3, p1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/b/b;->o:I

    const/4 v3, 0x4

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public b(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviousAnimationRatio, ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineDrawer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/b/b;->u:F

    return-void
.end method

.method public b(FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNextTabLocation, start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineDrawer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/b/b;->v:F

    iput p2, p0, Lcom/oppo/camera/ui/menu/b/b;->w:F

    return-void
.end method

.method public c(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNextAnimationRatio, ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineDrawer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/b/b;->x:F

    return-void
.end method
