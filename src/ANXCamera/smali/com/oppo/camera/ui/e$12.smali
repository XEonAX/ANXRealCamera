.class Lcom/oppo/camera/ui/e$12;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "CameraUIManager"

    const-string v0, "onAISceneClosed, canRespondTouch is false!"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/e;Z)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/e;I)I

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->d(Lcom/oppo/camera/ui/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->d(Lcom/oppo/camera/ui/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->e(Lcom/oppo/camera/ui/e;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->c(I)V

    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v1, p1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/e;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$12;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aN()V

    return-void
.end method
