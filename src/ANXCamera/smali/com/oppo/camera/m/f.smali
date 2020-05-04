.class public Lcom/oppo/camera/m/f;
.super Lcom/oppo/camera/d/m;
.source "SlowVideoMode.java"


# instance fields
.field private af:Z

.field private ag:Ljava/lang/Integer;

.field private ah:Z

.field private ai:Z

.field private aj:Lcom/oppo/camera/m/a;

.field private final ak:Lcom/oppo/camera/m/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->af:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ah:Z

    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ai:Z

    new-instance p1, Lcom/oppo/camera/m/f$2;

    invoke-direct {p1, p0}, Lcom/oppo/camera/m/f$2;-><init>(Lcom/oppo/camera/m/f;)V

    iput-object p1, p0, Lcom/oppo/camera/m/f;->ak:Lcom/oppo/camera/m/a$a;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/m/f;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/m/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ah:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/m/f;)Lcom/oppo/camera/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/m/f;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/m/f;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/m/f;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cB()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/m/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f016b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_slow_video_frame_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cJ()Lcom/oppo/camera/m/a;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cK()V

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cB()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/m/e;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/oppo/camera/ui/c;)Lcom/oppo/camera/m/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpsModeInstanceWrap fpsMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v1}, Lcom/oppo/camera/m/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    return-object v0
.end method

.method private cK()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyFpsMode mbCompilingVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/m/f;->ah:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/m/f;->ah:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->h()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    :cond_1
    return-void
.end method

.method private cL()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->c(Z)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->c(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->e(ZZ)V

    const-string v0, "SlowVideoMode"

    const-string v1, "enableUIView now !"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/m/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cL()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/m/f;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_0
    const/16 v0, 0x28

    return v0

    :cond_1
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_2
    const/16 v0, 0x50

    return v0

    :cond_3
    const/16 v0, 0xa

    return v0
.end method

.method public X()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->X()V

    iget-boolean v0, p0, Lcom/oppo/camera/m/f;->af:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/m/f$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/m/f$1;-><init>(Lcom/oppo/camera/m/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/m/f;->af:Z

    :cond_0
    return-void
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "slowVideo"

    return-object v0
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cJ()Lcom/oppo/camera/m/a;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/oppo/camera/d/n;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/m/a;->a(Lcom/oppo/camera/d/n;)V

    :cond_0
    return-void
.end method

.method protected a(J)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->e()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ai:Z

    iget-boolean p1, p0, Lcom/oppo/camera/m/f;->ai:Z

    return p1
.end method

.method public an()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->e()I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0x7fffffff

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->i(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/m/f;->ai:Z

    invoke-super {p0}, Lcom/oppo/camera/d/m;->an()V

    return-void
.end method

.method public ao()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->E()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->d(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    return-void
.end method

.method public ap()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v2}, Lcom/oppo/camera/m/a;->b()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/m/f;->ai:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    iget v4, p0, Lcom/oppo/camera/m/f;->ad:I

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/oppo/camera/m/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/oppo/camera/m/f;->ah:Z

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    iget-object v2, p0, Lcom/oppo/camera/m/f;->ak:Lcom/oppo/camera/m/a$a;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/m/a;->a(Lcom/oppo/camera/m/a$a;)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/m/f;->m(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterStopRecording, getVideoFileName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mbAutoStopRecord: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/m/f;->ai:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbCompilingVideo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/m/f;->ah:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SlowVideoMode"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->E()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->d(I)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4, v1}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->ap()V

    return-void
.end method

.method public at()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830d

    goto :goto_0

    :cond_0
    const v0, 0x800d

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_SLOWVIDEO_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bD()V
    .locals 7

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0703de

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method public bP()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cC()I

    move-result v0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/m/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bV()Z
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->bV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v1}, Lcom/oppo/camera/m/a;->f()V

    :cond_0
    return v0
.end method

.method public bW()Z
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->bW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v1}, Lcom/oppo/camera/m/a;->g()V

    :cond_0
    return v0
.end method

.method public bu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cM()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "getPreviewSize"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->l(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public c(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cM()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cD()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    return-object v0
.end method

.method public cG()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/m/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cN()Ljava/lang/Float;
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/d/m;->cN()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected cO()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ":0,0,0,0"

    const-string v3, "slow_motion_hfr_"

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "video_size_720p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected cQ()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/m/f;->X:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x989680

    return v0

    :cond_0
    const v0, 0x7270e0

    return v0
.end method

.method protected cU()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->c()Z

    move-result v0

    return v0
.end method

.method protected cV()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->d()Z

    move-result v0

    return v0
.end method

.method public cW()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/m/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f019a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_codec_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cb()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->b()Z

    move-result v0

    return v0
.end method

.method public cc()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/m/f;->ah:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHighSpeedVideoFpsRange videoSizeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SlowVideoMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "video_size_720p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "pref_update_setting_background_bar_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "func_request_fast_launch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_face_detection_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_support_switch_camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_support_recording_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_video_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pref_support_high_temperature_ultimate_limit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isVideoHighFrameRateEnabled()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "button_shape_dial_still"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method protected j()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cK()V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/m/f;->af:Z

    return-void
.end method

.method protected k()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->k()V

    iget-object v0, p0, Lcom/oppo/camera/m/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/m/f;->g:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->o(Z)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected l()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onDeInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cK()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->o(Z)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->l()V

    return-void
.end method

.method protected m()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onBeforePreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cJ()Lcom/oppo/camera/m/a;

    invoke-super {p0}, Lcom/oppo/camera/d/m;->m()V

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const-string v1, "video_size_720p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
