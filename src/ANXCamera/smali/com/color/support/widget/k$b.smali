.class Lcom/color/support/widget/k$b;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/k$b$a;,
        Lcom/color/support/widget/k$b$b;
    }
.end annotation


# static fields
.field private static a:F = 1.0f


# instance fields
.field private b:Lcom/color/support/widget/k$b$b;

.field private c:Lcom/color/support/widget/k$b$b;

.field private d:Lcom/color/support/widget/k$b$b;

.field private e:Lcom/color/support/widget/k$b$a;

.field private f:Lcom/color/support/widget/k$b$a;

.field private g:Lcom/color/support/widget/k$b$a;

.field private h:F

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/support/widget/k$b$a;

    invoke-direct {v0}, Lcom/color/support/widget/k$b$a;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    new-instance v0, Lcom/color/support/widget/k$b$a;

    invoke-direct {v0}, Lcom/color/support/widget/k$b$a;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/k$b;->f:Lcom/color/support/widget/k$b$a;

    new-instance v0, Lcom/color/support/widget/k$b$a;

    invoke-direct {v0}, Lcom/color/support/widget/k$b$a;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    const v0, 0x3f87ae14    # 1.06f

    iput v0, p0, Lcom/color/support/widget/k$b;->h:F

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/color/support/widget/k$b;->i:D

    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lcom/color/support/widget/k$b;->j:D

    const/4 v0, 0x1

    iput v0, p0, Lcom/color/support/widget/k$b;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/k$b;->r:Z

    new-instance v0, Lcom/color/support/widget/k$b$b;

    iget v1, p0, Lcom/color/support/widget/k$b;->h:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/support/widget/k$b$b;-><init>(DD)V

    iput-object v0, p0, Lcom/color/support/widget/k$b;->c:Lcom/color/support/widget/k$b$b;

    new-instance v0, Lcom/color/support/widget/k$b$b;

    const-wide v1, 0x40286147a0000000L    # 12.1899995803833

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/support/widget/k$b$b;-><init>(DD)V

    iput-object v0, p0, Lcom/color/support/widget/k$b;->d:Lcom/color/support/widget/k$b$b;

    iget-object v0, p0, Lcom/color/support/widget/k$b;->c:Lcom/color/support/widget/k$b$b;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/k$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/color/support/widget/k$b;->p:J

    return-wide v0
.end method

.method static synthetic b(Lcom/color/support/widget/k$b;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/k$b;->n:I

    return p0
.end method


# virtual methods
.method a()D
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v0, v0, Lcom/color/support/widget/k$b$a;->a:D

    return-wide v0
.end method

.method a(Lcom/color/support/widget/k$b$a;)D
    .locals 4

    iget-wide v0, p0, Lcom/color/support/widget/k$b;->l:D

    iget-wide v2, p1, Lcom/color/support/widget/k$b$a;->a:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(D)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v0, v0, Lcom/color/support/widget/k$b$a;->b:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iput-wide p1, v0, Lcom/color/support/widget/k$b$a;->b:D

    return-void
.end method

.method a(DZ)V
    .locals 3

    iput-wide p1, p0, Lcom/color/support/widget/k$b;->k:D

    iget-boolean v0, p0, Lcom/color/support/widget/k$b;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/k$b;->f:Lcom/color/support/widget/k$b$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/color/support/widget/k$b$a;->a:D

    iget-object v0, p0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    iput-wide v1, v0, Lcom/color/support/widget/k$b$a;->a:D

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iput-wide p1, v0, Lcom/color/support/widget/k$b$a;->a:D

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/k$b;->d()V

    :cond_1
    return-void
.end method

.method a(F)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget v1, p0, Lcom/color/support/widget/k$b;->m:I

    iget v2, p0, Lcom/color/support/widget/k$b;->o:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v1, p1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/color/support/widget/k$b$a;->a:D

    return-void
.end method

.method a(II)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/color/support/widget/k$b;->q:I

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/color/support/widget/k$b;->a:F

    iget-object v1, p0, Lcom/color/support/widget/k$b;->c:Lcom/color/support/widget/k$b$b;

    iget v2, p0, Lcom/color/support/widget/k$b;->h:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/color/support/widget/k$b$b;->a(D)V

    iget-object v1, p0, Lcom/color/support/widget/k$b;->c:Lcom/color/support/widget/k$b$b;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/color/support/widget/k$b$b;->b(D)V

    iget-object v1, p0, Lcom/color/support/widget/k$b;->c:Lcom/color/support/widget/k$b$b;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$b;)V

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/color/support/widget/k$b;->a(DZ)V

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/k$b;->a(D)V

    return-void
.end method

