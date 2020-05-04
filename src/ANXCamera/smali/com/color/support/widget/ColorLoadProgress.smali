.class public Lcom/color/support/widget/ColorLoadProgress;
.super Landroidx/appcompat/widget/f;
.source "ColorLoadProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLoadProgress$SavedState;,
        Lcom/color/support/widget/ColorLoadProgress$a;,
        Lcom/color/support/widget/ColorLoadProgress$b;
    }
.end annotation


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final r:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field protected e:Z

.field protected f:F

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Z

.field private n:Lcom/color/support/widget/ColorLoadProgress$b;

.field private o:Lcom/color/support/widget/ColorLoadProgress$b;

.field private p:Lcom/color/support/widget/ColorLoadProgress$a;

.field private final q:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->color_state_default:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/ColorLoadProgress;->g:[I

    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->color_state_wait:I

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/ColorLoadProgress;->h:[I

    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->color_state_fail:I

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/ColorLoadProgress;->i:[I

    new-array v0, v0, [I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->color_state_ing:I

    aput v1, v0, v3

    sput-object v0, Lcom/color/support/widget/ColorLoadProgress;->j:[I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/color/support/widget/ColorLoadProgress;->r:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->p:Lcom/color/support/widget/ColorLoadProgress$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/color/support/widget/ColorLoadProgress$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorLoadProgress$a;-><init>(Lcom/color/support/widget/ColorLoadProgress;Lcom/color/support/widget/ColorLoadProgress$1;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->p:Lcom/color/support/widget/ColorLoadProgress$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->p:Lcom/color/support/widget/ColorLoadProgress$a;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/ColorLoadProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method a(I)V
    .locals 0

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->q:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1}, Landroidx/core/g/a/c;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadProgress;->b()V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/f;->drawableStateChanged()V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->c:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->b:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->a:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/f;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/color/support/widget/ColorLoadProgress;->g:[I

    invoke-static {p1, v1}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/color/support/widget/ColorLoadProgress;->j:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/color/support/widget/ColorLoadProgress;->h:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/color/support/widget/ColorLoadProgress;->i:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    :cond_3
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->p:Lcom/color/support/widget/ColorLoadProgress$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/f;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/color/support/widget/ColorLoadProgress$SavedState;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLoadProgress$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/f;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mState:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    iget p1, p1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->setProgress(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->setFreezesText(Z)V

    invoke-super {p0}, Landroidx/appcompat/widget/f;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorLoadProgress$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/ColorLoadProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v0

    iput v0, v1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mState:I

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->b:I

    iput v0, v1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mProgress:I

    return-object v1
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->a()V

    invoke-super {p0}, Landroidx/appcompat/widget/f;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->k:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->k:I

    const/4 p1, 0x0

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->k:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->k:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->setMinHeight(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->refreshDrawableState()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->c:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->c:I

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->b:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->b:I

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    :cond_2
    return-void
.end method

.method public setOnStateChangeListener(Lcom/color/support/widget/ColorLoadProgress$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->n:Lcom/color/support/widget/ColorLoadProgress$b;

    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/color/support/widget/ColorLoadProgress$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->o:Lcom/color/support/widget/ColorLoadProgress$b;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorLoadProgress;->c:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    iget v1, p0, Lcom/color/support/widget/ColorLoadProgress;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->b:I

    :cond_2
    iget-boolean v1, p0, Lcom/color/support/widget/ColorLoadProgress;->e:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadProgress;->e:Z

    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->a(I)V

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->a:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->a:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->m:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->m:Z

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->n:Lcom/color/support/widget/ColorLoadProgress$b;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->a:I

    invoke-interface {p1, p0, v0}, Lcom/color/support/widget/ColorLoadProgress$b;->a(Lcom/color/support/widget/ColorLoadProgress;I)V

    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->o:Lcom/color/support/widget/ColorLoadProgress$b;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->a:I

    invoke-interface {p1, p0, v0}, Lcom/color/support/widget/ColorLoadProgress$b;->a(Lcom/color/support/widget/ColorLoadProgress;I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->m:Z

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
