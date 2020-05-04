.class Lcom/oppo/camera/k/b$3;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/k/b;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/k/b;


# direct methods
.method constructor <init>(Lcom/oppo/camera/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->e(Lcom/oppo/camera/k/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-virtual {v0}, Lcom/oppo/camera/k/b;->aJ()V

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    const-string v1, "pref_dual_camera"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/k/b;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->b(Lcom/oppo/camera/k/b;Z)Z

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->f(Lcom/oppo/camera/k/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->f(Lcom/oppo/camera/k/b;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->g(Lcom/oppo/camera/k/b;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/k/b$3;->a:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->g(Lcom/oppo/camera/k/b;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
