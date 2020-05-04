.class public Lcom/oppo/camera/ui/control/h;
.super Ljava/lang/Object;
.source "TimerSnapShotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/control/h$b;,
        Lcom/oppo/camera/ui/control/h$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:J

.field private k:Lcom/oppo/camera/ui/control/h$b;

.field private l:Lcom/oppo/camera/ui/control/h$a;

.field private m:Lcom/oppo/camera/ui/RotableTextView;

.field private n:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->a:F

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->d:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->e:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->g:Z

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/h;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->k:Lcom/oppo/camera/ui/control/h$b;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oppo/camera/ui/control/h$a;

    invoke-direct {v1, p0, v0}, Lcom/oppo/camera/ui/control/h$a;-><init>(Lcom/oppo/camera/ui/control/h;Lcom/oppo/camera/ui/control/h$1;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/h;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/h;->h:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/h;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/h;->n:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/h;)Lcom/oppo/camera/ui/RotableTextView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f0800f8

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060422

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060420

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060421

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060424

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/oppo/camera/ui/control/h;->a:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060425

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/oppo/camera/ui/control/h;->b:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060423

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oppo/camera/ui/control/h;->c:I

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v5

    iput v5, p0, Lcom/oppo/camera/ui/control/h;->d:I

    new-instance v5, Lcom/oppo/camera/ui/RotableTextView;

    invoke-direct {v5, p1}, Lcom/oppo/camera/ui/RotableTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/RotableTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/oppo/camera/ui/RotableTextView;->setShadowLayer(FFFI)V

    :try_start_0
    const-string p1, "system/fonts/ColorOSUI-Thin.ttf"

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v2, p1}, Lcom/oppo/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    iget v2, p0, Lcom/oppo/camera/ui/control/h;->a:F

    invoke-virtual {p1, v5, v2}, Lcom/oppo/camera/ui/RotableTextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v1, p1, v0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x10

    array-length p1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    aget-object v4, p2, v3

    invoke-direct {p0, v4, v1}, Lcom/oppo/camera/ui/control/h;->a(Landroid/hardware/camera2/params/Face;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    return v0
.end method

.method private a(Landroid/hardware/camera2/params/Face;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v1, p1

    if-gt v1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/h;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/h;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/h;->h:I

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/h;)Lcom/oppo/camera/ui/control/h$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/h;->k:Lcom/oppo/camera/ui/control/h$b;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/h;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/h;->a:F

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/control/h;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/h;->b:F

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/control/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/control/h;->g:Z

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/control/h;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/h;->d:I

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/control/h;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/h;->c:I

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/control/h;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/h;->i:I

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/ui/control/h;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/h;->n:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/app/Activity;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimerSnapShot, time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerSnapShotManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/oppo/camera/ui/control/h;->g:Z

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/oppo/camera/ui/control/h;->h:I

    iget p1, p0, Lcom/oppo/camera/ui/control/h;->h:I

    iput p1, p0, Lcom/oppo/camera/ui/control/h;->i:I

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/control/h;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/h;->e:Z

    iget-object p2, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz p2, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/control/h$a;->removeMessages(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/oppo/camera/ui/control/h$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/control/h$a;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->k:Lcom/oppo/camera/ui/control/h$b;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/h$b;->b()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/ui/control/h;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/h;->j:J

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/h$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/h$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/control/h;->a(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/h$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/h;->k:Lcom/oppo/camera/ui/control/h$b;

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TimerSnapShotManager"

    const-string v1, "shouldReset, TimerSnapShotManager not end, so reset"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->n:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/h;->n:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/RotableTextView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/RotableTextView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/RotableTextView;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/RotableTextView;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/RotableTextView;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/RotableTextView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->f:Z

    return v0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/h$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/h$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/h;->l:Lcom/oppo/camera/ui/control/h$a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h$a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->e:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/RotableTextView;->clearAnimation()V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->m:Lcom/oppo/camera/ui/RotableTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/h;->k:Lcom/oppo/camera/ui/control/h$b;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/control/h;->f:Z

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/control/h$b;->a(Z)V

    :cond_1
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/h;->f:Z

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/control/h;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/h;->j:J

    return-void
.end method
