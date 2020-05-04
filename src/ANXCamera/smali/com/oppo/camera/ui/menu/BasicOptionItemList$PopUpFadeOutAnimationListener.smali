.class public final Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;
.super Ljava/lang/Object;
.source "BasicOptionItemList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/BasicOptionItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PopUpFadeOutAnimationListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;


# direct methods
.method protected constructor <init>(Lcom/oppo/camera/ui/menu/BasicOptionItemList;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(Lcom/oppo/camera/ui/menu/BasicOptionItemList;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->p:Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->p:Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/f;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->p:Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->p:Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/f;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
