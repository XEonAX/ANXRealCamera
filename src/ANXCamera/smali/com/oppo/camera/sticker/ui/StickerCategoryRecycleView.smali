.class public Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "StickerCategoryRecycleView.java"


# instance fields
.field private R:I

.field private S:I

.field private T:I

.field private a:Landroid/graphics/Rect;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private e:Lcom/oppo/camera/sticker/ui/g;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    const-string p2, "NONE"

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->c:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->e:Lcom/oppo/camera/sticker/ui/g;

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->f:Landroid/content/Context;

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->f:Landroid/content/Context;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->R:I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603be

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->S:I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->T:I

    return-void
.end method

.method private A()V
    .locals 4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->layout(IIII)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    const-string v2, "LEFT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->r()I

    move-result v3

    sub-int/2addr v0, v1

    if-ne v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->T:I

    iget v7, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->S:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->R:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getBottom()I

    move-result v4

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iput-object v2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "RIGHT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->T:I

    if-ne v2, v3, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->A()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->e:Lcom/oppo/camera/sticker/ui/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->c:F

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->c:F

    sub-float v2, v0, v2

    iput v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->c:F

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    const-string v3, "NONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "LEFT"

    const-string v5, "RIGHT"

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1

    move-object v0, v5

    :cond_1
    const/high16 v5, -0x3ee00000    # -10.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    move-object v0, v4

    :cond_2
    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLeft()I

    move-result v0

    mul-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v4, v5, v2}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->layout(IIII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getRight()I

    move-result v0

    mul-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v4, v5, v2}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->layout(IIII)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->z()V

    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setStickerCategoryInterface(Lcom/oppo/camera/sticker/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->e:Lcom/oppo/camera/sticker/ui/g;

    return-void
.end method
