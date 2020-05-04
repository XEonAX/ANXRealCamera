.class public Lcom/oppo/camera/h;
.super Ljava/lang/Object;
.source "CameraThreadExector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oppo/camera/h$a;

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oppo/camera/h$a;

    invoke-direct {v0, p0}, Lcom/oppo/camera/h$a;-><init>(Lcom/oppo/camera/h;)V

    iput-object v0, p0, Lcom/oppo/camera/h;->a:Lcom/oppo/camera/h$a;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v8, p0, Lcom/oppo/camera/h;->a:Lcom/oppo/camera/h$a;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/oppo/camera/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/oppo/camera/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/h;->a:Lcom/oppo/camera/h$a;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/h$a;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
