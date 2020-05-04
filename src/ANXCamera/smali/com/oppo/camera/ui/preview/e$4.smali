.class Lcom/oppo/camera/ui/preview/e$4;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/e;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e$4;->a:Lcom/oppo/camera/ui/preview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e$4;->a:Lcom/oppo/camera/ui/preview/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/ui/preview/e;I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e$4;->a:Lcom/oppo/camera/ui/preview/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/e;->d(Lcom/oppo/camera/ui/preview/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e$4;->a:Lcom/oppo/camera/ui/preview/e;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/e;->e(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/ui/preview/e$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
