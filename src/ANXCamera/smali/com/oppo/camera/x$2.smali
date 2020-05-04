.class Lcom/oppo/camera/x$2;
.super Landroid/os/Handler;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/x;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/x;

.field private b:Landroid/view/animation/PathInterpolator;


# direct methods
.method constructor <init>(Lcom/oppo/camera/x;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ed70a3d    # 0.42f

    const v0, 0x3f051eb8    # 0.52f

    const v1, 0x3f6b851f    # 0.92f

    invoke-direct {p1, p2, p2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oppo/camera/x$2;->b:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;FZ)V

    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1, v2}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ZoomManager"

    const-string v0, "handleMessage, cancel click"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v0, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;Z)Z

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->f(Lcom/oppo/camera/x;)F

    move-result v0

    iget-object v3, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v3}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/x$a;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v3}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/x$a;->k()V

    :cond_3
    const/4 v3, 0x5

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    const-string v5, "pref_none_sat_ultra_wide_angle_key"

    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->g(Lcom/oppo/camera/x;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v0, p1, v2, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;FZZ)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->h(Lcom/oppo/camera/x;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->i(Lcom/oppo/camera/x;)Lcom/oppo/camera/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v5, v0}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v2, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;FZZ)V

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_0
    if-gt v4, v3, :cond_7

    iget-object v6, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v6}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v6

    invoke-interface {v6}, Lcom/oppo/camera/x$a;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    sub-float v6, p1, v0

    iget-object v7, p0, Lcom/oppo/camera/x$2;->b:Landroid/view/animation/PathInterpolator;

    int-to-float v8, v4

    int-to-float v9, v3

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {v7, v6, v2, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;FZZ)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->h(Lcom/oppo/camera/x;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->i(Lcom/oppo/camera/x;)Lcom/oppo/camera/i;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/oppo/camera/i;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->i(Lcom/oppo/camera/x;)Lcom/oppo/camera/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string v0, "off"

    invoke-virtual {p1, v5, v0}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1, v2}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/x$2;->a:Lcom/oppo/camera/x;

    invoke-static {p1, v2}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;I)V

    :goto_2
    return-void
.end method
