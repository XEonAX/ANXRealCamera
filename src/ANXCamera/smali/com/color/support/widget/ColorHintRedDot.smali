.class public Lcom/color/support/widget/ColorHintRedDot;
.super Landroid/view/View;
.source "ColorHintRedDot.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/color/support/d/e;

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorHintRedDotStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    iput v0, p0, Lcom/color/support/widget/ColorHintRedDot;->b:I

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedPointMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedPointNum:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorHintRedDot;->b:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/color/support/d/e;

    sget-object v5, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot:[I

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/color/support/d/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->c:Lcom/color/support/d/e;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorHintRedDot;->d:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getPointMode()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    return v0
.end method

.method public getPointNumber()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorHintRedDot;->b:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->c:Lcom/color/support/d/e;

    iget v1, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    iget v2, p0, Lcom/color/support/widget/ColorHintRedDot;->b:I

    iget-object v3, p0, Lcom/color/support/widget/ColorHintRedDot;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/color/support/d/e;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/ColorHintRedDot;->c:Lcom/color/support/d/e;

    iget p2, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    iget v0, p0, Lcom/color/support/widget/ColorHintRedDot;->b:I

    invoke-virtual {p1, p2, v0}, Lcom/color/support/d/e;->a(II)I

    move-result p1

    iget-object p2, p0, Lcom/color/support/widget/ColorHintRedDot;->c:Lcom/color/support/d/e;

    iget v0, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    invoke-virtual {p2, v0}, Lcom/color/support/d/e;->a(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorHintRedDot;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPointMode(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorHintRedDot;->a:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->requestLayout()V

    return-void
.end method

.method public setPointNumber(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorHintRedDot;->b:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->requestLayout()V

    return-void
.end method
