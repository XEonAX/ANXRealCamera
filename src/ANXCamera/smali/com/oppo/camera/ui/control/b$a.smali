.class Lcom/oppo/camera/ui/control/b$a;
.super Landroid/os/AsyncTask;
.source "CameraControlUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/control/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/oppo/camera/ui/control/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/control/b;

.field private b:Lcom/oppo/camera/ui/control/e;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/control/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b$a;->b:Lcom/oppo/camera/ui/control/e;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b$a;->c:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b$a;->c:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/oppo/camera/ui/control/e;
    .locals 5

    const-string p1, "CameraControlUI"

    const-string v0, "doInBackground"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-static {v0}, Lcom/oppo/camera/ui/control/b;->d(Lcom/oppo/camera/ui/control/b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-static {v0}, Lcom/oppo/camera/ui/control/b;->e(Lcom/oppo/camera/ui/control/b;)Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b$a;->b:Lcom/oppo/camera/ui/control/e;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/oppo/camera/ui/control/e;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-static {v2}, Lcom/oppo/camera/ui/control/b;->e(Lcom/oppo/camera/ui/control/b;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oppo/camera/ui/control/e;->a(Landroid/content/ContentResolver;[Lcom/oppo/camera/ui/control/e;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_2

    const/4 p1, 0x2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b$a;->cancel(Z)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b$a;->b:Lcom/oppo/camera/ui/control/e;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b$a;->b:Lcom/oppo/camera/ui/control/e;

    return-object p1

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground, isCancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b$a;->isCancelled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-static {v1}, Lcom/oppo/camera/ui/control/b;->d(Lcom/oppo/camera/ui/control/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContentResolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-static {v1}, Lcom/oppo/camera/ui/control/b;->e(Lcom/oppo/camera/ui/control/b;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcom/oppo/camera/ui/control/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask, onPostExecute, thumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    invoke-static {v0}, Lcom/oppo/camera/ui/control/b;->d(Lcom/oppo/camera/ui/control/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b$a;->a:Lcom/oppo/camera/ui/control/b;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/b$a;->c:Z

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b$a;->a([Ljava/lang/Void;)Lcom/oppo/camera/ui/control/e;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b$a;->a(Lcom/oppo/camera/ui/control/e;)V

    return-void
.end method
