.class Lcom/oppo/camera/Camera$12;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Camera;
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

    iput-object p1, p0, Lcom/oppo/camera/Camera$12;->a:Lcom/oppo/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/Camera$12;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->d(Lcom/oppo/camera/Camera;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/Camera$12;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/Camera$12;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/e;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
