.class public Lcom/oppo/camera/d/f;
.super Lcom/oppo/camera/d/m;
.source "CommonVideoMode.java"


# static fields
.field private static final af:Z


# instance fields
.field private ag:Z

.field private ah:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0"

    const-string v1, "oppo.camera.disable.videoeis"

    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/camera/d/f;->af:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/d/f;->ag:Z

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/d/f;->ah:Landroid/util/Range;

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/d/f;->ai:Landroid/util/Range;

    iput-boolean p1, p0, Lcom/oppo/camera/d/f;->aj:Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cL()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cX()V

    return-void
.end method

.method private cJ()Z
    .locals 6

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSpecialEffectSwitch, isFilterSwitchOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFaceBeatySwitchOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private cK()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "pref_lasted_video_fps"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const-string v3, "pref_lasted_video_size"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cL()V
    .locals 6

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v4, v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v4

    const-string v5, "video_size_4kuhd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "video_size_1080p"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bL()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->h(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const v1, -0x186a0

    if-eq v0, v1, :cond_2

    const/16 v0, 0x66

    move v3, v0

    :cond_2
    if-eq v4, v3, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->k(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3, v2, v3}, Lcom/oppo/camera/ui/c;->b(ZZZ)V

    :cond_4
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->k(I)V

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->j(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bO()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->a([I)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_6
    return-void
.end method

.method private cX()V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result v0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v4, v2, :cond_0

    iget v2, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "video_size_4kuhd"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->be()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->n(I)V

    :cond_2
    return-void
.end method

.method private cY()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_size_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cZ()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f01a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_fps_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private da()Z
    .locals 4

    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1e

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    const-string v3, "CommonVideoMode"

    if-ne v0, v2, :cond_1

    const-string v0, "isHighFps false, videoFps: 30"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/d/f;->aj:Z

    if-eqz v0, :cond_2

    const-string v0, "isHighFps, force30fps"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_size_720p"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_720_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string v2, "video_size_1080p"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_1080_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "video_size_4kuhd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_4K_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const/16 v0, 0x3c

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    if-ne v0, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHighFps, isHighFps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method private db()V
    .locals 7

    const-string v0, "CommonVideoMode"

    const-string v1, "onHighFpsStateChange"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_support_video_high_fps"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onHighFpsStateChange, not support high fps, so return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f01a6

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_2
    return-void
.end method

.method private dc()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f01a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_video_fps_key"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFpsToDefault, nowVideoFPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private e(ZZ)V
    .locals 11

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cJ()Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const-string v2, "pref_lasted_video_save_status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSpecialEffectStatus, afterStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", beforeStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isClickFaceBeauty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "pref_video_fps_key"

    const-string v7, "pref_video_size_key"

    const-string v8, "pref_lasted_video_size"

    const-string v9, "pref_lasted_video_fps"

    const/4 v10, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    if-nez v1, :cond_5

    invoke-interface {v4, v2, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bP()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    invoke-interface {p1, v7, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move p1, v10

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move p2, v10

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    if-eqz p1, :cond_3

    const-string p1, "set video size pref value"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v10}, Lcom/oppo/camera/d/b;->b(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "set fps pref value"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v10}, Lcom/oppo/camera/d/b;->b(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bP()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_4
    const-string p1, "restoreSpecialEffectStatus, save status"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cK()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, v10}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_6
    const-string p2, "restoreSpecialEffectStatus, read status"

    invoke-static {v5, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v1, 0x7f0f01a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cG()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, ""

    invoke-interface {v4, v9, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v8, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    :cond_8
    :goto_2
    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_video_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_facebeauty_level_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_filter_index"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_video_filter_index"

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


# virtual methods
.method public I()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->I()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/f;->e(ZZ)V

    return-void
.end method

.method public X()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->X()V

    iget-boolean v0, p0, Lcom/oppo/camera/d/f;->ag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->n(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->ag:Z

    :cond_0
    return-void
.end method

.method public Z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "commonVideo"

    return-object v0
.end method

.method public a(IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/m;->a(IIZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onFaceBeautyItemValueChange, mbForce30fps: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonVideoMode"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/d/f;->aj:Z

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/oppo/camera/d/f;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/oppo/camera/d/f;->e(ZZ)V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cB()V

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->a(Z)V

    return-void
.end method

.method public a(ZZZZ)V
    .locals 8

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3c

    if-ne v4, v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v5, 0x7f0f024a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForceChangeTo1080P, isHighfps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", filterIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isNoneSatUltraWideAngleMenuOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CommonVideoMode"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v5}, Lcom/oppo/camera/d/b;->g()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "video_size_4kuhd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p3, :cond_8

    :cond_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_8

    :cond_2
    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "pref_video_size_key"

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/i$a;

    const-string v1, "video_size_1080p"

    invoke-virtual {p3, v0, v1, p4}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p3}, Lcom/oppo/camera/i$a;->apply()V

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->dc()V

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3, v2}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_5
    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p2, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_6
    if-nez p1, :cond_7

    iput-boolean v3, p0, Lcom/oppo/camera/d/f;->aj:Z

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkForceChangeTo720P, mbForce30fps: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public aU()Z
    .locals 7

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v4, v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceBeautyMenuClick, videoSizeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isHighfps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "video_size_4kuhd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "video_size_1080p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->ag:Z

    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/f;->e(ZZ)V

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v4, 0x7f0f01a1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "pref_video_fps_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_size_key"

    const-string v4, "video_size_720p"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v0

    iget-object v4, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bL()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->h(I)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const v5, -0x186a0

    if-eq v4, v5, :cond_4

    const/16 v4, 0x66

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aX()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->k(I)V

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3, v3}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->b(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->o(Z)V

    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->aj:Z

    return v3
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_video_facebeauty_level_menu"

    return-object v0
.end method

.method public an()V
    .locals 5

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->an()V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    iget-object v2, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->k()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public ap()V
    .locals 5

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->ap()V

    return-void
.end method

.method public b()I
    .locals 3

    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830b

    const-string v1, "key_support_video_high_fps"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3c

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    if-ne v1, v2, :cond_1

    const v0, 0x8021

    goto :goto_0

    :cond_0
    const v0, 0x800b

    :cond_1
    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(I)V

    return-void
.end method

.method public bD()V
    .locals 7

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0703de

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method public bH()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->bH()V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_video_size_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected bO()[I
    .locals 6

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bL()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CommonVideoMode"

    const-string v1, "getCustomBeautyValues, customBeautyKeys null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    const-string v2, "func_face_beauty_custom"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    aget-object v4, v0, v3

    sget-object v5, Lcom/oppo/camera/d/f;->f:[I

    aget v5, v5, v3

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/oppo/camera/d/f;->f:[I

    aget v2, v2, v3

    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "func_face_beauty_common"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    aget-object v4, v0, v3

    iget v5, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v5}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x28

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_3

    :cond_4
    aput v3, v1, v3

    :goto_3
    const/4 v2, 0x1

    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_6

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_6

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object v1
.end method

.method public bP()I
    .locals 2

    const-string v0, "key_support_video_high_fps"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v1, 0x7f0f01a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bg()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->bg()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/oppo/camera/d/f;->a(ZZZZ)V

    return-void
.end method

.method public bu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cM()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->l(Ljava/lang/String;)Landroid/util/Size;

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

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cM()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cA()V
    .locals 0

    invoke-super {p0}, Lcom/oppo/camera/d/m;->cA()V

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    return-void
.end method

.method public cB()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f024a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x3c

    if-lt v1, v4, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video_size_4kuhd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForceCloseNoneSatUltraWideAngle, isHighfps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", is4K: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNoneSatUltraWideAngleMenuOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CommonVideoMode"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v5}, Lcom/oppo/camera/d/b;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/i$a;

    const-string v1, "off"

    invoke-virtual {v0, v2, v1, v3}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/oppo/camera/i$a;->apply()V

    :cond_2
    return-void
.end method

.method protected cC()I
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method protected cD()Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected cE()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->ba()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cF()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_eis"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommonVideoMode"

    const-string v1, "releaseEisFrame"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    new-instance v2, Lcom/oppo/camera/d/f$2;

    invoke-direct {v2, p0, v0}, Lcom/oppo/camera/d/f$2;-><init>(Lcom/oppo/camera/d/f;Landroid/os/ConditionVariable;)V

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$d;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_0
    return-void
.end method

.method public cG()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    const-string v1, "pref_video_size_key"

    invoke-static {v1, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cd()Z
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    return v0
.end method

.method public cf()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectMenuPopDown, mbForce30fps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    invoke-direct {p0, v0, v0}, Lcom/oppo/camera/d/f;->e(ZZ)V

    return-void
.end method

.method protected cp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cy()V
    .locals 0

    return-void
.end method

.method public d()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "key_support_video_high_fps"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->ah:Landroid/util/Range;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->ai:Landroid/util/Range;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "key_fixed_focus_lens_support_metering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "func_mode_panel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    const-string v2, "pref_camera_tap_shutter_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_21

    const-string v2, "pref_time_lapse_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "pref_camera_assistant_line_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "pref_camera_gesture_shutter_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string v2, "pref_expand_popbar_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :cond_6
    :goto_0
    return v1

    :cond_7
    const-string v2, "pref_filter_process_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_1
    return v1

    :cond_9
    const-string v2, "pref_support_high_temperature_ultimate_limit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "video_size_4kuhd"

    const-string v5, "video_size_720p"

    const-string v6, "video_size_1080p"

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v1, v3

    :cond_b
    :goto_2
    return v1

    :cond_c
    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "CommonVideoMode"

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSupportFunction, KEY_VIDEO_EIS: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v8}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v2, "func_face_beauty_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_FACE_BEAUTY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    move v1, v3

    :goto_3
    return v1

    :cond_f
    const-string v8, "func_face_slender_process"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_10
    const-string v8, "func_face_beauty_common"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_12
    const-string v0, "key_support_no_face_forbid_beauty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_13
    const-string v0, "pref_video_eis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/oppo/camera/d/f;->af:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return v1

    :cond_15
    const-string v0, "key_support_video_high_fps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bQ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_720_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    goto :goto_4

    :cond_16
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_1080_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    goto :goto_4

    :cond_17
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_4K_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    goto :goto_4

    :cond_18
    move v0, v3

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportFunction, sizeType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSupportHps: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_19

    if-eqz v0, :cond_19

    goto :goto_5

    :cond_19
    move v1, v3

    :goto_5
    return v1

    :cond_1a
    const-string v0, "pref_support_ipa_process"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_1b
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "func_torch_soft_light"

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1c
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_6

    :cond_1d
    move v1, v3

    :goto_6
    return v1

    :cond_1e
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bs()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_7

    :cond_1f
    move v1, v3

    :goto_7
    return v1

    :cond_20
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_21
    :goto_8
    return v3
.end method

.method public e(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->e(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/f;->o(Z)V

    return-void
.end method

.method protected h()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/d/m;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->ag:Z

    return-void
.end method

.method public i(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/d/f;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->i(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected l()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->l()V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->s()V

    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/d/f;->aj:Z

    return-void
.end method

.method public l(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/f;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    const-string v0, "func_filter_vignette"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/f;->o(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "oppo_video_filter_olympus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->aj:Z

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->l(I)V

    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/oppo/camera/d/f;->a(ZZZZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CommonVideoMode"

    const-string v0, "onFilterItemChange"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->dc()V

    :cond_3
    return-void
.end method

.method protected m()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->m()V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->W:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/f;->W:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/d/f$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/f$1;-><init>(Lcom/oppo/camera/d/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected n(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    return-void
.end method

.method protected n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
