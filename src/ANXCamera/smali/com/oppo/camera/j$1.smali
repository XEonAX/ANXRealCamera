.class Lcom/oppo/camera/j$1;
.super Ljava/lang/Object;
.source "GalleryPreCodeClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/j;


# direct methods
.method constructor <init>(Lcom/oppo/camera/j;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/j$1;->a:Lcom/oppo/camera/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "GalleryPreCodeClient"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/j$1;->a:Lcom/oppo/camera/j;

    invoke-static {p2}, Lcom/oppo/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/oppo/a/a/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/j;->a(Lcom/oppo/camera/j;Lcom/oppo/a/a/a;)Lcom/oppo/a/a/a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GalleryPreCodeClient"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/j$1;->a:Lcom/oppo/camera/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/j;->a(Lcom/oppo/camera/j;Lcom/oppo/a/a/a;)Lcom/oppo/a/a/a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
