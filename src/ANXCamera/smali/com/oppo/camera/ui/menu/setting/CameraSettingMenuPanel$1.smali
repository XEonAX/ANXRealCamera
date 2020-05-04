.class Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;
.super Ljava/lang/Object;
.source "CameraSettingMenuPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

.field final synthetic c:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;ZLcom/oppo/camera/ui/menu/setting/CameraMenuOption;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;->c:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;->a:Z

    iput-object p3, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;->b:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;->b:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
