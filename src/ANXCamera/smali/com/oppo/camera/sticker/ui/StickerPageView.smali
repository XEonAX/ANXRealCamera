.class public Lcom/oppo/camera/sticker/ui/StickerPageView;
.super Landroidx/viewpager/widget/ViewPager;
.source "StickerPageView.java"


# instance fields
.field private d:Lcom/oppo/camera/sticker/ui/g;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/sticker/ui/StickerPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->d:Lcom/oppo/camera/sticker/ui/g;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->h:I

    return-void
.end method

.method private b(F)V
    .locals 4

    iput p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->g()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/camera/sticker/ui/StickerPageView;->layout(IIII)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->d:Lcom/oppo/camera/sticker/ui/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->h:I

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->d:Lcom/oppo/camera/sticker/ui/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/g;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/a;->a()I

    move-result v3

    const/high16 v4, -0x3ee00000    # -10.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x3f000000    # 0.5f

    if-le v3, v1, :cond_5

    iget v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->h:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-eqz v3, :cond_1

    cmpl-float v3, v2, v5

    if-lez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->b(F)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-nez v3, :cond_9

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->layout(IIII)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/viewpager/widget/a;->a()I

    move-result v5

    sub-int/2addr v5, v1

    if-ne v3, v5, :cond_4

    iget-boolean v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-eqz v3, :cond_3

    cmpg-float v3, v2, v4

    if-gez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->b(F)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-nez v3, :cond_9

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->layout(IIII)V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-eqz v3, :cond_7

    cmpl-float v3, v2, v5

    if-gtz v3, :cond_6

    cmpg-float v3, v2, v4

    if-gez v3, :cond_7

    :cond_6
    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->b(F)V

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-nez v3, :cond_9

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->g:F

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getBottom()I

    move-result v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/oppo/camera/sticker/ui/StickerPageView;->layout(IIII)V

    :cond_8
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->layout(IIII)V

    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->f:Z

    if-nez v0, :cond_b

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->f()V

    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setStickerCategoryInterface(Lcom/oppo/camera/sticker/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerPageView;->d:Lcom/oppo/camera/sticker/ui/g;

    return-void
.end method
