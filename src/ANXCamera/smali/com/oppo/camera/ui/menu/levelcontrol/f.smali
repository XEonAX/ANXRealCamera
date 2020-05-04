.class public Lcom/oppo/camera/ui/menu/levelcontrol/f;
.super Ljava/lang/Object;
.source "GLProducerRender.java"

# interfaces
.implements Lcom/oppo/camera/gl/l$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/levelcontrol/f$a;,
        Lcom/oppo/camera/ui/menu/levelcontrol/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

.field private c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

.field private d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/levelcontrol/k;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/levelcontrol/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

.field private h:Lcom/oppo/camera/ui/menu/levelcontrol/k;

.field private i:Lcom/oppo/camera/ui/menu/levelcontrol/f$a;

.field private j:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

.field private k:Landroid/view/animation/Interpolator;

.field private l:[F

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->h:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->i:Lcom/oppo/camera/ui/menu/levelcontrol/f$a;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->j:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->k:Landroid/view/animation/Interpolator;

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->l:[F

    iput v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    iput v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->n:F

    iput v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    const/16 v1, 0x1a

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->p:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->q:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->r:I

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->s:Z

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->t:I

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a:Landroid/content/Context;

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

.method static synthetic a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)Lcom/oppo/camera/ui/menu/levelcontrol/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    return-object p0
.end method

.method private a(IF)Z
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g()F

    move-result v1

    add-float/2addr v0, v1

    add-float v1, p2, v0

    sub-float/2addr p2, v0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c(I)F

    move-result p1

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateElementsParam, glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i()F

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e(F)V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j()F

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b(F)V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k()F

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    move v6, v5

    move v9, v6

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l()F

    move-result v2

    invoke-static {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result v3

    neg-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move v9, v2

    move v5, v3

    move v6, v5

    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->p()F

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a(FFFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a()V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g()F

    move-result v0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v2

    add-float v9, v0, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v5

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result v6

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->j()I

    move-result v7

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(I)F

    move-result v8

    const/4 v10, 0x0

    move-object v11, p1

    invoke-virtual/range {v3 .. v11}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(FFFIFFZLcom/oppo/camera/ui/menu/levelcontrol/e;)V

    :goto_2
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v4

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result v5

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->j()I

    move-result v6

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(I)F

    move-result v7

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v8

    const/4 v9, 0x1

    move-object v10, p1

    invoke-virtual/range {v2 .. v10}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(FFFIFFZLcom/oppo/camera/ui/menu/levelcontrol/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v4

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result v5

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->j()I

    move-result v6

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(I)F

    move-result v7

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v8

    const/4 v9, 0x0

    move-object v10, p1

    invoke-virtual/range {v2 .. v10}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(FFFIFFZLcom/oppo/camera/ui/menu/levelcontrol/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->k()F

    move-result v2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->l()F

    move-result v3

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->m()F

    move-result v4

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->n()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static/range {v2 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFFFFF)V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    return-void
.end method

.method private c(I)F
    .locals 1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g()F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->q:I

    return-void
.end method

.method public a(FFILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->n:F

    iput p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    if-gtz p3, :cond_0

    const-string p1, "GLProducerRender"

    const-string p2, "startYAngleAnim, durationFrame must > 0!"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_0
    iput p3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->p:I

    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->k:Landroid/view/animation/Interpolator;

    :cond_1
    if-eqz p5, :cond_2

    iput-object p5, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->j:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->t:I

    return-void
.end method

.method public a(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewSizeChanged, Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-static {v0, p2, p1}, Lcom/oppo/camera/ui/preview/a/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;II)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->r:I

    :cond_1
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;-><init>(I)V

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createRingTexture, length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLProducerRender"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/polarr/renderer/entities/DrawingItem;

    iput-object p2, p1, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/l;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/f$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/f$1;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/f;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/l;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/e;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTextures, glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->t:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(F)V

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v1, v1, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v2, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    const/4 v3, -0x1

    if-nez v1, :cond_2

    new-instance p2, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-direct {p2, v0, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/k;-><init>(III)V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->h()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a()V

    :cond_1
    iget-boolean p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->s:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->f()I

    move-result v1

    if-eq v2, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    new-instance v1, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-direct {v1, v0, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/k;-><init>(III)V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->h()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a()V

    :cond_4
    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->s:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Ljava/util/List;)V

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->i:Lcom/oppo/camera/ui/menu/levelcontrol/f$a;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCylinderSideTexs, bitmaps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    new-instance v1, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-direct {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;-><init>()V

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    const-string v0, "GLProducerRender"

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result p1

    if-gtz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->r:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame, mDisableFrameId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->r:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->r:I

    return-void

    :cond_1
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->l:[F

    aget v2, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    const/4 v5, 0x0

    aget p1, p1, v5

    invoke-static {v2, v3, v4, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b()V

    const/high16 v2, -0x3ee00000    # -10.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b()V

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->k:Landroid/view/animation/Interpolator;

    iget v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->q:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->q:I

    int-to-float v6, v6

    iget v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->p:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-interface {v4, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    iget-object v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->k:Landroid/view/animation/Interpolator;

    iget v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->q:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->p:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v4, v6

    iget v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    sub-float v2, v4, v2

    add-float/2addr v6, v2

    iput v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->j:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    const-string v6, "onDrawFrame, mScrollAnimListener == null !"

    if-eqz v2, :cond_2

    iget v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    invoke-interface {v2, v7}, Lcom/oppo/camera/ui/menu/levelcontrol/f$b;->a(F)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_6

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_6

    :cond_4
    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->n:F

    iput v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    iput v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    iput v5, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->q:I

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->j:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    if-eqz v2, :cond_5

    iget v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    invoke-interface {v2, v4}, Lcom/oppo/camera/ui/menu/levelcontrol/f$b;->b(F)V

    goto :goto_1

    :cond_5
    invoke-static {v0, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFFF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->s:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->i:Lcom/oppo/camera/ui/menu/levelcontrol/f$a;

    invoke-interface {v2, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/f$a;->a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    move v2, v5

    :goto_2
    iget-object v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_9

    iget v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    invoke-direct {p0, v2, v7}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(IF)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    invoke-virtual {v7}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b()I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b()V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v6

    mul-float/2addr v7, v4

    invoke-static {v3, v7, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFF)V

    iget-object v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    iget-object v8, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->b(II)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->c()V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->c()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_b

    :goto_4
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_a

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v6

    mul-float/2addr p1, v4

    invoke-static {v3, p1, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFF)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v1

    invoke-virtual {p1, v1, v5}, Lcom/oppo/camera/ui/menu/levelcontrol/i;->a(II)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->c()V

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawFrame, mRingTexs["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] not init."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->c()V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    return-void

    :cond_c
    :goto_6
    const-string p1, "onDrawFrame, vertex not ready"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    invoke-virtual {p1, p2, p3}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(II)V

    int-to-float p1, p3

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->d(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    const-string p2, "GLProducerRender"

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    goto :goto_0

    :cond_0
    const-string p1, "onSurfaceChanged, mGLModelParam has not init."

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a(FFFFFFFFF)V

    const/4 p1, 0x0

    const/high16 p3, 0x40c00000    # 6.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p1, p3, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->b(FFF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->s:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSurfaceChanged, cost: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/h;->a()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->i:Lcom/oppo/camera/ui/menu/levelcontrol/f$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f$a;->a()V

    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/c;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->c:Lcom/oppo/camera/ui/menu/levelcontrol/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated, cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLProducerRender"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([F)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->l:[F

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->m:F

    return v0
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    const-string v1, "GLProducerRender"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->o:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(IILjava/util/List;)Z

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c(II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d(II)V

    goto :goto_0

    :cond_3
    const-string p1, "onDrawFrame, drawOesTexture."

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "onDrawFrame, vertex not ready"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b:Lcom/oppo/camera/ui/menu/levelcontrol/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->d:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 4

    const-string v0, "GLProducerRender"

    const-string v1, "releaseResource"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v0

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->f()I

    move-result v3

    invoke-static {v0, v2, v3}, Lco/polarr/renderer/PolarrRender;->clearTextureHelper(III)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->h:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f;->h:Lcom/oppo/camera/ui/menu/levelcontrol/k;

    :cond_5
    return-void
.end method
