.class public Lcom/color/support/widget/ColorEditText$a;
.super Landroidx/customview/a/a;
.source "ColorEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/color/support/widget/ColorEditText;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorEditText;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-direct {p0, p2}, Landroidx/customview/a/a;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->d:Landroid/view/View;

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->g:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/color/support/widget/ColorEditText$a;->d:Landroid/view/View;

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->e:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getDeleteButtonLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private e(I)Landroid/graphics/Rect;
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText$a;->b()V

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method


# virtual methods
.method protected a(FF)I
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText$a;->b()V

    :cond_0
    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->f:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-static {p1}, Lcom/color/support/widget/ColorEditText;->b(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(ILandroidx/core/g/a/d;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-static {v0}, Lcom/color/support/widget/ColorEditText;->b(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->e(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->b(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->a(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText$a;->e(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$a;->c:Lcom/color/support/widget/ColorEditText;

    invoke-static {p1}, Lcom/color/support/widget/ColorEditText;->c(Lcom/color/support/widget/ColorEditText;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
