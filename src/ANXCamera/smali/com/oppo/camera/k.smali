.class public Lcom/oppo/camera/k;
.super Ljava/lang/Object;
.source "GestureEngineManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/k$a;,
        Lcom/oppo/camera/k$b;,
        Lcom/oppo/camera/k$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

.field private c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

.field private d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Landroid/os/AsyncTask;

.field private j:Landroid/os/AsyncTask;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Lcom/oppo/camera/k$c;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/k;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oppo/camera/k$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/k$1;-><init>(Lcom/oppo/camera/k;)V

    iput-object v0, p0, Lcom/oppo/camera/k;->b:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/k;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcom/oppo/camera/k;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/k;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/k;->i:Landroid/os/AsyncTask;

    iput-object v0, p0, Lcom/oppo/camera/k;->j:Landroid/os/AsyncTask;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/k;->m:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_270:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    sget-object v3, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_270:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_180:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    const/16 v4, 0xb4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_90:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    const/16 v5, 0x10e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->DO_NOT_ROTATE:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    sget-object v6, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_90:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_90:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_180:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_270:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->DO_NOT_ROTATE:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->m:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/k;->m:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/k;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k;->h:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/k;Lcom/crunchfish/touchless_a3d/TouchlessA3D;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/k;Lcom/crunchfish/touchless_a3d/gesture/Gesture;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k;->d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/k;)Lcom/oppo/camera/k$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k;->n:Lcom/oppo/camera/k$c;

    return-object p0
.end method

.method private a(Lcom/crunchfish/touchless_a3d/gesture/Event;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/crunchfish/touchless_a3d/gesture/Event;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/k;Lcom/crunchfish/touchless_a3d/gesture/Event;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/k;->a(Lcom/crunchfish/touchless_a3d/gesture/Event;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/k;->e()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k;->b:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    return-object p0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/k;->d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/k;->d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    iget-object v2, p0, Lcom/oppo/camera/k;->b:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    invoke-virtual {v1, v2}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;->unregisterListener(Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    iget-object v2, p0, Lcom/oppo/camera/k;->d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    invoke-virtual {v1, v2}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->unregisterGesture(Lcom/crunchfish/touchless_a3d/gesture/Gesture;)V

    iget-object v1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    invoke-virtual {v1}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->close()V

    const-string v1, "GestureEngineManager"

    const-string v2, "gesture detect engine has released"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/k;->d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    iput-object v1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic f(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/k;->d:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k;->f:Z

    new-instance v0, Lcom/oppo/camera/k$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/camera/k$a;-><init>(Lcom/oppo/camera/k;Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/oppo/camera/k;->a:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/k$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/k;->i:Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/oppo/camera/k$c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k;->n:Lcom/oppo/camera/k$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/k;->g:Z

    return-void
.end method

.method public a([BII)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/k;->c:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oppo/camera/k;->m:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->handleImage(J[BLcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/k;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/k;->f:Z

    return v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/k;->i:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/oppo/camera/k;->i:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k;->j:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/oppo/camera/k;->j:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/k;->f:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/k;->n:Lcom/oppo/camera/k$c;

    new-instance v2, Lcom/oppo/camera/k$b;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/k$b;-><init>(Lcom/oppo/camera/k;Lcom/oppo/camera/k$1;)V

    iget-object v1, p0, Lcom/oppo/camera/k;->a:Ljava/util/concurrent/ExecutorService;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/k$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/k;->j:Landroid/os/AsyncTask;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/k;->m:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/k;->m:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/k;->l:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/k;->k:Ljava/util/HashMap;

    :cond_2
    iput-object v1, p0, Lcom/oppo/camera/k;->h:Landroid/content/Context;

    iput-object v1, p0, Lcom/oppo/camera/k;->n:Lcom/oppo/camera/k$c;

    return-void
.end method
