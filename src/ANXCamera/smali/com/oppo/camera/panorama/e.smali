.class public Lcom/oppo/camera/panorama/e;
.super Lcom/oppo/camera/d/a;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oppo/camera/panorama/d$b;
.implements Lvisidon/Lib/Panorama$PanoramaCam1Listener;


# instance fields
.field W:Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;

.field private X:I

.field private Y:I

.field private Z:I

.field private aA:Z

.field private aB:I

.field private aC:[F

.field private aD:Landroid/util/SizeF;

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:Z

.field private aI:Z

.field private aJ:[B

.field private aK:[B

.field private aL:I

.field private aM:Ljava/lang/String;

.field private aN:Landroid/os/Handler;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Landroid/graphics/Bitmap;

.field private an:Landroid/widget/ImageView;

.field private ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/content/res/Resources;

.field private ar:Ljava/lang/Object;

.field private as:Ljava/lang/Object;

.field private at:Lvisidon/Lib/Panorama;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private aw:Landroid/util/Size;

.field private ax:Landroid/util/Size;

.field private ay:Lcom/oppo/camera/panorama/d;

.field private az:Lcom/oppo/camera/panorama/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/oppo/camera/panorama/e;->X:I

    const/16 p1, 0x438

    iput p1, p0, Lcom/oppo/camera/panorama/e;->Y:I

    const/16 p1, 0x11a

    iput p1, p0, Lcom/oppo/camera/panorama/e;->Z:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aa:I

    iput p1, p0, Lcom/oppo/camera/panorama/e;->ab:I

    iput p1, p0, Lcom/oppo/camera/panorama/e;->ac:I

    iput p1, p0, Lcom/oppo/camera/panorama/e;->ad:I

    const/16 p2, 0x2a

    iput p2, p0, Lcom/oppo/camera/panorama/e;->ae:I

    const/16 p2, 0x42

    iput p2, p0, Lcom/oppo/camera/panorama/e;->af:I

    iput p1, p0, Lcom/oppo/camera/panorama/e;->ag:I

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->al:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aB:I

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aC:[F

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aD:Landroid/util/SizeF;

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aF:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/oppo/camera/panorama/e;->aG:I

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aL:I

    const-string p1, "normal"

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aM:Ljava/lang/String;

    new-instance p1, Lcom/oppo/camera/panorama/e$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/panorama/e$1;-><init>(Lcom/oppo/camera/panorama/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    new-instance p1, Lcom/oppo/camera/panorama/e$4;

    invoke-direct {p1, p0}, Lcom/oppo/camera/panorama/e$4;-><init>(Lcom/oppo/camera/panorama/e;)V

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->W:Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method private A(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->O:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v3, 0x7f0f00f7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_mirror_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJPEGImageFromPanorama, isCloseMirrorSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PanoramaCapMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0xb4

    rem-int/lit16 p1, p1, 0x168

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJPEGImageFromPanorama, currentOrientation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, p1, v0}, Lvisidon/Lib/Panorama;->getJPEGImage(IIZ)V

    :cond_3
    return-void
.end method

.method static synthetic B(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic C(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic D(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic E(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    return p0
.end method

.method static synthetic F(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic G(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic H(Lcom/oppo/camera/panorama/e;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic I(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic J(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->Y:I

    return p0
.end method

.method static synthetic K(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic L(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic M(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic N(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic O(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic P(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic Q(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic R(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic S(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic T(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    return-object p0
.end method

.method static synthetic V(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic W(Lcom/oppo/camera/panorama/e;)Lvisidon/Lib/Panorama;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    return-object p0
.end method

.method static synthetic X(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->ad:I

    return p0
.end method

.method static synthetic Y(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic Z(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aB:I

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 12

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "PanoramaCapMode"

    const-string p3, "drawPreviewBitmap, bitmap is null"

    invoke-static {p1, p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    float-to-double v10, p3

    add-double/2addr v10, v8

    mul-double/2addr v10, v6

    double-to-int p3, v10

    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-double/2addr v10, v6

    double-to-int v5, v10

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v5, "#FFCC00"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, p2, v5

    add-float v5, p3, v6

    sub-int/2addr v0, v2

    int-to-float v7, v0

    sub-int/2addr v1, v2

    int-to-float v8, v1

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    return-object v3
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;Lcom/oppo/camera/panorama/d;)Lcom/oppo/camera/panorama/d;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cG()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    return p1
.end method

.method static synthetic aa(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic ab(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    return p0
.end method

.method static synthetic ac(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic ad(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic ae(Lcom/oppo/camera/panorama/e;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic af(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aL:I

    return p1
.end method

.method private b([B)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lvisidon/Lib/Panorama;->addPreviewFrame([BII)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lvisidon/Lib/Panorama;->updateOrientationWithCameraInfo([BII)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2, v3, v4}, Lvisidon/Lib/Panorama;->getGuidanceBitmap([BIILandroid/graphics/Bitmap;)I

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->getXdisplacement()F

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v2}, Lvisidon/Lib/Panorama;->getYdisplacement()F

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/camera/panorama/e;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "PanoramaCapMode"

    const-string v1, "onPreviewCaptured, mPanorama is null or data is null so return"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/panorama/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/e;->z(I)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    return p0
.end method

.method private cB()V
    .locals 4

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->ag:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->Y:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060335

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->Z:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aa:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060337

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->ab:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060339

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->ae:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->af:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->X:I

    iget v0, p0, Lcom/oppo/camera/panorama/e;->Z:I

    iget v1, p0, Lcom/oppo/camera/panorama/e;->ae:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/panorama/e;->ac:I

    iget v1, p0, Lcom/oppo/camera/panorama/e;->ab:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oppo/camera/panorama/e;->ag:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/panorama/e;->ad:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v3, 0x7f0b002e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->W:Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setOnDirectionChangeListener(Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setForceDarkAllowed(Z)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const v2, 0x7f080078

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    :cond_0
    new-instance v0, Lcom/oppo/camera/panorama/f;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oppo/camera/panorama/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/f;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0092

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/f;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->Q:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->Q:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/panorama/e;->z(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->c()V

    return-void
.end method

.method private cC()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->d()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->b()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->Q:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aG:I

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cH()V

    return-void
.end method

.method private cD()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->Release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cE()V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "releaseRearPanorama"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v2}, Lcom/oppo/camera/panorama/d;->b()V

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/panorama/d;->a(I)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cF()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->process()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cG()V
    .locals 8

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->ab()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/panorama/e;->a([BIILjava/lang/String;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v2, 0xb

    const-string v3, "button_color_inside_none"

    invoke-direct {v0, v2, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(I)V

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    iput v1, p0, Lcom/oppo/camera/panorama/e;->aF:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->y(I)V

    return-void
.end method

.method private cH()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cI()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const-string v2, "panorama"

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    const/16 v1, 0x13

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iget v1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/panorama/e;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->aL:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/panorama/e;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/e;->aB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/panorama/e;->aB:I

    return v0
.end method

.method static synthetic l(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->aB:I

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->Z:I

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->X:I

    return p0
.end method

.method static synthetic o(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/e;->aE:I

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic q(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic s(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic t(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic u(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic v(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic w(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic x(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic z(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method private z(I)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/panorama/e;->Y:I

    iget v2, p0, Lcom/oppo/camera/panorama/e;->Z:I

    iget v3, p0, Lcom/oppo/camera/panorama/e;->aa:I

    iget v4, p0, Lcom/oppo/camera/panorama/e;->ab:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oppo/camera/panorama/f;->a(IIII)V

    :cond_0
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/f;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()V
    .locals 8

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$11;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$11;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const v3, 0x7f0f018f

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :goto_0
    return-void
.end method

.method public H_()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public I_()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public J_()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public P()Z
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    const/4 v0, 0x0

    return v0
.end method

.method public X()V
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "onAfterStartPreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$6;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    return-void
.end method

.method public Z()Z
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "onAfterSnapping"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$8;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "panorama"

    return-object v0
.end method

.method public a(IZ)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq p1, v5, :cond_4

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0, v3, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v5, v5, v5}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0, v3, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-static {p1, v4, v3, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "type_preview_frame"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/panorama/d$d;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    const-string p1, "PanoramaCapMode"

    const-string v0, "onResume"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oppo/camera/panorama/e;->x(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->d(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->e(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->f(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/oppo/camera/ui/c;->b(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0, v0}, Lcom/oppo/camera/ui/c;->a(IZ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearPanoramaSave, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oppo/camera/v$a;

    invoke-direct {v0}, Lcom/oppo/camera/v$a;-><init>()V

    iput-object p1, v0, Lcom/oppo/camera/v$a;->d:[B

    const-string v2, "jpeg"

    iput-object v2, v0, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b([B)I

    move-result p1

    iput p1, v0, Lcom/oppo/camera/v$a;->r:I

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/oppo/camera/v$a;->y:Z

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v0}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/v$a;)V

    :cond_0
    return-void
.end method

.method protected a([BZ)V
    .locals 1

    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public aJ()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oppo/camera/d/a;->aJ()V

    return-void
.end method

.method protected am()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->c()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->postInvalidate()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/panorama/e;->b(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected aq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public as()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAllowSwitch, mbStartPreviewed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public at()Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oppo/camera/d/a;->at()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x8007

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->aA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPanoramaDirection:I

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->al:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/oppo/camera/v$a;->d:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cE()V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/panorama/e$10;

    invoke-direct {v0, p0}, Lcom/oppo/camera/panorama/e$10;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Landroid/media/Image;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/media/Image;)V

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    invoke-static {p1, v1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/e;->b([B)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I)[B

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/panorama/e$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/panorama/e$5;-><init>(Lcom/oppo/camera/panorama/e;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    invoke-static {p1, v1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected b([BZ)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cI()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/f;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public bn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bo()Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    return-object v0
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation(), orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    return v0
.end method

.method public cj()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cn()V
    .locals 5

    invoke-super {p0}, Lcom/oppo/camera/d/a;->cn()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    return-void
.end method

.method protected cs()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/f;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected ct()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v1, 0x7f0f0120

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_slogan_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_mirror_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_support_rotate_hint_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_sstart_preview_sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "func_reset_auto_focus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->e()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public e(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->a()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_PANORAMA_MAX_HEIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_REAR_PANORAMA_MAX_HEIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected h()V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->am()V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cE()V

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->y(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cC()V

    return-void
.end method

.method protected k()V
    .locals 4

    const-string v0, "PanoramaCapMode"

    const-string v1, "onInitCameraMode()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cB()V

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/panorama/e;->aE:I

    iget v3, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/panorama/e;->aE:I

    :cond_0
    iput v2, p0, Lcom/oppo/camera/panorama/e;->aE:I

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/c;->a(Z)V

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->c(I)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v3, 0x7f0f0094

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    const-string v1, "onInitCameraMode X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "type_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public l()V
    .locals 6

    const-string v0, "PanoramaCapMode"

    const-string v1, "onDeInitCameraMode()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cE()V

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aL:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->k(I)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->e(Z)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->f(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->c(I)V

    return-void
.end method

.method protected m()V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "onBeforePreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontPanorama, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbStartPreviewed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aF:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x6

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v4, 0x7f060331

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v4, v3

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-int v4, v5

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v3, p0, Lcom/oppo/camera/panorama/e;->ae:I

    iget v6, p0, Lcom/oppo/camera/panorama/e;->ag:I

    add-int/2addr v3, v6

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontPanorama, mPictureSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewFrameSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->k()[F

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aC:[F

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->e()Landroid/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aD:Landroid/util/SizeF;

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aC:[F

    aget p1, p1, v0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aD:Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-le p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :cond_4
    move v4, p1

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    new-instance v9, Lvisidon/Lib/Panorama;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    move-object v1, v9

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lvisidon/Lib/Panorama;-><init>(IIIZZLandroid/content/Context;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V

    iput-object v9, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama;->VDSetMode(Z)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PanoramaCapMode"

    const-string v2, "initFrontPanorama, panorama initialized failed!"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama;->SetInputSaving(Z)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->ac:I

    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0110

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZ)V

    :cond_7
    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_8
    :goto_1
    return-void
.end method

.method protected n()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforeSnapping(), mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$7;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->j()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->al:Z

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    return v1
.end method

.method protected o()Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->al:Z

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->S()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->aM:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTakePicture, mFrontJpegCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/panorama/e;->aF:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbSnapShoting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PanoramaCapMode"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oppo/camera/panorama/e;->aF:I

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-eqz v3, :cond_1

    if-lez v1, :cond_1

    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    new-instance v1, Lcom/oppo/camera/ui/control/c;

    const/16 v3, 0xb

    const-string v4, "button_color_inside_none"

    invoke-direct {v1, v3, v4}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/control/c;->b(I)V

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/panorama/e$9;

    invoke-direct {v3, p0, v1}, Lcom/oppo/camera/panorama/e$9;-><init>(Lcom/oppo/camera/panorama/e;Lcom/oppo/camera/ui/control/c;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cF()V

    :cond_1
    return v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTakePicture, mbPanning: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSnapShoting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PanoramaCapMode"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->b(Z)V

    :cond_3
    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/f;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v3}, Lcom/oppo/camera/panorama/d;->a()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    monitor-exit v1

    return v2

    :cond_6
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_1
    return v0
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBitmapReady, bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lvisidon/Lib/Panorama$FailureCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure, failureCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->REGISTRATION_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->TIMEOUT:Lvisidon/Lib/Panorama$FailureCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->MAX_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->WRONG_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cF()V

    :cond_1
    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->PROCESSING_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onFrameAdded(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onGuide(Lvisidon/Lib/Panorama$Guide;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/panorama/e$2;-><init>(Lcom/oppo/camera/panorama/e;Lvisidon/Lib/Panorama$Guide;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onJPEGImageReady([B)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJPEGImageReady, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/panorama/e;->j:I

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_0
    new-instance v3, Lcom/oppo/camera/v$a;

    invoke-direct {v3}, Lcom/oppo/camera/v$a;-><init>()V

    iput v2, v3, Lcom/oppo/camera/v$a;->o:I

    iput v1, v3, Lcom/oppo/camera/v$a;->p:I

    iput-object p1, v3, Lcom/oppo/camera/v$a;->d:[B

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->ab()I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b([B)I

    move-result p1

    iput p1, v3, Lcom/oppo/camera/v$a;->r:I

    const/4 p1, 0x0

    iput-object p1, v3, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    iput-boolean v0, v3, Lcom/oppo/camera/v$a;->y:Z

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object p1

    iput-object p1, v3, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/v$a;)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oppo/camera/panorama/e;->s:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onNV21ImageReady([B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNV21ImageReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessingReady(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProcessingReady, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2}, Lcom/oppo/camera/d/b;->l()I

    move-result v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/panorama/e;->A(I)V

    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    const-string p1, "PanoramaCapMode"

    const-string p2, "panorama shot failed!"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onSetPreviewParameters(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPreviewParameters, lockExposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTakeImage()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTakeImage, mbSnapShoting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/panorama/e$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/panorama/e$3;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/oppo/camera/panorama/e;->aF:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aF:I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected w(I)I
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PANORAMA_TO_REAL_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PANORAMA_TO_FRONT_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public x(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgressBarVisble, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v2, p0, Lcom/oppo/camera/panorama/e;->ad:I

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0113

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/f;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public y(I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Lcom/oppo/camera/panorama/e$12;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/panorama/e$12;-><init>(Lcom/oppo/camera/panorama/e;I)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->clearAnimation()V

    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_3
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->clearAnimation()V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method
