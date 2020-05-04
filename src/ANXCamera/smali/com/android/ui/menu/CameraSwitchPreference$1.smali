.class Lcom/android/ui/menu/CameraSwitchPreference$1;
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

    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference$1;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference$1;->a:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {p1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Lcom/android/ui/menu/CameraSwitchPreference;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
