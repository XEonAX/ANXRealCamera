.class Lcom/oppo/camera/gl/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/gl/GLRootView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/oppo/camera/gl/GLRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/gl/GLRootView;Lcom/oppo/camera/gl/GLRootView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/GLRootView$IdleRunner;-><init>(Lcom/oppo/camera/gl/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->b:Z

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLRootView;->a(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->b:Z

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLRootView;->a(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLRootView;->a(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/m$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "GLRootView"

    const-string v2, "IdleRunner run, mRenderLock.lock()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLRootView;->b(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLRootView;->c(Lcom/oppo/camera/gl/GLRootView;)Lcom/oppo/camera/gl/h;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLRootView;->d(Lcom/oppo/camera/gl/GLRootView;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/oppo/camera/gl/m$a;->a(Lcom/oppo/camera/gl/h;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLRootView;->b(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v0, "GLRootView"

    const-string v1, "IdleRunner run, mRenderLock.unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLRootView;->b(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v0, "GLRootView"

    const-string v2, "IdleRunner run, mRenderLock.unlock()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLRootView;->a(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLRootView;->a(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLRootView;->d(Lcom/oppo/camera/gl/GLRootView;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->enable()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->a:Lcom/oppo/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLRootView;->b(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v1, "GLRootView"

    const-string v2, "IdleRunner run, mRenderLock.unlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
