.class Lcom/oppo/camera/ui/preview/a$1;
.super Ljava/lang/Object;
.source "AISceneUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/a;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a$1;->a:Lcom/oppo/camera/ui/preview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a$1;->a:Lcom/oppo/camera/ui/preview/a;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a;->a(Lcom/oppo/camera/ui/preview/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a$1;->a:Lcom/oppo/camera/ui/preview/a;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a;->a(Lcom/oppo/camera/ui/preview/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a$1;->a:Lcom/oppo/camera/ui/preview/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/a;->a(Lcom/oppo/camera/ui/preview/a;I)V

    :cond_0
    return-void
.end method
