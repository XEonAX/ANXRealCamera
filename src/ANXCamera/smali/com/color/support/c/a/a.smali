.class public Lcom/color/support/c/a/a;
.super Landroidx/customview/a/a;
.source "ColorViewExplorerByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/c/a/a$a;
    }
.end annotation


# instance fields
.field private final c:Landroid/graphics/Rect;

.field private d:Landroid/view/View;

.field private e:Lcom/color/support/c/a/a$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/customview/a/a;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/c/a/a;->c:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/c/a/a;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    iput-object p1, p0, Lcom/color/support/c/a/a;->d:Landroid/view/View;

    return-void
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0}, Lcom/color/support/c/a/a$a;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0, p1, p2}, Lcom/color/support/c/a/a$a;->a(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(FF)I
    .locals 1

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0, p1, p2}, Lcom/color/support/c/a/a$a;->a(FF)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0, p1}, Lcom/color/support/c/a/a$a;->a(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(ILandroidx/core/g/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/c/a/a;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/color/support/c/a/a;->a(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0, p1}, Lcom/color/support/c/a/a$a;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->e(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/color/support/c/a/a;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->b(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0}, Lcom/color/support/c/a/a$a;->c()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0}, Lcom/color/support/c/a/a$a;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->b(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->a(I)V

    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0}, Lcom/color/support/c/a/a$a;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->e(Z)V

    :cond_1
    iget-object v0, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v0}, Lcom/color/support/c/a/a$a;->d()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->g(Z)V

    :cond_2
    return-void
.end method

.method public a(Lcom/color/support/c/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

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

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {v1}, Lcom/color/support/c/a/a$a;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Lcom/color/support/c/a/a;->e:Lcom/color/support/c/a/a$a;

    invoke-interface {p2, p1, v0, p3}, Lcom/color/support/c/a/a$a;->a(IIZ)V

    const/4 p1, 0x1

    return p1
.end method
