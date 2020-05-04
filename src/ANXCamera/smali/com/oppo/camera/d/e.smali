.class public Lcom/oppo/camera/d/e;
.super Lcom/oppo/camera/d/a;
.source "CommonCapMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/e$a;
    }
.end annotation


# instance fields
.field protected W:I

.field protected X:Z

.field protected Y:Z

.field protected Z:I

.field private aa:I

.field private ab:Lcom/oppo/camera/d/e$a;

.field private ac:Landroid/os/Handler;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:J

.field private ai:Z

.field private aj:J

.field private ak:J

.field private al:J

.field private am:J

.field private an:J

.field private ao:J

.field private ap:I

.field private aq:Lcom/oppo/camera/c/b;

.field private ar:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/d/e;->W:I

    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->X:Z

    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->Y:Z

    iput p1, p0, Lcom/oppo/camera/d/e;->aa:I

    new-instance p2, Lcom/oppo/camera/d/e$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oppo/camera/d/e$a;-><init>(Lcom/oppo/camera/d/e;Lcom/oppo/camera/d/e$1;)V

    iput-object p2, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    iput-object p3, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    iput p1, p0, Lcom/oppo/camera/d/e;->ad:I

    iput p1, p0, Lcom/oppo/camera/d/e;->ae:I

    iput p1, p0, Lcom/oppo/camera/d/e;->af:I

    iput p1, p0, Lcom/oppo/camera/d/e;->ag:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ah:J

    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->aj:J

    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/oppo/camera/d/e;->ak:J

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->al:J

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->am:J

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->an:J

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ao:J

    iput p1, p0, Lcom/oppo/camera/d/e;->ap:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/oppo/camera/d/e;->Z:I

    iput-object p3, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    const-string p1, "ALGO_BLURLESS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/e;->ar:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bc()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/e;->ad:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/e;->ae:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/e;->ah:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cF()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/e;->o(Z)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/e;->ah:J

    return-wide v0
.end method

