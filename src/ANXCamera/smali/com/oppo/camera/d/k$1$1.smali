.class Lcom/oppo/camera/d/k$1$1;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/k$1;->a(Ljava/util/ArrayList;ILcom/oppo/camera/sticker/data/StickerItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/oppo/camera/d/k$1;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/k$1;Ljava/util/ArrayList;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/k$1$1;->d:Lcom/oppo/camera/d/k$1;

    iput-object p2, p0, Lcom/oppo/camera/d/k$1$1;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/oppo/camera/d/k$1$1;->b:I

    iput-boolean p4, p0, Lcom/oppo/camera/d/k$1$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/k$1$1;->d:Lcom/oppo/camera/d/k$1;

    iget-object v0, v0, Lcom/oppo/camera/d/k$1;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k$1$1;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/camera/d/k$1$1;->b:I

    iget-boolean v3, p0, Lcom/oppo/camera/d/k$1$1;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/util/ArrayList;IZ)V

    return-void
.end method
