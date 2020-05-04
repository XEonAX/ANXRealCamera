.class public Lcom/oppo/camera/k/b;
.super Lcom/oppo/camera/d/a;
.source "PortraitCapMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/k/b$a;
    }
.end annotation


# instance fields
.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:F

.field private af:Landroid/animation/ValueAnimator;

.field private ag:Lcom/oppo/camera/k/b$a;

.field private ah:[Ljava/lang/String;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:Lcom/oppo/camera/k/a;

.field private am:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/k/b;->W:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oppo/camera/k/b;->X:Z

    iput-boolean p1, p0, Lcom/oppo/camera/k/b;->Y:Z

    iput-boolean p1, p0, Lcom/oppo/camera/k/b;->Z:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 p3, -0x1

    iput p3, p0, Lcom/oppo/camera/k/b;->ab:I

    iput p3, p0, Lcom/oppo/camera/k/b;->ac:I

    const/4 p3, 0x2

    iput p3, p0, Lcom/oppo/camera/k/b;->ad:I

    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Lcom/oppo/camera/k/b;->ae:F

    iput-object p2, p0, Lcom/oppo/camera/k/b;->af:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/oppo/camera/k/b;->ag:Lcom/oppo/camera/k/b$a;

    const-string p3, "ALGO_BOKEH"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/camera/k/b;->ah:[Ljava/lang/String;

    iput p1, p0, Lcom/oppo/camera/k/b;->ai:I

    iput p1, p0, Lcom/oppo/camera/k/b;->aj:I

    iput p1, p0, Lcom/oppo/camera/k/b;->ak:I

    iput-object p2, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    new-instance p1, Lcom/oppo/camera/k/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/k/b$1;-><init>(Lcom/oppo/camera/k/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/k/b;->am:Landroid/os/Handler;

    const/16 p1, 0xf

    invoke-static {p1}, Lcom/oppo/camera/e/a;->d(I)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Lcom/oppo/camera/e/a;->d(I)I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->f:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/oppo/camera/k/b;->ai:I

    new-instance p1, Lcom/oppo/camera/k/a;

    iget p2, p0, Lcom/oppo/camera/k/b;->ai:I

    invoke-direct {p1, p2}, Lcom/oppo/camera/k/a;-><init>(I)V

    iput-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    :cond_1
    return-void
.end method

.method private A(I)V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iget v2, p0, Lcom/oppo/camera/k/b;->ak:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    iput v3, p0, Lcom/oppo/camera/k/b;->ak:I

    iget p1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->y(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    iget v2, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-interface {v0, v2, p1}, Lcom/oppo/camera/ui/c;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    iget v0, p0, Lcom/oppo/camera/k/b;->aj:I

    iget v2, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/k/a;->a(ZI)V

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/k/b;->ak:I

    if-eq v1, p1, :cond_1

    iput v1, p0, Lcom/oppo/camera/k/b;->ak:I

    iget p1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->x(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    iget v1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/c;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    const/4 v0, 0x0

    iget v1, p0, Lcom/oppo/camera/k/b;->aj:I

    iget v2, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/k/a;->a(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private B(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/k/b$4;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/k/b$4;-><init>(Lcom/oppo/camera/k/b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/k/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->B(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/k/b;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->l(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/k/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/k/b;->Y:Z

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/k/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/k/b;->X:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/k/b;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/k/b;->ab:I

    return p0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "screen_brightness"

    const/16 v2, 0x64

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/k/b;->ag:Lcom/oppo/camera/k/b$a;

    sub-float v3, p1, v1

    invoke-virtual {v2, v3, v1}, Lcom/oppo/camera/k/b$a;->a(FF)V

    iget-object v1, p0, Lcom/oppo/camera/k/b;->af:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness, brightness: 100, currBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", winParams.screenBrightness: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PortraitCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/k/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/k/b;->Y:Z

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/k/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->n(Z)V

    return-void
.end method

.method private cB()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/k/b;->cC()V

    return-void
.end method

.method private cC()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->i()V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->j()Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/k/b;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/k/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/k/b;->s:Z

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/k/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->am:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/k/b;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->af:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/k/b;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/k/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/k/b;->cB()V

    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method private l(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/k/b;->X:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/k/b;->cB()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic m(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic n(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method private n(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/oppo/camera/k/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic p(Lcom/oppo/camera/k/b;)Lcom/oppo/camera/d/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method private x(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    iget v1, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/k/a;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "default"

    return-object p1
.end method

.method private y(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    iget v1, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/k/a;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "f_contrast_gray_face_dark"

    return-object p1
.end method

.method private z(I)Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/k/b;->ai:I

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public X()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/k/b;->ak:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/k/b;->ab:I

    iput v0, p0, Lcom/oppo/camera/k/b;->ac:I

    iget-object v0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/k/b$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/k/b$3;-><init>(Lcom/oppo/camera/k/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "portrait"

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p2}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "standard"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(IZ)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p2, p0, Lcom/oppo/camera/k/b;->X:Z

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v4}, Lcom/oppo/camera/ui/c;->h()I

    move-result v4

    if-ne v4, v1, :cond_6

    iget-object v4, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/oppo/camera/k/b;->Y:Z

    if-eqz v4, :cond_6

    invoke-direct {p0, v2}, Lcom/oppo/camera/k/b;->B(I)V

    iget-object v4, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v4, :cond_6

    if-eqz p2, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Lcom/oppo/camera/ui/CameraScreenHintView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_6

    iput-boolean v2, p0, Lcom/oppo/camera/k/b;->X:Z

    iget-object v4, p0, Lcom/oppo/camera/k/b;->am:Landroid/os/Handler;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v4, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_6
    :goto_1
    if-eq v1, p1, :cond_9

    const/4 v1, 0x7

    if-eq v1, p1, :cond_9

    if-eq v0, p1, :cond_9

    const/16 v0, 0x9

    if-eq v0, p1, :cond_9

    if-eqz p2, :cond_7

    iput-boolean v3, p0, Lcom/oppo/camera/k/b;->A:Z

    goto :goto_2

    :cond_7
    const/4 p2, 0x3

    if-eq p2, p1, :cond_9

    iput-boolean v2, p0, Lcom/oppo/camera/k/b;->X:Z

    iget-object p1, p0, Lcom/oppo/camera/k/b;->am:Landroid/os/Handler;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-boolean v0, p0, Lcom/oppo/camera/k/b;->X:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/k/b;->K:Lcom/oppo/camera/e/f;

    const-string v2, "com.oppo.portrait.bokeh.state"

    invoke-interface {v0, v2, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/k/b;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.mediatek.stereofeature.stereowarning"

    invoke-interface {v2, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/k/b;->ab:I

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/oppo/camera/k/b;->ac:I

    aget v6, v0, v1

    if-eq v5, v6, :cond_0

    aget v3, v0, v1

    iput v3, p0, Lcom/oppo/camera/k/b;->ac:I

    aget v3, v0, v1

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v5, 0x2

    if-eqz v2, :cond_3

    iget v6, p0, Lcom/oppo/camera/k/b;->ad:I

    aget v7, v2, v1

    and-int/2addr v7, v5

    if-eq v6, v7, :cond_3

    aget v6, v2, v1

    and-int/2addr v6, v5

    iput v6, p0, Lcom/oppo/camera/k/b;->ad:I

    if-nez v0, :cond_1

    const/4 v3, -0x1

    :cond_1
    aget v0, v2, v1

    and-int/2addr v0, v5

    if-ne v5, v0, :cond_2

    const/4 v0, 0x4

    move v3, v0

    :cond_2
    move v0, v4

    :cond_3
    if-eqz v0, :cond_6

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_WESTALGO_DUAL_CAMERA:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oppo/camera/k/b;->ac:I

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/oppo/camera/k/b;->ad:I

    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/k/b;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/k/b;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v4}, Lcom/oppo/camera/e/f;->f(I)V

    :cond_6
    :goto_2
    iget v0, p0, Lcom/oppo/camera/k/b;->ab:I

    if-eq v0, v3, :cond_7

    iput v3, p0, Lcom/oppo/camera/k/b;->ab:I

    iget v0, p0, Lcom/oppo/camera/k/b;->ab:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/k/b;->B(I)V

    iget v0, p0, Lcom/oppo/camera/k/b;->ab:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/k/b;->A(I)V

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/k/b;->K:Lcom/oppo/camera/e/f;

    const-string v2, "focus.distance"

    invoke-interface {v0, v2, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_8

    aget v0, p1, v1

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_8

    const/high16 v0, 0x447a0000    # 1000.0f

    aget p1, p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/k/b;->ae:F

    :cond_8
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

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    if-ne v0, v1, :cond_2

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_preview"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "need_preview_stream"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    const-string v0, "type_still_capture"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_2
    sget-object v0, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->bC()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_blur_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "type_preview_frame"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    const-string p1, "PortraitCapMode"

    const-string v0, "onResume"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pref_dual_camera"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/k/b;->X:Z

    iget-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/camera/k/b;->g:I

    invoke-static {p1}, Lco/polarr/renderer/PolarrRender;->updateGlobalScreenOrientation(I)V

    iget-object p1, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "key_portrait_new_style_back_index"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/k/b;->aj:I

    :cond_0
    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->f()V

    :cond_0
    return-void
.end method

.method protected a([BZ)V
    .locals 1

    const-string p1, "PortraitCapMode"

    const-string p2, "onAfterPictureTaken"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->at()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->i()V

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/k/b;->A:Z

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_high_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_portrait_facebeauty_level_menu"

    return-object v0
.end method

.method public a_(Z)V
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v1, 0xb

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public ad()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public am()V
    .locals 2

    const-string v0, "PortraitCapMode"

    const-string v1, "onCancelTakePicture, reset mbShutterCallback"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->A:Z

    return-void
.end method

.method public b()I
    .locals 1

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8011

    return v0

    :cond_0
    const v0, 0x8026

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 5

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PortraitCapMode"

    const-string v2, "x"

    if-nez v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    const v0, 0x7a1200

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPictureSize, width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x1680

    const/16 v1, 0x10d8

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_1
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_BACK_PORTRAIT_NORMAL_MODE_PIC_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPictureSize, rear size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget v0, p0, Lcom/oppo/camera/k/b;->ab:I

    iput v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mBokehCode:I

    return-object p1
.end method

.method public b(I)V
    .locals 3

    const-string v0, "PortraitCapMode"

    const-string v1, "onCameraIdChanged"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->A:Z

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_portrait_new_style_back_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/k/b;->aj:I

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    return-void
.end method

.method protected b([BZ)V
    .locals 0

    const-string p1, "PortraitCapMode"

    const-string p2, "onBeforePictureTaken"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oppo/camera/k/b;->s:Z

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/ui/c;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public bb()Z
    .locals 1

    const-string v0, "pref_camera_blur_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected be()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-nez v0, :cond_0

    const-string v0, "key_portrait_new_style_index"

    return-object v0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_portrait_new_style_front_index"

    goto :goto_0

    :cond_1
    const-string v0, "key_portrait_new_style_back_index"

    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0}, Lcom/oppo/camera/d/a;->be()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_portrait_new_style_menu"

    return-object v0
.end method

.method public bq()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_support_fast_capture"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "PortraitCapMode"

    const-string v1, "isCanFastCapture, param is null or from third app"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PORTRAIT_NORMAL_MODE_PRE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize, previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PortraitCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->c(I)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lco/polarr/renderer/PolarrRender;->updateGlobalScreenOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method protected cs()V
    .locals 0

    return-void
.end method

.method protected ct()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cz()V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/k/b;->ab:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/k/b;->B(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "pref_filter_process_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pref_filter_menu"

    const-string v2, "pref_portrait_new_style_menu"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PORTRAIT_NEW_STYLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pref_dual_camera"

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    move v3, v4

    :cond_4
    return v3

    :cond_5
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    return v4

    :cond_6
    return v3

    :cond_7
    const-string v5, "pref_save_jpg_after_pause_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SAVE_JPG_AFTER_PAUSE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_8

    move v3, v4

    :cond_8
    return v3

    :cond_9
    const-string v5, "key_remosaic"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    return p1

    :cond_a
    const-string v5, "pref_camera_gesture_shutter_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    return p1

    :cond_b
    const-string v5, "pref_support_high_temperature_ultimate_limit"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    return v4

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/oppo/camera/e/a;->f()Z

    move-result p1

    return p1

    :cond_d
    invoke-static {}, Lcom/oppo/camera/e/a;->e()Z

    move-result p1

    return p1

    :cond_e
    const-string v5, "pref_support_post_view"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    return v3

    :cond_f
    const-string v5, "pref_auto_night_scence_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    if-nez p1, :cond_10

    return v3

    :cond_10
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_COMMON_AUTO_NIGHT_SCENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_11

    move v3, v4

    :cond_11
    return v3

    :cond_12
    const-string v5, "pref_zoom_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    return v3

    :cond_13
    const-string v5, "pref_support_ipa_process"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    return v4

    :cond_14
    const-string v5, "func_face_beauty_process"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_15
    const-string v6, "func_face_slender_process"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p0, v5}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_16

    move v3, v4

    :cond_16
    return v3

    :cond_17
    const-string v6, "func_face_beauty_custom"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p0, v5}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_18

    move v3, v4

    :cond_18
    return v3

    :cond_19
    const-string v5, "pref_camera_blur_mode_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_1a
    const-string v1, "func_mode_panel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v4

    :cond_1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v4

    :cond_1c
    const-string v0, "pref_support_fast_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_1d

    return v4

    :cond_1d
    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->cv()Z

    move-result p1

    return p1

    :cond_1e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PORTRAIT_NEW_STYLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_1f
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "func_torch_soft_light"

    if-eqz v0, :cond_20

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget p1, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_21

    move v3, v4

    :cond_21
    return v3

    :cond_22
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected d(I)[I
    .locals 1

    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->g:[I

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/k/a;->c()[I

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->h:[I

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(I)[I

    move-result-object p1

    return-object p1
.end method

.method protected e(I)[Ljava/lang/String;
    .locals 1

    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->e:[Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/k/a;->b()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->f:[Ljava/lang/String;

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected h()V
    .locals 3

    const-string v0, "PortraitCapMode"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->am:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->Q:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/k/b;->af:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->H()V

    :cond_4
    iput-boolean v1, p0, Lcom/oppo/camera/k/b;->X:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->A:Z

    iput-boolean v1, p0, Lcom/oppo/camera/k/b;->Z:Z

    return-void
.end method

.method protected i()V
    .locals 2

    const-string v0, "PortraitCapMode"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected j()V
    .locals 2

    const-string v0, "PortraitCapMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/k/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 4

    const-string v0, "PortraitCapMode"

    const-string v1, "onInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    const v3, 0x7f0f0094

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->Y:Z

    iget-object v0, p0, Lcom/oppo/camera/k/b;->V:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/k/b;->ah:[Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/k/b;->g:I

    invoke-static {v0}, Lco/polarr/renderer/PolarrRender;->updateGlobalScreenOrientation(I)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    const-string v1, "key_portrait_new_style_back_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/k/b;->aj:I

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(I)V

    iget v0, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/k/b;->aj:I

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/k/b;->Z:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->X:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/camera/k/b;->n(Z)V

    iget-object v1, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->K()V

    const/4 v1, 0x2

    iget v2, p0, Lcom/oppo/camera/k/b;->ak:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, v1}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    iget v2, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, v2}, Lcom/oppo/camera/k/b;->x(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oppo/camera/ui/c;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    iget v2, p0, Lcom/oppo/camera/k/b;->aj:I

    iget v3, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/k/a;->a(ZI)V

    :cond_0
    iput v0, p0, Lcom/oppo/camera/k/b;->ak:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/k/b;->ab:I

    :cond_1
    iput p1, p0, Lcom/oppo/camera/k/b;->aj:I

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "type_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string p1, "pref_camera_blur_mode_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_camera_gesture_shutter_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "type_still_capture_yuv_main"

    if-eqz v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "type_still_capture_yuv_sub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    return v2

    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected l()V
    .locals 4

    const-string v0, "PortraitCapMode"

    const-string v1, "onDeInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->A:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->j(I)V

    iget-object v2, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/k/b;->am:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/k/b;->af:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->H()V

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/k/b;->aa:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oppo/camera/k/b;->ae:F

    iget-object v0, p0, Lcom/oppo/camera/k/b;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/k/b;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->d()V

    :cond_5
    const/4 v0, 0x2

    iget v2, p0, Lcom/oppo/camera/k/b;->ak:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    iget v2, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-direct {p0, v2}, Lcom/oppo/camera/k/b;->x(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oppo/camera/ui/c;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    iget v2, p0, Lcom/oppo/camera/k/b;->aj:I

    iget v3, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/k/a;->a(ZI)V

    :cond_6
    iput v1, p0, Lcom/oppo/camera/k/b;->ak:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/k/b;->ab:I

    return-void
.end method

.method protected l(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/k/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k/b;->Z:Z

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/k/b;->Z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k/b;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->l(I)V

    return-void
.end method

.method protected m()V
    .locals 4

    const-string v0, "PortraitCapMode"

    const-string v1, "onBeforePreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/k/b;->Z:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/oppo/camera/k/b;->Z:Z

    iget-object v1, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    iget v3, p0, Lcom/oppo/camera/k/b;->aj:I

    invoke-virtual {p0, v3}, Lcom/oppo/camera/k/b;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    :cond_0
    const-string v1, "pref_dual_camera"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "func_face_beauty_process"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->aW()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBeforePreview, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/k/b;->j(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->bO()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->a([I)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/k/b;->j(I)V

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected n(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->bl()V

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/k/b;->Z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k/b;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFilterParam, mPreviewEffectProcess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/k/b;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/k/b;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PortraitCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected n()Z
    .locals 3

    const-string v0, "PortraitCapMode"

    const-string v1, "onBeforeSnapping"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->bq()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->h()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/k/b$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/k/b$2;-><init>(Lcom/oppo/camera/k/b;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return v1
.end method

.method public o(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/b;->z(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->al:Lcom/oppo/camera/k/a;

    iget v1, p0, Lcom/oppo/camera/k/b;->ai:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/k/a;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/oppo/camera/k/b;->j:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->e(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected o()Z
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/k/b;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oppo/camera/d/a;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/b;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_0

    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/k/b;->p()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    return v0
.end method
