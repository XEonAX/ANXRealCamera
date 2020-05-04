.class Lcom/oppo/camera/sticker/ui/h$8;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Lcom/oppo/camera/sticker/ui/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/sticker/ui/h;-><init>(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oppo/camera/sticker/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->b(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->b(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/i;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oppo/camera/sticker/ui/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0, p1}, Lcom/oppo/camera/sticker/ui/h;->a(Lcom/oppo/camera/sticker/ui/h;I)I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p1, p2, p3}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->f(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerPageView;

    move-result-object p1

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p3}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/oppo/camera/sticker/ui/StickerPageView;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/oppo/camera/sticker/ui/h;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->d(Lcom/oppo/camera/sticker/ui/h;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a/h;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->g(Lcom/oppo/camera/sticker/ui/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->b(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$8;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->b(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/i;->d()V

    :cond_0
    return-void
.end method
