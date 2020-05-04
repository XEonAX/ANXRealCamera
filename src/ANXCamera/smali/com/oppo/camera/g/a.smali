.class public Lcom/oppo/camera/g/a;
.super Lcom/oppo/camera/d/m;
.source "FastVideoMode.java"


# instance fields
.field private af:I

.field private ag:Ljava/lang/String;

.field private ah:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/lang/Integer;

.field private aj:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/oppo/camera/g/a;->af:I

    const-string p1, "video_size_1080p"

    iput-object p1, p0, Lcom/oppo/camera/g/a;->ag:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/g/a;->ah:Ljava/util/HashMap;

    return-void
.end method

.method private cB()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFastValueToParameter, mSpeedValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/g/a;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/g/a;->af:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/g/a;->ai:Ljava/lang/Integer;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/oppo/camera/g/a;->aj:F

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/g/a;->ai:Ljava/lang/Integer;

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/oppo/camera/g/a;->aj:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/g/a;->ai:Ljava/lang/Integer;

    const v0, 0x3e2aaaab

    iput v0, p0, Lcom/oppo/camera/g/a;->aj:F

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/oppo/camera/g/a;->aj:F

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/g/a;->ai:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/g/a;->ai:Ljava/lang/Integer;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oppo/camera/g/a;->aj:F

    :goto_0
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/g/a;->o(Z)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->P()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "fastVideo"

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public an()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const-string v4, "button_color_inside_red"

    const-string v5, "button_shape_dial_rotate"

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/oppo/camera/g/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->an()V

    iget-object v0, p0, Lcom/oppo/camera/g/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/g/a;->K:Lcom/oppo/camera/e/f;

    iget v2, p0, Lcom/oppo/camera/g/a;->j:I

    iget-object v3, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/g/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public ap()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_dial_rotate"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oppo/camera/g/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

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

    iget v0, p0, Lcom/oppo/camera/g/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/g/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830c

    goto :goto_0

    :cond_0
    const v0, 0x800c

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bD()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/g/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public bP()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->cC()I

    move-result v0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/g/a;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public br()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->cM()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    const-string v0, "video_size_1080p"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/g/a;->l(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/g/a;->g:I

    return-void
.end method

.method public c(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->cM()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/g/a;->M:Lcom/oppo/camera/ui/c;

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

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cD()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/g/a;->ai:Ljava/lang/Integer;

    return-object v0
.end method

.method public cN()Ljava/lang/Float;
    .locals 3

    iget v0, p0, Lcom/oppo/camera/g/a;->aj:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealVideoTimeRatio, ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FastVideoMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public cW()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_tap_shutter_key"

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

    const-string v0, "pref_video_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->bY()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/g/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "button_shape_dial_rotate"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/g/a;->o(Z)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->h()V

    return-void
.end method

.method protected j()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/d/m;->j()V

    iget-object v0, p0, Lcom/oppo/camera/g/a;->ah:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/g/a;->ah:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 2

    const-string v0, "FastVideoMode"

    const-string v1, "onInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->k()V

    iget-object v0, p0, Lcom/oppo/camera/g/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/g/a;->g:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/oppo/camera/g/a;->af:I

    return-void
.end method

.method protected l()V
    .locals 2

    const-string v0, "FastVideoMode"

    const-string v1, "onDeInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/g/a;->o(Z)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->l()V

    return-void
.end method

.method protected m()V
    .locals 2

    const-string v0, "FastVideoMode"

    const-string v1, "onBeforePreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->m()V

    invoke-direct {p0}, Lcom/oppo/camera/g/a;->cB()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/g/a;->o(Z)V

    return-void
.end method

.method protected n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/g/a;->bY()Z

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
