.class Lcom/oppo/camera/Camera$b;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/Camera;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->f(Lcom/oppo/camera/Camera;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0, p1}, Lcom/oppo/camera/Camera;->a(Lcom/oppo/camera/Camera;I)I

    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->e(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->g(Lcom/oppo/camera/Camera;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/camera/o/d;->a(II)I

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->g(Lcom/oppo/camera/Camera;)I

    move-result v0

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged, mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v1}, Lcom/oppo/camera/Camera;->g(Lcom/oppo/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0, p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;I)I

    iget-object p1, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {p1}, Lcom/oppo/camera/Camera;->b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/Camera$b;->a:Lcom/oppo/camera/Camera;

    invoke-static {v0}, Lcom/oppo/camera/Camera;->g(Lcom/oppo/camera/Camera;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->d(I)V

    :cond_2
    return-void
.end method
