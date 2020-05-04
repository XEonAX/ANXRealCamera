.class Lcom/oppo/camera/d/m$1;
.super Landroid/os/Handler;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/m;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    iget-object p1, p1, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/d/m$1$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/m$1$1;-><init>(Lcom/oppo/camera/d/m$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    invoke-static {p1}, Lcom/oppo/camera/d/m;->c(Lcom/oppo/camera/d/m;)Z

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/d/m;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/m;->m(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    invoke-static {p1}, Lcom/oppo/camera/d/m;->b(Lcom/oppo/camera/d/m;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/oppo/camera/d/m$1;->a:Lcom/oppo/camera/d/m;

    invoke-static {p1}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/d/m;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
