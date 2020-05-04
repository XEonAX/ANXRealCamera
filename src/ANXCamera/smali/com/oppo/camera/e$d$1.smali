.class Lcom/oppo/camera/e$d$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$d;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$n;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$n;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v1, v1, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v2, v2, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/e;->d(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v1, v1, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$d$1;->a:Lcom/oppo/camera/e$d;

    iget-object v2, v2, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/e$n;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Landroid/util/Size;)V

    return-void
.end method
