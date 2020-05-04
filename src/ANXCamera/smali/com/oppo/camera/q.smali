.class public Lcom/oppo/camera/q;
.super Ljava/lang/Object;
.source "PreviewImageProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/q$a;,
        Lcom/oppo/camera/q$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Z

.field private volatile c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/oppo/camera/ui/preview/d$a;

.field private g:Landroid/os/Handler;

.field private h:Lcom/oppo/camera/q$b;

.field private i:Lcom/oppo/camera/q$a;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/oppo/camera/q$b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/q;->b:Z

    iput-boolean v1, p0, Lcom/oppo/camera/q;->c:Z

    iput-boolean v1, p0, Lcom/oppo/camera/q;->d:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/q;->f:Lcom/oppo/camera/ui/preview/d$a;

    iput-object v0, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    iput-object v0, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    iput-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iput-boolean v1, p0, Lcom/oppo/camera/q;->j:Z

    new-instance v0, Lcom/oppo/camera/q$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/q$1;-><init>(Lcom/oppo/camera/q;)V

    iput-object v0, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/q;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/q;->e()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/q;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/q;)Lcom/oppo/camera/q$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/q;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/q;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/q;->j:Z

    return p1
.end method

.method private d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendToDisplay, mBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewImageProcess"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/oppo/camera/q$a;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/q;->j:Z

    iget-object v2, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/q$a;

    iput-object v2, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    const-string v2, "sendToDisplay"

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/q;->d()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/q;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 9

    const-string v0, "PreviewImageProcess"

    const-string v1, "handleImage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    invoke-interface {v0}, Lcom/oppo/camera/q$b;->S()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/q;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/q$a;

    iput-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    :cond_1
    const-string v0, "PreviewImageProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImage, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget-object v3, v3, Lcom/oppo/camera/q$a;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget-object v3, v3, Lcom/oppo/camera/q$a;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget-object v3, v3, Lcom/oppo/camera/q$a;->b:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget-object v3, v3, Lcom/oppo/camera/q$a;->b:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    iget-object v4, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget-object v5, v0, Lcom/oppo/camera/q$a;->a:Landroid/util/Size;

    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget-object v6, v0, Lcom/oppo/camera/q$a;->b:Landroid/util/Size;

    iget-object v7, p0, Lcom/oppo/camera/q;->f:Lcom/oppo/camera/ui/preview/d$a;

    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iget v8, v0, Lcom/oppo/camera/q$a;->g:I

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/q$b;->a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "PreviewImageProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImage, maybe some wrong, mbShowBlurImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/q;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mQueue.isEmpty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput-boolean v1, p0, Lcom/oppo/camera/q;->j:Z

    const/4 v0, 0x1

    :goto_0
    const-string v2, "PreviewImageProcess"

    const-string v3, "handleImage, mbShowBlurImage false!!"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/oppo/camera/q;->b:Z

    iget-object v1, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    invoke-interface {v0}, Lcom/oppo/camera/q$b;->U()V

    iget-object v0, p0, Lcom/oppo/camera/q;->f:Lcom/oppo/camera/ui/preview/d$a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$a;->a()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/q;->a(Z)V

    return-void
.end method

.method public declared-synchronized a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iput-object p1, v0, Lcom/oppo/camera/q$a;->a:Landroid/util/Size;

    iget-object p1, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    iput-object p2, p1, Lcom/oppo/camera/q$a;->b:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PreviewImageProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetData allClean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/oppo/camera/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/q;->j:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/oppo/camera/q;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/q;->d:Z

    iput-boolean v0, p0, Lcom/oppo/camera/q;->c:Z

    iget-object p1, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;ZI)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "PreviewImageProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewFrame, mbShowBlurImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/q;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mbRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/q;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbDataGetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/q;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modeTypeChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/q;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/q;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/q;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/q;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/oppo/camera/q;->h:Lcom/oppo/camera/q$b;

    new-instance v9, Lcom/oppo/camera/q$2;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/oppo/camera/q$2;-><init>(Lcom/oppo/camera/q;Landroid/util/Size;Landroid/util/Size;IZ)V

    sget-object p1, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-interface {v2, v9, v1, v1, p1}, Lcom/oppo/camera/q$b;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/ui/preview/d$a;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PreviewImageProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBlurBitmap, mBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mCurrentPreviewData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mbRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/q;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbDataGetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/q;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/q;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "PreviewImageProcess"

    const-string v0, "showBlurBitmap, The blur image size may not correct!!"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/q;->f:Lcom/oppo/camera/ui/preview/d$a;

    iput-boolean v1, p0, Lcom/oppo/camera/q;->b:Z

    iget-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/oppo/camera/q;->c:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oppo/camera/q;->d:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lcom/oppo/camera/q;->b:Z

    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/q;->d()V

    iput-boolean v0, p0, Lcom/oppo/camera/q;->c:Z

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Z)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/q;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/q;->j:Z

    const-string v0, "PreviewImageProcess"

    const-string v1, "resetBlurAnimation mbShowBlurImage false!!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oppo/camera/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/oppo/camera/q;->i:Lcom/oppo/camera/q$a;

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/q;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PreviewImageProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowBlurBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/q;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/q;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
