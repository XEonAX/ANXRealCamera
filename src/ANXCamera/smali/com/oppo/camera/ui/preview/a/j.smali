.class public Lcom/oppo/camera/ui/preview/a/j;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/a/i;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:Landroid/content/Context;

.field private g:Lcom/oppo/camera/gl/GLRootView;

.field private h:Lcom/oppo/camera/ui/preview/a/i$a;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Lcom/oppo/camera/ui/preview/a/p;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/camera/ui/preview/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/oppo/camera/ui/preview/a/n$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/j;->a:Z

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/j;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/j;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->f:Landroid/content/Context;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/oppo/camera/ui/preview/a/j$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/j$1;-><init>(Lcom/oppo/camera/ui/preview/a/j;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->l:Lcom/oppo/camera/ui/preview/a/n$b;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->f:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->m()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/preview/a/o;->a(Landroid/content/Context;I)Lcom/oppo/camera/ui/preview/a/n;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/j;->l:Lcom/oppo/camera/ui/preview/a/n$b;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$b;)V

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/oppo/camera/ui/preview/a/p;

    invoke-direct {p1}, Lcom/oppo/camera/ui/preview/a/p;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v0, v1}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    return-object p0
.end method

.method private a(Lcom/oppo/camera/gl/h;IIII[F)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object v2

    move-object v1, p1

    move-object v3, p6

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    return-void
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v5

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->f()I

    move-result v6

    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    const/4 p3, 0x0

    int-to-float v0, v6

    invoke-interface {p1, p3, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, p3, v0}, Lcom/oppo/camera/gl/h;->a(FFF)V

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    invoke-virtual {p3, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    :goto_0
    move-object v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oppo/camera/gl/h;II[F)Z
    .locals 1

    iget-object p4, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p4}, Lcom/oppo/camera/ui/preview/a/n;->r()Lcom/oppo/camera/ui/preview/a/n$a;

    move-result-object p4

    iput-object p1, p4, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    iput p2, p4, Lcom/oppo/camera/ui/preview/a/n$a;->d:I

    iput p3, p4, Lcom/oppo/camera/ui/preview/a/n$a;->e:I

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, p4}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p7, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_0
    return p2
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p7, p8}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_1
    return p2
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->r()Lcom/oppo/camera/ui/preview/a/n$a;

    move-result-object v0

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->r()Lcom/oppo/camera/ui/preview/a/n$a;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/n;->r()Lcom/oppo/camera/ui/preview/a/n$a;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p2

    iput-object p2, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iput p4, p1, Lcom/oppo/camera/ui/preview/a/n$a;->f:I

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->r()Lcom/oppo/camera/ui/preview/a/n$a;

    move-result-object v0

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p4}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/n;->g()Lcom/oppo/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/n$a;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z
    .locals 7

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v5

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->f()I

    move-result v6

    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    int-to-float p3, v6

    const/4 v0, 0x0

    invoke-interface {p1, v0, p3}, Lcom/oppo/camera/gl/h;->a(FF)V

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p1, p3, v0, p3}, Lcom/oppo/camera/gl/h;->a(FFF)V

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    invoke-virtual {p3, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    :goto_0
    move-object v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a/j;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    return-object p0
.end method

.method private b(Lcom/oppo/camera/gl/h;IIII[F)Z
    .locals 7

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;II[F)Z

    move-result p6

    if-eqz p6, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->f(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_0
    return p6
.end method

.method private b(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_0
    return p2
.end method

.method private b(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v0, p2

    move-object/from16 v2, p7

    iget-object v3, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v3, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    invoke-direct {p0, v4}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move/from16 v3, p8

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z

    move-result v3

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-direct {p0, p1, p2, v2, v10}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v6, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    iget-object v6, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_2
    :goto_1
    if-nez v11, :cond_4

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :cond_4
    :goto_2
    return v8
.end method

.method private c(II)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/a/j;->d(II)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/j;->p()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/j;->o()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateTextureRes, cost time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewEffectProcessImpl"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/oppo/camera/gl/h;IIII[F)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object v2

    move-object v1, p1

    move-object v3, p6

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    return-void
.end method

.method private c(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 13

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v9, 0x0

    move-object v2, p2

    move-object/from16 v10, p7

    invoke-direct {p0, p1, p2, v10, v9}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v12, :cond_3

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    :goto_1
    return v8
.end method

.method private c(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z
    .locals 14

    move-object v7, p0

    move-object v6, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p7

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, p8

    invoke-direct {p0, p1, v2, v5, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z

    move-result v0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-direct {p0, p1, v2, v5, v10}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z

    move-result v11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v13, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_1

    :cond_1
    if-eqz v11, :cond_2

    iget-object v13, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    iget-object v13, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_3
    :goto_1
    if-nez v12, :cond_5

    if-nez v11, :cond_5

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move v8, v9

    :cond_5
    :goto_2
    return v8
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/a/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/a/j;->a:Z

    return p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/p;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    return-object p0
.end method

.method private d(II)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/preview/a/n;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lcom/oppo/camera/gl/h;IIII[F)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object v2

    move-object v1, p1

    move-object v3, p6

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    return-void
.end method

.method private d(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 14

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v9, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    invoke-direct {p0, p1, v10, v11, v9}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z

    move-result v12

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result v13

    const/4 v5, 0x0

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v13, :cond_1

    iget-object v11, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_1
    if-eqz v12, :cond_2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_2
    :goto_0
    if-nez v10, :cond_4

    if-nez v13, :cond_4

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    :cond_4
    :goto_1
    return v8
.end method

.method private d(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z
    .locals 12

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object v2, p2

    move-object/from16 v5, p7

    move/from16 v0, p8

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_0
    move-object v2, p2

    move-object/from16 v5, p7

    move v9, v8

    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v9

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v11, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    iget-object v11, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_2
    :goto_1
    if-nez v10, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v8, 0x1

    :cond_4
    return v8
.end method

.method private e(Lcom/oppo/camera/gl/h;IIII[F)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object v2

    move-object v1, p1

    move-object v3, p6

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    return-void
.end method

.method private e(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 11

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result v8

    const/4 v5, 0x0

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    iget-object v10, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v9, :cond_3

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private e(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z
    .locals 11

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    iget-object v1, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    move-object v2, p2

    move-object/from16 v8, p7

    move/from16 v0, p8

    invoke-direct {p0, p1, p2, v8, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    iget-object v8, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v10, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/a/j;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/j;->n()Z

    move-result p0

    return p0
.end method

.method private f(Lcom/oppo/camera/gl/h;IIII[F)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object v2

    move-object v1, p1

    move-object v3, p6

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    return-void
.end method

.method private f(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_0
    return p2
.end method

.method private f(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z
    .locals 12

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    iget-object v1, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    move-object v8, p2

    move-object/from16 v9, p7

    move/from16 v0, p8

    invoke-direct {p0, p1, p2, v9, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FI)Z

    move-result v10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v10

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result v11

    move v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZZ)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_1

    iget-object v9, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    iget-object v9, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_2
    :goto_0
    if-nez v8, :cond_4

    if-nez v11, :cond_4

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private g(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z
    .locals 13

    move-object v7, p0

    move-object v6, p1

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v9, 0x0

    move-object v2, p2

    move-object/from16 v5, p7

    invoke-direct {p0, p1, p2, v5, v9}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;[FZ)Z

    move-result v10

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;ZZ[F)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v12, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    iget-object v12, v7, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v11, :cond_3

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    :goto_1
    return v8
.end method

.method private i(I)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private j(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLRootView;->getSurfaceState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/a/j$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/preview/a/j$5;-><init>(Lcom/oppo/camera/ui/preview/a/j;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANIMOJI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/a/j$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/j$6;-><init>(Lcom/oppo/camera/ui/preview/a/j;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/a/j$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/j$7;-><init>(Lcom/oppo/camera/ui/preview/a/j;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a/j;->j(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/a/n;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/j;->j(I)V

    return-void
.end method

.method public a(J)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/preview/a/n;->a(J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->i:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/preview/a/n;->a(Landroid/util/Size;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/GLRootView;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/gl/GLRootView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/p;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/p;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/j;->a:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([F)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    return-void
.end method

.method public a([I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/p;->a([I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;IIII)Z
    .locals 8

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->f(Lcom/oppo/camera/gl/h;IIII[F)V

    return v7

    :cond_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;IIII[F)V

    return v7

    :cond_1
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;IIII[F)V

    return v7

    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;IIII[F)V

    return v7

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIIII)Z
    .locals 18

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v0

    iget-object v1, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-object v4, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v4, v0}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v4, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iget-object v5, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v5, v0}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v5, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    iget-object v6, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v6, v0}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v9, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v6, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    return v3

    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    iget-object v6, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/gl/h;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_7
    if-eqz v1, :cond_8

    if-nez v2, :cond_8

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_8
    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    if-eqz v5, :cond_9

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_9
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    if-nez v5, :cond_a

    if-nez v4, :cond_a

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->g(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_a
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    if-eqz v5, :cond_b

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_b
    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    if-nez v5, :cond_c

    if-eqz v4, :cond_c

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z

    move-result v3

    goto/16 :goto_6

    :cond_c
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v5, :cond_d

    if-eqz v4, :cond_d

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z

    move-result v3

    goto/16 :goto_6

    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    if-nez v5, :cond_e

    if-nez v4, :cond_e

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_e
    if-nez v1, :cond_f

    if-eqz v2, :cond_f

    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_f
    if-nez v1, :cond_10

    if-nez v2, :cond_10

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/preview/a/j;->f(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[F)Z

    move-result v3

    goto/16 :goto_6

    :cond_10
    if-nez v1, :cond_11

    if-nez v2, :cond_11

    if-nez v5, :cond_11

    if-eqz v4, :cond_11

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z

    move-result v3

    goto/16 :goto_6

    :cond_11
    if-nez v1, :cond_12

    if-eqz v2, :cond_12

    if-nez v5, :cond_12

    if-eqz v4, :cond_12

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z

    move-result v3

    goto :goto_6

    :cond_12
    if-nez v1, :cond_13

    if-nez v2, :cond_13

    if-eqz v5, :cond_13

    if-eqz v4, :cond_13

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z

    move-result v3

    goto :goto_6

    :cond_13
    if-nez v1, :cond_14

    if-eqz v2, :cond_14

    if-eqz v5, :cond_14

    if-eqz v4, :cond_14

    iget-object v7, v9, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/ui/preview/a/j;->f(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIII[FI)Z

    move-result v3

    :cond_14
    :goto_6
    if-nez v3, :cond_15

    iget-object v13, v9, Lcom/oppo/camera/ui/preview/a/j;->d:[F

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-interface/range {v11 .. v17}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    :cond_15
    return v10
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;)Z
    .locals 11

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v6

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v7

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v9}, Lcom/oppo/camera/ui/preview/a/j;->i(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    goto/16 :goto_0

    :cond_0
    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->e:[F

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/n;->h()Lcom/oppo/camera/gl/s;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;[F)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    :goto_0
    return v4
.end method

.method public a([BII)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2, p3}, Lcom/oppo/camera/ui/preview/a/n;->b([BII)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a([BIII)Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, p4}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/camera/ui/preview/a/n;->a([BII)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->m()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/p;->b(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/j;->b:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/a/j;->c:I

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/a/j;->c(II)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/p;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oppo/camera/gl/h;IIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/oppo/camera/sticker/data/StickerItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->n()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/preview/a/j;->b:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/preview/a/j;->c(II)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/j;->j(I)V

    return-void
.end method

.method public d(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->m()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/j;->f:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/ui/preview/a/j$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/oppo/camera/ui/preview/a/j$2;-><init>(Lcom/oppo/camera/ui/preview/a/j;II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->i()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->o()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/p;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->i()Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->f()V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/a/n;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->d()V

    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/a/n;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/a/j$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/j$3;-><init>(Lcom/oppo/camera/ui/preview/a/j;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/p;->a(I)V

    :cond_0
    return-void
.end method

.method public h(I)Lcom/oppo/camera/ui/preview/a/n;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/a/n;

    return-object p1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->g:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/a/j$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/j$4;-><init>(Lcom/oppo/camera/ui/preview/a/j;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public i()Lcom/oppo/camera/sticker/data/StickerItem;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "pref_camera_blur_mode_key"

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    const-string v2, "pref_filter_process_key"

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    const-string v2, "pref_sticker_process_key"

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x8

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    const-string v2, "pref_omoji_process_key"

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 v0, v1, 0x10

    move v1, v0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->h:Lcom/oppo/camera/ui/preview/a/i$a;

    const-string v2, "func_face_slender_process"

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    return v1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j;->j:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/j;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0
.end method
