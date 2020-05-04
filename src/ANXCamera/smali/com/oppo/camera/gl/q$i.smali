.class Lcom/oppo/camera/gl/q$i;
.super Ljava/lang/Thread;
.source "OppoGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/oppo/camera/gl/q$h;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->a:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->c:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->g:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->j:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->k:Z

    iput v0, p0, Lcom/oppo/camera/gl/q$i;->l:I

    iput v0, p0, Lcom/oppo/camera/gl/q$i;->m:I

    iput v0, p0, Lcom/oppo/camera/gl/q$i;->n:I

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->p:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->s:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    iput-object v2, p0, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    iput v0, p0, Lcom/oppo/camera/gl/q$i;->l:I

    iput v0, p0, Lcom/oppo/camera/gl/q$i;->m:I

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    iput v1, p0, Lcom/oppo/camera/gl/q$i;->n:I

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->p:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q$i;)Lcom/oppo/camera/gl/q$h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q$i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    iget-object v0, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->f()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    const-string v0, "GLSurfaceView"

    const-string v1, "stopEglContextLocked"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/q$j;->b(Lcom/oppo/camera/gl/q$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Lcom/oppo/camera/gl/q$h;

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/oppo/camera/gl/q$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v9, v7

    move v10, v9

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->a:Z

    if-eqz v2, :cond_0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v12, v2

    move-object v0, v6

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_1
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->d:Z

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->c:Z

    if-eq v2, v0, :cond_2

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->c:Z

    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->c:Z

    iput-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->d:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->k:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    :cond_5
    if-eqz v0, :cond_7

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->g(Lcom/oppo/camera/gl/q;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    :cond_7
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->e:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->f:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->e:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->q:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    :cond_b
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    move-object v0, v6

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->l()Z

    move-result v6

    if-eqz v6, :cond_23

    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-nez v6, :cond_e

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    :try_start_4
    iget-object v6, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v6}, Lcom/oppo/camera/gl/q$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v6, 0x1

    :try_start_5
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    const/4 v13, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/camera/gl/q$j;->b(Lcom/oppo/camera/gl/q$i;)V

    throw v0

    :cond_e
    :goto_5
    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v6, :cond_f

    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-nez v6, :cond_f

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v14, 0x1

    :cond_f
    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v6, :cond_24

    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->s:Z

    if-eqz v6, :cond_10

    iget v10, v1, Lcom/oppo/camera/gl/q$i;->l:I

    iget v11, v1, Lcom/oppo/camera/gl/q$i;->m:I

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->s:Z

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :goto_6
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->o:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    if-eqz v2, :cond_11

    const/4 v15, 0x1

    :cond_11
    :goto_7
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v12, :cond_12

    :try_start_6
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    const/4 v12, 0x0

    move/from16 v19, v6

    move-object v6, v0

    move/from16 v0, v19

    goto/16 :goto_0

    :cond_12
    if-eqz v14, :cond_14

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/q$h;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const/4 v14, 0x1

    :try_start_7
    iput-boolean v14, v1, Lcom/oppo/camera/gl/q$i;->j:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move v14, v6

    goto :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_13
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const/4 v6, 0x1

    :try_start_9
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->j:Z

    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->f:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move-object v6, v0

    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_9
    if-eqz v7, :cond_15

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v2}, Lcom/oppo/camera/gl/q$h;->a(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v2

    const/4 v7, 0x0

    :cond_15
    if-eqz v13, :cond_17

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v2, :cond_16

    :try_start_b
    const-string v6, "onSurfaceCreated"

    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;

    move-result-object v2

    iget-object v6, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v6}, Lcom/oppo/camera/gl/q$h;->b(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    invoke-interface {v2, v8, v6}, Lcom/oppo/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v2, "onSurfaceCreated"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_a

    :catchall_3
    move-exception v0

    const-string v2, "onSurfaceCreated"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_a
    const/4 v13, 0x0

    :cond_17
    if-eqz v9, :cond_19

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v2, :cond_18

    :try_start_d
    const-string v6, "onSurfaceChanged"

    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;

    move-result-object v2

    invoke-interface {v2, v8, v10, v11}, Lcom/oppo/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string v2, "onSurfaceChanged"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_b

    :catchall_4
    move-exception v0

    const-string v2, "onSurfaceChanged"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_b
    const/4 v9, 0x0

    :cond_19
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    iget-object v6, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v6}, Lcom/oppo/camera/gl/q$h;->c(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oppo/camera/gl/q$h;->a(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v2, :cond_1b

    :try_start_f
    const-string v6, "onDrawFrame"

    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/oppo/camera/gl/q$m;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v0, 0x0

    :cond_1a
    :try_start_10
    const-string v2, "onDrawFrame"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_c

    :catchall_5
    move-exception v0

    const-string v2, "onDrawFrame"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_c
    move-object v6, v0

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->d()I

    move-result v0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1c

    const-string v2, "GLSurfaceView"

    move/from16 v18, v3

    const-string v3, "eglSwapBuffers"

    invoke-static {v2, v3, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->f:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_d

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0

    :cond_1c
    const/4 v0, 0x1

    move v3, v0

    goto :goto_e

    :cond_1d
    move/from16 v18, v3

    const/4 v0, 0x1

    :goto_d
    move/from16 v3, v18

    :goto_e
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->d(Lcom/oppo/camera/gl/q;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->i(Lcom/oppo/camera/gl/q;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v2}, Lcom/oppo/camera/gl/q$h;->d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/q$h;->c()Z

    :cond_1e
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    invoke-static {v0}, Lcom/oppo/camera/gl/q;->j(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/r;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-static {v0}, Lcom/oppo/camera/gl/q;->j(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/r;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/oppo/camera/gl/r;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1f
    const-string v0, "GLSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    const-string v3, "guardedRun, OutputSurfaceDraw swap start tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->e()I

    const-string v0, "GLSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guardedRun, OutputSurfaceDraw swap end tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_20
    move/from16 v16, v3

    move/from16 v18, v4

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->e(Lcom/oppo/camera/gl/q$h;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :cond_21
    :goto_f
    if-eqz v15, :cond_22

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto :goto_10

    :cond_22
    move/from16 v4, v18

    :goto_10
    move/from16 v3, v16

    goto/16 :goto_8

    :cond_23
    if-eqz v0, :cond_24

    :try_start_13
    const-string v2, "GLSurfaceView"

    const-string v6, "guardedRun, Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v2, v6}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    goto :goto_11

    :cond_24
    move-object v6, v0

    :goto_11
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2

    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0
.end method

.method private l()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/gl/q$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/gl/q$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/gl/q$i;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/q$i;->n:I

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/q$i;->l:I

    iput p2, p0, Lcom/oppo/camera/gl/q$i;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->s:Z

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/q$i;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->p:Z

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

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

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/q$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/gl/q$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->j:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->c:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 3

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->c:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->a:Z

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OppoGLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/q$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/q$i;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/q$j;->a(Lcom/oppo/camera/gl/q$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oppo/camera/gl/q$j;->a(Lcom/oppo/camera/gl/q$i;)V

    throw v0

    :goto_0
    return-void
.end method
