.class public Lcom/color/support/widget/ColorCircleProgressBar;
.super Landroid/view/View;
.source "ColorCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorCircleProgressBar$b;,
        Lcom/color/support/widget/ColorCircleProgressBar$SavedState;,
        Lcom/color/support/widget/ColorCircleProgressBar$a;
    }
.end annotation


# instance fields
.field private A:F

.field private a:I

.field private b:I

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

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/content/Context;

.field private s:Lcom/color/support/widget/ColorCircleProgressBar$a;

.field private t:Landroid/view/accessibility/AccessibilityManager;

.field private u:Landroid/graphics/Paint;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ColorCircleProgressBar$b;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/graphics/Paint;

.field private x:I

.field private y:I

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorCircleProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->c:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->d:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->e:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->g:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->k:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->o:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->v:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->r:Landroid/content/Context;

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_loading_view_default_length:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarWidth:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->c:I

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarHeight:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->d:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_loading_view_default_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_loading_view_backgroud_circle__default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarBgCircleColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->b:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->a:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgress:I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleMax:I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_large_strokewidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->n:I

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->l:I

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->e:I

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->m:I

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p3, p1, :cond_1

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->n:I

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    shr-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->g:I

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->c:I

    shr-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->p:F

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->d:I

    shr-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->q:F

    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->b()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->y:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->A:F

    iget-object v3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->setImportantForAccessibility(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/color/support/widget/ColorCircleProgressBar$b;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorCircleProgressBar$b;-><init>(Lcom/color/support/widget/ColorCircleProgressBar;)V

    iget-object v2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->d()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->c()V

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->r:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->t:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->w:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    if-lez v0, :cond_1

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    const/16 v1, 0x168

    rsub-int v0, v0, 0x168

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->k:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->k:I

    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->invalidate()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->s:Lcom/color/support/widget/ColorCircleProgressBar$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/color/support/widget/ColorCircleProgressBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorCircleProgressBar$a;-><init>(Lcom/color/support/widget/ColorCircleProgressBar;Lcom/color/support/widget/ColorCircleProgressBar$1;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->s:Lcom/color/support/widget/ColorCircleProgressBar$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->s:Lcom/color/support/widget/ColorCircleProgressBar$a;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/ColorCircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->t:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->f()V

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->s:Lcom/color/support/widget/ColorCircleProgressBar$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->y:I

    int-to-float v1, v0

    int-to-float v0, v0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/color/support/widget/ColorCircleProgressBar;->z:Landroid/graphics/RectF;

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->j:I

    int-to-float v6, v0

    iget-object v8, p0, Lcom/color/support/widget/ColorCircleProgressBar;->u:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->c:I

    iget p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorCircleProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    iput v0, v1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;->mProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->f:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->x:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->y:I

    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->y:I

    iget p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->x:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->A:F

    new-instance p2, Landroid/graphics/RectF;

    int-to-float p3, p1

    iget p4, p0, Lcom/color/support/widget/ColorCircleProgressBar;->A:F

    sub-float/2addr p3, p4

    int-to-float v0, p1

    sub-float/2addr v0, p4

    int-to-float v1, p1

    add-float/2addr v1, p4

    int-to-float p1, p1

    add-float/2addr p1, p4

    invoke-direct {p2, p3, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->z:Landroid/graphics/RectF;

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->e()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorCircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->h:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->i:I

    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->e()V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->a()V

    return-void
.end method
