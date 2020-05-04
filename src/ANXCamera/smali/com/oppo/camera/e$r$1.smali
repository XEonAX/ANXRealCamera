.class Lcom/oppo/camera/e$r$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$r;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$r;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$r;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    iget-object v2, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v2, v2, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->D()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->a(F)V

    sget-boolean v0, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aE(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aF(Lcom/oppo/camera/e;)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aG(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aH(Lcom/oppo/camera/e;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v2, v2, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f00d0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v2, v2, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aI(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/d;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aJ(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aK(Lcom/oppo/camera/e;)B

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v4}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;B)B

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    iget-object v2, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v2, v2, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aK(Lcom/oppo/camera/e;)B

    move-result v2

    if-ne v2, v4, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->d(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;B)B

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->w(Lcom/oppo/camera/e;)Lcom/oppo/camera/k;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->w(Lcom/oppo/camera/e;)Lcom/oppo/camera/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/k;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$r$1;->a:Lcom/oppo/camera/e$r;

    iget-object v0, v0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->l()V

    :cond_7
    :goto_2
    return-void
.end method
