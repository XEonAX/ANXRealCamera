.class public Landroidx/recyclerview/widget/n;
.super Landroidx/recyclerview/widget/r;
.source "PagerSnapHelper.java"


# instance fields
.field private b:Landroidx/recyclerview/widget/m;

.field private c:Landroidx/recyclerview/widget/m;


# direct methods
.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/m;)I
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/m;->a(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/m;->e(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/m;->c()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/m;->f()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    return p1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/m;)Landroid/view/View;
    .locals 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/m;->c()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/m;->f()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/m;->a(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/m;->e(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_1

    move-object v1, v5

    move v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$i;II)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$i;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->J()I

    move-result v0

    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView$s$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$s$b;

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$s$b;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/n;->b:Landroidx/recyclerview/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/m;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/n;->b:Landroidx/recyclerview/widget/m;

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->b:Landroidx/recyclerview/widget/m;

    return-object p1
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/n;->c:Landroidx/recyclerview/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/n;->c:Landroidx/recyclerview/widget/m;

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->c:Landroidx/recyclerview/widget/m;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
    .locals 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->J()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v4

    move v4, v3

    move-object v3, v7

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v9, v2}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/m;)I

    move-result v10

    if-gtz v10, :cond_3

    if-le v10, v4, :cond_3

    move-object v3, v9

    move v4, v10

    :cond_3
    if-ltz v10, :cond_4

    if-ge v10, v8, :cond_4

    move-object v7, v9

    move v8, v10

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/RecyclerView$i;II)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_6
    if-nez p2, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v7

    :goto_2
    if-nez v3, :cond_9

    return v1

    :cond_9
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result p3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Z

    move-result p1

    if-ne p1, p2, :cond_a

    move p1, v1

    goto :goto_3

    :cond_a
    const/4 p1, 0x1

    :goto_3
    add-int/2addr p3, p1

    if-ltz p3, :cond_c

    if-lt p3, v0, :cond_b

    goto :goto_4

    :cond_b
    return p3

    :cond_c
    :goto_4
    return v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/m;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/m;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/m;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/m;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/m;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;
    .locals 1

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$s$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/n$1;

    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/n$1;-><init>(Landroidx/recyclerview/widget/n;Landroid/content/Context;)V

    return-object p1
.end method
