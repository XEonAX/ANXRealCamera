.class Lcom/oppo/camera/c/b$2;
.super Ljava/lang/Object;
.source "Beauty3DManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/beauty3d/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/c/b;


# direct methods
.method constructor <init>(Lcom/oppo/camera/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/c/d;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "com.oppo.beauty3d.mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    goto :goto_0

    :cond_0
    const-string v0, "com.oppo.beauty3d.scan.state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/c/b;->b(Ljava/lang/String;[I)Z

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/c/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->b(Lcom/oppo/camera/c/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/c/d;->d()V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->c(Lcom/oppo/camera/c/b;)I

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->b(Lcom/oppo/camera/c/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/c/d;->d()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oppo/camera/c/d;->b(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "Beauty3DManager"

    const-string v1, "onEditSave"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->d(Lcom/oppo/camera/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->d(Lcom/oppo/camera/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->c(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->e(Lcom/oppo/camera/c/b;)I

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/c/d;->b(Z)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/c/d;->e()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->f(Lcom/oppo/camera/c/b;)I

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->o()V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/c/d;->f()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->g(Lcom/oppo/camera/c/b;)I

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/c/d;->b()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b$2;->a:Lcom/oppo/camera/c/b;

    invoke-static {v0, v1}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/c/b;Z)Z

    return-void
.end method
