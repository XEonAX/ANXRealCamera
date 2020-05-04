.class Lcom/oppo/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/color/support/widget/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/Camera;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog, whichButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCheck: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoCamera"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pref_runtime_alert_first_show"

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1, v0}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->e(Lcom/oppo/camera/Camera;)Z

    move-result v0

    invoke-static {p1, p1, p2, v0}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {}, Lcom/oppo/camera/Camera;->h()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;Ljava/util/List;)V

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e;->ar()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1, v0}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->e(Lcom/oppo/camera/Camera;)Z

    move-result v0

    invoke-static {p1, p1, p2, v0}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/Camera$5;->a:Lcom/oppo/camera/Camera;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
