.class Lcom/oppo/camera/ui/e$33;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/menu/setting/l$b;


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

    iput-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->K(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->e()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->e()V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, v1}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->w(Lcom/oppo/camera/ui/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->r()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->J(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/oppo/camera/ui/control/b;->a(ZZ)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->i(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e$33;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->m(Z)V

    return-void
.end method
