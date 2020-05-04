.class Lcom/oppo/camera/panorama/e$6;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->X()V
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

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->F(Lcom/oppo/camera/panorama/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/e;->n(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->G(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v2}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v3}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v3}, Lcom/oppo/camera/panorama/e;->H(Lcom/oppo/camera/panorama/e;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060333

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    new-instance v5, Lcom/oppo/camera/panorama/d;

    invoke-direct {v5}, Lcom/oppo/camera/panorama/d;-><init>()V

    invoke-static {v4, v5}, Lcom/oppo/camera/panorama/e;->a(Lcom/oppo/camera/panorama/e;Lcom/oppo/camera/panorama/d;)Lcom/oppo/camera/panorama/d;

    iget-object v4, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v4}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v5}, Lcom/oppo/camera/panorama/e;->I(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/oppo/camera/panorama/d;->a(Landroid/app/Activity;IILcom/oppo/camera/panorama/d$b;)V

    iget-object v4, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v4}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/oppo/camera/panorama/d;->a(II)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v4}, Lcom/oppo/camera/panorama/e;->J(Lcom/oppo/camera/panorama/e;)I

    move-result v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    iget-object v3, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v3}, Lcom/oppo/camera/panorama/e;->m(Lcom/oppo/camera/panorama/e;)I

    move-result v3

    iget-object v5, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v5}, Lcom/oppo/camera/panorama/e;->n(Lcom/oppo/camera/panorama/e;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    invoke-virtual {v0, v4, v3}, Lcom/oppo/camera/panorama/d;->b(II)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/d;->b(Z)V

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$6;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/d;->d()V

    :cond_1
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
