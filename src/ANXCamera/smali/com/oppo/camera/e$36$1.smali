.class Lcom/oppo/camera/e$36$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$36;->a(Lcom/oppo/camera/ui/control/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/control/e;

.field final synthetic b:Z

.field final synthetic c:Lcom/oppo/camera/e$36;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$36;Lcom/oppo/camera/ui/control/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$36$1;->c:Lcom/oppo/camera/e$36;

    iput-object p2, p0, Lcom/oppo/camera/e$36$1;->a:Lcom/oppo/camera/ui/control/e;

    iput-boolean p3, p0, Lcom/oppo/camera/e$36$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e$36$1;->c:Lcom/oppo/camera/e$36;

    iget-object v0, v0, Lcom/oppo/camera/e$36;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$36$1;->c:Lcom/oppo/camera/e$36;

    iget-object v0, v0, Lcom/oppo/camera/e$36;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$36$1;->a:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/e;)V

    iget-boolean v0, p0, Lcom/oppo/camera/e$36$1;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$36$1;->c:Lcom/oppo/camera/e$36;

    iget-object v0, v0, Lcom/oppo/camera/e$36;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/d/i;->a([BIIIZ)V

    :cond_0
    return-void
.end method
