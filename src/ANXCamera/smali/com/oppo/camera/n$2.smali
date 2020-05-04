.class Lcom/oppo/camera/n$2;
.super Ljava/lang/Object;
.source "NetLocationPermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/n;->a(Landroid/content/SharedPreferences;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/n;


# direct methods
.method constructor <init>(Lcom/oppo/camera/n;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/n$2;->a:Lcom/oppo/camera/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "NetLocationPermissionDialog"

    const-string v0, "showNetLocationDialog, onDismiss"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/n$2;->a:Lcom/oppo/camera/n;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oppo/camera/n;->a(Lcom/oppo/camera/n;Z)Z

    return-void
.end method
