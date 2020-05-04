.class Lcom/oppo/camera/e$d$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$d;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aU(Lcom/oppo/camera/e;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0091

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$d$2$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$d$2$1;-><init>(Lcom/oppo/camera/e$d$2;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
