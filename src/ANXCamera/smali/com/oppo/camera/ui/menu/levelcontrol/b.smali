.class public Lcom/oppo/camera/ui/menu/levelcontrol/b;
.super Landroid/widget/ImageView;
.source "CameraImageButton.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->b:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->c:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->f:Ljava/lang/String;

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->h:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->j:J

    iput-wide v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->m:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->n:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f060265

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    const v2, 0x7f06028c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    const v2, 0x7f060267

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f060266

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f05017e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {}, Lcom/oppo/camera/o/d;->t()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->f:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->k:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->h:I

    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->m:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x168

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    :goto_1
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->invalidate()V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move p2, v1

    :cond_0
    if-ltz p1, :cond_1

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->h:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->j:J

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    iget p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->m:Z

    iget-wide v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->j:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x168

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->k:J

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->invalidate()V

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->i:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    :goto_2
    return-void
.end method

.method public a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->e:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->c:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    iput-object p3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->e:I

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->b()V

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-boolean v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->n:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    sub-float/2addr v3, v4

    :goto_0
    iget-boolean v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->n:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    sub-float/2addr v1, v4

    :goto_1
    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->b()V

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->g:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-boolean v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->n:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    sub-float/2addr v3, v4

    :goto_2
    iget-boolean v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->n:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    sub-float/2addr v1, v4

    :goto_3
    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->l:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_4
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

.method public setNormalShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->n:Z

    return-void
.end method

.method public setPopdownButtonImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/b;->e:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->invalidate()V

    return-void
.end method
