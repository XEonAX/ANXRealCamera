.class Landroidx/widget/ColorDrawerLayout$d;
.super Landroidx/customview/a/c$a;
.source "ColorDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/ColorDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/widget/ColorDrawerLayout;

.field private final b:I

.field private c:Landroidx/customview/a/c;

.field private d:I

.field private final e:Ljava/lang/Runnable;


# direct methods
.method private b()V
    .locals 5

    iget v0, p0, Landroidx/widget/ColorDrawerLayout$d;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x50

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, v4}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, v3}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, v4}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, v2}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, v2}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, v3}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/widget/ColorDrawerLayout;->i(Landroid/view/View;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/widget/ColorDrawerLayout;->i(Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/widget/ColorDrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/view/View;II)I
    .locals 2

    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p3, p1, v0}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {p3, p1, v1}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p3}, Landroidx/widget/ColorDrawerLayout;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    iget-object v1, p0, Landroidx/widget/ColorDrawerLayout$d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/widget/ColorDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->c:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroidx/customview/a/c;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v1}, Landroidx/widget/ColorDrawerLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iput v1, p0, Landroidx/widget/ColorDrawerLayout$d;->d:I

    :cond_1
    iget-object v1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    iget v2, p0, Landroidx/widget/ColorDrawerLayout$d;->b:I

    invoke-virtual {v1, v2, p1, v0}, Landroidx/widget/ColorDrawerLayout;->a(IILandroid/view/View;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->e:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, p2, v0, v1}, Landroidx/widget/ColorDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 9

    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p3, p1}, Landroidx/widget/ColorDrawerLayout;->d(Landroid/view/View;)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    cmpl-float p1, p2, v7

    if-gtz p1, :cond_2

    if-nez p1, :cond_0

    cmpl-float p1, p3, v5

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    neg-int p1, v0

    :cond_1
    :goto_0
    move v2, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v8, 0x5

    invoke-virtual {v4, p1, v8}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p1}, Landroidx/widget/ColorDrawerLayout;->getWidth()I

    move-result p1

    cmpg-float v1, p2, v7

    if-ltz v1, :cond_4

    cmpl-float p2, p2, v7

    if-nez p2, :cond_1

    cmpl-float p2, p3, v5

    if-lez p2, :cond_1

    :cond_4
    sub-int/2addr p1, v0

    goto :goto_0

    :cond_5
    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p2}, Landroidx/widget/ColorDrawerLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p3

    sub-int v3, p2, p3

    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/widget/ColorDrawerLayout;->a(Landroidx/widget/ColorDrawerLayout;I)I

    iget p2, p0, Landroidx/widget/ColorDrawerLayout$d;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-static {p1}, Landroidx/widget/ColorDrawerLayout;->a(Landroidx/widget/ColorDrawerLayout;)I

    move-result p1

    if-le p2, p1, :cond_6

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p1}, Landroidx/widget/ColorDrawerLayout;->getHeight()I

    move-result p1

    sub-int v3, p1, v1

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-static {p1, v6}, Landroidx/widget/ColorDrawerLayout;->a(Landroidx/widget/ColorDrawerLayout;I)I

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-static {p1}, Landroidx/widget/ColorDrawerLayout;->a(Landroidx/widget/ColorDrawerLayout;)I

    move-result p1

    neg-int p1, p1

    if-ge p2, p1, :cond_7

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-static {p1}, Landroidx/widget/ColorDrawerLayout;->b(Landroidx/widget/ColorDrawerLayout;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p1}, Landroidx/widget/ColorDrawerLayout;->getHeight()I

    move-result v3

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroidx/widget/ColorDrawerLayout;->a(Landroidx/widget/ColorDrawerLayout;I)I

    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->c:Landroidx/customview/a/c;

    invoke-virtual {p1, v2, v3}, Landroidx/customview/a/c;->a(II)Z

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p1}, Landroidx/widget/ColorDrawerLayout;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/widget/ColorDrawerLayout$c;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/widget/ColorDrawerLayout$c;->c:Z

    invoke-direct {p0}, Landroidx/widget/ColorDrawerLayout$d;->b()V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    add-int/2addr p2, p4

    int-to-float p2, p2

    :goto_0
    int-to-float p3, p4

    div-float/2addr p2, p3

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v3, 0x5

    invoke-virtual {v0, p1, v3}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p3}, Landroidx/widget/ColorDrawerLayout;->getWidth()I

    move-result p3

    sub-int/2addr p3, p2

    int-to-float p2, p3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p2}, Landroidx/widget/ColorDrawerLayout;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    int-to-float p3, p5

    div-float/2addr p2, p3

    cmpl-float p3, p2, v2

    if-nez p3, :cond_2

    move p3, v1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    :goto_1
    invoke-static {p1, p3}, Landroidx/core/g/u;->b(Landroid/view/View;I)V

    :goto_2
    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p3, p1, p2}, Landroidx/widget/ColorDrawerLayout;->b(Landroid/view/View;F)V

    cmpl-float p2, p2, v2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p1}, Landroidx/widget/ColorDrawerLayout;->invalidate()V

    return-void
.end method

.method public b(Landroid/view/View;II)I
    .locals 0

    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p3}, Landroidx/widget/ColorDrawerLayout;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-static {p1}, Landroidx/widget/ColorDrawerLayout;->c(Landroidx/widget/ColorDrawerLayout;)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p3, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p3}, Landroidx/widget/ColorDrawerLayout;->getHeight()I

    move-result p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public b(II)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroidx/widget/ColorDrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$d;->c:Landroidx/customview/a/c;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/a/c;->a(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/widget/ColorDrawerLayout;->g(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    iget v0, p0, Landroidx/widget/ColorDrawerLayout$d;->b:I

    invoke-virtual {p2, p1, v0}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/widget/ColorDrawerLayout$d;->a:Landroidx/widget/ColorDrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/widget/ColorDrawerLayout;->a(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
