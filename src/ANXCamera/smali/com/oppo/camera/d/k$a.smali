.class Lcom/oppo/camera/d/k$a;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/k;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/d/k;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/d/k;Lcom/oppo/camera/d/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k$a;-><init>(Lcom/oppo/camera/d/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    return-void
.end method

.method public a(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->G()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-static {p1, v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-static {p1, v1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-static {p1, v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerDownloadStarted, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/h;->a()Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$c;->c(Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getDownloadState()I

    move-result v5

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-boolean v0, v0, Lcom/oppo/camera/d/k;->s:Z

    xor-int/lit8 v7, v0, 0x1

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;IILjava/lang/String;ZLcom/oppo/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;I)V
    .locals 8

    iget-object p2, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object p2, p2, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {p2}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/a/h;->a()Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/preview/a/h$c;->c(Ljava/lang/String;)I

    move-result v3

    iget-object p2, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-static {p2}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-boolean p2, p2, Lcom/oppo/camera/d/k;->s:Z

    xor-int/lit8 v6, p2, 0x1

    const/16 v4, 0x10

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;IILjava/lang/String;ZLcom/oppo/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method public b(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-virtual {v0}, Lcom/oppo/camera/d/k;->bY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->G()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-virtual {v0}, Lcom/oppo/camera/d/k;->aB()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->a()Lcom/oppo/camera/gl/GLRootView;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/d/k$a$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/d/k$a$1;-><init>(Lcom/oppo/camera/d/k$a;Lcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    return-void
.end method

.method public c(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/k$a$2;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/d/k$a$2;-><init>(Lcom/oppo/camera/d/k$a;Lcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/d/k$a;->a:Lcom/oppo/camera/d/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    return-void
.end method
