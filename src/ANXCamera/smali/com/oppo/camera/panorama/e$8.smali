.class Lcom/oppo/camera/panorama/e$8;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->Z()Z
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

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->R(Lcom/oppo/camera/panorama/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->S(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->T(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setNextDirection(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/panorama/e;->y(I)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->V(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v2}, Lcom/oppo/camera/panorama/e;->W(Lcom/oppo/camera/panorama/e;)Lvisidon/Lib/Panorama;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v2}, Lcom/oppo/camera/panorama/e;->W(Lcom/oppo/camera/panorama/e;)Lvisidon/Lib/Panorama;

    move-result-object v2

    invoke-virtual {v2}, Lvisidon/Lib/Panorama;->start()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/panorama/e;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->S(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->S(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v3}, Lcom/oppo/camera/panorama/e;->X(Lcom/oppo/camera/panorama/e;)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->S(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v3}, Lcom/oppo/camera/panorama/e;->Y(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$8;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->Z(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    :goto_0
    return-void
.end method
