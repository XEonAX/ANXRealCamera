.class Lcom/oppo/camera/ui/g$1;
.super Landroid/os/Handler;
.source "OppoSeekLineBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/g;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/g$1;->a:Lcom/oppo/camera/ui/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/g$1;->a:Lcom/oppo/camera/ui/g;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/g;->K_()V

    :goto_0
    return-void
.end method
