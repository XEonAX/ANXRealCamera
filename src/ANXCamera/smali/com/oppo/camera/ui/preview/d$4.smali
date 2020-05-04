.class Lcom/oppo/camera/ui/preview/d$4;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/d;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oppo/camera/ui/preview/d;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    iput-boolean p2, p0, Lcom/oppo/camera/ui/preview/d$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/d;->x(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/i;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p2}, Lcom/oppo/camera/ui/preview/d;->s(Lcom/oppo/camera/ui/preview/d;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0f0178

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_storage_key"

    invoke-virtual {p1, v0, p2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oppo/camera/ui/preview/d$4;->a:Z

    const-string v1, "off"

    const-string v2, "on"

    if-eqz p2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/d;->x(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    sput-object v2, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/d;->x(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    sput-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    :goto_0
    sget-object p1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/oppo/camera/v;->a(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/oppo/camera/v;->s:I

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/d;->r(Lcom/oppo/camera/ui/preview/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p2}, Lcom/oppo/camera/ui/preview/d;->s(Lcom/oppo/camera/ui/preview/d;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "enter_from"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d$4;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {p2}, Lcom/oppo/camera/ui/preview/d;->s(Lcom/oppo/camera/ui/preview/d;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "makeMultipleOptionStorageDialog, Exception when start ClearMainActivity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraPreviewUI"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
