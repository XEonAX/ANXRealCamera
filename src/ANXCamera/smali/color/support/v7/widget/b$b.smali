.class Lcolor/support/v7/widget/b$b;
.super Lcolor/support/v7/internal/widget/c;
.source "ColorBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroidx/core/g/y;

.field private j:Landroidx/core/widget/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    sget v0, Lcolor/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcolor/support/v7/internal/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Lcolor/support/v7/widget/b$b;->g:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b$b;->setCacheColorHint(I)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/b$b;->getItemIdAtPosition(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/b$b;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private a(Landroid/view/View;IFF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/b$b;->h:Z

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/b$b;->setPressed(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/b$b;->layoutChildren()V

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/b$b;->setSelection(I)V

    invoke-virtual {p0, p2, p1, p3, p4}, Lcolor/support/v7/widget/b$b;->a(ILandroid/view/View;FF)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b$b;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/b$b;->refreshDrawableState()V

    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/b$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b$b;->f:Z

    return p1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/widget/b$b;->h:Z

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/b$b;->setPressed(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/b$b;->drawableStateChanged()V

    iget-object v0, p0, Lcolor/support/v7/widget/b$b;->i:Landroidx/core/g/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/g/y;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcolor/support/v7/widget/b$b;->i:Landroidx/core/g/y;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)Z
    .locals 7

    invoke-static {p1}, Landroidx/core/g/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    move p2, v1

    move v3, v2

    goto :goto_3

    :cond_1
    :goto_1
    move p2, v1

    move v3, p2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v4, p2}, Lcolor/support/v7/widget/b$b;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcolor/support/v7/widget/b$b;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Lcolor/support/v7/widget/b$b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    invoke-direct {p0, v3, v5, v4, p2}, Lcolor/support/v7/widget/b$b;->a(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v3, v5}, Lcolor/support/v7/widget/b$b;->a(Landroid/view/View;I)V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    invoke-direct {p0}, Lcolor/support/v7/widget/b$b;->d()V

    :cond_7
    if-eqz v3, :cond_9

    iget-object p2, p0, Lcolor/support/v7/widget/b$b;->j:Landroidx/core/widget/f;

    if-nez p2, :cond_8

    new-instance p2, Landroidx/core/widget/f;

    invoke-direct {p2, p0}, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Lcolor/support/v7/widget/b$b;->j:Landroidx/core/widget/f;

    :cond_8
    iget-object p2, p0, Lcolor/support/v7/widget/b$b;->j:Landroidx/core/widget/f;

    invoke-virtual {p2, v2}, Landroidx/core/widget/f;->a(Z)Landroidx/core/widget/a;

    iget-object p2, p0, Lcolor/support/v7/widget/b$b;->j:Landroidx/core/widget/f;

    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcolor/support/v7/widget/b$b;->j:Landroidx/core/widget/f;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroidx/core/widget/f;->a(Z)Landroidx/core/widget/a;

    :cond_a
    :goto_4
    return v3
.end method

.method protected c()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b$b;->h:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b$b;->g:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/c;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b$b;->g:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/c;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b$b;->g:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/c;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b$b;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcolor/support/v7/widget/b$b;->f:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcolor/support/v7/internal/widget/c;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
