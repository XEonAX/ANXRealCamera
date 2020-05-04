.class Lcom/oppo/camera/d/c$a;
.super Landroid/os/Handler;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/c;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/d/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->u(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->u(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/oppo/camera/d/d;->b(Lcom/oppo/camera/d/c;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->u(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->u(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/c$a;->a:Lcom/oppo/camera/d/c;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/oppo/camera/d/d;->a(Lcom/oppo/camera/d/c;II)V

    :cond_2
    :goto_0
    return-void
.end method
