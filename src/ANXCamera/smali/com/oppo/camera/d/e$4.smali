.class Lcom/oppo/camera/d/e$4;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/e;->n()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-virtual {v0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-boolean v1, v1, Lcom/oppo/camera/d/e;->p:Z

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-boolean v1, v1, Lcom/oppo/camera/d/e;->X:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget v1, v1, Lcom/oppo/camera/d/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CommonCapMode"

    const-string v4, "onBeforeSnapping, show scene night tips"

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v4, v1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v5, 0x7f0f0134

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iput-boolean v2, v1, Lcom/oppo/camera/d/e;->Y:Z

    if-nez v0, :cond_1

    new-instance v1, Lcom/oppo/camera/ui/control/c;

    invoke-direct {v1}, Lcom/oppo/camera/ui/control/c;-><init>()V

    const-string v4, "button_color_inside_none"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/control/c;->a(I)V

    iget-object v4, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v4, v4, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v4, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    const-string v4, "key_beauty3d"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-virtual {v1}, Lcom/oppo/camera/d/e;->cD()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/c/b;->p()V

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/c/b;->e(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/c/b;->q()V

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-virtual {v1}, Lcom/oppo/camera/d/e;->aw()Ljava/lang/String;

    move-result-object v1

    const-string v5, "on"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "auto"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget v1, v1, Lcom/oppo/camera/d/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    const-string v5, "pref_camera_torch_mode_key"

    invoke-virtual {v1, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/c/b;->q()V

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-boolean v0, v0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    invoke-static {v0}, Lcom/oppo/camera/d/e;->e(Lcom/oppo/camera/d/e;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->l(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->j(Z)V

    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4, v2, v4, v4}, Lcom/oppo/camera/ui/c;->a(ZZZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->h(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->e(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->f(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/e$4;->a:Lcom/oppo/camera/d/e;

    iget-object v1, v1, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f010b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
