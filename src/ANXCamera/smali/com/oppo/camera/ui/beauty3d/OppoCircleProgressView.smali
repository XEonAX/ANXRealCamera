.class public Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;
.super Landroid/view/View;
.source "OppoCircleProgressView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:I

.field private g:[I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/LinearGradient;

.field private l:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->c:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->d:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->e:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->g:[I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->h:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->i:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->j:I

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->k:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->l:Landroid/graphics/Point;

    sget-object v0, Lcom/oppo/camera/R$styleable;->shapeCircleProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->e:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoCircleProgressView, mDiameter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRingWidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OppoCircleProgressView"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->g:[I

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->g:[I

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    aput v1, v0, v2

    const v0, 0x7f050024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->h:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->c:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progressInvalidate, progressValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCircleProgressView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->d:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->postInvalidate()V

    return-void
.end method

.method public getCenterPoint()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->l:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->i:I

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->j:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->l:Landroid/graphics/Point;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->l:Landroid/graphics/Point;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->e:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->i:I

    sub-int v4, v3, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->j:I

    sub-int v6, v5, v0

    int-to-float v6, v6

    add-int/2addr v3, v1

    int-to-float v1, v3

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {v2, v4, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->c:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->b:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->c:Landroid/graphics/RectF;

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v6, v0, v1

    iget-object v8, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->a:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->i:I

    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout, mCenterX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCircleProgressView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->e:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->f:I

    add-int/2addr v0, v1

    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->i:I

    add-int v2, v1, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->j:I

    int-to-float v4, v3

    int-to-float v5, v1

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v6, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->g:[I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, v9

    move v3, v4

    move v4, v5

    move v5, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->k:Landroid/graphics/LinearGradient;

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method
