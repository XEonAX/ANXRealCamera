.class Lcom/oppo/camera/sticker/ui/h$13;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/oppo/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oppo/camera/sticker/ui/h;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$13;->c:Lcom/oppo/camera/sticker/ui/h;

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/h$13;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oppo/camera/sticker/ui/h$13;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$13;->c:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->h(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$13;->c:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->h(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/j;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h$13;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/oppo/camera/sticker/ui/h$13;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/ui/j;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
