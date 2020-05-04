.class Lcom/oppo/camera/ui/preview/j$1;
.super Ljava/lang/Object;
.source "GuideLineView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/j;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/j;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j$1;->a:Lcom/oppo/camera/ui/preview/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/j$1;->a:Lcom/oppo/camera/ui/preview/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/j;->setVisibility(I)V

    return-void
.end method
