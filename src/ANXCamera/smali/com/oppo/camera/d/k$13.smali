.class Lcom/oppo/camera/d/k$13;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/k;->cX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/k;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/k;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    const-string v2, "pref_camera_assistant_line_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->g(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->f()V

    iget-object v0, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_filter_menu"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v1, v1, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k$13;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->h(ZZ)V

    :cond_1
    return-void
.end method