.method a(Lcom/color/support/widget/k$b$b;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springConfig is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(III)Z
    .locals 3

    int-to-double v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/k$b;->a(DZ)V

    if-gt p1, p3, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/color/support/widget/k$b$b;

    iget p2, p0, Lcom/color/support/widget/k$b;->h:F

    float-to-double p2, p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/color/support/widget/k$b$b;-><init>(DD)V

    invoke-virtual {p0, p1}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$b;)V

    return v2

    :cond_1
    :goto_0
    if-le p1, p3, :cond_2

    int-to-double p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/k$b;->b(D)V

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/k$b;->b(D)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/k$b;->s:Z

    iget-object p2, p0, Lcom/color/support/widget/k$b;->d:Lcom/color/support/widget/k$b$b;

    const-wide v0, 0x40286147a0000000L    # 12.1899995803833

    invoke-virtual {p2, v0, v1}, Lcom/color/support/widget/k$b$b;->a(D)V

    iget-object p2, p0, Lcom/color/support/widget/k$b;->d:Lcom/color/support/widget/k$b$b;

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    invoke-virtual {p2, v0, v1}, Lcom/color/support/widget/k$b$b;->b(D)V

    iget-object p2, p0, Lcom/color/support/widget/k$b;->d:Lcom/color/support/widget/k$b$b;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$b;)V

    return p1
.end method

.method b()D
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v0, v0, Lcom/color/support/widget/k$b$a;->b:D

    return-wide v0
.end method

.method b(D)V
    .locals 2

    iget-wide v0, p0, Lcom/color/support/widget/k$b;->l:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/k$b;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/color/support/widget/k$b;->k:D

    iput-wide p1, p0, Lcom/color/support/widget/k$b;->l:D

    return-void
.end method

.method b(III)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/k$b;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/k$b;->o:I

    iput p3, p0, Lcom/color/support/widget/k$b;->n:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/color/support/widget/k$b;->p:J

    iget-object p1, p0, Lcom/color/support/widget/k$b;->c:Lcom/color/support/widget/k$b$b;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$b;)V

    return-void
.end method

.method c()D
    .locals 2

    iget-wide v0, p0, Lcom/color/support/widget/k$b;->l:D

    return-wide v0
.end method

.method c(III)V
    .locals 2

    iget-object p2, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    int-to-double v0, p1

    iput-wide v0, p2, Lcom/color/support/widget/k$b$a;->a:D

    iget-object p1, p0, Lcom/color/support/widget/k$b;->f:Lcom/color/support/widget/k$b$a;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/color/support/widget/k$b$a;->a:D

    iput-wide p2, p1, Lcom/color/support/widget/k$b$a;->b:D

    iget-object p1, p0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    iput-wide p2, p1, Lcom/color/support/widget/k$b$a;->a:D

    iput-wide p2, p1, Lcom/color/support/widget/k$b$a;->b:D

    return-void
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v0, v0, Lcom/color/support/widget/k$b$a;->a:D

    iput-wide v0, p0, Lcom/color/support/widget/k$b;->l:D

    iget-object v0, p0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    iget-object v1, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v1, v1, Lcom/color/support/widget/k$b$a;->a:D

    iput-wide v1, v0, Lcom/color/support/widget/k$b$a;->a:D

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/color/support/widget/k$b$a;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/k$b;->s:Z

    return-void
.end method

