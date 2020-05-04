.class Lcom/oppo/camera/ui/menu/setting/g$3;
.super Ljava/lang/Object;
.source "CameraSettingActivityFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/setting/g;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/setting/g;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/setting/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/g$3;->a:Lcom/oppo/camera/ui/menu/setting/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/g$3;->a:Lcom/oppo/camera/ui/menu/setting/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/setting/g;->b(Lcom/oppo/camera/ui/menu/setting/g;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/g$3;->a:Lcom/oppo/camera/ui/menu/setting/g;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "pref_restore_key"

    invoke-virtual {p1, v0, p2}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
