.class public Lcolor/support/design/widget/a;
.super Ljava/lang/Object;
.source "DividerHelper.java"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:F

.field private j:Landroid/graphics/Point;

.field private k:Landroid/graphics/Point;

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcolor/support/design/widget/a;->a:I

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcolor/support/design/widget/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/a;->d:I

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/a;->e:I

    iget v0, p0, Lcolor/support/design/widget/a;->d:I

    iput v0, p0, Lcolor/support/design/widget/a;->f:I

    sget v0, Lcolor/support/design/widget/a;->a:I

    iput v0, p0, Lcolor/support/design/widget/a;->l:I

    sget v0, Lcolor/support/design/widget/a;->b:I

    iput v0, p0, Lcolor/support/design/widget/a;->m:I

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcolor/support/design/widget/a;->g:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcolor/support/design/widget/a;->i:F

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/a;->k:Landroid/graphics/Point;

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object p1, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    iget v0, p0, Lcolor/support/design/widget/a;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcolor/support/design/widget/a;->i:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcolor/support/design/widget/a;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcolor/support/design/widget/a;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcolor/support/design/widget/a;->k:Landroid/graphics/Point;

    iget-object v0, p0, Lcolor/support/design/widget/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcolor/support/design/widget/a;->g:I

    int-to-float v1, v1

    iget v3, p0, Lcolor/support/design/widget/a;->i:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcolor/support/design/widget/a;->k:Landroid/graphics/Point;

    iget-object v0, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcolor/support/design/widget/a;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcolor/support/design/widget/a;->l:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcolor/support/design/widget/a;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcolor/support/design/widget/a;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcolor/support/design/widget/a;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcolor/support/design/widget/a;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcolor/support/design/widget/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcolor/support/design/widget/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/a;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcolor/support/design/widget/a;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/a;->j:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcolor/support/design/widget/a;->k:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/a;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcolor/support/design/widget/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/design/widget/a;->n:Z

    iget-object p1, p0, Lcolor/support/design/widget/a;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcolor/support/design/widget/a;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcolor/support/design/widget/a;->m:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcolor/support/design/widget/a;->d:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcolor/support/design/widget/a;->e:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcolor/support/design/widget/a;->g:I

    return-void
.end method

.method public f(I)V
    .locals 1

    iget v0, p0, Lcolor/support/design/widget/a;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcolor/support/design/widget/a;->f:I

    :cond_0
    return-void
.end method
