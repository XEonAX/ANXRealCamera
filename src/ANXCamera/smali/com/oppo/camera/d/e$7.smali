.class Lcom/oppo/camera/d/e$7;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/e;->cI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-boolean v0, v0, Lcom/oppo/camera/d/e;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "CommonCapMode"

    const-string v1, "onFirstCaptureArrived, mbPaused, so return!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    invoke-direct {v0}, Lcom/oppo/camera/ui/control/c;-><init>()V

    const-string v1, "button_color_inside_none"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->f(Lcom/oppo/camera/d/e;)J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    const/4 v2, 0x2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v1, v1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    invoke-static {v3}, Lcom/oppo/camera/d/e;->f(Lcom/oppo/camera/d/e;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lcom/oppo/camera/ui/c;->i(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v1, v1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->h()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v1, v1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v2, v2, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v2, v2, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/c;->j(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/d/e;->b(Lcom/oppo/camera/d/e;J)J

    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/d/e;->c(Lcom/oppo/camera/d/e;J)J

    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    invoke-static {v1}, Lcom/oppo/camera/d/e;->a(Lcom/oppo/camera/d/e;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v1, v1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->h()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(I)V

    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/d/e$7;->a:Lcom/oppo/camera/d/e;

    iget-object v1, v1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method
