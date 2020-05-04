.class Lcom/oppo/camera/ui/preview/a/h$3;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Lcom/oppo/camera/sticker/data/StickerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oppo/camera/ui/preview/a/h;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->b:Lcom/oppo/camera/ui/preview/a/h;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/a/h$3;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/data/StickerItem;->setDownloadState(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->b:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->b:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/l;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h$3;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/preview/a/l;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->b:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/ui/preview/a/h;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h$3;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->b:Lcom/oppo/camera/ui/preview/a/h;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h$3;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/sticker/data/StickerItem;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$3;->b:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/h;Z)Z

    return-void
.end method
