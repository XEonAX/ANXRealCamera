.class Lcom/oppo/camera/k/b$1;
.super Landroid/os/Handler;
.source "PortraitCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/k/b;


# direct methods
.method constructor <init>(Lcom/oppo/camera/k/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k/b$1;->a:Lcom/oppo/camera/k/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/k/b$1;->a:Lcom/oppo/camera/k/b;

    invoke-static {p1}, Lcom/oppo/camera/k/b;->c(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/k/b$1;->a:Lcom/oppo/camera/k/b;

    invoke-static {p1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/k/b$1;->a:Lcom/oppo/camera/k/b;

    invoke-static {p1, v0}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/k/b$1;->a:Lcom/oppo/camera/k/b;

    invoke-static {p1}, Lcom/oppo/camera/k/b;->b(Lcom/oppo/camera/k/b;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;I)V

    :cond_2
    :goto_0
    return-void
.end method
