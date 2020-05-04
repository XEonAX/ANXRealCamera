.class Lcom/oppo/camera/e$52$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$52;->a(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$52;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$52;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aq()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->v(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gesture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->w(Lcom/oppo/camera/e;)Lcom/oppo/camera/k;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/camera/k;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->x(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v2, v2, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v2, v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->w(Lcom/oppo/camera/e;)Lcom/oppo/camera/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/k;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$52$1;->a:Lcom/oppo/camera/e$52;

    iget-object v0, v0, Lcom/oppo/camera/e$52;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    :cond_2
    :goto_0
    return-void
.end method
