.class Lcom/oppo/camera/panorama/e$5;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->b(Landroid/media/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;[B)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$5;->b:Lcom/oppo/camera/panorama/e;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e$5;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$5;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$5;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$5;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/panorama/e$5;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {v2}, Lcom/oppo/camera/panorama/e;->i(Lcom/oppo/camera/panorama/e;)Z

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e$5;->a:[B

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/panorama/d;->a(Z[B)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
