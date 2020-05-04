.class Lcom/oppo/camera/d/k$8;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/sticker/data/StickerItem;)Z
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

    iput-object p1, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    invoke-virtual {v0}, Lcom/oppo/camera/d/k;->ch()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->w()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    iget v3, v3, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-interface {v0, v2, v2, v1, v3}, Lcom/oppo/camera/ui/c;->a(ZZZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, p0, Lcom/oppo/camera/d/k$8;->a:Lcom/oppo/camera/d/k;

    iget v3, v3, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-interface {v0, v2, v2, v1, v3}, Lcom/oppo/camera/ui/c;->a(ZZZZ)V

    :cond_1
    :goto_0
    return-void
.end method
