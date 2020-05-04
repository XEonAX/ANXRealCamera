.class Lcom/oppo/camera/n$1;
.super Ljava/lang/Object;
.source "NetLocationPermissionDialog.java"

# interfaces
.implements Lcom/color/support/widget/f$b;


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

    iput-object p1, p0, Lcom/oppo/camera/n$1;->a:Lcom/oppo/camera/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/n$1;->a:Lcom/oppo/camera/n;

    invoke-static {v0}, Lcom/oppo/camera/n;->a(Lcom/oppo/camera/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->k(Landroid/content/Context;)V

    return-void
.end method
