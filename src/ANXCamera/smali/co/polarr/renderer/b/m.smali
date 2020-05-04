.class public Lco/polarr/renderer/b/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/b/m$a;,
        Lco/polarr/renderer/b/m$b;,
        Lco/polarr/renderer/b/m$c;
    }
.end annotation


# static fields
.field private static final FIELD_TYPE:I = 0x140b

.field private static final PATCH_RADIUS:I = 0x2


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lco/polarr/renderer/entities/Context;

.field private c:I

.field private d:Lco/polarr/renderer/render/f;

.field private e:[Lco/polarr/renderer/render/f;

.field private f:[[F

.field private g:I

.field private h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

.field private i:Z

.field private j:I

.field private k:Lco/polarr/renderer/render/f;

.field private l:Lco/polarr/renderer/render/f;

.field private m:Lco/polarr/renderer/render/f;

.field private n:Lco/polarr/renderer/render/f;

.field private o:Z

.field private p:I

.field private q:[F

.field private r:Lco/polarr/renderer/filters/ax;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/b/p;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/b/m;->c:I

    iget v1, p0, Lco/polarr/renderer/b/m;->c:I

    new-array v2, v1, [Lco/polarr/renderer/render/f;

    iput-object v2, p0, Lco/polarr/renderer/b/m;->e:[Lco/polarr/renderer/render/f;

    new-array v1, v1, [[F

    iput-object v1, p0, Lco/polarr/renderer/b/m;->f:[[F

    iput-object p1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    new-instance p1, Lco/polarr/renderer/entities/Context;

    invoke-direct {p1}, Lco/polarr/renderer/entities/Context;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    new-instance v1, Lco/polarr/renderer/entities/Mesh$Options;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v0, v2}, Lco/polarr/renderer/entities/Mesh$Options;-><init>(ZZZI)V

    invoke-static {v1}, Lco/polarr/renderer/entities/Mesh;->plane(Lco/polarr/renderer/entities/Mesh$Options;)Lco/polarr/renderer/entities/Mesh;

    move-result-object v1

    iput-object v1, p1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object p1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    iput-object p2, p1, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    iput v0, p0, Lco/polarr/renderer/b/m;->g:I

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    aget p2, p1, v0

    const/16 v0, 0x1908

    invoke-static {p2, v0, v2, v2}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object p2

    iput-object p2, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    aget p2, p1, v2

    invoke-static {p2, v0, v2, v2}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object p2

    iput-object p2, p0, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    const/4 p2, 0x2

    aget p1, p1, p2

    invoke-static {p1, v0, v2, v2}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object p1

    iput-object p1, p0, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v2, v2}, Lco/polarr/renderer/b/m;->b(II)Lco/polarr/renderer/render/f;

    move-result-object p1

    iput-object p1, p0, Lco/polarr/renderer/b/m;->k:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v2, v2}, Lco/polarr/renderer/b/m;->b(II)Lco/polarr/renderer/render/f;

    move-result-object p1

    iput-object p1, p0, Lco/polarr/renderer/b/m;->n:Lco/polarr/renderer/render/f;

    return-void
.end method

.method private a(III)I
    .locals 0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/b/m$b;Lco/polarr/renderer/render/f;Lco/polarr/renderer/b/m$c;)Lco/polarr/renderer/b/m$b;
    .locals 7

    iget-object p2, p2, Lco/polarr/renderer/b/m$b;->c:Lco/polarr/renderer/render/f;

    iget-object v0, p1, Lco/polarr/renderer/b/m$a;->h:Lco/polarr/renderer/render/f;

    iget v1, p4, Lco/polarr/renderer/b/m$c;->a:I

    iget v2, p4, Lco/polarr/renderer/b/m$c;->b:I

    const v3, 0x881a

    const/16 v4, 0x140b

    invoke-static {v0, v3, v4, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;IIII)V

    iget-object v1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/ag;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ag;

    move-result-object v1

    iget-object v2, p4, Lco/polarr/renderer/b/m$c;->g:[F

    iput-object v2, v1, Lco/polarr/renderer/filters/ag;->g:[F

    iget v2, p4, Lco/polarr/renderer/b/m$c;->c:I

    iput v2, v1, Lco/polarr/renderer/filters/ag;->b:I

    iget v2, p3, Lco/polarr/renderer/render/f;->c:I

    iput v2, v1, Lco/polarr/renderer/filters/ag;->a:I

    iget v2, p2, Lco/polarr/renderer/render/f;->c:I

    iput v2, v1, Lco/polarr/renderer/filters/ag;->c:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p4, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p4, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    iput-object v3, v1, Lco/polarr/renderer/filters/ag;->d:[F

    new-array v3, v2, [F

    iget v4, p3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v4, v4

    aput v4, v3, v5

    iget v4, p3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v4, v4

    aput v4, v3, v6

    iput-object v3, v1, Lco/polarr/renderer/filters/ag;->e:[F

    new-array v2, v2, [F

    iget-object v3, p1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    aput v3, v2, v5

    iget-object p1, p1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->e:I

    int-to-float p1, p1

    aput p1, v2, v6

    iput-object v2, v1, Lco/polarr/renderer/filters/ag;->f:[F

    iget-object p1, p4, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-virtual {v1, p1}, Lco/polarr/renderer/filters/ag;->a([F)V

    invoke-direct {p0, v1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    invoke-direct {p0, p2, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    new-instance p1, Lco/polarr/renderer/b/m$b;

    invoke-direct {p1, p0, p4, p3, p2}, Lco/polarr/renderer/b/m$b;-><init>(Lco/polarr/renderer/b/m;Lco/polarr/renderer/b/m$c;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    return-object p1
.end method

.method private a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/b/m$c;)Lco/polarr/renderer/b/m$b;
    .locals 6

    iget v0, p4, Lco/polarr/renderer/b/m$c;->a:I

    iget v1, p4, Lco/polarr/renderer/b/m$c;->b:I

    const v2, 0x881a

    const/16 v3, 0x140b

    invoke-static {p2, v2, v3, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;IIII)V

    iget-object v0, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/af;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/af;

    move-result-object v0

    iget-object v1, p4, Lco/polarr/renderer/b/m$c;->g:[F

    iput-object v1, v0, Lco/polarr/renderer/filters/af;->e:[F

    iget v1, p4, Lco/polarr/renderer/b/m$c;->c:I

    iput v1, v0, Lco/polarr/renderer/filters/af;->a:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p4, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p4, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    iput-object v2, v0, Lco/polarr/renderer/filters/af;->b:[F

    new-array v1, v1, [F

    iget-object v2, p1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    int-to-float v2, v2

    aput v2, v1, v4

    iget-object p1, p1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->e:I

    int-to-float p1, p1

    aput p1, v1, v5

    iput-object v1, v0, Lco/polarr/renderer/filters/af;->c:[F

    iget-boolean p1, p0, Lco/polarr/renderer/b/m;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lco/polarr/renderer/b/m;->j:I

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    iget v1, p0, Lco/polarr/renderer/b/m;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lco/polarr/renderer/b/m;->j:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lco/polarr/renderer/filters/af;->d:F

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lco/polarr/renderer/filters/af;->d:F

    iget-object p1, p0, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    iget v1, v0, Lco/polarr/renderer/filters/af;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p4, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/af;->a([F)V

    invoke-direct {p0, v0, p2}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    new-instance p1, Lco/polarr/renderer/b/m$b;

    invoke-direct {p1, p0, p4, p3, p2}, Lco/polarr/renderer/b/m$b;-><init>(Lco/polarr/renderer/b/m;Lco/polarr/renderer/b/m$c;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    return-object p1
.end method

.method private a(Lco/polarr/renderer/b/m$a;I)Lco/polarr/renderer/render/f;
    .locals 7

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p1, Lco/polarr/renderer/b/m$a;->c:Lco/polarr/renderer/b/m$b;

    iget-object v2, v2, Lco/polarr/renderer/b/m$b;->b:Lco/polarr/renderer/render/f;

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-gt v4, v0, :cond_1

    iget-object v5, p1, Lco/polarr/renderer/b/m$a;->c:Lco/polarr/renderer/b/m$b;

    invoke-direct {p0, p1, v5, v1}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/b/m$b;I)V

    if-lt p2, v3, :cond_0

    if-ne v4, v0, :cond_0

    iget-object v5, p1, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v5, p1, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Lco/polarr/renderer/b/m$c;

    iget-object v6, p1, Lco/polarr/renderer/b/m$a;->c:Lco/polarr/renderer/b/m$b;

    invoke-direct {p0, p1, v6, v5, v2}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/b/m$b;Lco/polarr/renderer/b/m$c;Lco/polarr/renderer/render/f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lco/polarr/renderer/b/m;->o:Z

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/opengl/GLES30;->glFinish()V

    :cond_2
    return-object v2
.end method

.method private a(Lco/polarr/renderer/b/m$c;)Lco/polarr/renderer/render/f;
    .locals 3

    iget v0, p1, Lco/polarr/renderer/b/m$c;->d:I

    iget v1, p1, Lco/polarr/renderer/b/m$c;->e:I

    invoke-direct {p0, v0, v1}, Lco/polarr/renderer/b/m;->c(II)Lco/polarr/renderer/render/f;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/bn;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bn;

    move-result-object v1

    iget v2, p1, Lco/polarr/renderer/b/m$c;->c:I

    iput v2, v1, Lco/polarr/renderer/filters/bn;->a:I

    invoke-direct {p0, v1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    invoke-direct {p0, p1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    iget v1, p1, Lco/polarr/renderer/b/m$c;->a:I

    iget v2, p1, Lco/polarr/renderer/b/m$c;->b:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget v2, p1, Lco/polarr/renderer/b/m$c;->c:I

    invoke-virtual {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(I)V

    iget-object p1, p1, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-virtual {v1, p1}, Lco/polarr/renderer/filters/Basic;->a([F)V

    invoke-direct {p0, v1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    return-object v0
.end method

.method private a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;
    .locals 3

    iget v0, p1, Lco/polarr/renderer/render/f;->d:I

    shr-int/lit8 v0, v0, 0x1

    iget v1, p1, Lco/polarr/renderer/render/f;->e:I

    shr-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lco/polarr/renderer/b/m;->c(II)Lco/polarr/renderer/render/f;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, p1}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-direct {p0, v1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    return-object v0
.end method

.method private a(Lco/polarr/renderer/render/f;I)Lco/polarr/renderer/render/f;
    .locals 3

    iget v0, p1, Lco/polarr/renderer/render/f;->d:I

    iget v1, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-direct {p0, v0, v1}, Lco/polarr/renderer/b/m;->c(II)Lco/polarr/renderer/render/f;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/l;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/l;

    move-result-object v1

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, p1}, Lco/polarr/renderer/filters/l;->a(I)V

    iput p2, v1, Lco/polarr/renderer/filters/l;->a:I

    invoke-direct {p0, v1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    return-object v0
.end method

.method private a(I)V
    .locals 6

    iget v0, p0, Lco/polarr/renderer/b/m;->c:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->d:I

    iget-object v3, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v2, p1, v3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/d;->o()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    move p1, v1

    :goto_0
    iget v3, p0, Lco/polarr/renderer/b/m;->g:I

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lco/polarr/renderer/b/m;->e:[Lco/polarr/renderer/render/f;

    aget-object v3, v3, p1

    iget-object v4, p0, Lco/polarr/renderer/b/m;->f:[[F

    aget-object v4, v4, p1

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v5

    invoke-static {v5, v1, v4, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget v3, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v3}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method private a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/b/m$b;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lco/polarr/renderer/b/m$b;->a:Lco/polarr/renderer/b/m$c;

    iget-object v4, v2, Lco/polarr/renderer/b/m$b;->b:Lco/polarr/renderer/render/f;

    iget-object v5, v2, Lco/polarr/renderer/b/m$b;->c:Lco/polarr/renderer/render/f;

    iget v6, v5, Lco/polarr/renderer/render/f;->d:I

    iget v7, v5, Lco/polarr/renderer/render/f;->e:I

    iget-object v8, v1, Lco/polarr/renderer/b/m$a;->h:Lco/polarr/renderer/render/f;

    const/16 v10, 0x8

    move v12, v10

    const/4 v11, 0x0

    move/from16 v10, p3

    :goto_0
    if-ge v11, v10, :cond_3

    iget-object v13, v0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v14, v0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v13, v14}, Lco/polarr/renderer/filters/bc;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bc;

    move-result-object v13

    :goto_1
    const/4 v14, 0x2

    if-lez v12, :cond_0

    const v15, 0x881a

    const/16 v9, 0x140b

    invoke-static {v8, v15, v9, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;IIII)V

    iget-object v9, v3, Lco/polarr/renderer/b/m$c;->g:[F

    iput-object v9, v13, Lco/polarr/renderer/filters/bc;->i:[F

    iget v9, v3, Lco/polarr/renderer/b/m$c;->c:I

    iput v9, v13, Lco/polarr/renderer/filters/bc;->b:I

    iget v9, v4, Lco/polarr/renderer/render/f;->c:I

    iput v9, v13, Lco/polarr/renderer/filters/bc;->a:I

    iget v9, v5, Lco/polarr/renderer/render/f;->c:I

    iput v9, v13, Lco/polarr/renderer/filters/bc;->c:I

    new-array v9, v14, [F

    iget v15, v3, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v15, v15

    const/16 v17, 0x0

    aput v15, v9, v17

    iget v15, v3, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v15, v15

    const/16 v16, 0x1

    aput v15, v9, v16

    iput-object v9, v13, Lco/polarr/renderer/filters/bc;->d:[F

    new-array v9, v14, [F

    iget v15, v4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v15, v15

    aput v15, v9, v17

    iget v15, v4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v15, v15

    aput v15, v9, v16

    iput-object v9, v13, Lco/polarr/renderer/filters/bc;->e:[F

    new-array v9, v14, [F

    iget v15, v5, Lco/polarr/renderer/render/f;->d:I

    int-to-float v15, v15

    aput v15, v9, v17

    iget v15, v5, Lco/polarr/renderer/render/f;->e:I

    int-to-float v15, v15

    aput v15, v9, v16

    iput-object v9, v13, Lco/polarr/renderer/filters/bc;->f:[F

    new-array v9, v14, [F

    iget-object v14, v1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v14, v14, Lco/polarr/renderer/render/f;->d:I

    int-to-float v14, v14

    aput v14, v9, v17

    iget-object v14, v1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v14, v14, Lco/polarr/renderer/render/f;->e:I

    int-to-float v14, v14

    aput v14, v9, v16

    iput-object v9, v13, Lco/polarr/renderer/filters/bc;->g:[F

    int-to-float v9, v12

    iput v9, v13, Lco/polarr/renderer/filters/bc;->h:F

    iget-object v9, v3, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-virtual {v13, v9}, Lco/polarr/renderer/filters/bc;->a([F)V

    invoke-direct {v0, v13, v8}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    iget-object v9, v2, Lco/polarr/renderer/b/m$b;->c:Lco/polarr/renderer/render/f;

    invoke-direct {v0, v9, v8}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    shr-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v9, v0, Lco/polarr/renderer/b/m;->o:Z

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_1
    iget-object v9, v0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v13, v0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v9, v13}, Lco/polarr/renderer/filters/bd;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bd;

    move-result-object v9

    iget-object v13, v3, Lco/polarr/renderer/b/m$c;->g:[F

    iput-object v13, v9, Lco/polarr/renderer/filters/bd;->h:[F

    iget v13, v3, Lco/polarr/renderer/b/m$c;->c:I

    iput v13, v9, Lco/polarr/renderer/filters/bd;->b:I

    iget v13, v4, Lco/polarr/renderer/render/f;->c:I

    iput v13, v9, Lco/polarr/renderer/filters/bd;->a:I

    iget v13, v5, Lco/polarr/renderer/render/f;->c:I

    iput v13, v9, Lco/polarr/renderer/filters/bd;->c:I

    new-array v13, v14, [F

    iget v15, v3, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v15, v15

    const/16 v17, 0x0

    aput v15, v13, v17

    iget v15, v3, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v15, v15

    const/16 v16, 0x1

    aput v15, v13, v16

    iput-object v13, v9, Lco/polarr/renderer/filters/bd;->d:[F

    new-array v13, v14, [F

    iget v15, v4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v15, v15

    aput v15, v13, v17

    iget v15, v4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v15, v15

    aput v15, v13, v16

    iput-object v13, v9, Lco/polarr/renderer/filters/bd;->e:[F

    new-array v13, v14, [F

    iget-object v14, v1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v14, v14, Lco/polarr/renderer/render/f;->d:I

    int-to-float v14, v14

    aput v14, v13, v17

    iget-object v14, v1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v14, v14, Lco/polarr/renderer/render/f;->e:I

    int-to-float v14, v14

    aput v14, v13, v16

    iput-object v13, v9, Lco/polarr/renderer/filters/bd;->f:[F

    iget-boolean v13, v0, Lco/polarr/renderer/b/m;->i:Z

    if-eqz v13, :cond_2

    iget-object v13, v0, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v13, v13, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    iget v14, v0, Lco/polarr/renderer/b/m;->j:I

    if-le v13, v14, :cond_2

    iget-object v13, v0, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v13, v13, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    iget v14, v0, Lco/polarr/renderer/b/m;->j:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lco/polarr/renderer/b/m;->j:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v9, Lco/polarr/renderer/filters/bd;->g:F

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    iput v13, v9, Lco/polarr/renderer/filters/bd;->g:F

    iget-object v13, v0, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v13, v13, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    iget v14, v9, Lco/polarr/renderer/filters/bd;->g:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v13, v3, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-virtual {v9, v13}, Lco/polarr/renderer/filters/bd;->a([F)V

    invoke-direct {v0, v9, v8}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    iget-object v9, v2, Lco/polarr/renderer/b/m$b;->c:Lco/polarr/renderer/render/f;

    invoke-direct {v0, v9, v8}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/b/m$b;Lco/polarr/renderer/b/m$c;Lco/polarr/renderer/render/f;)V
    .locals 6

    iget-object v0, p1, Lco/polarr/renderer/b/m$a;->g:Lco/polarr/renderer/render/f;

    iget-object p2, p2, Lco/polarr/renderer/b/m$b;->c:Lco/polarr/renderer/render/f;

    iget v1, p3, Lco/polarr/renderer/b/m$c;->a:I

    iget v2, p3, Lco/polarr/renderer/b/m$c;->b:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v1, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/aq;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/aq;

    move-result-object v1

    iget-object v2, p3, Lco/polarr/renderer/b/m$c;->g:[F

    iput-object v2, v1, Lco/polarr/renderer/filters/aq;->f:[F

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v1, Lco/polarr/renderer/filters/aq;->c:I

    iget p2, p3, Lco/polarr/renderer/b/m$c;->c:I

    iput p2, v1, Lco/polarr/renderer/filters/aq;->b:I

    iget p2, p4, Lco/polarr/renderer/render/f;->c:I

    iput p2, v1, Lco/polarr/renderer/filters/aq;->a:I

    const/4 p2, 0x2

    new-array v2, p2, [F

    iget v3, p4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    iput-object v2, v1, Lco/polarr/renderer/filters/aq;->d:[F

    new-array p2, p2, [F

    iget-object v2, p1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    int-to-float v2, v2

    aput v2, p2, v4

    iget-object p1, p1, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->e:I

    int-to-float p1, p1

    aput p1, p2, v5

    iput-object p2, v1, Lco/polarr/renderer/filters/aq;->e:[F

    iget-object p1, p3, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-virtual {v1, p1}, Lco/polarr/renderer/filters/aq;->a([F)V

    invoke-direct {p0, v1, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    invoke-direct {p0, p4, v0}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V

    return-void
.end method

.method private a(Lco/polarr/renderer/b/m$c;Lco/polarr/renderer/render/f;ILandroid/graphics/RectF;I)V
    .locals 10

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    new-instance v0, Lco/polarr/renderer/b/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/polarr/renderer/b/m$a;-><init>(Lco/polarr/renderer/b/m;Lco/polarr/renderer/b/m$1;)V

    iput-object p1, v0, Lco/polarr/renderer/b/m$a;->a:Lco/polarr/renderer/render/f;

    iput-object p2, v0, Lco/polarr/renderer/b/m$a;->b:Lco/polarr/renderer/render/f;

    iput p3, v0, Lco/polarr/renderer/b/m$a;->e:I

    iput-object p4, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    iput-object v1, v0, Lco/polarr/renderer/b/m$a;->c:Lco/polarr/renderer/b/m$b;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    const/4 p4, 0x1

    invoke-direct {p0, p4, p4}, Lco/polarr/renderer/b/m;->c(II)Lco/polarr/renderer/render/f;

    move-result-object v2

    iput-object v2, v0, Lco/polarr/renderer/b/m$a;->g:Lco/polarr/renderer/render/f;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->k:Lco/polarr/renderer/render/f;

    iput-object v2, v0, Lco/polarr/renderer/b/m$a;->h:Lco/polarr/renderer/render/f;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lco/polarr/renderer/b/m;->o:Z

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v3, v5

    iget-object v5, p0, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->e:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    iget-object v5, p0, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->d:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pixels:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "POLARR_SDK"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x4b189680    # 1.0E7f

    cmpl-float v5, v3, v5

    const/4 v6, 0x3

    if-lez v5, :cond_0

    iput-boolean p4, p0, Lco/polarr/renderer/b/m;->o:Z

    move p4, v6

    goto :goto_0

    :cond_0
    const v5, 0x49f42400    # 2000000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    iput-boolean p4, p0, Lco/polarr/renderer/b/m;->o:Z

    const/4 p4, 0x2

    goto :goto_0

    :cond_1
    const v5, 0x49742400    # 1000000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    iput-boolean p4, p0, Lco/polarr/renderer/b/m;->o:Z

    goto :goto_0

    :cond_2
    const v5, 0x48f42400    # 500000.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    iput-boolean p4, p0, Lco/polarr/renderer/b/m;->o:Z

    :cond_3
    move p4, v2

    :goto_0
    iget-boolean v3, p0, Lco/polarr/renderer/b/m;->o:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lco/polarr/renderer/b/m;->p:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lco/polarr/renderer/b/m;->p:I

    iget v3, p0, Lco/polarr/renderer/b/m;->p:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lco/polarr/renderer/b/m;->p:I

    iget v3, p0, Lco/polarr/renderer/b/m;->p:I

    add-int/2addr p4, v3

    :cond_4
    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-direct {p0, p1, p2}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;I)Lco/polarr/renderer/render/f;

    move-result-object p2

    invoke-static {p2}, Lco/polarr/renderer/b/m$c;->a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/b/m$c;

    move-result-object p2

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p2, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v3, v3

    iget-object v5, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v5, p3, 0x2

    add-int/2addr v3, v5

    iget v7, p2, Lco/polarr/renderer/b/m$c;->d:I

    invoke-direct {p0, v3, v2, v7}, Lco/polarr/renderer/b/m;->a(III)I

    move-result v3

    iput v3, p2, Lco/polarr/renderer/b/m$c;->a:I

    iget v3, p2, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v3, v3

    iget-object v7, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    iget v7, p2, Lco/polarr/renderer/b/m$c;->e:I

    invoke-direct {p0, v3, v2, v7}, Lco/polarr/renderer/b/m;->a(III)I

    move-result v3

    iput v3, p2, Lco/polarr/renderer/b/m$c;->b:I

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    iget v7, p2, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v7, v7

    iget v8, p2, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v8, v8

    int-to-float v9, p3

    invoke-static {v3, v7, v8, v9}, Lco/polarr/renderer/b/m;->a(Landroid/graphics/RectF;FFF)[F

    move-result-object v3

    iput-object v3, p2, Lco/polarr/renderer/b/m$c;->g:[F

    :goto_1
    iget v3, p2, Lco/polarr/renderer/b/m$c;->a:I

    if-le v3, p3, :cond_5

    iget v3, p2, Lco/polarr/renderer/b/m$c;->b:I

    if-le v3, p3, :cond_5

    invoke-direct {p0, p2}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;

    move-result-object p2

    invoke-static {p2}, Lco/polarr/renderer/b/m$c;->a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/b/m$c;

    move-result-object p2

    iget v3, p2, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v3, v3

    iget-object v7, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    iget v7, p2, Lco/polarr/renderer/b/m$c;->d:I

    invoke-direct {p0, v3, v2, v7}, Lco/polarr/renderer/b/m;->a(III)I

    move-result v3

    iput v3, p2, Lco/polarr/renderer/b/m$c;->a:I

    iget v3, p2, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v3, v3

    iget-object v7, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    iget v7, p2, Lco/polarr/renderer/b/m$c;->e:I

    invoke-direct {p0, v3, v2, v7}, Lco/polarr/renderer/b/m;->a(III)I

    move-result v3

    iput v3, p2, Lco/polarr/renderer/b/m$c;->b:I

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->f:Landroid/graphics/RectF;

    iget v7, p2, Lco/polarr/renderer/b/m$c;->d:I

    int-to-float v7, v7

    iget v8, p2, Lco/polarr/renderer/b/m$c;->e:I

    int-to-float v8, v8

    invoke-static {v3, v7, v8, v9}, Lco/polarr/renderer/b/m;->a(Landroid/graphics/RectF;FFF)[F

    move-result-object v3

    iput-object v3, p2, Lco/polarr/renderer/b/m$c;->g:[F

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p2, v0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    move p3, p2

    :goto_2
    if-lt p3, p4, :cond_8

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/polarr/renderer/b/m$c;

    if-ne p3, p2, :cond_6

    invoke-direct {p0, v3}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$c;)Lco/polarr/renderer/render/f;

    move-result-object v1

    iget-object v5, p0, Lco/polarr/renderer/b/m;->n:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v0, v5, v1, v3}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/b/m$c;)Lco/polarr/renderer/b/m$b;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lco/polarr/renderer/b/m$a;->c:Lco/polarr/renderer/b/m$b;

    invoke-direct {p0, v0, v5, v1, v3}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$a;Lco/polarr/renderer/b/m$b;Lco/polarr/renderer/render/f;Lco/polarr/renderer/b/m$c;)Lco/polarr/renderer/b/m$b;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lco/polarr/renderer/b/m$a;->c:Lco/polarr/renderer/b/m$b;

    invoke-direct {p0, v0, p3}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$a;I)Lco/polarr/renderer/render/f;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    if-ne p3, p4, :cond_7

    iget-object v5, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v6, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v5, v6}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v5

    invoke-virtual {v5, v2}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v6

    invoke-virtual {v6, p5}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget v7, p1, Lco/polarr/renderer/b/m$c;->d:I

    iget v8, p1, Lco/polarr/renderer/b/m$c;->e:I

    invoke-virtual {v6, v7, v8}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v6}, Lco/polarr/renderer/filters/a/d;->o()V

    const/4 v7, 0x0

    invoke-static {v7, v7, v7, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    iget v7, v3, Lco/polarr/renderer/b/m$c;->c:I

    invoke-virtual {v5, v7}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->draw()V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v7

    iget-object v3, v3, Lco/polarr/renderer/b/m$c;->g:[F

    invoke-static {v7, v2, v3, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget v3, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v5, v3}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->draw()V

    invoke-virtual {v6}, Lco/polarr/renderer/filters/a/d;->p()V

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->g:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v3}, Lco/polarr/renderer/b/m;->b(Lco/polarr/renderer/render/f;)V

    iget-object v3, v0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/render/f;

    invoke-direct {p0, v5}, Lco/polarr/renderer/b/m;->b(Lco/polarr/renderer/render/f;)V

    goto :goto_4

    :cond_7
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    return-void
.end method

.method private a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V
    .locals 2

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v0

    iget v1, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget v1, p2, Lco/polarr/renderer/render/f;->d:I

    iget p2, p2, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, p2}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/a;->draw()V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method private a(Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)V
    .locals 2

    iget v0, p2, Lco/polarr/renderer/render/f;->c:I

    iget v1, p1, Lco/polarr/renderer/render/f;->c:I

    iput v1, p2, Lco/polarr/renderer/render/f;->c:I

    iput v0, p1, Lco/polarr/renderer/render/f;->c:I

    iget v0, p2, Lco/polarr/renderer/render/f;->d:I

    iget v1, p1, Lco/polarr/renderer/render/f;->d:I

    iput v1, p2, Lco/polarr/renderer/render/f;->d:I

    iput v0, p1, Lco/polarr/renderer/render/f;->d:I

    iget v0, p2, Lco/polarr/renderer/render/f;->e:I

    iget v1, p1, Lco/polarr/renderer/render/f;->e:I

    iput v1, p2, Lco/polarr/renderer/render/f;->e:I

    iput v0, p1, Lco/polarr/renderer/render/f;->e:I

    return-void
.end method

.method private static a(Landroid/graphics/RectF;FFF)[F
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p3, v1

    add-float/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, p2

    iget v4, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v5, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, p1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float p1, p2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr p0, p2

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p2, p1, v0

    div-float p3, p1, v2

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v0

    mul-float/2addr v4, v1

    mul-float/2addr v4, p2

    const/high16 v2, -0x40800000    # -1.0f

    sub-float v4, v2, v4

    mul-float/2addr p0, v1

    mul-float/2addr p0, p3

    add-float/2addr p0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, p0, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {v0, v1, p2, p3, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {v0, v1, p1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-object v0
.end method

.method private b(II)Lco/polarr/renderer/render/f;
    .locals 2

    const/16 v0, 0x1908

    const/16 v1, 0x140b

    invoke-direct {p0, v0, v1, p1, p2}, Lco/polarr/renderer/b/m;->b(IIII)Lco/polarr/renderer/render/f;

    move-result-object p1

    iget p2, p1, Lco/polarr/renderer/render/f;->c:I

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2600

    const v1, 0x812f

    invoke-static {v1, v1, p2, p2}, Lco/polarr/renderer/b/i;->a(IIII)V

    const/4 p2, 0x0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-object p1
.end method

.method private b(IIII)Lco/polarr/renderer/render/f;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v3, 0x0

    move-object v2, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lco/polarr/renderer/b/i;->a(I[IIIIII)V

    const/4 p2, 0x0

    aget p2, v0, p2

    invoke-static {p2, p1, p3, p4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object p1

    return-object p1
.end method

.method private b(Lco/polarr/renderer/render/f;)V
    .locals 1

    iget v0, p1, Lco/polarr/renderer/render/f;->c:I

    if-lez v0, :cond_0

    iget v0, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/b/i;->a(I)V

    iget v0, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lco/polarr/renderer/render/f;->c:I

    return-void
.end method

.method private c(II)Lco/polarr/renderer/render/f;
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v3, 0x0

    const/16 v4, 0x1908

    move-object v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x1908

    invoke-static {v0, v1, p1, p2}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;F)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lco/polarr/renderer/b/m;->q:[F

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, p2}, Lco/polarr/renderer/b/m;->a(Ljava/util/List;Landroid/graphics/PointF;F)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lco/polarr/renderer/b/m;->a(II)V

    iget-object v0, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_2
    iget-object v0, p0, Lco/polarr/renderer/b/m;->k:Lco/polarr/renderer/render/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lco/polarr/renderer/b/m;->b(Lco/polarr/renderer/render/f;)V

    iput-object v1, p0, Lco/polarr/renderer/b/m;->k:Lco/polarr/renderer/render/f;

    :cond_3
    iget-object v0, p0, Lco/polarr/renderer/b/m;->n:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lco/polarr/renderer/b/m;->b(Lco/polarr/renderer/render/f;)V

    iput-object v1, p0, Lco/polarr/renderer/b/m;->n:Lco/polarr/renderer/render/f;

    :cond_4
    return-void
.end method

.method public a(II)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/Basic;->a(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v0, p1}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/render/f;)V

    :cond_0
    if-lez p2, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lco/polarr/renderer/b/m;->g:I

    invoke-direct {p0, p2}, Lco/polarr/renderer/b/m;->a(I)V

    :cond_1
    iget-object p1, p0, Lco/polarr/renderer/b/m;->e:[Lco/polarr/renderer/render/f;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lco/polarr/renderer/b/m;->b(Lco/polarr/renderer/render/f;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    iget p2, p0, Lco/polarr/renderer/b/m;->c:I

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lco/polarr/renderer/b/m;->e:[Lco/polarr/renderer/render/f;

    const/4 v1, 0x0

    aput-object v1, p2, p1

    iget-object p2, p0, Lco/polarr/renderer/b/m;->f:[[F

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lco/polarr/renderer/b/m;->g:I

    return-void
.end method

.method public a(IIII)V
    .locals 0

    iput p4, p0, Lco/polarr/renderer/b/m;->p:I

    iget-object p4, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    invoke-static {p4, p2, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lco/polarr/renderer/b/m;->a(II)V

    return-void
.end method

.method public a(IILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p2, v0, v1}, Lco/polarr/renderer/b/i;->a(III)V

    invoke-static {p1, p2, p3}, Lco/polarr/renderer/b/i;->a(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public a(ILco/polarr/renderer/entities/MagicEraserPath;)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    iget-object v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move v3, v9

    move v4, v3

    move v5, v10

    move v11, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    goto :goto_0

    :cond_1
    iget v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v2, v12

    const/4 v13, 0x2

    new-array v13, v13, [F

    int-to-float v0, v0

    div-float v0, v2, v0

    const/4 v14, 0x0

    aput v0, v13, v14

    int-to-float v0, v1

    div-float/2addr v2, v0

    const/4 v15, 0x1

    aput v2, v13, v15

    aget v0, v13, v14

    sub-float/2addr v3, v0

    aget v0, v13, v15

    sub-float/2addr v4, v0

    aget v0, v13, v14

    add-float/2addr v5, v0

    aget v0, v13, v15

    add-float/2addr v11, v0

    cmpg-float v0, v3, v10

    if-gtz v0, :cond_2

    aget v0, v13, v14

    mul-float/2addr v0, v12

    add-float/2addr v5, v0

    :cond_2
    cmpg-float v0, v4, v10

    if-gtz v0, :cond_3

    aget v0, v13, v15

    mul-float/2addr v0, v12

    add-float/2addr v11, v0

    :cond_3
    cmpl-float v0, v5, v9

    if-ltz v0, :cond_4

    aget v0, v13, v14

    mul-float/2addr v0, v12

    sub-float/2addr v3, v0

    :cond_4
    cmpl-float v0, v11, v9

    if-ltz v0, :cond_5

    aget v0, v13, v15

    mul-float/2addr v0, v12

    sub-float/2addr v4, v0

    :cond_5
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v3, v4, v5, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Lco/polarr/renderer/filters/h;

    iget-object v1, v6, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v6, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lco/polarr/renderer/filters/h;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Lco/polarr/renderer/b/b;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lco/polarr/renderer/filters/h;->b:F

    iput v9, v0, Lco/polarr/renderer/filters/h;->c:F

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Lco/polarr/renderer/filters/h;->d:[F

    iget-object v1, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget-object v2, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    iget-object v3, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v1, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v1

    iget-object v2, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v2, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    iget-object v3, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v1, v2, v3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/d;->o()V

    invoke-static {v10, v10, v10, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    mul-float/2addr v2, v12

    iput v2, v0, Lco/polarr/renderer/filters/h;->a:F

    iget-object v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    iget v3, v8, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    mul-float/2addr v3, v12

    invoke-virtual {v6, v2, v3}, Lco/polarr/renderer/b/m;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lco/polarr/renderer/filters/h;->a(Ljava/util/List;Z)V

    :cond_6
    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/d;->p()V

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v1, v15

    div-float v11, v0, v1

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v12, v0, v1

    move v5, v14

    :goto_1
    if-ge v5, v15, :cond_9

    move v0, v14

    :goto_2
    if-ge v0, v15, :cond_8

    iget-boolean v1, v6, Lco/polarr/renderer/b/m;->i:Z

    if-nez v1, :cond_7

    new-instance v1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    invoke-direct {v1}, Lco/polarr/renderer/entities/MagicEraserHistoryItem;-><init>()V

    iput-object v1, v6, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v1, v6, Lco/polarr/renderer/b/m;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iput-object v8, v1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->path:Lco/polarr/renderer/entities/MagicEraserPath;

    :cond_7
    int-to-float v1, v5

    iget v2, v13, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    iget v4, v13, Landroid/graphics/RectF;->top:F

    add-int/lit8 v14, v5, 0x1

    int-to-float v14, v14

    iget v15, v13, Landroid/graphics/RectF;->left:F

    add-int/lit8 v0, v0, 0x1

    new-instance v9, Landroid/graphics/RectF;

    mul-float/2addr v1, v11

    add-float/2addr v1, v2

    mul-float/2addr v3, v12

    add-float/2addr v3, v4

    mul-float/2addr v14, v11

    add-float/2addr v14, v15

    int-to-float v2, v0

    mul-float/2addr v2, v12

    iget v4, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    invoke-direct {v9, v1, v3, v14, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->left:F

    iget v1, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->top:F

    iget v1, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->right:F

    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->bottom:F

    new-instance v14, Landroid/graphics/Rect;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget-object v2, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget-object v3, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget-object v4, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v9, v9, Lco/polarr/renderer/render/f;->e:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-direct {v14, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v6, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Lco/polarr/renderer/render/f;->e:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Lco/polarr/renderer/render/f;->e:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget-object v2, v6, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v6, v1, v2, v14}, Lco/polarr/renderer/b/m;->a(IILandroid/graphics/Rect;)V

    iget-object v1, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v6, v7, v1, v14}, Lco/polarr/renderer/b/m;->a(IILandroid/graphics/Rect;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v7, v1, v2}, Lco/polarr/renderer/b/i;->a(III)V

    iget-object v1, v6, Lco/polarr/renderer/b/m;->l:Lco/polarr/renderer/render/f;

    invoke-static {v1}, Lco/polarr/renderer/b/m$c;->a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/b/m$c;

    move-result-object v1

    iget-object v2, v6, Lco/polarr/renderer/b/m;->m:Lco/polarr/renderer/render/f;

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/RectF;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v10, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v15, v0

    move-object/from16 v0, p0

    move/from16 v16, v5

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/b/m$c;Lco/polarr/renderer/render/f;ILandroid/graphics/RectF;I)V

    iget-object v0, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v6, v0, v7, v14}, Lco/polarr/renderer/b/m;->b(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v7, v0, v1}, Lco/polarr/renderer/b/i;->a(III)V

    iget-object v0, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v2, v6, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    invoke-static {v0, v7, v1, v2}, Lco/polarr/renderer/b/i;->b(IIII)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    move v0, v15

    move/from16 v5, v16

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_8
    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Lco/polarr/renderer/render/f;ILco/polarr/renderer/entities/MagicEraserPath;II)V
    .locals 7

    iget-object v0, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    invoke-static {p1, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    new-instance v0, Lco/polarr/renderer/filters/h;

    iget-object v1, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lco/polarr/renderer/filters/h;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Lco/polarr/renderer/b/b;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lco/polarr/renderer/filters/h;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lco/polarr/renderer/filters/h;->c:F

    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lco/polarr/renderer/filters/h;->d:[F

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->h()Lco/polarr/renderer/filters/a/d;

    move-result-object v3

    iget v4, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v3, v4}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget v4, p1, Lco/polarr/renderer/render/f;->d:I

    iget v5, p1, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v3, v4, v5}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/d;->o()V

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v4, p3, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p3, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p3, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    iput v4, v0, Lco/polarr/renderer/filters/h;->a:F

    iget-object v4, p3, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    iget p3, p3, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    mul-float/2addr p3, v6

    invoke-virtual {p0, v4, p3}, Lco/polarr/renderer/b/m;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3, v5}, Lco/polarr/renderer/filters/h;->a(Ljava/util/List;Z)V

    :cond_0
    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/d;->p()V

    invoke-static {v5, v5, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p3, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object p4, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p3, p4}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object p3

    invoke-virtual {p3}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object p4

    const/high16 p5, -0x40800000    # -1.0f

    invoke-static {p4, v5, v1, p5, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {p3, p2}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {p3}, Lco/polarr/renderer/filters/Basic;->draw()V

    iget-object p2, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    if-nez p2, :cond_1

    new-instance p2, Lco/polarr/renderer/filters/ax;

    iget-object p3, p0, Lco/polarr/renderer/b/m;->a:Landroid/content/res/Resources;

    iget-object p4, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {p2, p3, p4}, Lco/polarr/renderer/filters/ax;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object p2, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    iget-object p2, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/ax;->k()V

    :cond_1
    iget-object p2, p0, Lco/polarr/renderer/b/m;->b:Lco/polarr/renderer/entities/Context;

    new-array p3, v2, [F

    fill-array-data p3, :array_1

    iput-object p3, p2, Lco/polarr/renderer/entities/Context;->overlayMask:[F

    iget-object p2, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    const/high16 p3, 0x3f000000    # 0.5f

    iput p3, p2, Lco/polarr/renderer/filters/ax;->b:F

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/ax;->a(I)V

    iget-object p1, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ax;->getMatrix()[F

    move-result-object p1

    invoke-static {p1, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ax;->getMatrix()[F

    move-result-object p1

    invoke-static {p1, v5, v1, p5, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const p2, 0x8006

    invoke-static {p2}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 p2, 0x302

    const/16 p3, 0x303

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object p2, p0, Lco/polarr/renderer/b/m;->r:Lco/polarr/renderer/filters/ax;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/ax;->draw()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Ljava/util/List;Landroid/graphics/PointF;F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/PointF;",
            "F)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v2, p0, Lco/polarr/renderer/b/m;->d:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    const/4 v3, 0x2

    new-array v4, v3, [F

    int-to-float v1, v1

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v1

    const/4 v7, 0x0

    aput v6, v4, v7

    int-to-float v2, v2

    div-float v6, v5, v2

    const/4 v8, 0x1

    aput v6, v4, v8

    const/4 v6, 0x3

    new-array v9, v6, [F

    iget v10, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v1

    aput v10, v9, v7

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p2

    mul-float/2addr v5, v2

    aput v5, v9, v8

    const/high16 p2, 0x3f000000    # 0.5f

    aput p2, v9, v3

    iget-object p2, p0, Lco/polarr/renderer/b/m;->q:[F

    if-nez p2, :cond_0

    new-array p2, v6, [F

    aget p3, v9, v7

    aput p3, p2, v7

    aget p3, v9, v8

    aput p3, p2, v8

    aget p3, v9, v3

    aput p3, p2, v3

    iput-object p2, p0, Lco/polarr/renderer/b/m;->q:[F

    aget p2, v9, v7

    aget p3, v4, v7

    mul-float/2addr p2, p3

    aput p2, v9, v7

    aget p2, v9, v8

    aget p3, v4, v8

    mul-float/2addr p2, p3

    aput p2, v9, v8

    aget p2, v9, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget p2, v9, v8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget p2, v9, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p3, p2

    aget p2, v9, v3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    if-ge p2, v8, :cond_1

    move p2, v8

    :cond_1
    iget-object p3, p0, Lco/polarr/renderer/b/m;->q:[F

    invoke-static {v9, p3}, Lco/polarr/renderer/b/h;->a([F[F)F

    move-result p3

    int-to-float v1, p2

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :goto_0
    int-to-float v5, v2

    cmpg-float v10, v5, p3

    if-gtz v10, :cond_2

    :try_start_0
    iget-object v10, p0, Lco/polarr/renderer/b/m;->q:[F

    div-float/2addr v5, p3

    invoke-static {v10, v9, v5, v0}, Lco/polarr/renderer/b/h;->a([F[FF[F)V

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, p2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p3, p2, -0x3

    new-array v0, v6, [F

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v7

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v8

    add-int/2addr p3, v3

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    aput p3, v0, v3

    iput-object v0, p0, Lco/polarr/renderer/b/m;->q:[F

    move p3, v7

    :goto_1
    if-ge p3, p2, :cond_3

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget v2, v4, v7

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget v3, v4, v8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lco/polarr/renderer/filters/l;->l_()V

    invoke-static {}, Lco/polarr/renderer/filters/bn;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/aq;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bc;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bd;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/ag;->A_()V

    invoke-static {}, Lco/polarr/renderer/filters/af;->z_()V

    return-void
.end method

.method public b(IILandroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lco/polarr/renderer/b/i;->b(IILandroid/graphics/Rect;)V

    return-void
.end method
