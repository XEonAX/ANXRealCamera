.class Lcom/oppo/camera/ui/preview/i$1;
.super Ljava/lang/Object;
.source "GradienterView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/i;->setVisibilityWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/ui/preview/i;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/i$1;->b:Lcom/oppo/camera/ui/preview/i;

    iput p2, p0, Lcom/oppo/camera/ui/preview/i$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/i$1;->b:Lcom/oppo/camera/ui/preview/i;

    iget v0, p0, Lcom/oppo/camera/ui/preview/i$1;->a:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/i;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/i$1;->b:Lcom/oppo/camera/ui/preview/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/i;->a(Lcom/oppo/camera/ui/preview/i;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/i$1;->b:Lcom/oppo/camera/ui/preview/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/i;->a(Lcom/oppo/camera/ui/preview/i;Z)Z

    return-void
.end method
