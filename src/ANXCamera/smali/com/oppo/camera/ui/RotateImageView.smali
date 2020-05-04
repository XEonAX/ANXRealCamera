.class public Lcom/oppo/camera/ui/RotateImageView;
.super Lcom/oppo/camera/ui/j;
.source "RotateImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotateImageView;->f:J

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotateImageView;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->e:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotateImageView;->f:J

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotateImageView;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->e:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotateImageView;->f:J

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotateImageView;->g:J

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean p2, p0, Lcom/oppo/camera/ui/RotateImageView;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/RotateImageView;->e:Z

    :goto_0
    if-ltz p1, :cond_1

    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_1
    iget p2, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iget-boolean p1, p0, Lcom/oppo/camera/ui/RotateImageView;->e:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->b:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotateImageView;->f:J

    iget p1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iget p2, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_2
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/oppo/camera/ui/RotateImageView;->d:Z

    iget-wide v0, p0, Lcom/oppo/camera/ui/RotateImageView;->f:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotateImageView;->g:J

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->invalidate()V

    return-void
.end method

.method protected getDegree()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    iget v4, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    if-eq v1, v4, :cond_5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oppo/camera/ui/RotateImageView;->g:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    iget-wide v6, p0, Lcom/oppo/camera/ui/RotateImageView;->f:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v4, p0, Lcom/oppo/camera/ui/RotateImageView;->b:I

    iget-boolean v5, p0, Lcom/oppo/camera/ui/RotateImageView;->d:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_3

    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    :goto_1
    iput v4, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->invalidate()V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/oppo/camera/ui/RotateImageView;->c:I

    iput v1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_7

    if-lt v7, v2, :cond_6

    if-ge v5, v3, :cond_7

    :cond_6
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v8, v11

    mul-float/2addr v10, v11

    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_7
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/oppo/camera/ui/RotateImageView;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
