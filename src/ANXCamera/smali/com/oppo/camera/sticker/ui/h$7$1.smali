.class Lcom/oppo/camera/sticker/ui/h$7$1;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/sticker/ui/h$7;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/ui/h$7;


# direct methods
.method constructor <init>(Lcom/oppo/camera/sticker/ui/h$7;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$7$1;->a:Lcom/oppo/camera/sticker/ui/h$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$7$1;->a:Lcom/oppo/camera/sticker/ui/h$7;

    iget-object v0, v0, Lcom/oppo/camera/sticker/ui/h$7;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->a()V

    return-void
.end method
