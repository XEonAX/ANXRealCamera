.class Lcom/oppo/camera/ui/preview/i$2;
.super Ljava/lang/Object;
.source "GradienterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/i;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/i;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/i$2;->a:Lcom/oppo/camera/ui/preview/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/i$2;->a:Lcom/oppo/camera/ui/preview/i;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/i;->a(Lcom/oppo/camera/ui/preview/i;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/i$2;->a:Lcom/oppo/camera/ui/preview/i;

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/preview/i;->a(Lcom/oppo/camera/ui/preview/i;I)I

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/i$2;->a:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/i;->a()V

    :cond_0
    return-void
.end method
