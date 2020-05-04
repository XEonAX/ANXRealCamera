.class abstract Lcolor/support/v7/internal/widget/AbsSpinnerCompat;
.super Lcolor/support/v7/internal/widget/a;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;,
        Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcolor/support/v7/internal/widget/a<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private E:Landroid/database/DataSetObserver;

.field a:Landroid/widget/SpinnerAdapter;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final h:Landroid/graphics/Rect;

.field final i:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;


# direct methods
.method static synthetic a(Lcolor/support/v7/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->u:Z

    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->o:Z

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->removeAllViewsInLayout()V

    const/4 v0, -0x1

    iput v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->B:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->C:J

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    return-void
.end method

.method abstract a(IZ)V
.end method

.method b(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method b()V
    .locals 6

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->i:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;

    iget v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->j:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v2, v3

    invoke-virtual {v1, v5, v4}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;->a(ILandroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->z:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->z:I

    if-lez v0, :cond_0

    iget v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->x:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->x:I

    iget v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->j:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingBottom()I

    move-result v4

    iget-object v5, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v6, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->d:I

    if-le v1, v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v5, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->e:I

    if-le v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->f:I

    if-le v3, v2, :cond_2

    move v2, v3

    :cond_2
    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->g:I

    if-le v4, v2, :cond_3

    move v2, v4

    :cond_3
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->u:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->f()V

    :cond_4
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_7

    iget-object v4, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->i:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v4, v1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;->a(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->i:Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v5, v1, v4}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$a;->a(ILandroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->D:Z

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->D:Z

    :cond_6
    invoke-virtual {p0, v4, p1, p2}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v4}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v4}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->b(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    move v4, v2

    move v2, v3

    goto :goto_2

    :cond_7
    move v1, v3

    move v4, v1

    :goto_2
    if-eqz v2, :cond_8

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v2

    :cond_8
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p2, v3}, Landroidx/core/g/u;->a(III)I

    move-result v0

    invoke-static {v1, p1, v3}, Landroidx/core/g/u;->a(III)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setMeasuredDimension(II)V

    iput p2, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->b:I

    iput p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->c:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    check-cast p1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcolor/support/v7/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v0, p1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->u:Z

    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->o:Z

    iget-wide v0, p1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->m:J

    iget p1, p1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    iput p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->l:I

    const/4 p1, 0x0

    iput p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->p:I

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcolor/support/v7/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v1, v0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    iget-wide v2, v1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    :goto_0
    return-object v1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->D:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcolor/support/v7/internal/widget/a;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->E:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a()V

    :cond_0
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 p1, -0x1

    iput p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->B:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->C:J

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    iget v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->z:I

    iput v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->A:I

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->z:I

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->d()V

    new-instance v0, Lcolor/support/v7/internal/widget/a$a;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/a$a;-><init>(Lcolor/support/v7/internal/widget/a;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->E:Landroid/database/DataSetObserver;

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->E:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->z:I

    if-lez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    iget p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->z:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->d()V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->a()V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->g()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    return-void
.end method
