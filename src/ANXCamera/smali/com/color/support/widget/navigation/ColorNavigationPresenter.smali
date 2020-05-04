.class public Lcom/color/support/widget/navigation/ColorNavigationPresenter;
.super Ljava/lang/Object;
.source "ColorNavigationPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/menu/g;

.field private b:Lcom/color/support/widget/navigation/b;

.field private c:Z

.field private d:I


# virtual methods
.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->b:Lcom/color/support/widget/navigation/b;

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/navigation/b;->a(Landroidx/appcompat/view/menu/g;)V

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->b:Lcom/color/support/widget/navigation/b;

    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;

    iget p1, p1, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;->mSelectedItemId:I

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->b:Lcom/color/support/widget/navigation/b;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/b;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->b:Lcom/color/support/widget/navigation/b;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/b;->b()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->d:I

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;-><init>()V

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->b:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v1}, Lcom/color/support/widget/navigation/b;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;->mSelectedItemId:I

    return-object v0
.end method