.method static synthetic b(Lcom/oppo/camera/d/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/e;->al:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/e;->am:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cE()V

    return-void
.end method

.method private cE()V
    .locals 3

    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/oppo/camera/c/b;

    iget-object v1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/d/e$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/e$2;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/c/b;-><init>(Landroid/app/Activity;Lcom/oppo/camera/c/d;)V

    iput-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->a()V

    return-void
.end method

.method private cF()V
    .locals 10

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/d/e;->al:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/oppo/camera/d/e;->an:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oppo/camera/d/e;->an:J

    iget-wide v4, p0, Lcom/oppo/camera/d/e;->am:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oppo/camera/d/e;->am:J

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->al:J

    iget-wide v0, p0, Lcom/oppo/camera/d/e;->an:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v6, p0, Lcom/oppo/camera/d/e;->am:J

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNightCountdownTime, currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCountDownTemp: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/d/e;->am:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonCapMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/oppo/camera/d/e;->am:J

    sub-long/2addr v2, v8

    iget-wide v6, p0, Lcom/oppo/camera/d/e;->an:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/oppo/camera/d/e;->an:J

    iput-wide v4, p0, Lcom/oppo/camera/d/e;->am:J

    iget-object v6, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    add-long/2addr v2, v0

    const/4 v7, 0x0

    invoke-interface {v6, v2, v3, v7}, Lcom/oppo/camera/ui/c;->b(JZ)V

    :cond_2
    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private cG()V
    .locals 4

    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v3, "on"

    invoke-interface {v2, v0, v3}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/oppo/camera/d/e;->a(ZZZZ)V

    return-void
.end method

.method private cH()V
    .locals 5

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v3, "pref_camera_pi_mode_key"

    const-string v4, "off"

    invoke-interface {v0, v3, v4}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oppo/camera/d/e;->a(ZZZZ)V

    :cond_0
    return-void
.end method

.method private cI()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->p()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-wide v3, p0, Lcom/oppo/camera/d/e;->aj:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    double-to-long v3, v3

    iget-wide v5, p0, Lcom/oppo/camera/d/e;->ak:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    move-wide v3, v5

    :cond_0
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/oppo/camera/d/e;->W:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0xdac

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x640

    :goto_1
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ao:J

    add-long/2addr v0, v2

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oppo/camera/d/e;->an:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFirstCaptureArrived, mNightProcessTotalTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oppo/camera/d/e;->an:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", realTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mNightCaptureTotalTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oppo/camera/d/e;->ao:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$7;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private cJ()Z
    .locals 2

    invoke-static {}, Lcom/oppo/camera/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private cK()Z
    .locals 4

    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    const-string v3, "off"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private cL()V
    .locals 3

    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/d/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cH()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/d/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/e;->an:J

    return-wide v0
.end method

.method private n(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->s:Z

    const-string v1, "CommonCapMode"

    if-eqz v0, :cond_0

    const-string p1, "handleBeauty3DGuideView, pause, so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-nez v0, :cond_1

    const-string p1, "handleBeauty3DGuideView, mBeauty3DManager null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->m()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "handleBeauty3DGuideView, not support return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string p1, "handleBeauty3DGuideView, files exist, return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    const-string v3, "key_front_camera_first_switch"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "handleBeauty3DGuideView, start showBeauty3DGuide"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->p()V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/c/b;->c(Landroid/util/Size;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bJ()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->p()V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/c/b;->d(Landroid/util/Size;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, p1}, Lcom/oppo/camera/d/b;->e(Z)V

    :cond_0
    return-void
.end method

.method private x(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private y(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 2

    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()Z
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public X()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$5;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    return-void
.end method

.method public Z()Z
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onAfterSnapping()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->U()I

    move-result v0

    iput v0, p1, Lcom/oppo/camera/e/d;->B:I

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "common"

    return-object v0
.end method

.method public a(IZ)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->A:Z

    :cond_0
    const/4 v2, 0x0

    if-eq p1, v1, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cC()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->j()V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/oppo/camera/d/e;->n(Z)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    goto :goto_1

    :cond_3
    const-string p1, "key_bubble_type_add_beuty3d"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "key_beauty3d"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x6

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object p1

    const-string v0, "beauty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/oppo/camera/d/e;->x(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/oppo/camera/d/e;->y(I)I

    move-result v3

    invoke-interface {p1, v0, p2, v2, v3}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/e;->n(Z)V

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "off"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/oppo/camera/d/e;->p:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v0}, Lcom/oppo/camera/d/e;->a(ZZZZ)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/c/b;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.qti.stats_control.is_lls_needed"

    invoke-interface {v0, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    aget v0, v0, v2

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->X:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->X:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.oppo.supernight.state"

    invoke-interface {v0, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    if-nez v0, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    array-length v3, v0

    :goto_2
    const/4 v4, 0x3

    if-ne v4, v3, :cond_5

    aget v1, v0, v2

    iput v1, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->p()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/d/e;->Z:I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ak:J

    goto :goto_4

    :cond_5
    if-ge v3, v4, :cond_7

    if-lez v3, :cond_7

    aget v0, v0, v2

    iput v0, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->p()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/e;->Z:I

    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-ne v1, v0, :cond_6

    const-wide/16 v0, 0x1388

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0xc8

    :goto_3
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ak:J

    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-lez v0, :cond_7

    const-string v0, "CommonCapMode"

    const-string v1, "onPreviewCaptureResult, com.oppo.supernight.state not correct, set default value"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivedRawResultNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/e;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/e;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/e/d;

    invoke-virtual {v0}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v0

    sget-object v2, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    if-ne v2, v0, :cond_1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/oppo/camera/d/e;->k:I

    if-ne v2, v3, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/camera/d/e;->aj:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureCompleted, mFirstExposureTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oppo/camera/d/e;->aj:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cI()V

    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/e;->ap:I

    iget v2, p0, Lcom/oppo/camera/d/e;->Z:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/d/e;->ap:I

    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/d/e;->ap:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->q(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 8
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

    const-string v2, "need_preview_stream"

    const-string v3, "type_preview"

    if-ne v1, v0, :cond_1

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bC()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type_preview_frame"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v4, p0, Lcom/oppo/camera/d/e;->ao:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_5
    :goto_1
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_8

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.control.capture.remosaicenable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method protected a(Z)V
    .locals 3

    const-string p1, "CommonCapMode"

    const-string v0, "onResume"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_beauty3d"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->f()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x990

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/c/b;->a(Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CommonCapMode"

    const-string p2, "onShutterCallback, PIOpen"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/oppo/camera/d/e$6;

    invoke-direct {p2, p0}, Lcom/oppo/camera/d/e$6;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->f()V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZZZZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPIChanged, isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v3, 0x7f0f011c

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->l(I)V

    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object p3

    const-string v1, "filter"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3, v0}, Lcom/oppo/camera/ui/c;->l(Z)V

    iget-object p3, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3}, Lcom/oppo/camera/d/b;->w()V

    iget-object p3, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3, v0}, Lcom/oppo/camera/d/b;->c(Z)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_filter_menu"

    invoke-interface {p3, v1}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    :goto_0
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3, v0, v0, v0, p1}, Lcom/oppo/camera/ui/c;->a(ZZZZ)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->k(Z)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f0119

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->d(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_5
    return-void
.end method

.method protected a([BZ)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAfterPictureTaken, mReceivedSnapNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result p1

    iget p2, p0, Lcom/oppo/camera/d/e;->aa:I

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/e$a;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aI()V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->x()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/d/e;->Y:Z

    if-eqz p1, :cond_4

    const-string p1, "onAfterPictureTaken, hide scene night tips"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v0, 0x7f0f0134

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->b(I)V

    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->Y:Z

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->h()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->h()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_d

    :cond_5
    const-string p1, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "pref_auto_night_scence_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "pref_camera_pi_mode_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v3

    const-string v4, "pref_burst_shot_key"

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aR()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aR()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->i(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->m(Z)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->f(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->k(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->h(I)V

    const-string p1, "func_face_beauty_process"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "func_face_slender_process"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->m(Z)V

    :cond_a
    const-string p1, "pref_support_switch_camera"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->e(I)V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->f(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->w()V

    iget p1, p0, Lcom/oppo/camera/d/e;->W:I

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->s(I)V

    :cond_c
    iput v2, p0, Lcom/oppo/camera/d/e;->W:I

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    iget p2, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->q(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-interface {p1, v0, p2, v3, v2}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->f(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bc()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->n(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aH()V

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cG()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bD()V

    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    :cond_f
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_high_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "key_high_picture_size"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected aD()V
    .locals 5

    const-string v0, "CommonCapMode"

    const-string v1, "onDisableBurstShot"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/e;->aa:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->q:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->B:Z

    iget-object v3, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3, v1}, Lcom/oppo/camera/d/b;->a(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bm()V

    const-string v3, "onDisableBurstShot, CameraTest Continuous Shot End"

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->r()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Z)V

    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    :cond_3
    const-string v0, "pref_filter_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->b(Z)V

    :cond_4
    const-string v0, "func_face_beauty_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->b(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bD()V

    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cG()V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->b(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->e(ZZ)V

    :cond_6
    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->A:Z

    return-void
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_common_facebeauty_level_menu"

    return-object v0
.end method

.method public a_(Z)V
    .locals 4

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v1, 0xb

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->X:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public ac()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public ad()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    return v0

    :cond_0
    const/16 v0, 0x23

    return v0
.end method

.method protected ag()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bc()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/e;->ad:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/e;->ae:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->l(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aP()V

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v2, "pref_filter_menu"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->k(I)V

    return-void
.end method

.method protected ah()V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/e;->ad:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->l(I)V

    iget v0, p0, Lcom/oppo/camera/d/e;->ae:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aP()V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_filter_menu"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget v1, p0, Lcom/oppo/camera/d/e;->ae:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->k(I)V

    return-void
.end method

.method protected ai()Z
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onBurstShotCapture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(I)V

    :cond_0
    iput v1, p0, Lcom/oppo/camera/d/e;->aa:I

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->R()V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v2}, Lcom/oppo/camera/d/b;->a(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cH()V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->g(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->al()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aI()V

    return v1

    :cond_2
    return v2
.end method

.method public am()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onCancelTakePicture, reset mbShutterCallback"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    return-void
.end method

.method public at()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->at()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "key_3hdr"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x8001

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/e;->j:I

    const-string v3, "pref_camera_hdr_mode_key"

    invoke-static {v3, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x8101

    goto :goto_0

    :cond_2
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x8201

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const v0, 0x8014

    return v0

    :cond_5
    :goto_2
    const v0, 0x8013

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0xcc0

    const/16 v1, 0x990

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "pref_support_night_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    iput v0, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mNightState:I

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    return-object p1
.end method

.method public b(I)V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onCameraIdChanged"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->A:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    iput p1, p0, Lcom/oppo/camera/d/e;->W:I

    iput p1, p0, Lcom/oppo/camera/d/e;->af:I

    iput p1, p0, Lcom/oppo/camera/d/e;->ap:I

    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/d/e$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/e$3;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/media/Image;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/media/Image;)V

    return-void
.end method

.method protected b([BZ)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBeforePictureTaken, mReceivedSnapNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oppo/camera/d/e;->s:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/oppo/camera/d/e;->aa:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oppo/camera/d/e;->aa:I

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget p2, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->g(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bE()Z
    .locals 2

    const-string v0, "pref_support_night_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/e;->af:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->ai:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bF()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->bF()Z

    move-result v0

    return v0
.end method

.method public bG()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    return v0
.end method

.method public bJ()Z
    .locals 1

    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/ui/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public bc()I
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "CommonCapMode"

    const-string v1, "getCurrFilterIndex, no filter"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public bh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bp()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oppo/camera/d/e;->ag:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close_night_num"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/d/e;->ag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v1, v3, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public bq()Z
    .locals 8

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->F()Z

    move-result v0

    const-string v1, "CommonCapMode"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    const-string v3, "false"

    const-string v4, "ro.config.oppo.low_ram"

    if-eqz v0, :cond_0

    invoke-static {v4, v3}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCanFastCapture, mbPicToDoneCallbacked: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oppo/camera/d/e;->A:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ro.config.oppo.low_ram: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isCanFastCapture, in nightProcess, so not support it"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cJ()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isCanFastCapture, sdcard storage is too slow, so not support it"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bk()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isCanFastCapture, vivid effect open, so not support it"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "isCanFastCapture, PIMode effect open, so not support it"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->w:Z

    if-eqz v0, :cond_6

    const-string v0, "isCanFastCapture, mbAutoBinning is true, so not support it"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->at()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->av()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    iget v4, p0, Lcom/oppo/camera/d/e;->j:I

    const-string v5, "pref_camera_hdr_mode_key"

    invoke-static {v5, v4}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->v:Z

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    const v7, 0x7f0f0114

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_photo_ratio_key"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->x:Z

    if-nez v0, :cond_b

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->y:Z

    if-nez v0, :cond_b

    const-string v0, "super"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cv()Z

    move-result v0

    return v0

    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCanFastCapture, flash: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->x:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hdr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->v:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", night: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->y:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_c
    const-string v0, "isCanFastCapture, param is null or from third app"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public cB()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cC()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->f()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBeauty3DView, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonCapMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0xa

    const/16 v3, 0x438

    const/16 v4, 0x5a0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/c/b;->a(ILandroid/util/Size;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    const/4 v1, 0x2

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/c/b;->a(ILandroid/util/Size;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->h()V

    :goto_0
    return-void
.end method

.method public cD()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object v0

    const-string v2, "beauty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ce()V
    .locals 6

    const-string v0, "key_bubble_type_custom_beuty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v0, "key_bubble_type_add_beuty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_beauty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object v0

    const-string v2, "beauty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/e;->x(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/e;->y(I)I

    move-result v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method public cf()V
    .locals 3

    const-string v0, "key_bubble_type_add_beuty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v0, "key_bubble_type_custom_beuty3d"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->q()V

    :cond_2
    return-void
.end method

.method public cg()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public cm()Z
    .locals 1

    const-string v0, "pref_support_night_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public cn()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/e/f;)V

    :cond_0
    const-string v0, "key_3hdr"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(Z)V

    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/d/a;->cn()V

    return-void
.end method

.method protected co()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cq()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cs()V
    .locals 0

    return-void
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cx()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->br()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f024c

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public cy()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CommonCapMode"

    const-string v1, "displayFixedUpModeHint"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$8;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRawSize, optimalSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonCapMode"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "key_fixed_focus_lens_support_tap_shutter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "key_fixed_focus_lens_support_metering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "func_mode_panel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_filter_process_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_FILTER_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    return v1

    :cond_5
    const-string v2, "pref_save_jpg_after_pause_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SAVE_JPG_AFTER_PAUSE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bt()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    :cond_7
    const-string v2, "func_face_slender_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "func_face_beauty_process"

    if-eqz v2, :cond_9

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_2
    return v1

    :cond_9
    const-string v2, "pref_camera_vivid_effect_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIVID_EFFECT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v3

    :goto_3
    return v1

    :cond_b
    const-string v2, "pref_burst_shot_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    return v1

    :cond_d
    :goto_4
    return v3

    :cond_e
    const-string v2, "pref_support_post_view"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v3

    :cond_f
    const-string v2, "pref_support_fast_capture"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cv()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    move v1, v3

    :goto_5
    return v1

    :cond_12
    const-string v2, "pref_support_capture_preview"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    :cond_13
    return v3

    :cond_14
    const-string v2, "pref_support_ipa_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_15
    const-string v2, "pref_auto_night_scence_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_COMMON_AUTO_NIGHT_SCENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_16
    const-string v2, "pref_camera_torch_mode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    return p1

    :cond_17
    const-string v2, "func_torch_soft_light"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_6

    :cond_18
    move v1, v3

    :goto_6
    return v1

    :cond_19
    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1a
    const-string v2, "pref_camera_hdr_mode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_HDR_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_7

    :cond_1b
    move v1, v3

    :cond_1c
    :goto_7
    return v1

    :cond_1d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_BEAUTY_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_8

    :cond_1e
    move v1, v3

    :cond_1f
    :goto_8
    return v1

    :cond_20
    const-string v5, "pref_expand_popbar_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_9

    :cond_21
    move v1, v3

    :cond_22
    :goto_9
    return v1

    :cond_23
    const-string v5, "key_beauty3d"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {}, Lcom/oppo/camera/e/a;->f()Z

    move-result p1

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_BEAUTY3D:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_a

    :cond_24
    move v1, v3

    :goto_a
    return v1

    :cond_25
    const-string v6, "func_face_beauty_custom"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_b

    :cond_26
    move v1, v3

    :goto_b
    return v1

    :cond_27
    const-string v6, "func_face_beauty_common"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_c

    :cond_28
    move v1, v3

    :goto_c
    return v1

    :cond_29
    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_ASD_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_d

    :cond_2a
    move v1, v3

    :cond_2b
    :goto_d
    return v1

    :cond_2c
    const-string v4, "key_remosaic"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_e

    :cond_2d
    move v1, v3

    :cond_2e
    :goto_e
    return v1

    :cond_2f
    const-string v4, "key_3hdr"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->H()Z

    move-result p1

    if-nez p1, :cond_31

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->G()Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_f

    :cond_30
    move v1, v3

    :cond_31
    :goto_f
    return v1

    :cond_32
    const-string v2, "pref_switch_front_dual_camera_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    if-ne p1, v1, :cond_33

    goto :goto_10

    :cond_33
    move v1, v3

    :cond_34
    :goto_10
    return v1

    :cond_35
    const-string v2, "key_beauty3d_main_face_detect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_36

    goto :goto_11

    :cond_36
    move v1, v3

    :goto_11
    return v1

    :cond_37
    const-string v2, "pref_face_detection_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_38

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_38

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_38

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_38

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_39

    :cond_38
    return v3

    :cond_39
    return v1

    :cond_3a
    const-string v2, "pref_camera_assistant_line_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3b
    const-string v2, "pref_camera_pi_mode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_3d

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_PI_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_12

    :cond_3c
    move v1, v3

    :cond_3d
    :goto_12
    return v1

    :cond_3e
    const-string v2, "pref_support_raw_post_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "key_raw_hdr"

    if-eqz v2, :cond_41

    const-string p1, "pref_support_night_process"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_13

    :cond_3f
    move v1, v3

    :cond_40
    :goto_13
    return v1

    :cond_41
    const-string v2, "pref_camera_gradienter_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    return v3

    :cond_42
    const-string v2, "pref_filter_menu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_43
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_45

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_14

    :cond_44
    return v1

    :cond_45
    :goto_14
    return v3

    :cond_46
    const-string v0, "key_high_picture_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-eqz v0, :cond_48

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_47

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_15

    :cond_47
    move v1, v3

    :goto_15
    return v1

    :cond_48
    const-string v0, "func_sat_camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_49

    invoke-static {}, Lcom/oppo/camera/e/a;->g()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_16

    :cond_49
    move v1, v3

    :goto_16
    return v1

    :cond_4a
    const-string v0, "key_support_no_face_forbid_beauty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4b
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_4c

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->br()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_17

    :cond_4c
    move v1, v3

    :goto_17
    return v1

    :cond_4d
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected h()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aI()V

    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    iput v1, p0, Lcom/oppo/camera/d/e;->W:I

    iput v1, p0, Lcom/oppo/camera/d/e;->af:I

    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->ai:Z

    iput v1, p0, Lcom/oppo/camera/d/e;->ap:I

    const-string v1, "key_beauty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/oppo/camera/c/b;->b()V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "key_bubble_type_add_beuty3d"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key_bubble_type_custom_beuty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_5
    return-void
.end method

.method protected i()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "OnStop"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected j()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    const-string v1, "key_bubble_type_add_beuty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x6

    invoke-interface {v1, v3, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v1, "key_bubble_type_custom_beuty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x5

    invoke-interface {v1, v3, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/c/b;->r()V

    iput-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    :cond_2
    return-void
.end method

.method protected k()V
    .locals 3

    const-string v0, "CommonCapMode"

    const-string v1, "onInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/e$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/d/e$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/e$1;-><init>(Lcom/oppo/camera/d/e;)V

    iput-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0094

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cE()V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->V:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/e;->ar:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string p1, "pref_camera_gesture_shutter_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v0, "type_still_capture_raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "pref_support_raw_post_process"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "type_still_capture_yuv_main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    const-string v0, "type_still_capture_yuv_sub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "type_still_capture_yuv_third"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "func_sat_camera"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    return v1
.end method

.method protected l()V
    .locals 3

    const-string v0, "CommonCapMode"

    const-string v1, "onDeInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->p(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->A:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->ai:Z

    iput v0, p0, Lcom/oppo/camera/d/e;->W:I

    iput v0, p0, Lcom/oppo/camera/d/e;->af:I

    iput v0, p0, Lcom/oppo/camera/d/e;->ap:I

    iget-object v1, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->k(I)V

    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->d(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->j(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->d(Z)V

    const-string v1, "key_bubble_type_add_beuty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "key_beauty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_3
    const-string v1, "key_bubble_type_custom_beuty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->c()V

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->d()V

    :cond_6
    return-void
.end method

.method public l(I)V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cL()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->l(I)V

    return-void
.end method

.method protected m()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onBeforePreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bK()V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->f()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->b(Lcom/oppo/camera/e/f;)V

    :cond_0
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->d(Z)V

    :cond_1
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    :cond_2
    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v1, v0

    int-to-long v0, v1

    const-wide/32 v2, 0xd59f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(I)V

    :cond_3
    return-void
.end method

.method public m(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/oppo/camera/d/e;->af:I

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cL()V

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->n(I)V

    return-void
.end method

.method protected n()Z
    .locals 5

    const-string v0, "CommonCapMode"

    const-string v1, "onBeforeSnapping"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$4;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/16 v3, 0x960

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->s(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    iget v3, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->q(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->f(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->n(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aE()V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ba()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->F()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->r(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->r(I)V

    :cond_4
    :goto_1
    return v2
.end method

.method protected o()Z
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q(I)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBeauty3DScanIconType, effectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const-string v1, "key_beauty3d"

    const-string v2, "beauty"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x6

    invoke-interface {p1, v0, v3}, Lcom/oppo/camera/ui/c;->c(IZ)V

    return v3

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->q(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->k()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s()I
    .locals 2

    const-string v0, "func_sat_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/d/e;->m:I

    mul-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    return v0
.end method

.method public s(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/d/e;->W:I

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    iget v1, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->q(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    iget v0, p0, Lcom/oppo/camera/d/e;->ag:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/d/e;->ag:I

    :cond_1
    return-void
.end method

.method public t()Lcom/oppo/camera/e/d;
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcom/oppo/camera/e/d;

    invoke-direct {v0}, Lcom/oppo/camera/e/d;-><init>()V

    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->s()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/e/d;->h:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ad()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/e/d;->i:I

    iget v1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->az()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oppo/camera/d/e;->a_:Ljava/lang/String;

    :goto_0
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->A:Z

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    return-object v0

    :cond_2
    invoke-super {p0}, Lcom/oppo/camera/d/a;->t()Lcom/oppo/camera/e/d;

    move-result-object v0

    return-object v0
.end method

.method protected v(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/c/b;->a(I)V

    :cond_0
    return-void
.end method

.method protected x()Lcom/oppo/camera/e/f$a;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/d/e;->ap:I

    invoke-super {p0}, Lcom/oppo/camera/d/a;->x()Lcom/oppo/camera/e/f$a;

    move-result-object v0

    return-object v0
.end method
