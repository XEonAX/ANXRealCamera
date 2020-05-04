.class Lcom/oppo/camera/e$38$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$38;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/e$38;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$38;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iput p2, p0, Lcom/oppo/camera/e$38$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object p1, p1, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object v0, v0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e$38$1;->a:I

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/modepanel/a;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object p1, p1, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->J(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object p1, p1, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->O(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object p1, p1, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object v0, v0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e$38$1;->a:I

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/modepanel/a;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object p1, p1, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->J(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$38$1;->b:Lcom/oppo/camera/e$38;

    iget-object p1, p1, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->O(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
