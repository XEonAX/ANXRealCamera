.class Lcom/oppo/camera/ui/preview/m$1;
.super Ljava/lang/Object;
.source "VideoRecordingTimeUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/m;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/m;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m$1;->a:Lcom/oppo/camera/ui/preview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m$1;->a:Lcom/oppo/camera/ui/preview/m;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/m;->a(Lcom/oppo/camera/ui/preview/m;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m$1;->a:Lcom/oppo/camera/ui/preview/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/m;->a(Lcom/oppo/camera/ui/preview/m;Ljava/lang/Float;)Ljava/lang/Float;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m$1;->a:Lcom/oppo/camera/ui/preview/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/m;->a(Lcom/oppo/camera/ui/preview/m;Z)Z

    const-string p1, "VideoRecordingTimeUI"

    const-string v0, "hideTimeUI, onAnimationEnd"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "VideoRecordingTimeUI"

    const-string v0, "hideTimeUI, onAnimationStart"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
