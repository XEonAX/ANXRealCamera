.class Lcom/oppo/camera/sticker/b/c$2;
.super Ljava/lang/Object;
.source "StickerProcessThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/b/c$a;

.field final synthetic b:Landroid/os/ConditionVariable;

.field final synthetic c:Lcom/oppo/camera/sticker/b/c;


# direct methods
.method constructor <init>(Lcom/oppo/camera/sticker/b/c;Lcom/oppo/camera/sticker/b/c$a;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/b/c$2;->c:Lcom/oppo/camera/sticker/b/c;

    iput-object p2, p0, Lcom/oppo/camera/sticker/b/c$2;->a:Lcom/oppo/camera/sticker/b/c$a;

    iput-object p3, p0, Lcom/oppo/camera/sticker/b/c$2;->b:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$2;->c:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v0}, Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c;)Lcom/oppo/camera/sticker/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/b/a;->b()V

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$2;->a:Lcom/oppo/camera/sticker/b/c$a;

    invoke-interface {v0}, Lcom/oppo/camera/sticker/b/c$a;->a()V

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$2;->c:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v0}, Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c;)Lcom/oppo/camera/sticker/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/b/a;->c()V

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$2;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
