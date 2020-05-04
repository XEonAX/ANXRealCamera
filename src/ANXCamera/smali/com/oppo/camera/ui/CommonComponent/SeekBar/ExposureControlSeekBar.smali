.class public Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;
.super Landroid/view/View;
.source "ExposureControlSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final BAR_WIDTH:I = 0x3

.field public static final DEFAULT_PROGRESS:F = 0.5f

.field private static final DRAWABLE_GAP:I = 0x8

.field private static final EXPOSURE_ANIMATION_DURATION:I = 0xfa

.field public static final MAX_VALUE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "ExposureControlSeekBar"


# instance fields
.field private mBottomDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mExporebarHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLinePath:Landroid/graphics/Path;

.field private mOnSeekBarChangeListener:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;

.field private mOrientation:I

.field private mValue:F

.field private mXCoordinate:F

.field private mbShowBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mValue:F

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOnSeekBarChangeListener:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;

    const/high16 p4, -0x40800000    # -1.0f

    iput p4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mbShowBar:Z

    iput p4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iput p4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060206

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->initProgressBar()V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const v3, 0x7f06022f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, p4

    const p4, 0x7f06022e

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    aput p1, v2, v0

    invoke-direct {v1, v2, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    const-string p2, "#FFCC00"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    return-void
.end method

.method private clamp(II)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    int-to-float p2, p2

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    :cond_0
    iget p2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    int-to-float p1, p1

    cmpg-float p2, p2, p1

    if-gez p2, :cond_1

    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    :cond_1
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget v4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawFilled(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawUnFilled(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_3

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private initProgressBar()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setProgress(F)V

    return-void
.end method

.method private refreshProgress()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->clamp(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOnSeekBarChangeListener:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;->onProgressChange(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->invalidate()V

    return-void
.end method

.method private setProgress(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mValue:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mExporebarHeight:I

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->refreshProgress()V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mValue:F

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mXCoordinate:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setProgress(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mbShowBar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->drawUnFilled(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->drawFilled(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->drawButton(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetProgress()V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setProgress(F)V

    return-void
.end method

.method public setBarVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mbShowBar:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->invalidate()V

    return-void
.end method

.method public setMoveProgress(F)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mValue:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setProgress(F)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOnSeekBarChangeListener:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    iget p2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOnSeekBarChangeListener:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->mOrientation:I

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;->onOrientationChange(I)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
