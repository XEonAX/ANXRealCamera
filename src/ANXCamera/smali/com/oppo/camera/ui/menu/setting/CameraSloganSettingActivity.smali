.class public Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;
.super Lcom/oppo/camera/ui/menu/setting/h;
.source "CameraSloganSettingActivity.java"


# instance fields
.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->j:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->k:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->l:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "SloganSettingActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->k:Z

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a5

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->setContentView(I)V

    const p1, 0x7f0f0167

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->m()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "com.oppo.camera.ui.menu.setting.SloganSettingActivity"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/j;

    invoke-direct {v1}, Lcom/oppo/camera/ui/menu/setting/j;-><init>()V

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const v2, 0x7f0800f7

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/k;->b()I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->initialize(Lcom/oppo/camera/e/h;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oppo.intent.action.APP_SLOGAN_SETTING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "camera_intent_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/setting/j;->g(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->j:Z

    if-eqz v0, :cond_1

    const-string v1, "camera_enter_form_lock_screen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->l:Z

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onPause()V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/g;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onResume()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo.intent.action.APP_SLOGAN_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->setShowWhenLocked(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->k:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSloganSettingActivity;->setShowWhenLocked(Z)V

    return-void
.end method
