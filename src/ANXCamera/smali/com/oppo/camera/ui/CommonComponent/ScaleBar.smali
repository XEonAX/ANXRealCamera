.class public Lcom/oppo/camera/ui/CommonComponent/ScaleBar;
.super Landroid/view/View;
.source "ScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;,
        Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;,
        Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingInterpolator;
    }
.end annotation


# static fields
.field public static final CENTER_ALIGN:I = 0x2

.field private static final FIRST_CONTROL_POINT_X:F = 0.0f

.field private static final FIRST_CONTROL_POINT_Y:F = 0.0f

.field private static final FLING_VELOCITY_THRESHOLD:I = 0x3e8

.field public static final LEFT_ALIGN:I = 0x1

.field private static final SECOND:I = 0x3e8

.field private static final SECOND_CONTROL_POINT_X:F = 0.58f

.field private static final SECOND_CONTROL_POINT_Y:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ScaleBar"

.field private static final TEN_SMALL_SCALE_BETWEEN_BIG_SCALE:I = 0xa

.field private static sBigScaleAlpha:I = 0xff

.field private static sBigScaleColor:I

.field private static sPointerAutoColor:I

.field private static sPointerScaleColor:I

.field private static sSmallScaleAlpha:I


# instance fields
.field private mAlign:I

.field private mBigScaleStrokeWidth:I

.field private mCenterIndex:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mCountBetweenBigScale:I

.field private mCurrentIndex:I

.field private mDownX:F

.field private mFlingRunnable:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

.field private mLayoutWidth:I

.field private mLevelNum:I

.field private mMaxFlingVelocity:I

.field private mMyHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleBarValueChangeListener:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

.field private mScaleHeight:I

.field private mScaleMargin:I

.field private mScalePointerHeight:I

.field private mScalePointerX:I

.field private mSmallScaleStrokeWidth:I

.field private mStartDistanceX:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mbAuto:Z

.field private mbInitIndex:Z

.field private mbInitScalePointerX:Z

.field private mbValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sBigScaleAlpha:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sSmallScaleAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    iput-object p3, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mMyHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    const/16 p2, 0x1e

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    iput-boolean p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/ui/CommonComponent/ScaleBar;)Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oppo/camera/ui/CommonComponent/ScaleBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/camera/ui/CommonComponent/ScaleBar;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mMyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oppo/camera/ui/CommonComponent/ScaleBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->scrollNearbyScale()V

    return-void
.end method

.method private init()V
    .locals 5

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060354

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    const v3, 0x7f060358

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    const v4, 0x7f060352

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterY:I

    const v4, 0x7f060356

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    const v4, 0x7f060355

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleHeight:I

    const v4, 0x7f060357

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerHeight:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    iget-object v2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    const v3, 0x7f050038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sput v2, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sBigScaleColor:I

    const v2, 0x7f0501bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sPointerScaleColor:I

    const v2, 0x7f0501be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sPointerAutoColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sBigScaleColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mMaxFlingVelocity:I

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    if-gez v0, :cond_2

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    :cond_2
    return-void
.end method

.method private onMove(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    if-nez v0, :cond_0

    const-string p1, "ScaleBar"

    const-string v0, "onMove return, is not valid"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    iget p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    if-lt p1, v0, :cond_1

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v1

    add-int/2addr p1, v3

    if-gt p1, v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->updateIndex()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    return-void
.end method

.method private scrollNearbyScale()V
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    if-lez v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->updateIndex()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->postInvalidate()V

    :cond_2
    return-void
.end method

.method private updateIndex()V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    if-gtz v0, :cond_0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    if-eq v0, v2, :cond_1

    invoke-interface {v1}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;->onBarMoving()V

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;->onValueChange(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->setCurrentIndex(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    return v0
.end method

.method public initDataIndex(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbInitScalePointerX:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbInitIndex:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public needChangeValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v2, v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    :goto_0
    iget-object v1, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sBigScaleColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterY:I

    iget v4, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleHeight:I

    div-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v5, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_2

    iget v5, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    iget v7, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    rem-int/2addr v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    move v14, v6

    :goto_2
    iget v7, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-ge v14, v7, :cond_4

    iget v7, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    sub-int/2addr v7, v14

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v2

    iget v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v7, v8

    iget v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    div-int/2addr v8, v3

    sub-int/2addr v8, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    div-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    rem-int v8, v14, v8

    if-ne v8, v5, :cond_3

    iget-object v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v9, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sBigScaleAlpha:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_3
    iget-object v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v9, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sSmallScaleAlpha:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    iget v7, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    iget v8, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int v9, v8, v14

    add-int/2addr v9, v7

    int-to-float v9, v9

    int-to-float v10, v4

    mul-int/2addr v8, v14

    add-int/2addr v7, v8

    int-to-float v11, v7

    int-to-float v12, v1

    iget-object v15, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCenterY:I

    iget v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleHeight:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    iget-boolean v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sPointerAutoColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sPointerScaleColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget-object v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->sBigScaleAlpha:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    int-to-float v8, v2

    int-to-float v9, v3

    int-to-float v10, v2

    int-to-float v11, v1

    iget-object v12, v0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    if-lez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    iget p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbInitScalePointerX:Z

    iget-boolean p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbInitIndex:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    :cond_1
    iget p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->initDataIndex(I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->scrollNearbyScale()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_4

    neg-float p1, v0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mMaxFlingVelocity:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_7

    neg-float v0, v0

    :cond_7
    new-instance p1, Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    invoke-direct {p1, p0, v0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;-><init>(Lcom/oppo/camera/ui/CommonComponent/ScaleBar;F)V

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mMyHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->scrollNearbyScale()V

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;->onActionUp()V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;->cancelFling()V

    iput-object v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    :cond_a
    :goto_0
    return v2
.end method

.method public scrollTo(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlign(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    :cond_1
    return-void
.end method

.method public setAuto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setScaleBarValueChangeListener(Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oppo/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    return-void
.end method

.method public sliderLeft()V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    return-void
.end method

.method public sliderRight()V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    return-void
.end method
