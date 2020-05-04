.class final Lcom/color/support/widget/ColorLockPatternView$e;
.super Landroidx/customview/a/a;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLockPatternView$e$a;
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/color/support/widget/ColorLockPatternView;

.field private d:Landroid/graphics/Rect;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/color/support/widget/ColorLockPatternView$e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private b(FF)I
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v0, p2}, Lcom/color/support/widget/ColorLockPatternView;->b(Lcom/color/support/widget/ColorLockPatternView;F)I

    move-result p2

    const/high16 v0, -0x80000000

    if-gez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1, p1}, Lcom/color/support/widget/ColorLockPatternView;->c(Lcom/color/support/widget/ColorLockPatternView;F)I

    move-result p1

    if-gez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView;->e(Lcom/color/support/widget/ColorLockPatternView;)[[Z

    move-result-object v1

    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, 0x1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    return p1
.end method

.method private f(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView;->e(Lcom/color/support/widget/ColorLockPatternView;)[[Z

    move-result-object v1

    aget-object v0, v1, v0

    aget-boolean p1, v0, p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g(I)Landroid/graphics/Rect;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$e;->d:Landroid/graphics/Rect;

    div-int/lit8 v1, p1, 0x3

    rem-int/lit8 p1, p1, 0x3

    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2}, Lcom/color/support/widget/ColorLockPatternView;->b(Lcom/color/support/widget/ColorLockPatternView;)[[Lcom/color/support/widget/ColorLockPatternView$b;

    move-result-object v2

    aget-object v2, v2, v1

    aget-object v2, v2, p1

    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2, p1}, Lcom/color/support/widget/ColorLockPatternView;->a(Lcom/color/support/widget/ColorLockPatternView;I)F

    move-result p1

    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2, v1}, Lcom/color/support/widget/ColorLockPatternView;->b(Lcom/color/support/widget/ColorLockPatternView;I)F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2}, Lcom/color/support/widget/ColorLockPatternView;->f(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v3}, Lcom/color/support/widget/ColorLockPatternView;->g(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v4}, Lcom/color/support/widget/ColorLockPatternView;->h(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v4

    iget-object v5, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v5}, Lcom/color/support/widget/ColorLockPatternView;->g(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v3

    sub-float v3, p1, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p1, v4

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-float p1, v1, v2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private h(I)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_cell_added_verbose:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(FF)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorLockPatternView$e;->b(FF)I

    move-result p1

    return p1
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorLockPatternView$e$a;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lcom/color/support/widget/ColorLockPatternView$e$a;->a:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected a(ILandroidx/core/g/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->h(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->c(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->h(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->e(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternView;->d(Lcom/color/support/widget/ColorLockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->a(Z)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/core/g/a/d$a;->e:Landroidx/core/g/a/d$a;

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->a(Landroidx/core/g/a/d$a;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->f(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->f(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->g(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternView;->d(Lcom/color/support/widget/ColorLockPatternView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->e(I)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/customview/a/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView;->d(Lcom/color/support/widget/ColorLockPatternView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$e;->c:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_area:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method e(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$e;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorLockPatternView$e;->a(II)Z

    return v0
.end method
