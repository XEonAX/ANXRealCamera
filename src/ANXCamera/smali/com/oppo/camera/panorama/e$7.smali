.class Lcom/oppo/camera/panorama/e$7;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->n()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->K(Lcom/oppo/camera/panorama/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v4}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v4}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v5}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/panorama/f;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oppo/camera/panorama/d;->a(Z)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/panorama/e;Z)Z

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->o(Lcom/oppo/camera/panorama/e;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oppo/camera/panorama/e;->c(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/e;->x(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->L(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/oppo/camera/ui/c;->b(IZ)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->M(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->h(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->N(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->e(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->O(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->f(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->P(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    const/16 v3, 0x8

    invoke-interface {v0, v3, v2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v2, 0xa

    const-string v3, "button_color_inside_none"

    invoke-direct {v0, v2, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(I)V

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$7;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->Q(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method
