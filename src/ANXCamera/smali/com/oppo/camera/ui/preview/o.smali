.class public Lcom/oppo/camera/ui/preview/o;
.super Lcom/oppo/camera/ui/g;
.source "ZoomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/o$b;,
        Lcom/oppo/camera/ui/preview/o$a;
    }
.end annotation


# instance fields
.field private A:Landroid/content/Context;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:F

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:F

.field private T:F

.field private U:I

.field private V:I

.field private W:I

.field private aA:J

.field private aB:J

.field private aC:I

.field private aD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private aE:[F

.field private aF:Landroid/view/GestureDetector;

.field private aG:Lcom/oppo/camera/ui/preview/n;

.field private aH:Landroid/graphics/Bitmap;

.field private aI:Landroid/graphics/Bitmap;

.field private aJ:Landroid/graphics/Canvas;

.field private aK:Landroid/graphics/Canvas;

.field private aL:Landroid/graphics/Path;

.field private aM:I

.field private aN:I

.field private aO:I

.field private aP:I

.field private aQ:I

.field private aR:I

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:I

.field private aW:Landroid/graphics/Paint;

.field private aX:Landroid/graphics/Paint;

.field private aY:Landroid/text/TextPaint;

.field private final aZ:Landroid/graphics/Rect;

.field private aa:I

.field private ab:I

.field private ac:F

.field private ad:F

.field private ae:F

.field private af:F

.field private ag:F

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Landroid/graphics/drawable/Drawable;

.field private ao:F

.field private ap:F

.field private aq:[F

.field private ar:[F

.field private as:[I

.field private at:Landroid/graphics/Paint;

.field private au:Landroid/graphics/Paint;

.field private av:Landroid/graphics/Paint;

.field private aw:Landroid/graphics/Paint;

.field private ax:Landroid/graphics/Paint;

.field private ay:Landroid/graphics/Paint;

.field private az:Landroid/graphics/Paint;

.field private ba:Landroid/view/animation/PathInterpolator;

.field private bb:Ljava/text/DecimalFormat;

.field private final bc:Lcom/a/a/b;

.field private final bd:Lcom/a/a/f;

.field private be:Lcom/a/a/g;

.field private bf:Lcom/a/a/h;

.field private bg:F

.field private s:Landroid/view/VelocityTracker;

.field private t:I

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->s:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->t:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->u:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->v:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->w:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->x:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->y:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->z:F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->B:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->C:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->D:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->E:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->F:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->G:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->I:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->J:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->L:I

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->M:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->N:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->P:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->R:I

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->T:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->U:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->V:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->W:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aa:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->ab:I

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->ac:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->ad:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->ag:F

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/o;->ai:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/o;->ak:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->am:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->ao:F

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aq:[F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->ar:[F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->as:[I

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->av:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oppo/camera/ui/preview/o;->aA:J

    iput-wide v3, p0, Lcom/oppo/camera/ui/preview/o;->aB:J

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aC:I

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aE:[F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aF:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aL:Landroid/graphics/Path;

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aM:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aN:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aO:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aP:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aQ:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aR:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aS:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aT:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aU:I

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->aV:I

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aX:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/o;->aZ:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->ba:Landroid/view/animation/PathInterpolator;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->bb:Ljava/text/DecimalFormat;

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/o;->bc:Lcom/a/a/b;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->bc:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->b()Lcom/a/a/f;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    const-wide v3, 0x4072b9e6c4c5974eL    # 299.61884

    const-wide v5, 0x403b0c779a6b50b1L    # 27.0487

    invoke-static {v3, v4, v5, v6}, Lcom/a/a/g;->a(DD)Lcom/a/a/g;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/o;->be:Lcom/a/a/g;

    new-instance v3, Lcom/oppo/camera/ui/preview/o$b;

    invoke-direct {v3, p0, v0}, Lcom/oppo/camera/ui/preview/o$b;-><init>(Lcom/oppo/camera/ui/preview/o;Lcom/oppo/camera/ui/preview/o$1;)V

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/o;->bf:Lcom/a/a/h;

    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->bg:F

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/o;->l()V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/o;->setForceDarkAllowed(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v1, "#.#"

    invoke-direct {p1, v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o;->bb:Ljava/text/DecimalFormat;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->be:Lcom/a/a/g;

    invoke-virtual {p1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->bf:Lcom/a/a/h;

    invoke-virtual {p1, v0}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;F)F
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->bg:F

    return p1
.end method

.method private a(FF)I
    .locals 8

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->aC:I

    if-ge v7, v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    invoke-direct {p0, v7, v0}, Lcom/oppo/camera/ui/preview/o;->b(II)F

    move-result v3

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->E:I

    int-to-float v0, v0

    iget v4, p0, Lcom/oppo/camera/ui/preview/o;->G:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->F:I

    int-to-float v0, v0

    iget v4, p0, Lcom/oppo/camera/ui/preview/o;->G:I

    :goto_1
    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v1

    add-float/2addr v0, v4

    move v5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/o;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;FF)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/o;->a(FF)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;)Lcom/a/a/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    return-object p0
.end method

.method private a(IF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSlideTo, centerPointIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSeekBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->L:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/o;->M:F

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLjava/lang/String;Landroid/graphics/drawable/Drawable;FF)V
    .locals 8

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->av:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p5, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p5

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz p4, :cond_0

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p2

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFF)V

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    iget p6, p0, Lcom/oppo/camera/ui/preview/o;->T:F

    add-float/2addr p4, p6

    iget-object p6, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p5

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr v0, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v3, p3, v0

    float-to-int v3, v3

    mul-float/2addr v1, p5

    div-float/2addr v1, v2

    sub-float p5, p4, v1

    float-to-int p5, p5

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {p2, v3, p5, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 11

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    const v1, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    :goto_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->B:I

    int-to-float v1, v0

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->C:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v3, v0

    iget v4, p0, Lcom/oppo/camera/ui/preview/o;->I:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    :goto_1
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->B:I

    int-to-float v1, v0

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->C:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->S:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v3, v0

    iget v4, p0, Lcom/oppo/camera/ui/preview/o;->I:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_2
    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    move v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;FLjava/lang/String;Landroid/graphics/drawable/Drawable;FF)V

    const/4 p2, 0x0

    :goto_3
    iget-object p3, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    iget p3, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    if-eq p2, p3, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/oppo/camera/ui/preview/o;->b(II)F

    move-result p3

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->F:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aL:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aL:Landroid/graphics/Path;

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    iget p3, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aL:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Path;)V

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 13

    move-object v7, p0

    move/from16 v8, p4

    move/from16 v9, p5

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->B:I

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->H:I

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->D:I

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    invoke-direct {p0, v10, v8}, Lcom/oppo/camera/ui/preview/o;->b(II)F

    move-result v0

    if-ne v8, v9, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v10, v9}, Lcom/oppo/camera/ui/preview/o;->b(II)F

    move-result v1

    :goto_1
    sub-float/2addr v1, v0

    iget v2, v7, Lcom/oppo/camera/ui/preview/o;->bg:F

    mul-float/2addr v1, v2

    add-float v3, v0, v1

    if-ne v10, v8, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iget v1, v7, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->B:I

    int-to-float v0, v0

    mul-float v5, v0, v6

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->D:I

    int-to-float v1, v0

    iget v2, v7, Lcom/oppo/camera/ui/preview/o;->F:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, v7, Lcom/oppo/camera/ui/preview/o;->bg:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;FLjava/lang/String;Landroid/graphics/drawable/Drawable;FF)V

    :goto_2
    move-object v4, p1

    goto :goto_3

    :cond_1
    if-ne v10, v9, :cond_2

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iget v1, v7, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->B:I

    int-to-float v0, v0

    iget v1, v7, Lcom/oppo/camera/ui/preview/o;->bg:F

    mul-float v5, v0, v1

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->F:I

    int-to-float v2, v0

    iget v4, v7, Lcom/oppo/camera/ui/preview/o;->D:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->M:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/oppo/camera/ui/preview/o;->bb:Ljava/text/DecimalFormat;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/o;->d(F)F

    move-result v4

    float-to-double v11, v4

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v7, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/n;->a(F)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v11, v7, Lcom/oppo/camera/ui/preview/o;->bg:F

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move-object v3, v4

    move-object v4, v6

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;FLjava/lang/String;Landroid/graphics/drawable/Drawable;FF)V

    goto :goto_2

    :cond_2
    iget v0, v7, Lcom/oppo/camera/ui/preview/o;->af:F

    iget v1, v7, Lcom/oppo/camera/ui/preview/o;->F:I

    int-to-float v1, v1

    iget-object v2, v7, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    iget v1, v7, Lcom/oppo/camera/ui/preview/o;->D:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v7, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iget v1, v7, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setCenterPointIndex(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/o;->a(IF)V

    return-void
.end method

.method private a(FFFFF)Z
    .locals 2

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p3, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    float-to-double p1, p2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;FFFFF)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/ui/preview/o;->a(FFFFF)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    return p1
.end method

.method private b(II)F
    .locals 3

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->E:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->F:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->G:I

    :goto_0
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    mul-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->E:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->F:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->G:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    return p0
.end method

.method private b(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    iget v9, v6, Lcom/oppo/camera/ui/preview/o;->aP:I

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->aS:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const-string v0, "ZoomSeekBar"

    const-string v1, "drawIndicatorLines, text and drawable are null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v10, 0x0

    move v11, v10

    :goto_0
    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->V:I

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    if-ge v11, v0, :cond_4

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->U:I

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->V:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->i:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->U:I

    mul-int/2addr v1, v11

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, v11

    mul-float/2addr v1, v12

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->V:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/o;->g(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    div-float/2addr v1, v13

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v13

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v10

    :goto_1
    if-eqz v3, :cond_2

    iget-object v1, v6, Lcom/oppo/camera/ui/preview/o;->aX:Landroid/graphics/Paint;

    iget-object v2, v6, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    const v3, 0x7f050225

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    iget-object v1, v6, Lcom/oppo/camera/ui/preview/o;->aX:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->b:I

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->aU:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->aV:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, v6, Lcom/oppo/camera/ui/preview/o;->aX:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    div-float/2addr v1, v13

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/o;->j(F)F

    move-result v1

    iget-object v2, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->b:I

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->aM:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v12

    div-float/2addr v2, v13

    sub-float v4, v1, v2

    iget-object v1, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/o;->h(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v9

    mul-float/2addr v1, v12

    div-float/2addr v1, v13

    sub-float v2, v0, v1

    add-float v3, v0, v1

    iget-object v5, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->aR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->aN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->b:I

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->aM:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v12

    div-float/2addr v1, v13

    sub-float v4, v0, v1

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->aO:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v12

    div-float v1, v0, v13

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->aO:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v12

    div-float v3, v0, v13

    iget-object v5, v6, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    if-eqz p3, :cond_5

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v0, v0

    div-float v3, v0, v13

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->O:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFF)V

    goto :goto_3

    :cond_5
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v6, Lcom/oppo/camera/ui/preview/o;->aZ:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v10, v1, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aZ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v6, Lcom/oppo/camera/ui/preview/o;->aZ:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    div-float/2addr v2, v13

    iget v3, v6, Lcom/oppo/camera/ui/preview/o;->aT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->O:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v2, v6, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    return p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/o;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->ac:F

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/o;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->ad:F

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->B:I

    return p0
.end method

.method private f(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->R:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->J:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    return p0
.end method

.method private g(F)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->aE:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSectionStep()[F
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    aput v2, v0, v1

    return-object v0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    return-object v0

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private h(F)I
    .locals 5

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v0, v0

    const v1, 0x3d999998    # 0.07499999f

    mul-float/2addr v0, v1

    cmpg-float v0, p1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    const v3, 0x4129999a    # 10.6f

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    mul-float/2addr v0, v3

    sub-float/2addr v4, v0

    :goto_0
    mul-float/2addr v4, v2

    float-to-int p1, v4

    return p1

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v0, v0

    const v1, 0x3f6ccccd    # 0.925f

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p1, v3

    sub-float/2addr v4, p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    return p1
.end method

.method static synthetic h(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    return p0
.end method

.method private i(F)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->aC:I

    sub-int/2addr p1, v0

    sub-int v1, p1, v1

    :cond_1
    return v1
.end method

.method static synthetic i(Lcom/oppo/camera/ui/preview/o;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    return-object p0
.end method

.method private j(F)F
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->aa:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->aQ:I

    int-to-float p1, p1

    return p1

    :cond_0
    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->aQ:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->ba:Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->aN:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->aQ:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method static synthetic j(Lcom/oppo/camera/ui/preview/o;)Lcom/oppo/camera/ui/g$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/o;->m:Lcom/oppo/camera/ui/g$a;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/ui/preview/o;)Lcom/oppo/camera/ui/g$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/o;->m:Lcom/oppo/camera/ui/g$a;

    return-object p0
.end method

.method static synthetic l(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    return p0
.end method

.method private l()V
    .locals 11

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060453

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->b:I

    const v1, 0x7f060443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->F:I

    const v1, 0x7f060442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->G:I

    const v1, 0x7f06044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->D:I

    const v1, 0x7f06044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->E:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->E:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->D:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->B:I

    const v1, 0x7f06044b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->C:I

    const v1, 0x7f05022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->J:I

    const v1, 0x7f06045a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    const v1, 0x7f06045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->I:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->ae:F

    const v1, 0x7f060441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->af:F

    const v1, 0x7f06044f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->U:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oppo/camera/o/d;->t()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->J:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->au:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->R:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->av:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->av:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->av:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->av:Landroid/graphics/Paint;

    const v6, 0x7f050228

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->D:I

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aw:Landroid/graphics/Paint;

    const v6, 0x7f050229

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ax:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43c80000    # 400.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/oppo/camera/ui/preview/o;->u:I

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->u:I

    int-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/oppo/camera/ui/preview/o;->v:I

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    int-to-float v6, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    div-float/2addr v7, v6

    iput v7, p0, Lcom/oppo/camera/ui/preview/o;->w:F

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->w:F

    mul-float/2addr v6, v3

    iput v6, p0, Lcom/oppo/camera/ui/preview/o;->x:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->t:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aL:Landroid/graphics/Path;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->T:F

    const v3, 0x7f060447

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x7f060445

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x7f060446

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    const v9, 0x7f050227

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    const v9, 0x7f060448

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aU:I

    const v9, 0x7f060449

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aV:I

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/oppo/camera/ui/preview/o;->aX:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/oppo/camera/ui/preview/o;->aW:Landroid/graphics/Paint;

    invoke-virtual {v9, v3, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const v9, 0x7f06044e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aM:I

    const v9, 0x7f060451

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aN:I

    const v9, 0x7f060456

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aQ:I

    const v9, 0x7f060450

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aO:I

    const v9, 0x7f060455

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aP:I

    iget-object v9, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    const v10, 0x7f050226

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aR:I

    iget-object v9, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    const v10, 0x7f05022b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/camera/ui/preview/o;->aS:I

    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v9, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    invoke-virtual {v9, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    const v9, 0x7f060452

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oppo/camera/o/d;->t()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    invoke-virtual {v4, v3, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget v3, p0, Lcom/oppo/camera/ui/preview/o;->b:I

    const v4, 0x7f060444

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/oppo/camera/ui/preview/o;->aT:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3efae148    # 0.49f

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->ba:Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->d:F

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->U:I

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->aa:I

    return-void
.end method

.method private m()V
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/ui/preview/o;->aB:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/oppo/camera/ui/preview/o;->aA:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->P:I

    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/o;->ai:Z

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
    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic m(Lcom/oppo/camera/ui/preview/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/o;->ak:Z

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    return p0
.end method

.method static synthetic o(Lcom/oppo/camera/ui/preview/o;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->L:I

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/ui/preview/o;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/o;->M:F

    return p0
.end method

.method private setCenterPointIndex(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCenterPointIndex, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSeekBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    return-void
.end method

.method private setTouchPosition(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/o;->ac:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->ad:F

    return-void
.end method


# virtual methods
.method public K_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    invoke-super {p0}, Lcom/oppo/camera/ui/g;->K_()V

    return-void
.end method

.method public L_()V
    .locals 0

    invoke-super {p0}, Lcom/oppo/camera/ui/g;->L_()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->i()V

    return-void
.end method

.method protected a(FI)F
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->z:F

    iput v0, p0, Lcom/oppo/camera/ui/preview/o;->y:F

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->z:F

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->z:F

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->w:F

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->x:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->v:I

    iget v3, p0, Lcom/oppo/camera/ui/preview/o;->u:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->x:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->t:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->w:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    div-float/2addr p2, v1

    :cond_0
    neg-float p1, p1

    mul-float/2addr p1, p2

    return p1
.end method

.method public a(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->aC:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/ui/g;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/o;->setRate(F)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->j()V

    return-void
.end method

.method public a(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->c(F)F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->m:Lcom/oppo/camera/ui/g$a;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/g$a;->b(F)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->bb:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->d(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/n;->a(F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/o;->setExtraDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/o;->i(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/o;->setCenterPointIndex(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged, mCurrentDisplayText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomSeekBar"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    return-void
.end method

.method public a(FFFLjava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    iput-object p5, p0, Lcom/oppo/camera/ui/preview/o;->aD:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    iput p5, p0, Lcom/oppo/camera/ui/preview/o;->aC:I

    iput-boolean p6, p0, Lcom/oppo/camera/ui/preview/o;->ak:Z

    iput p2, p0, Lcom/oppo/camera/ui/preview/o;->ao:F

    iput p3, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getZoomSections()[F

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/o;->aq:[F

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/o;->getSectionStep()[F

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/o;->ar:[F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getIndicatorSections()[I

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/o;->as:[I

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/o;->as:[I

    array-length p3, p2

    const/4 p5, 0x1

    sub-int/2addr p3, p5

    aget p2, p2, p3

    add-int/2addr p2, p5

    iput p2, p0, Lcom/oppo/camera/ui/preview/o;->V:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->V:I

    sub-int/2addr p2, p5

    iput p2, p0, Lcom/oppo/camera/ui/preview/o;->N:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->N:I

    iget p3, p0, Lcom/oppo/camera/ui/preview/o;->U:I

    mul-int/2addr p2, p3

    iput p2, p0, Lcom/oppo/camera/ui/preview/o;->W:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->W:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    div-float p2, p3, p2

    iput p2, p0, Lcom/oppo/camera/ui/preview/o;->ag:F

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/o;->aE:[F

    const/4 p2, 0x0

    :goto_0
    iget-object p6, p0, Lcom/oppo/camera/ui/preview/o;->aE:[F

    array-length p6, p6

    if-ge p2, p6, :cond_1

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result v0

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aE:[F

    invoke-virtual {p0, p6}, Lcom/oppo/camera/ui/preview/o;->e(F)F

    move-result p6

    sub-float p6, p3, p6

    aput p6, v0, p2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aE:[F

    invoke-virtual {p0, p6}, Lcom/oppo/camera/ui/preview/o;->e(F)F

    move-result p6

    aput p6, v0, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/o;->at:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p4, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p6, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p4, p6

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr p4, p6

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p4, p2

    iput p4, p0, Lcom/oppo/camera/ui/preview/o;->T:F

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->e(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->c(F)F

    move-result p2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result p4

    if-ne p4, p5, :cond_2

    sub-float/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/preview/o;->setRate(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setRate(F)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/o;->bb:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/o;->d(F)F

    move-result p4

    float-to-double p4, p4

    invoke-virtual {p3, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "X"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/preview/o;->i(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setCenterPointIndex(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/preview/n;->a(F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setExtraDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init, mCurrentDisplayText: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomSeekBar"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f00a4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->postInvalidate()V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    if-eqz p2, :cond_5

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->P:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/preview/o;->aA:J

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/oppo/camera/ui/preview/o;->ai:Z

    iget-wide v0, p0, Lcom/oppo/camera/ui/preview/o;->aA:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x168

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/preview/o;->aB:J

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->Q:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/o;->O:I

    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget v5, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    iget v6, p0, Lcom/oppo/camera/ui/preview/o;->L:I

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/g;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x2

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getCollapseDelay()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/o;->aj:Z

    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/g;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->g:Landroid/view/animation/BaseInterpolator;

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->h:F

    invoke-virtual {v0, v1}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/o;->f(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->i()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/o;->f(F)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/o;->ah:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getCollapseDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/g;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public b(F)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUI, zoomValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    invoke-virtual {v1}, Lcom/a/a/f;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSeekBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->e(F)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_2

    move v0, v4

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sub-float/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/oppo/camera/ui/preview/o;->setRate(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/o;->setRate(F)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/o;->i(F)I

    move-result v2

    iget v4, p0, Lcom/oppo/camera/ui/preview/o;->K:I

    if-eq v2, v4, :cond_5

    iget v4, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    if-nez v4, :cond_4

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/ui/preview/o;->a(IF)V

    return v3

    :cond_4
    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/preview/o;->setCenterPointIndex(I)V

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/o;->bb:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->d(F)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "X"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    invoke-interface {v2, p1}, Lcom/oppo/camera/ui/preview/n;->a(F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setExtraDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUI, mCurrentDisplayText: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rate: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/o;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->postInvalidate()V

    return v3
.end method

.method public c(F)F
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->N:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x1

    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->as:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v2, v1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->aq:[F

    sub-int/2addr v1, p1

    aget p1, v3, v1

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->ar:[F

    aget v3, v3, v1

    aget v1, v2, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v3, v0

    add-float/2addr p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getZoom, zoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSeekBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->f:Landroid/view/animation/BaseInterpolator;

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->h:F

    invoke-virtual {v0, v1}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->m:Lcom/oppo/camera/ui/g$a;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/g$a;->d(F)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/o;->f(F)V

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->i()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->am:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->j()V

    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/g;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public d(F)F
    .locals 1

    const v0, 0x3727c5ac    # 1.0E-5f

    add-float/2addr p1, v0

    const v0, 0x3dcccccd    # 0.1f

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    return p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->bd:Lcom/a/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(F)F
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->aq:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v2, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget v4, v2, v3

    sub-float/2addr p1, v4

    aget v4, v2, v1

    aget v2, v2, v3

    sub-float/2addr v4, v2

    div-float/2addr p1, v4

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->as:[I

    aget v4, v2, v3

    int-to-float v4, v4

    aget v1, v2, v1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v4, p1

    iget p1, p0, Lcom/oppo/camera/ui/preview/o;->V:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr v4, p1

    return v4
.end method

.method public e()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne v2, v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/g;->f(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->i()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->az:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->am:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060452

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->am:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aY:Landroid/text/TextPaint;

    iget v2, p0, Lcom/oppo/camera/ui/preview/o;->H:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, v2}, Lcom/oppo/camera/ui/preview/o;->b(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->ay:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicatorSections()[I
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aq:[F

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->aq:[F

    aget v4, v3, v2

    add-int/lit8 v5, v2, -0x1

    aget v3, v3, v5

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o;->ar:[F

    aget v3, v3, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    aget v4, v1, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getLayoutDirection()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getZoomSections()[F
    .locals 12

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gez v0, :cond_0

    new-array v0, v4, [F

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->ao:F

    aput v1, v0, v3

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    aput v1, v0, v2

    return-object v0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-gtz v0, :cond_1

    new-array v0, v6, [F

    iget v5, p0, Lcom/oppo/camera/ui/preview/o;->ao:F

    aput v5, v0, v3

    aput v10, v0, v2

    aput v9, v0, v4

    aput v1, v0, v8

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    aput v1, v0, v7

    return-object v0

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [F

    iget v11, p0, Lcom/oppo/camera/ui/preview/o;->ao:F

    aput v11, v0, v3

    aput v10, v0, v2

    aput v9, v0, v4

    aput v1, v0, v8

    aput v5, v0, v7

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->ap:F

    aput v1, v0, v6

    return-object v0
.end method

.method public i()V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/oppo/camera/ui/preview/o;->a:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/o;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aH:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aI:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aK:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/o;->aJ:Landroid/graphics/Canvas;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/o;->m()V

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/g;->onDraw(Landroid/graphics/Canvas;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/n;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const-string v9, "ZoomSeekBar"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aF:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, v6, Lcom/oppo/camera/ui/preview/o;->A:Landroid/content/Context;

    new-instance v3, Lcom/oppo/camera/ui/preview/o$a;

    invoke-direct {v3, p0, v1}, Lcom/oppo/camera/ui/preview/o$a;-><init>(Lcom/oppo/camera/ui/preview/o;Lcom/oppo/camera/ui/preview/o$1;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aF:Landroid/view/GestureDetector;

    :cond_1
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->s:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/oppo/camera/ui/preview/o;->s:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->aF:Landroid/view/GestureDetector;

    invoke-virtual {v0, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    if-eqz v0, :cond_f

    if-eq v0, v11, :cond_c

    if-eq v0, v14, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/o;->setTouchPosition(Landroid/view/MotionEvent;)V

    iput-boolean v10, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    goto/16 :goto_1

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/o;->setTouchPosition(Landroid/view/MotionEvent;)V

    iput-boolean v10, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iput-boolean v10, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->ac:F

    iget v4, v6, Lcom/oppo/camera/ui/preview/o;->ad:F

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    div-int/2addr v0, v14

    int-to-float v5, v0

    iget v7, v6, Lcom/oppo/camera/ui/preview/o;->af:F

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->E:I

    int-to-float v0, v0

    iget v8, v6, Lcom/oppo/camera/ui/preview/o;->G:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    add-float/2addr v8, v0

    move-object v0, p0

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/o;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v11, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iput-boolean v11, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    goto/16 :goto_1

    :cond_6
    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eqz v0, :cond_b

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eq v11, v0, :cond_b

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne v1, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne v14, v0, :cond_8

    iget-boolean v0, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    if-eqz v0, :cond_8

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    div-int/2addr v0, v14

    int-to-float v4, v0

    iget v5, v6, Lcom/oppo/camera/ui/preview/o;->af:F

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->E:I

    int-to-float v0, v0

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->G:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float v8, v0, v1

    move-object v0, p0

    move v1, v12

    move v2, v13

    move v3, v4

    move v4, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/o;->a(FFFFF)Z

    move-result v0

    iput-boolean v0, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->ab:I

    if-eq v1, v0, :cond_9

    iput v0, v6, Lcom/oppo/camera/ui/preview/o;->ab:I

    iput v12, v6, Lcom/oppo/camera/ui/preview/o;->y:F

    iput v12, v6, Lcom/oppo/camera/ui/preview/o;->z:F

    :cond_9
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->s:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->v:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v12, v0}, Lcom/oppo/camera/ui/preview/o;->a(FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v6, Lcom/oppo/camera/ui/preview/o;->ag:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return, currentAdjustRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mPixelRate: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->ag:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_a
    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->i:F

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/o;->setRate(F)V

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->i:F

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/o;->a(F)V

    goto/16 :goto_1

    :cond_b
    :goto_0
    return v11

    :cond_c
    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eq v11, v0, :cond_d

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne v14, v0, :cond_e

    :cond_d
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getCollapseDelay()J

    move-result-wide v1

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    iput-boolean v10, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iput-boolean v10, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    goto :goto_1

    :cond_f
    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eq v1, v0, :cond_15

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne v11, v0, :cond_10

    goto :goto_1

    :cond_10
    iput v12, v6, Lcom/oppo/camera/ui/preview/o;->ac:F

    iput v13, v6, Lcom/oppo/camera/ui/preview/o;->ad:F

    iput v12, v6, Lcom/oppo/camera/ui/preview/o;->y:F

    iput v12, v6, Lcom/oppo/camera/ui/preview/o;->z:F

    iget v1, v6, Lcom/oppo/camera/ui/preview/o;->ac:F

    iget v4, v6, Lcom/oppo/camera/ui/preview/o;->ad:F

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->a:I

    div-int/2addr v0, v14

    int-to-float v5, v0

    iget v7, v6, Lcom/oppo/camera/ui/preview/o;->af:F

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->E:I

    int-to-float v0, v0

    iget v9, v6, Lcom/oppo/camera/ui/preview/o;->G:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    div-float/2addr v9, v2

    add-float/2addr v9, v0

    move-object v0, p0

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/o;->a(FFFFF)Z

    move-result v0

    iput-boolean v0, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    iget-boolean v0, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    if-eqz v0, :cond_12

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-eqz v0, :cond_11

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-ne v14, v0, :cond_12

    :cond_11
    iput-boolean v11, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    iput v8, v6, Lcom/oppo/camera/ui/preview/o;->S:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    :cond_12
    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, v6, Lcom/oppo/camera/ui/preview/o;->c:I

    if-nez v0, :cond_15

    iget-boolean v0, v6, Lcom/oppo/camera/ui/preview/o;->ah:Z

    if-nez v0, :cond_13

    const/4 v0, -0x1

    invoke-direct {p0, v12, v13}, Lcom/oppo/camera/ui/preview/o;->a(FF)I

    move-result v1

    if-eq v0, v1, :cond_14

    :cond_13
    move v10, v11

    :cond_14
    return v10

    :cond_15
    :goto_1
    return v11

    :cond_16
    :goto_2
    const-string v0, "onTouchEvent, disabled"

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v6, Lcom/oppo/camera/ui/preview/o;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->getCollapseDelay()J

    move-result-wide v2

    invoke-virtual {v0, v11, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    iput-boolean v10, v6, Lcom/oppo/camera/ui/preview/o;->aj:Z

    iput v8, v6, Lcom/oppo/camera/ui/preview/o;->S:F

    iput-object v1, v6, Lcom/oppo/camera/ui/preview/o;->aF:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    return v10
.end method

.method public setExtraDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o;->an:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setZoomListener(Lcom/oppo/camera/ui/preview/n;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o;->aG:Lcom/oppo/camera/ui/preview/n;

    return-void
.end method
