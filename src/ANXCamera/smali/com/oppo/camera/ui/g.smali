.class public abstract Lcom/oppo/camera/ui/g;
.super Lcom/oppo/camera/ui/menu/setting/l;
.source "OppoSeekLineBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/g$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:F

.field protected e:Z

.field protected f:Landroid/view/animation/BaseInterpolator;

.field protected g:Landroid/view/animation/BaseInterpolator;

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:J

.field protected l:Landroid/content/Context;

.field protected m:Lcom/oppo/camera/ui/g$a;

.field protected n:Landroid/os/Handler;

.field private s:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/menu/setting/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/oppo/camera/ui/g;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/g;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/g;->c:I

    const p2, 0x3d4ccccd    # 0.05f

    iput p2, p0, Lcom/oppo/camera/ui/g;->d:F

    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->g:Landroid/view/animation/BaseInterpolator;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/g;->h:F

    iput v1, p0, Lcom/oppo/camera/ui/g;->i:F

    iput v1, p0, Lcom/oppo/camera/ui/g;->j:F

    const-wide/16 v2, 0x578

    iput-wide v2, p0, Lcom/oppo/camera/ui/g;->k:J

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {p2, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->s:Landroid/view/animation/PathInterpolator;

    new-instance p2, Lcom/oppo/camera/ui/g$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/g$1;-><init>(Lcom/oppo/camera/ui/g;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->n:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oppo/camera/ui/g;->l:Landroid/content/Context;

    iget-object p1, p0, Lcom/oppo/camera/ui/g;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/g;->a:I

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060363

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/g;->b:I

    goto :goto_0

    :cond_0
    const p2, 0x7f060362

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/g;->b:I

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getCollapseInterpolator()Landroid/view/animation/BaseInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getExpandInterpolator()Landroid/view/animation/BaseInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/g;->g:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/g;->setRate(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/g;->setRate(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected K_()V
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getVisibility()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/oppo/camera/ui/g;->e:Z

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected L_()V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/g$a;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    return-void
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/g;->h:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    return-void
.end method

.method protected a(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setRate(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/g;->i:F

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/g$a;->b(F)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget p1, p0, Lcom/oppo/camera/ui/g;->c:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/g;->n:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x50

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/ui/g;->s:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 8

    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/g;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xa0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oppo/camera/ui/g;->s:Landroid/view/animation/PathInterpolator;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/g;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/g;->g:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/g$a;->c(F)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    iget p1, p0, Lcom/oppo/camera/ui/g;->h:F

    iget v0, p0, Lcom/oppo/camera/ui/g;->d:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/oppo/camera/ui/g;->h:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/g$a;->c(F)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->f(Landroid/graphics/Canvas;)V

    iput v1, p0, Lcom/oppo/camera/ui/g;->h:F

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    :goto_0
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    iget v2, p0, Lcom/oppo/camera/ui/g;->h:F

    invoke-virtual {v1, v2}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/g$a;->d(F)V

    iget v0, p0, Lcom/oppo/camera/ui/g;->h:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/ui/g;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    iget p1, p0, Lcom/oppo/camera/ui/g;->h:F

    const v0, 0x3d8f5c29    # 0.07f

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/oppo/camera/ui/g;->h:F

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/oppo/camera/ui/g;->h:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/g;->e:Z

    if-eqz v1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->a(Landroid/graphics/Canvas;)V

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/g$a;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getCollapseDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/ui/g;->k:J

    return-wide v0
.end method

.method protected getCollapseInterpolator()Landroid/view/animation/BaseInterpolator;
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method protected getExpandInterpolator()Landroid/view/animation/BaseInterpolator;
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f970a3d    # 1.18f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/l;->onMeasure(II)V

    iget p1, p0, Lcom/oppo/camera/ui/g;->a:I

    iget p2, p0, Lcom/oppo/camera/ui/g;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/g;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCollapseDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/ui/g;->k:J

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/oppo/camera/ui/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    return-void
.end method

.method public setRate(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRate, rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoSeekLineBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->a(FFF)F

    move-result p1

    iget v0, p0, Lcom/oppo/camera/ui/g;->i:F

    iput v0, p0, Lcom/oppo/camera/ui/g;->j:F

    iput p1, p0, Lcom/oppo/camera/ui/g;->i:F

    return-void
.end method

.method public setStatus(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoSeekLineBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/g;->c:I

    return-void
.end method
