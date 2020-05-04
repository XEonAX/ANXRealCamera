.class Lcom/oppo/camera/ui/e$39;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/menu/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->e(I)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->v()V

    return-void
.end method

.method public a(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/camera/ui/d;->a(IIZ)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->x()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->f(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->k(Lcom/oppo/camera/ui/e;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->g()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->y()I

    move-result v0

    return v0
.end method

.method public e()[I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$39;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->B()[I

    move-result-object v0

    return-object v0
.end method
