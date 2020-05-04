.class Lcom/oppo/camera/e$44;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    iput-boolean p2, p0, Lcom/oppo/camera/e$44;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    iget-boolean v1, p0, Lcom/oppo/camera/e$44;->a:Z

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Z)Z

    move-result v0

    const-string v1, "normal"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->h()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->s(Lcom/oppo/camera/e;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/oppo/camera/e$44$1;

    invoke-direct {v3, p0}, Lcom/oppo/camera/e$44$1;-><init>(Lcom/oppo/camera/e$44;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->w(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->D()Z

    move-result v0

    const-string v4, "CameraTest Shutter Respond Start"

    const-string v5, "CameraManager"

    if-eqz v0, :cond_5

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->p()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "view_enable"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "view_ashed"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v4, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->j(I)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->s(Lcom/oppo/camera/e;Z)Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bM(Lcom/oppo/camera/e;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bN(Lcom/oppo/camera/e;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v10, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v10}, Lcom/oppo/camera/e;->bM(Lcom/oppo/camera/e;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-static {v0, v6, v7}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;J)J

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    const-wide/16 v6, -0x1

    invoke-static {v0, v6, v7}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;J)J

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bO(Lcom/oppo/camera/e;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v8}, Lcom/oppo/camera/e;->bO(Lcom/oppo/camera/e;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/oppo/camera/e;->d(Lcom/oppo/camera/e;J)J

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/oppo/camera/e;->e(Lcom/oppo/camera/e;J)J

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->W()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    :cond_8
    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->p()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "doCapture, capture failed for some reason!"

    invoke-static {v5, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Lcom/oppo/camera/e$44$2;

    invoke-direct {v4, p0}, Lcom/oppo/camera/e$44$2;-><init>(Lcom/oppo/camera/e$44;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->j(I)V

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->s(Lcom/oppo/camera/e;Z)Z

    return-void
.end method
