.class Lcom/oppo/camera/professional/e$11;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/e;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/professional/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->g(Lcom/oppo/camera/professional/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->h(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->J()V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->i(Lcom/oppo/camera/professional/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/menu/levelcontrol/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->j(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    :cond_1
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v3, 0xb

    const-string v4, "button_color_inside_none"

    invoke-direct {v0, v3, v4}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v3}, Lcom/oppo/camera/professional/e;->k(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->l(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->m(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/e$a;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v3, 0x12c

    invoke-static {v0, v2, v1, v3, v4}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$11;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;I)V

    return-void
.end method
