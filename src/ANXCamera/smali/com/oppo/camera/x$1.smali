.class Lcom/oppo/camera/x$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/x;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/x;


# direct methods
.method constructor <init>(Lcom/oppo/camera/x;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->e(Lcom/oppo/camera/x;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->f()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->b(Lcom/oppo/camera/x;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->b(Lcom/oppo/camera/x;)V

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->c(Lcom/oppo/camera/x;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->d(Lcom/oppo/camera/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->c(Lcom/oppo/camera/x;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->c(Lcom/oppo/camera/x;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->g()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged, zoomValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->b(Lcom/oppo/camera/x;)V

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->c(Lcom/oppo/camera/x;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/x$1;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->c(Lcom/oppo/camera/x;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(F)V
    .locals 0

    return-void
.end method

.method public d(F)V
    .locals 0

    return-void
.end method
