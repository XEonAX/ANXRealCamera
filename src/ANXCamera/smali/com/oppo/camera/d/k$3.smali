.class Lcom/oppo/camera/d/k$3;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/k;->n()Z
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

    iput-object p1, p0, Lcom/oppo/camera/d/k$3;->a:Lcom/oppo/camera/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k$3;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/k$3;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->b(Z)V

    return-void
.end method
