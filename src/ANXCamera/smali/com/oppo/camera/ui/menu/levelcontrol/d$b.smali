.class Lcom/oppo/camera/ui/menu/levelcontrol/d$b;
.super Ljava/lang/Object;
.source "FilterEffectMenu.java"

# interfaces
.implements Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/levelcontrol/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/levelcontrol/d;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/menu/levelcontrol/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/menu/levelcontrol/d;Lcom/oppo/camera/ui/menu/levelcontrol/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->c(Lcom/oppo/camera/ui/menu/levelcontrol/d;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d(Lcom/oppo/camera/ui/menu/levelcontrol/d;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(II)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->b(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->g(Lcom/oppo/camera/ui/menu/levelcontrol/d;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;->a:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
