.class final Lcom/oppo/camera/d/m$c;
.super Landroid/os/Handler;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/m;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/d/m;Lcom/oppo/camera/d/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m$c;-><init>(Lcom/oppo/camera/d/m;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    invoke-virtual {p1}, Lcom/oppo/camera/d/m;->cR()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    invoke-virtual {p1}, Lcom/oppo/camera/d/m;->bT()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/camera/d/m$c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    invoke-static {p1}, Lcom/oppo/camera/d/m;->k(Lcom/oppo/camera/d/m;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    iget-object v0, p1, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/d/m;Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    invoke-virtual {p1, v2, v1}, Lcom/oppo/camera/d/m;->d(ZZ)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    iget-object p1, p1, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    iget-object p1, p1, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/ui/c;->b(ZZ)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    new-instance v0, Lcom/oppo/camera/d/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/camera/d/m$b;-><init>(Lcom/oppo/camera/d/m;Lcom/oppo/camera/d/m$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/m$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/d/m;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/oppo/camera/d/m$c;->a:Lcom/oppo/camera/d/m;

    invoke-static {p1}, Lcom/oppo/camera/d/m;->j(Lcom/oppo/camera/d/m;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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
