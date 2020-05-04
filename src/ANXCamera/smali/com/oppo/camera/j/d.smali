.class public abstract Lcom/oppo/camera/j/d;
.super Ljava/lang/Object;
.source "ProcessQueueThread.java"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/j/d;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/j/d;->b:I

    iput v0, p0, Lcom/oppo/camera/j/d;->c:I

    iput-boolean v0, p0, Lcom/oppo/camera/j/d;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/j/d;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/j/d;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oppo/camera/j/d;->c:I

    return v0
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/j/d;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/j/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProcessQueueThread"

    const-string v1, "checkAndKillProcess will kill camera process"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/j/d;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/j/d;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oppo/camera/j/d;->b:I

    return v0
.end method

.method static synthetic c(Lcom/oppo/camera/j/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/j/d;->a()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/j/d;->d:Z

    invoke-direct {p0}, Lcom/oppo/camera/j/d;->a()V

    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Lcom/oppo/camera/v$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final c(Lcom/oppo/camera/v$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pictureArrive, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oppo/camera/v$a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oppo/camera/v$a;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oppo/camera/v$a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessQueueThread"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/camera/j/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/j/d;->c:I

    const-string v0, "raw"

    iget-object v1, p1, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/j/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/j/d;->b:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/j/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oppo/camera/j/d$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/j/d$1;-><init>(Lcom/oppo/camera/j/d;Lcom/oppo/camera/v$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/j/d;->b()V

    iget-object v0, p0, Lcom/oppo/camera/j/d;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/j/d;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public e()I
    .locals 2

    const-string v0, "ProcessQueueThread"

    const-string v1, "getSaveListRawCount"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/camera/j/d;->b:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/camera/j/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/camera/j/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
