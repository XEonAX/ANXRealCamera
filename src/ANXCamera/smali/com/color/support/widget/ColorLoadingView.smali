.class public Lcom/color/support/widget/ColorLoadingView;
.super Landroid/view/View;
.source "ColorLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLoadingView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ColorLoadingView"


# instance fields
.field private A:I

.field private B:Landroid/graphics/RectF;

.field private C:F

.field private D:F

.field private E:Lcom/color/support/c/a/a$a;

.field private b:[F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:F

.field private o:F

.field private p:F

.field private q:Landroid/animation/ValueAnimator;

.field private r:Lcom/color/support/c/a/a;

.field private s:Ljava/lang/String;

.field private t:F

.field private u:F

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/Paint;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x6

    new-array p4, p4, [F

    iput-object p4, p0, Lcom/color/support/widget/ColorLoadingView;->b:[F

    const/4 p4, 0x0

    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->e:I

    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->g:I

    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->l:I

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->p:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/color/support/widget/ColorLoadingView;->s:Ljava/lang/String;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->t:F

    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Lcom/color/support/widget/ColorLoadingView;->u:F

    iput-boolean p4, p0, Lcom/color/support/widget/ColorLoadingView;->v:Z

    iput-boolean p4, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    new-instance v3, Lcom/color/support/widget/ColorLoadingView$1;

    invoke-direct {v3, p0}, Lcom/color/support/widget/ColorLoadingView$1;-><init>(Lcom/color/support/widget/ColorLoadingView;)V

    iput-object v3, p0, Lcom/color/support/widget/ColorLoadingView;->E:Lcom/color/support/c/a/a$a;

    invoke-static {p0, p4}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    sget-object v3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->color_loading_view_default_length:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewWidth:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorLoadingView;->e:I

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewHeight:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->f:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->g:I

    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewColor:I

    invoke-static {p1, p3, p4}, Lcom/color/support/d/c;->a(Landroid/content/Context;II)I

    move-result p3

    sget v3, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewBgCircleColor:I

    invoke-static {p1, v3, p4}, Lcom/color/support/d/c;->a(Landroid/content/Context;II)I

    move-result p4

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewColor:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->c:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewBgCircleColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_large_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->j:I

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->h:I

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->g:I

    if-ne v0, p2, :cond_0

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->i:I

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->t:F

    iput v2, p0, Lcom/color/support/widget/ColorLoadingView;->u:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p3, p2, :cond_1

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->j:I

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    const p2, 0x3e5c28f6    # 0.215f

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->t:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->u:F

    :cond_1
    :goto_0
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    shr-int/2addr p2, v0

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->l:I

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->e:I

    shr-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->n:F

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->f:I

    shr-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->o:F

    new-instance p2, Lcom/color/support/c/a/a;

    invoke-direct {p2, p0}, Lcom/color/support/c/a/a;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/color/support/widget/ColorLoadingView;->r:Lcom/color/support/c/a/a;

    iget-object p2, p0, Lcom/color/support/widget/ColorLoadingView;->r:Lcom/color/support/c/a/a;

    iget-object p3, p0, Lcom/color/support/widget/ColorLoadingView;->E:Lcom/color/support/c/a/a$a;

    invoke-virtual {p2, p3}, Lcom/color/support/c/a/a;->a(Lcom/color/support/c/a/a$a;)V

    iget-object p2, p0, Lcom/color/support/widget/ColorLoadingView;->r:Lcom/color/support/c/a/a;

    invoke-static {p0, p2}, Landroidx/core/g/u;->a(Landroid/view/View;Landroidx/core/g/a;)V

    invoke-static {p0, v0}, Landroidx/core/g/u;->b(Landroid/view/View;I)V

    sget p2, Lcolor/support/v7/appcompat/R$string;->color_loading_view_access_string:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorLoadingView;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->a()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorLoadingView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/ColorLoadingView;->e:I

    return p0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->z:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorLoadingView;->C:F

    iget-object v3, p0, Lcom/color/support/widget/ColorLoadingView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/ColorLoadingView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/ColorLoadingView;->f:I

    return p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorLoadingView$a;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorLoadingView$a;-><init>(Lcom/color/support/widget/ColorLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Lcom/color/support/widget/ColorLoadingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorLoadingView;->s:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->x:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private g()V
    .locals 6

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->k:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->y:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadingView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->z:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadingView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->A:I

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->z:I

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->y:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->C:F

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    iget v3, p0, Lcom/color/support/widget/ColorLoadingView;->C:F

    sub-float/2addr v2, v3

    int-to-float v4, v0

    sub-float/2addr v4, v3

    int-to-float v5, v0

    add-float/2addr v5, v3

    int-to-float v0, v0

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/support/widget/ColorLoadingView;->B:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->v:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->b()V

    iput-boolean v1, p0, Lcom/color/support/widget/ColorLoadingView;->v:Z

    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->d()V

    iput-boolean v1, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->v:Z

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->D:F

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->D:F

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLoadingView;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->z:I

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->A:I

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->B:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->g()V

    :cond_0
    iget-object v2, p0, Lcom/color/support/widget/ColorLoadingView;->B:Landroid/graphics/RectF;

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->D:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v3, v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x43340000    # 180.0f

    sub-float v0, v5, v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v4, v0

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/color/support/widget/ColorLoadingView;->m:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadingView;->B:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->g()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/color/support/widget/ColorLoadingView;->e:I

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->f:I

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLoadingView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->g()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    instance-of p1, p1, Lcom/color/support/widget/ColorLoadingView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    iget-boolean p1, p0, Lcom/color/support/widget/ColorLoadingView;->v:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->b()V

    iput-boolean p2, p0, Lcom/color/support/widget/ColorLoadingView;->v:Z

    :cond_1
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->d()V

    iput-boolean p2, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->e()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadingView;->w:Z

    :cond_3
    :goto_0
    return-void
.end method