.method e()Z
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v0, v0, Lcom/color/support/widget/k$b$a;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/color/support/widget/k$b;->i:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$a;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/color/support/widget/k$b;->j:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v0, v0, Lcom/color/support/widget/k$b$b;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()Z
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/k$b;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v3, v1, Lcom/color/support/widget/k$b$a;->a:D

    iget-object v1, v0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v5, v1, Lcom/color/support/widget/k$b$a;->b:D

    iget-object v1, v0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    iget-wide v7, v1, Lcom/color/support/widget/k$b$a;->a:D

    iget-object v1, v0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    iget-wide v9, v1, Lcom/color/support/widget/k$b$a;->b:D

    iget-boolean v1, v0, Lcom/color/support/widget/k$b;->s:Z

    const/4 v9, 0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_2

    iget v1, v0, Lcom/color/support/widget/k$b;->q:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    sget v1, Lcom/color/support/widget/k$b;->a:F

    const v2, 0x3ca3d70b    # 0.020000001f

    add-float/2addr v1, v2

    sput v1, Lcom/color/support/widget/k$b;->a:F

    iget-object v1, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v12, v1, Lcom/color/support/widget/k$b$b;->a:D

    const-wide v14, 0x3f947ae160000000L    # 0.020000001415610313

    add-double/2addr v12, v14

    iput-wide v12, v1, Lcom/color/support/widget/k$b$b;->a:D

    goto :goto_0

    :cond_1
    sget v1, Lcom/color/support/widget/k$b;->a:F

    const v2, 0x3f19999a    # 0.6f

    sub-float v12, v1, v2

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    sub-float/2addr v1, v12

    sput v1, Lcom/color/support/widget/k$b;->a:F

    iget-object v1, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v14, v1, Lcom/color/support/widget/k$b$b;->a:D

    sget v12, Lcom/color/support/widget/k$b;->a:F

    sub-float/2addr v12, v2

    div-float/2addr v12, v13

    float-to-double v12, v12

    sub-double/2addr v14, v12

    iput-wide v14, v1, Lcom/color/support/widget/k$b$b;->a:D

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/k$b;->a(Lcom/color/support/widget/k$b$a;)D

    move-result-wide v12

    iget-boolean v1, v0, Lcom/color/support/widget/k$b;->t:Z

    if-nez v1, :cond_3

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpg-double v1, v12, v14

    if-gez v1, :cond_3

    iget-object v1, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v12, v1, Lcom/color/support/widget/k$b$b;->b:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    add-double/2addr v12, v14

    iput-wide v12, v1, Lcom/color/support/widget/k$b$b;->b:D

    iput-boolean v9, v0, Lcom/color/support/widget/k$b;->t:Z

    goto :goto_0

    :cond_3
    cmpg-double v1, v12, v10

    if-gez v1, :cond_4

    iget-object v1, v0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iget-wide v3, v0, Lcom/color/support/widget/k$b;->l:D

    iput-wide v3, v1, Lcom/color/support/widget/k$b$a;->a:D

    iput-boolean v2, v0, Lcom/color/support/widget/k$b;->t:Z

    iput-boolean v2, v0, Lcom/color/support/widget/k$b;->s:Z

    return v2

    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v1, v1, Lcom/color/support/widget/k$b$b;->b:D

    iget-wide v12, v0, Lcom/color/support/widget/k$b;->l:D

    sub-double/2addr v12, v7

    mul-double/2addr v1, v12

    iget-object v7, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v7, v7, Lcom/color/support/widget/k$b$b;->a:D

    iget-object v12, v0, Lcom/color/support/widget/k$b;->f:Lcom/color/support/widget/k$b$a;

    iget-wide v12, v12, Lcom/color/support/widget/k$b$a;->b:D

    mul-double/2addr v7, v12

    sub-double/2addr v1, v7

    const-wide v7, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v12, v5, v7

    div-double/2addr v12, v10

    add-double/2addr v12, v3

    mul-double v14, v1, v7

    div-double/2addr v14, v10

    add-double/2addr v14, v5

    iget-object v9, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v10, v9, Lcom/color/support/widget/k$b$b;->b:D

    iget-wide v7, v0, Lcom/color/support/widget/k$b;->l:D

    sub-double/2addr v7, v12

    mul-double/2addr v10, v7

    iget-object v7, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v7, v7, Lcom/color/support/widget/k$b$b;->a:D

    mul-double/2addr v7, v14

    sub-double/2addr v10, v7

    const-wide v7, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v12, v14, v7

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v12, v12, v16

    add-double/2addr v12, v3

    mul-double v18, v10, v7

    div-double v18, v18, v16

    add-double v18, v5, v18

    iget-object v7, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v7, v7, Lcom/color/support/widget/k$b$b;->b:D

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/color/support/widget/k$b;->l:D

    sub-double/2addr v1, v12

    mul-double/2addr v7, v1

    iget-object v1, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v1, v1, Lcom/color/support/widget/k$b$b;->a:D

    mul-double v1, v1, v18

    sub-double/2addr v7, v1

    const-wide v1, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v12, v18, v1

    add-double/2addr v12, v3

    mul-double v22, v7, v1

    add-double v1, v5, v22

    iget-object v9, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    move-wide/from16 v22, v3

    iget-wide v3, v9, Lcom/color/support/widget/k$b$b;->b:D

    move-wide/from16 v24, v7

    iget-wide v7, v0, Lcom/color/support/widget/k$b;->l:D

    sub-double/2addr v7, v12

    mul-double/2addr v3, v7

    iget-object v7, v0, Lcom/color/support/widget/k$b;->b:Lcom/color/support/widget/k$b$b;

    iget-wide v7, v7, Lcom/color/support/widget/k$b$b;->a:D

    mul-double/2addr v7, v1

    sub-double/2addr v3, v7

    add-double v14, v14, v18

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v7

    add-double/2addr v14, v5

    add-double/2addr v14, v1

    const-wide v16, 0x3fc5604180000000L    # 0.16699999570846558

    mul-double v14, v14, v16

    add-double v10, v10, v24

    mul-double/2addr v10, v7

    add-double v7, v20, v10

    add-double/2addr v7, v3

    mul-double v7, v7, v16

    const-wide v3, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double/2addr v14, v3

    add-double v9, v22, v14

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-object v3, v0, Lcom/color/support/widget/k$b;->g:Lcom/color/support/widget/k$b$a;

    iput-wide v1, v3, Lcom/color/support/widget/k$b$a;->b:D

    iput-wide v12, v3, Lcom/color/support/widget/k$b$a;->a:D

    iget-object v1, v0, Lcom/color/support/widget/k$b;->e:Lcom/color/support/widget/k$b$a;

    iput-wide v5, v1, Lcom/color/support/widget/k$b$a;->b:D

    iput-wide v9, v1, Lcom/color/support/widget/k$b$a;->a:D

    iget v1, v0, Lcom/color/support/widget/k$b;->q:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/color/support/widget/k$b;->q:I

    return v2
.end method
