.class public Lcom/color/support/widget/navigation/ColorNavigationView;
.super Landroid/widget/FrameLayout;
.source "ColorNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;,
        Lcom/color/support/widget/navigation/ColorNavigationView$a;,
        Lcom/color/support/widget/navigation/ColorNavigationView$b;,
        Lcom/color/support/widget/navigation/ColorNavigationView$c;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:Landroidx/appcompat/view/menu/g;

.field private final d:Lcom/color/support/widget/navigation/b;

.field private final e:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

.field private f:Landroid/view/MenuInflater;

.field private g:Landroid/animation/Animator;

.field private h:Landroid/animation/Animator;

.field private i:I

.field private j:I

.field private k:Lcom/color/support/widget/navigation/ColorNavigationView$c;

.field private l:Lcom/color/support/widget/navigation/ColorNavigationView$b;

.field private m:Lcom/color/support/widget/navigation/ColorNavigationView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/navigation/ColorNavigationView;->a:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/color/support/widget/navigation/ColorNavigationView;->b:[I

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->i:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_item_height:I

    goto :goto_0

    :cond_0
    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_item_height_land:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_2

    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_item_height:I

    goto :goto_1

    :cond_2
    sget p1, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_item_height_land:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_2
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/b;->setItemHeight(I)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->f:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->f:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/b;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/b;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/b;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/d/g;->b(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->j:I

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/color/support/d/g;->a(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->a(Z)V

    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->j:I

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object p1, p1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v2, v1, Lcom/color/support/widget/navigation/ColorNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setAnimationType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->g:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->h:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/b;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/b;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/b;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNeedTextAnim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->d:Lcom/color/support/widget/navigation/b;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/b;->setNeedTextAnim(Z)V

    return-void
.end method

.method public setOnAnimatorListener(Lcom/color/support/widget/navigation/ColorNavigationView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->m:Lcom/color/support/widget/navigation/ColorNavigationView$a;

    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/color/support/widget/navigation/ColorNavigationView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->l:Lcom/color/support/widget/navigation/ColorNavigationView$b;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/color/support/widget/navigation/ColorNavigationView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->k:Lcom/color/support/widget/navigation/ColorNavigationView$c;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView;->e:Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
