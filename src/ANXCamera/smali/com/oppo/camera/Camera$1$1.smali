.class Lcom/oppo/camera/Camera$1$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/Camera$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/Camera$1;


# direct methods
.method constructor <init>(Lcom/oppo/camera/Camera$1;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Camera$1$1;->a:Lcom/oppo/camera/Camera$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "OppoCamera"

    const-string v1, "mMediaServiceThread, run, mIpaConnection.onServiceConnected"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera$1$1;->a:Lcom/oppo/camera/Camera$1;

    iget-object v0, v0, Lcom/oppo/camera/Camera$1;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/e;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OppoCamera"

    const-string v0, "mMediaServiceThread, run, mIpaConnection.onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
