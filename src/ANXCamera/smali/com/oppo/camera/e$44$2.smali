.class Lcom/oppo/camera/e$44$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$44;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$44;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$44$2;->a:Lcom/oppo/camera/e$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e$44$2;->a:Lcom/oppo/camera/e$44;

    iget-object v0, v0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->x(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$44$2;->a:Lcom/oppo/camera/e$44;

    iget-object v0, v0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$44$2;->a:Lcom/oppo/camera/e$44;

    iget-object v0, v0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$44$2;->a:Lcom/oppo/camera/e$44;

    iget-object v0, v0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$44$2;->a:Lcom/oppo/camera/e$44;

    iget-object v0, v0, Lcom/oppo/camera/e$44;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    :cond_1
    return-void
.end method
