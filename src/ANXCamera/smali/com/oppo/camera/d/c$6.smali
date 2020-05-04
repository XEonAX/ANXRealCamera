.class Lcom/oppo/camera/d/c$6;
.super Ljava/lang/Thread;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/c;->A()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/oppo/camera/d/c;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/c;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    iput-object p3, p0, Lcom/oppo/camera/d/c$6;->a:[B

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->n(Lcom/oppo/camera/d/c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->s(Lcom/oppo/camera/d/c;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/c$6;->a:[B

    iget-object v2, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v2}, Lcom/oppo/camera/d/c;->r(Lcom/oppo/camera/d/c;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    iget-object v2, p0, Lcom/oppo/camera/d/c$6;->a:[B

    invoke-static {v1, v2, v3, v0}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/d/c;[BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->n(Lcom/oppo/camera/d/c;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "CameraMediaCodec"

    const-string v1, "startAudioInput, AudioInput stop"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->n(Lcom/oppo/camera/d/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "CameraMediaCodec"

    const-string v2, "startAudioInput, AudioInput pause"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v0}, Lcom/oppo/camera/d/c;->t(Lcom/oppo/camera/d/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v2}, Lcom/oppo/camera/d/c;->n(Lcom/oppo/camera/d/c;)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/c$6;->b:Lcom/oppo/camera/d/c;

    invoke-static {v1}, Lcom/oppo/camera/d/c;->t(Lcom/oppo/camera/d/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
