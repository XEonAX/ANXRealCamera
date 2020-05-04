.class public Lcom/oppo/camera/ui/RotateMoreItem;
.super Landroid/view/View;
.source "RotateMoreItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:J

.field private f:J

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Landroid/text/TextPaint;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/RotateMoreItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/RotateMoreItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->c:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->e:J

    iput-wide v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->f:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->g:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->j:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->k:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->n:F

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->o:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->q:I

    sget-object v1, Lcom/oppo/camera/R$styleable;->RotateMoreItem:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/RotateMoreItem;->j:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->k:I

    const/4 p2, 0x1

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/RotateMoreItem;->l:I

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->m:I

    const/4 p2, 0x6

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->n:F

    const/4 p2, 0x3

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->o:I

    const/4 p2, 0x5

    const/16 p3, 0x46

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->p:I

    const/4 p2, 0x7

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->q:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->n:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->o:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oppo/camera/o/d;->t()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private getRealBitmap()Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->g:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v5, :cond_5

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->j:I

    if-gt v5, v1, :cond_2

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->k:I

    if-le v6, v1, :cond_4

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->j:I

    int-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->k:I

    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->g:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    if-ltz p2, :cond_0

    rem-int/lit16 p2, p2, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p2, p2, 0x168

    add-int/lit16 p2, p2, 0x168

    :goto_0
    iput p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->c:I

    iget p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->b:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->e:J

    iget p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->c:I

    iget p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_2

    add-int/lit16 p1, p1, -0x168

    :cond_2
    if-ltz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->d:Z

    iget-wide v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->e:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->f:J

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->c:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->f:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->b:I

    iget-boolean v2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->d:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    :goto_1
    iput v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->invalidate()V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    :cond_3
    :goto_2
    iget v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->a:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->getRealBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/oppo/camera/ui/RotateMoreItem;->q:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/camera/ui/RotateMoreItem;->k:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->a()V

    iget-object v0, p0, Lcom/oppo/camera/ui/RotateMoreItem;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    iget v5, p0, Lcom/oppo/camera/ui/RotateMoreItem;->p:I

    invoke-static {v0, v1, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->m:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v3, p0, Lcom/oppo/camera/ui/RotateMoreItem;->i:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotateMoreItem;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/oppo/camera/ui/RotateMoreItem;->p:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v2, p0, Lcom/oppo/camera/ui/RotateMoreItem;->q:I

    iget v4, p0, Lcom/oppo/camera/ui/RotateMoreItem;->k:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/oppo/camera/ui/RotateMoreItem;->l:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/RotateMoreItem;->h:Ljava/lang/String;

    return-void
.end method
