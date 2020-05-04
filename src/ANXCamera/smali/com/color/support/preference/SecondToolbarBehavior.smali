.class public Lcom/color/support/preference/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SecondToolbarBehavior.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
        "Lcolor/support/design/widget/ColorAppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:[I

.field private i:I

.field private j:Landroid/view/ViewGroup$LayoutParams;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Landroid/content/res/Resources;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    invoke-direct {p0, p1}, Lcom/color/support/preference/SecondToolbarBehavior;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->e:I

    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->e:I

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->m:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    if-le v0, v1, :cond_4

    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    :goto_2
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->r:F

    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->r:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->e:I

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->o:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->p:I

    if-le v0, v1, :cond_7

    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_3

    :cond_7
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    :goto_3
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->s:F

    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->j:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/preference/SecondToolbarBehavior;->s:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->k:I

    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/SecondToolbarBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/preference/SecondToolbarBehavior;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p6

    :goto_0
    iget-boolean p3, p0, Lcom/color/support/preference/SecondToolbarBehavior;->u:Z

    if-eqz p3, :cond_1

    return p6

    :cond_1
    if-eqz p1, :cond_4

    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    if-gtz p1, :cond_2

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    iput-object p4, p0, Lcom/color/support/preference/SecondToolbarBehavior;->c:Landroid/view/View;

    sget p1, Lcolor/support/v7/appcompat/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->a:I

    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->j:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->i:I

    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    iget p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->m:I

    iget-object p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->p:I

    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->p:I

    iget p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->o:I

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    new-instance p1, Lcom/color/support/preference/SecondToolbarBehavior$1;

    invoke-direct {p1, p0}, Lcom/color/support/preference/SecondToolbarBehavior$1;-><init>(Lcom/color/support/preference/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    :cond_3
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_4

    check-cast p4, Landroid/widget/AbsListView;

    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_4
    :goto_1
    return p6
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/preference/SecondToolbarBehavior;->a()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Lcolor/support/design/widget/ColorAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/color/support/preference/SecondToolbarBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method
