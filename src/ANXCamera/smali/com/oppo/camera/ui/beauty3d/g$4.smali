.class Lcom/oppo/camera/ui/beauty3d/g$4;
.super Ljava/lang/Object;
.source "Beauty3DUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/beauty3d/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/beauty3d/g;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/beauty3d/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/g$4;->a:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "Beauty3DUI"

    const-string v0, "onClick, beauty3d data delete"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/g$4;->a:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/g;->j()V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/g$4;->a:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/beauty3d/g;->a(Lcom/oppo/camera/ui/beauty3d/g;)Lcom/oppo/camera/ui/beauty3d/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/g$4;->a:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/beauty3d/g;->a(Lcom/oppo/camera/ui/beauty3d/g;)Lcom/oppo/camera/ui/beauty3d/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/g$a;->h()V

    :cond_0
    return-void
.end method
