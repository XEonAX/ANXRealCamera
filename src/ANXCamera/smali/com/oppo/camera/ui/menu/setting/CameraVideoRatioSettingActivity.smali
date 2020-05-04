.class public Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;
.super Lcom/oppo/camera/ui/menu/setting/h;
.source "CameraVideoRatioSettingActivity.java"


# instance fields
.field private j:Lcolor/support/v7/widget/Toolbar;

.field private k:Lcolor/support/design/widget/ColorAppBarLayout;

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->l:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->m:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->n:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "CameraVideoRatioSettingActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->m:Z

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0030

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->setContentView(I)V

    new-instance p1, Lcom/oppo/camera/ui/menu/setting/k;

    invoke-direct {p1}, Lcom/oppo/camera/ui/menu/setting/k;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->m()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v0

    const v1, 0x7f080120

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/k;->b()I

    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->j:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->j:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->a(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->k:Lcolor/support/design/widget/ColorAppBarLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->k:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-static {p0}, Lcom/oppo/camera/o/e;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->j:Lcolor/support/v7/widget/Toolbar;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity$1;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "oppo.intent.action.APP_VIDEO_RATIO_SETTING"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "camera_intent_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->l:Z

    if-eqz v0, :cond_0

    const-string p1, "camera_enter_form_lock_screen"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->n:Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onPause()V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/g;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onResume()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo.intent.action.APP_VIDEO_RATIO_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->setShowWhenLocked(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->m:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraVideoRatioSettingActivity;->setShowWhenLocked(Z)V

    return-void
.end method
