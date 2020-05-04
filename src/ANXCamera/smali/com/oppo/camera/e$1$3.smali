.class Lcom/oppo/camera/e$1$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$1;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/oppo/camera/e$1;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iput-object p2, p0, Lcom/oppo/camera/e$1$3;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$1$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->J()V

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    const-string v1, "pref_camera_gradienter_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->C()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;I)I

    iget-object v0, p0, Lcom/oppo/camera/e$1$3;->b:Lcom/oppo/camera/e$1;

    iget-object v0, v0, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    return-void
.end method
