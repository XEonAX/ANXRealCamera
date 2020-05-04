.class Lcom/oppo/camera/gl/q$1;
.super Ljava/lang/Object;
.source "OppoGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/gl/q;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/gl/q;


# direct methods
.method constructor <init>(Lcom/oppo/camera/gl/q;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/q$1;->a:Lcom/oppo/camera/gl/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/gl/q$1;->a:Lcom/oppo/camera/gl/q;

    invoke-static {v0}, Lcom/oppo/camera/gl/q;->k(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$i;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/gl/q$i;->a(Lcom/oppo/camera/gl/q$i;)Lcom/oppo/camera/gl/q$h;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->e(Lcom/oppo/camera/gl/q$h;)V

    iget-object v0, p0, Lcom/oppo/camera/gl/q$1;->a:Lcom/oppo/camera/gl/q;

    invoke-static {v0}, Lcom/oppo/camera/gl/q;->d(Lcom/oppo/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/q$1;->a:Lcom/oppo/camera/gl/q;

    invoke-static {v0}, Lcom/oppo/camera/gl/q;->d(Lcom/oppo/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/oppo/camera/gl/q$1;->a:Lcom/oppo/camera/gl/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/gl/q;->a(Lcom/oppo/camera/gl/q;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_0
    return-void
.end method
