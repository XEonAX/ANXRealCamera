.class public Lcom/oppo/camera/ui/menu/levelcontrol/c;
.super Ljava/lang/Object;
.source "CylinderSide.java"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lco/polarr/renderer/PolarrRender;

.field private E:[I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:F

.field private v:I

.field private w:Z

.field private x:Ljava/nio/FloatBuffer;

.field private y:Ljava/nio/FloatBuffer;

.field private z:Ljava/util/ArrayList;
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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->e:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->f:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->i:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->k:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->m:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->n:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->o:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->p:I

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->r:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->s:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->t:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->u:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->v:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->w:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->x:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->y:Ljava/nio/FloatBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->A:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->B:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->E:[I

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, v0, p1

    const-wide v3, 0x3faa26a220000000L    # 0.051075998693704605

    const-wide v5, 0x3fcced9160000000L    # 0.22599999606609344

    if-gtz v2, :cond_0

    cmpl-double v2, v5, p1

    if-ltz v2, :cond_0

    sub-double p1, v5, p1

    mul-double/2addr p1, p1

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    :goto_0
    sub-double/2addr v5, p1

    return-wide v5

    :cond_0
    const-wide v7, 0x3fe8c49ba0000000L    # 0.7739999890327454

    cmpg-double v2, v7, p1

    if-gtz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    sub-double p1, v5, v0

    mul-double/2addr p1, p1

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private a(DDDZ)F
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-eqz p7, :cond_0

    sub-double/2addr p1, p3

    div-double/2addr p1, v0

    add-double/2addr p1, p5

    goto :goto_0

    :cond_0
    add-double/2addr p1, p3

    div-double/2addr p1, v0

    sub-double/2addr p1, p5

    :goto_0
    double-to-float p1, p1

    return p1
.end method

.method private a([FI)V
    .locals 2

    aget v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    aput v1, p1, p2

    return-void
.end method

.method private a([FIII)V
    .locals 2

    int-to-float p3, p3

    int-to-float p4, p4

    div-float v0, p3, p4

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    aget v0, p1, p2

    mul-float/2addr v0, p3

    div-float/2addr v0, p4

    add-float/2addr v1, v0

    aput v1, p1, p2

    return-void
.end method

.method private a([FIZZII)V
    .locals 0

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b([FI)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FI)V

    :cond_1
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIII)V

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c([FI)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vertex_tex.sh"

    invoke-static {v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "frag_tex.sh"

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    const-string v0, "aTexCoor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    const-string v0, "uCamera"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->f:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    const-string v0, "uLightLocation"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->g:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    const-string v0, "uMMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->e:I

    return-void
.end method

.method private b([FI)V
    .locals 3

    add-int/lit8 v0, p2, -0x1

    aget v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    aput v1, p1, v0

    aget v0, p1, p2

    sub-float/2addr v2, v0

    aput v2, p1, p2

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vertex_tex.sh"

    invoke-static {v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "frag_oes_tex.sh"

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->r:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->l:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    const-string v0, "aTexCoor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->m:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->k:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    const-string v0, "uCamera"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->o:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    const-string v0, "uLightLocation"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->p:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    const-string v0, "uMMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->n:I

    return-void
.end method

.method private c([FI)V
    .locals 3

    add-int/lit8 v0, p2, -0x1

    aget v1, p1, v0

    aget v2, p1, p2

    aput v2, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    aput v0, p1, p2

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->u:F

    return-void
.end method

.method public a(FFFIFFZLcom/oppo/camera/ui/menu/levelcontrol/e;)V
    .locals 42

    move-object/from16 v8, p0

    move/from16 v0, p4

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v9, 0x43b40000    # 360.0f

    div-float v2, p6, v9

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v10, v1

    invoke-virtual/range {p8 .. p8}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h()Z

    move-result v11

    invoke-virtual/range {p8 .. p8}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result v12

    invoke-virtual/range {p8 .. p8}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f()I

    move-result v14

    mul-float v15, p1, p2

    mul-float v7, p1, p3

    mul-int/lit8 v5, v10, 0x3

    new-array v6, v5, [F

    mul-int/lit8 v1, v10, 0x2

    new-array v3, v1, [F

    int-to-float v0, v0

    div-float v16, v9, v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v17, 0x0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    if-eqz p7, :cond_0

    move-wide/from16 v17, v19

    :cond_0
    move-wide/from16 v21, v17

    move/from16 v0, p5

    move-wide/from16 v23, v21

    move-wide/from16 v21, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    add-float v25, p5, p6

    cmpg-float v25, v0, v25

    if-gez v25, :cond_9

    add-int/lit8 v4, v17, 0x12

    if-ge v4, v5, :cond_9

    move/from16 v26, v10

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    add-float v27, v0, v16

    const/high16 v25, 0x43b40000    # 360.0f

    rem-float v4, v27, v25

    move-wide/from16 p2, v1

    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    if-eqz p7, :cond_2

    cmpl-double v1, v19, v21

    if-nez v1, :cond_1

    sub-float v1, v0, p5

    div-float v1, v1, p6

    float-to-double v1, v1

    invoke-direct {v8, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(D)D

    move-result-wide v23

    :cond_1
    sub-float v1, v27, p5

    div-float v1, v1, p6

    float-to-double v1, v1

    invoke-direct {v8, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(D)D

    move-result-wide v1

    move-wide/from16 v21, v23

    move-wide/from16 v23, v1

    :cond_2
    add-int/lit8 v30, v17, 0x1

    float-to-double v1, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move-object/from16 p8, v3

    mul-double v3, v1, v31

    double-to-float v3, v3

    aput v3, v6, v17

    add-int/lit8 v17, v30, 0x1

    float-to-double v3, v7

    const/16 v31, 0x1

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v33, p2

    move-wide/from16 v35, v1

    move-wide v1, v3

    move-object/from16 v37, p8

    move-wide/from16 v38, v3

    move-wide/from16 v3, v33

    move/from16 v40, v5

    move/from16 p2, v15

    move-object v15, v6

    move-wide/from16 v5, v21

    move/from16 v41, v7

    move/from16 v7, v31

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v15, v30

    add-int/lit8 v30, v17, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v17

    add-int/lit8 v17, v18, 0x1

    sub-float v0, v32, p5

    div-float v31, v0, p6

    move-object/from16 v7, v37

    aput v31, v7, v18

    add-int/lit8 v18, v17, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object v8, v7

    move/from16 v7, v32

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v8, v17

    if-eqz v12, :cond_3

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move/from16 v4, p7

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIZZII)V

    :cond_3
    add-int/lit8 v17, v30, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v30

    add-int/lit8 v30, v17, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v33

    move-wide/from16 v5, v23

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v15, v17

    add-int/lit8 v17, v30, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v30

    add-int/lit8 v30, v18, 0x1

    sub-float v0, v27, p5

    div-float v32, v0, p6

    aput v32, v8, v18

    add-int/lit8 v18, v30, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v8, v30

    if-eqz v12, :cond_4

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move/from16 v4, p7

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIZZII)V

    :cond_4
    add-int/lit8 v30, v17, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v17

    add-int/lit8 v17, v30, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v33

    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v15, v30

    add-int/lit8 v30, v17, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v17

    add-int/lit8 v17, v18, 0x1

    aput v31, v8, v18

    add-int/lit8 v18, v17, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v8, v17

    if-eqz v12, :cond_5

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move/from16 v4, p7

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIZZII)V

    :cond_5
    add-int/lit8 v17, v30, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v30

    add-int/lit8 v30, v17, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v33

    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v15, v17

    add-int/lit8 v17, v30, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v30

    add-int/lit8 v9, v18, 0x1

    aput v31, v8, v18

    add-int/lit8 v10, v9, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v8, v9

    if-eqz v12, :cond_6

    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move/from16 v4, p7

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIZZII)V

    :cond_6
    add-int/lit8 v9, v17, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v17

    add-int/lit8 v17, v9, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v33

    move-wide/from16 v5, v23

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v15, v9

    add-int/lit8 v9, v17, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v17

    add-int/lit8 v17, v10, 0x1

    aput v32, v8, v10

    add-int/lit8 v10, v17, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v8, v17

    if-eqz v12, :cond_7

    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move/from16 v4, p7

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIZZII)V

    :cond_7
    add-int/lit8 v17, v9, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v9

    add-int/lit8 v9, v17, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v33

    move-wide/from16 v5, v23

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v15, v17

    add-int/lit8 v17, v9, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v35, v0

    double-to-float v0, v1

    aput v0, v15, v9

    add-int/lit8 v9, v10, 0x1

    aput v32, v8, v10

    add-int/lit8 v18, v9, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(DDDZ)F

    move-result v0

    aput v0, v8, v9

    if-eqz v12, :cond_8

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move/from16 v4, p7

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a([FIZZII)V

    :cond_8
    move-object v3, v8

    move-object v6, v15

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v0, v27

    move-wide/from16 v1, v33

    move/from16 v5, v40

    move/from16 v7, v41

    move-object/from16 v8, p0

    move/from16 v15, p2

    goto/16 :goto_0

    :cond_9
    move-object v8, v3

    move-object v15, v6

    move/from16 v26, v10

    array-length v0, v15

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_1
    array-length v2, v15

    if-ge v1, v2, :cond_b

    rem-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_2

    :cond_a
    aget v2, v15, v1

    aput v2, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    iget-object v3, v1, Lcom/oppo/camera/ui/menu/levelcontrol/c;->C:Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v3, v15

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, v1, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v3, v15

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v1, Lcom/oppo/camera/ui/menu/levelcontrol/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v1, Lcom/oppo/camera/ui/menu/levelcontrol/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->s:I

    iput p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->t:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->w:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    if-nez v0, :cond_0

    const-string v0, "CylinderSide"

    const-string v1, "initFilterEngine"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lco/polarr/renderer/PolarrRender;

    invoke-direct {v1}, Lco/polarr/renderer/PolarrRender;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lco/polarr/renderer/PolarrRender;->initRender(Landroid/content/res/Resources;IIZI)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const-string p1, "initFilterEngine X"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->w:Z

    return-void
.end method

.method public a(IILjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;)Z"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/PolarrRender;->setInputTexture(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    const/4 v4, 0x1

    const v5, 0x3e676c8b    # 0.226f

    iget v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->u:F

    const/4 v7, 0x0

    move-object v2, p3

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lco/polarr/renderer/PolarrRender;->drawFiltersFrame(Ljava/util/List;IZFFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->d()[F

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->e:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->e()[F

    move-result-object v3

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->f:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->f()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->g:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->g()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v6, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v12, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    if-eqz v0, :cond_0

    const-string v0, "CylinderSide"

    const-string v1, "destroyFilterEngine"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {v1}, Lco/polarr/renderer/PolarrRender;->release()V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const-string v1, "destroyFilterEngine X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b()V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->s:I

    iget v3, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->t:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0xb44

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v2, 0x1

    const/16 v3, 0x302

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result v3

    neg-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v5, v3, v5}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFF)V

    iget v3, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v3, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->d()[F

    move-result-object v5

    invoke-static {v3, v2, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v3, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->e:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->e()[F

    move-result-object v5

    invoke-static {v3, v2, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v3, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->f:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->f()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v3, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->g:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->g()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v6, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v12, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->c()V

    return-void
.end method

.method public d(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFF)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->j:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->k:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->d()[F

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->n:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->e()[F

    move-result-object v3

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->o:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->f()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->p:I

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->g()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v6, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->l:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v12, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->m:I

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->l:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->m:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->l:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->m:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->c()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/c;->D:Lco/polarr/renderer/PolarrRender;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
