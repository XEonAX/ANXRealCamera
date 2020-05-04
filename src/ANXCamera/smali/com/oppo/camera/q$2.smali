.class Lcom/oppo/camera/q$2;
.super Lcom/oppo/camera/gl/t$a;
.source "PreviewImageProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/q;->a(Landroid/util/Size;Landroid/util/Size;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Size;

.field final synthetic b:Landroid/util/Size;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/oppo/camera/q;


# direct methods
.method constructor <init>(Lcom/oppo/camera/q;Landroid/util/Size;Landroid/util/Size;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    iput-object p2, p0, Lcom/oppo/camera/q$2;->a:Landroid/util/Size;

    iput-object p3, p0, Lcom/oppo/camera/q$2;->b:Landroid/util/Size;

    iput p4, p0, Lcom/oppo/camera/q$2;->c:I

    iput-boolean p5, p0, Lcom/oppo/camera/q$2;->d:Z

    invoke-direct {p0}, Lcom/oppo/camera/gl/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;J)V
    .locals 4

    iget-object p2, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p2}, Lcom/oppo/camera/q;->b(Lcom/oppo/camera/q;)Lcom/oppo/camera/q$b;

    move-result-object p2

    invoke-interface {p2}, Lcom/oppo/camera/q$b;->S()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPreviewFrame, onPreviewCaptured, bitmap: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PreviewImageProcess"

    invoke-static {p3, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p3}, Lcom/oppo/camera/q;->c(Lcom/oppo/camera/q;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0xa

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    invoke-static {p1, p3, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p3, Lcom/oppo/camera/q$a;

    invoke-direct {p3}, Lcom/oppo/camera/q$a;-><init>()V

    iget-object v0, p0, Lcom/oppo/camera/q$2;->a:Landroid/util/Size;

    iput-object v0, p3, Lcom/oppo/camera/q$a;->a:Landroid/util/Size;

    iget-object v0, p0, Lcom/oppo/camera/q$2;->b:Landroid/util/Size;

    iput-object v0, p3, Lcom/oppo/camera/q$a;->b:Landroid/util/Size;

    iput-object p1, p3, Lcom/oppo/camera/q$a;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oppo/camera/q$2;->a:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p3, Lcom/oppo/camera/q$a;->c:I

    iget-object v0, p0, Lcom/oppo/camera/q$2;->a:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p3, Lcom/oppo/camera/q$a;->d:I

    iput-boolean v1, p3, Lcom/oppo/camera/q$a;->f:Z

    iget v0, p0, Lcom/oppo/camera/q$2;->c:I

    iput v0, p3, Lcom/oppo/camera/q$a;->g:I

    iget-object v0, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {v0}, Lcom/oppo/camera/q;->c(Lcom/oppo/camera/q;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/oppo/camera/q;->a(Lcom/oppo/camera/q;Z)Z

    iget-object p3, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p3, v1}, Lcom/oppo/camera/q;->b(Lcom/oppo/camera/q;Z)Z

    iget-object p3, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p3, p1}, Lcom/oppo/camera/q;->a(Lcom/oppo/camera/q;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1, v1}, Lcom/oppo/camera/q;->c(Lcom/oppo/camera/q;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-virtual {p1}, Lcom/oppo/camera/q;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1}, Lcom/oppo/camera/q;->d(Lcom/oppo/camera/q;)V

    iget-boolean p1, p0, Lcom/oppo/camera/q$2;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/q;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1}, Lcom/oppo/camera/q;->b(Lcom/oppo/camera/q;)Lcom/oppo/camera/q$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/q$b;->V()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1}, Lcom/oppo/camera/q;->e(Lcom/oppo/camera/q;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1}, Lcom/oppo/camera/q;->e(Lcom/oppo/camera/q;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1}, Lcom/oppo/camera/q;->e(Lcom/oppo/camera/q;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/q$2;->e:Lcom/oppo/camera/q;

    invoke-static {p1, v1}, Lcom/oppo/camera/q;->a(Lcom/oppo/camera/q;Z)Z

    goto :goto_1

    :cond_2
    const-string p1, "PreviewImageProcess"

    const-string p3, "getPreviewFrame, onPreviewCaptured, setData fail!"

    invoke-static {p1, p3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method
