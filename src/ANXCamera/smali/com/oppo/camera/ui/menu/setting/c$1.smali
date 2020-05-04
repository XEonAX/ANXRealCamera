.class Lcom/oppo/camera/ui/menu/setting/c$1;
.super Ljava/lang/Object;
.source "CameraCustomListPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/setting/c;->a(Landroidx/appcompat/app/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/setting/c;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/setting/c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/c$1;->a:Lcom/oppo/camera/ui/menu/setting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c$1;->a:Lcom/oppo/camera/ui/menu/setting/c;

    invoke-static {v0, p2}, Lcom/oppo/camera/ui/menu/setting/c;->a(Lcom/oppo/camera/ui/menu/setting/c;I)I

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/c$1;->a:Lcom/oppo/camera/ui/menu/setting/c;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lcom/oppo/camera/ui/menu/setting/c;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
