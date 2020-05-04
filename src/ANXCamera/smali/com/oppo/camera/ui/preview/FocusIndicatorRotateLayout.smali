.class public Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;
.super Landroid/view/View;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;,
        Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$a;,
        Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;

.field private d:Z

.field private e:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$a;-><init>(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$1;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b:Ljava/lang/Runnable;

    new-instance p1, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$b;

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$b;-><init>(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$1;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->e:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c()V

    iget v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget p2, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3f0ccccd    # 0.55f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x2

    iput p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x2

    iput p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setScaleY(F)V

    return-void
.end method

.method public setOnFocusIndicatorDisappearListener(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->e:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;

    return-void
.end method
