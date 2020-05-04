.class Lcom/oppo/camera/ui/e$37;
.super Landroid/os/Handler;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/e;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->g(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object p1

    const-string v0, "pref_support_night_process"

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/e;I)I

    iget-object p1, p0, Lcom/oppo/camera/ui/e$37;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->e(Lcom/oppo/camera/ui/e;)V

    :cond_1
    :goto_0
    return-void
.end method
