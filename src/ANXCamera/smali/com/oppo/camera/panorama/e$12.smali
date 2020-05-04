.class Lcom/oppo/camera/panorama/e$12;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->y(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$12;->b:Lcom/oppo/camera/panorama/e;

    iput p2, p0, Lcom/oppo/camera/panorama/e$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$12;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/panorama/e$12;->a:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$12;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->ae(Lcom/oppo/camera/panorama/e;)Landroid/widget/TextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/panorama/e$12;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget p1, p0, Lcom/oppo/camera/panorama/e$12;->a:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$12;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/panorama/e$12;->a:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$12;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->ae(Lcom/oppo/camera/panorama/e;)Landroid/widget/TextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/panorama/e$12;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
