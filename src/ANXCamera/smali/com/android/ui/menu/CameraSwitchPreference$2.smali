.class Lcom/android/ui/menu/CameraSwitchPreference$2;
.super Ljava/lang/Object;
.source "CameraSwitchPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ui/menu/CameraSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ui/menu/CameraSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/ui/menu/CameraSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference$2;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference$2;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {p1}, Lcom/android/ui/menu/CameraSwitchPreference;->b(Lcom/android/ui/menu/CameraSwitchPreference;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "CameraSwitchPreference"

    const-string p2, "Exception: null == mPreference"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference$2;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {p1}, Lcom/android/ui/menu/CameraSwitchPreference;->b(Lcom/android/ui/menu/CameraSwitchPreference;)Landroidx/preference/Preference;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference$2;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {p2}, Lcom/android/ui/menu/CameraSwitchPreference;->b(Lcom/android/ui/menu/CameraSwitchPreference;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->K()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference$2;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->b(Lcom/android/ui/menu/CameraSwitchPreference;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference$2;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
