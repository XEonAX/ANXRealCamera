.class Lcom/oppo/camera/sticker/b/c$1;
.super Ljava/lang/Object;
.source "StickerProcessThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/sticker/b/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/ConditionVariable;

.field final synthetic b:Lcom/oppo/camera/sticker/b/c;


# direct methods
.method constructor <init>(Lcom/oppo/camera/sticker/b/c;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    iput-object p2, p0, Lcom/oppo/camera/sticker/b/c$1;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v0}, Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c;)Lcom/oppo/camera/sticker/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    new-instance v1, Lcom/oppo/camera/sticker/b/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/sticker/b/a;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c;Lcom/oppo/camera/sticker/b/a;)Lcom/oppo/camera/sticker/b/a;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v0}, Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c;)Lcom/oppo/camera/sticker/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/b/a;->b()V

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v0}, Lcom/oppo/camera/sticker/b/c;->b(Lcom/oppo/camera/sticker/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v1}, Lcom/oppo/camera/sticker/b/c;->c(Lcom/oppo/camera/sticker/b/c;)Lcom/sensetime/stmobile/STMobileColorConvertNative;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/c;->a(Ljava/util/List;Lcom/sensetime/stmobile/STMobileColorConvertNative;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$1;->b:Lcom/oppo/camera/sticker/b/c;

    invoke-static {v0}, Lcom/oppo/camera/sticker/b/c;->a(Lcom/oppo/camera/sticker/b/c;)Lcom/oppo/camera/sticker/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/b/a;->c()V

    iget-object v0, p0, Lcom/oppo/camera/sticker/b/c$1;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method