.class Lcom/oppo/camera/ui/menu/setting/i$a;
.super Ljava/lang/Thread;
.source "CameraSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/setting/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/setting/i;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/menu/setting/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->a:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->b:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->b:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->a:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(Lcom/oppo/camera/ui/menu/setting/i;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->a:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(Lcom/oppo/camera/ui/menu/setting/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->a:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/i;->e(Lcom/oppo/camera/ui/menu/setting/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i$a;->a:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/i;->e(Lcom/oppo/camera/ui/menu/setting/i;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
