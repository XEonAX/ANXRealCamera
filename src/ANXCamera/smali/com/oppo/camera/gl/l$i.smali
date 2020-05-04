.class Lcom/oppo/camera/gl/l$i;
.super Ljava/lang/Thread;
.source "GLProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/l;
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

.field private t:Lcom/oppo/camera/gl/l$h;

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/l;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/gl/l$i;->r:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->s:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/gl/l$i;->l:I

    iput v1, p0, Lcom/oppo/camera/gl/l$i;->m:I

    iput-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->o:Z

    iput v0, p0, Lcom/oppo/camera/gl/l$i;->n:I

    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->p:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/l$i;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/l$i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->i:Z

    iget-object v0, p0, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l$h;->e()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l$h;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->h:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/l$j;->b(Lcom/oppo/camera/gl/l$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Lcom/oppo/camera/gl/l$h;

    iget-object v2, v1, Lcom/oppo/camera/gl/l$i;->u:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/oppo/camera/gl/l$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->h:Z

    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->i:Z

    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->p:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v7, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->a:Z

    if-eqz v2, :cond_0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->j()V

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
    iget-object v2, v1, Lcom/oppo/camera/gl/l$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/oppo/camera/gl/l$i;->r:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v14, v2

    move-object/from16 v17, v7

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1
    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->d:Z

    iget-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->c:Z

    if-eq v2, v0, :cond_2

    iget-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->c:Z

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->c:Z

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->d:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "GLThread"

    move/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, "mPaused is now "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/oppo/camera/gl/l$i;->d:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " tid: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move/from16 v17, v5

    move/from16 v18, v6

    const/16 v16, 0x0

    :goto_3
    iget-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->k:Z

    if-eqz v0, :cond_3

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 releasing EGL context because asked to tid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->j()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->k:Z

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v17

    :goto_4
    if-eqz v3, :cond_4

    const-string v2, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 releasing EGL surface because paused tid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->j()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v16, :cond_5

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->i:Z

    if-eqz v2, :cond_5

    const-string v2, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xxxx releasing EGL surface because paused tid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v7

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->i()V

    goto :goto_5

    :cond_5
    move-object/from16 v17, v7

    :goto_5
    if-eqz v16, :cond_7

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->h:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/oppo/camera/gl/l$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/l;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-static {v2}, Lcom/oppo/camera/gl/l;->g(Lcom/oppo/camera/gl/l;)Z

    move-result v2

    :goto_6
    if-nez v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->j()V

    const-string v2, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasing EGL context because paused tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->e:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->g:Z

    if-nez v2, :cond_9

    const-string v2, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noticed surfaceView surface lost tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->i:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->i()V

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->g:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->f:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->e:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->g:Z

    if-eqz v2, :cond_a

    const-string v2, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noticed surfaceView surface acquired tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->g:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const-string v2, "GLThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending render notification tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->p:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->q:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->l()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-nez v2, :cond_d

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    :try_start_4
    iget-object v2, v1, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/l$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->h:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v11, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/camera/gl/l$j;->b(Lcom/oppo/camera/gl/l$i;)V

    throw v0

    :cond_d
    :goto_7
    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->h:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->i:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->i:Z

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v18, 0x1

    :cond_e
    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->i:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->s:Z

    if-eqz v2, :cond_f

    iget v9, v1, Lcom/oppo/camera/gl/l$i;->l:I

    iget v10, v1, Lcom/oppo/camera/gl/l$i;->m:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->p:Z

    const-string v2, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noticing that we want render notification tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->s:Z

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v1, Lcom/oppo/camera/gl/l$i;->o:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v5, v1, Lcom/oppo/camera/gl/l$i;->p:Z

    if-eqz v5, :cond_10

    move v5, v0

    move/from16 v6, v18

    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    move v5, v0

    move/from16 v6, v18

    :goto_9
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v14, :cond_11

    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move v0, v2

    move-object/from16 v7, v17

    goto/16 :goto_0

    :cond_11
    if-eqz v12, :cond_13

    const-string v0, "GLThread"

    const-string v7, "egl createSurface"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l$h;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v7

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->j:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    move v12, v2

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_12
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v7

    monitor-enter v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->j:Z

    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->f:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    move v0, v2

    move-object/from16 v7, v17

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_13
    :goto_a
    if-eqz v13, :cond_14

    iget-object v0, v1, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l$h;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0

    move v13, v2

    goto :goto_b

    :cond_14
    move-object/from16 v7, v17

    :goto_b
    if-eqz v11, :cond_16

    iget-object v0, v1, Lcom/oppo/camera/gl/l$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/l;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v0, :cond_15

    :try_start_b
    const-string v11, "onSurfaceCreated"

    invoke-static {v11}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/gl/l;->h(Lcom/oppo/camera/gl/l;)Lcom/oppo/camera/gl/l$m;

    move-result-object v0

    iget-object v11, v1, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    iget-object v11, v11, Lcom/oppo/camera/gl/l$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v7, v11}, Lcom/oppo/camera/gl/l$m;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v0, "onSurfaceCreated"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_c

    :catchall_3
    move-exception v0

    const-string v2, "onSurfaceCreated"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_c
    move v11, v2

    :cond_16
    if-eqz v6, :cond_18

    iget-object v0, v1, Lcom/oppo/camera/gl/l$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/l;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v0, :cond_17

    :try_start_d
    const-string v6, "onSurfaceChanged"

    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/gl/l;->h(Lcom/oppo/camera/gl/l;)Lcom/oppo/camera/gl/l$m;

    move-result-object v0

    invoke-interface {v0, v7, v9, v10}, Lcom/oppo/camera/gl/l$m;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string v0, "onSurfaceChanged"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    const-string v2, "onSurfaceChanged"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_d
    move v6, v2

    :cond_18
    iget-object v0, v1, Lcom/oppo/camera/gl/l$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/l;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v0, :cond_19

    :try_start_f
    const-string v15, "onDrawFrame"

    invoke-static {v15}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/gl/l;->h(Lcom/oppo/camera/gl/l;)Lcom/oppo/camera/gl/l$m;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oppo/camera/gl/l$m;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    const-string v0, "onDrawFrame"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_e

    :catchall_5
    move-exception v0

    const-string v2, "onDrawFrame"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_e
    iget-object v0, v1, Lcom/oppo/camera/gl/l$i;->t:Lcom/oppo/camera/gl/l$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l$h;->d()I

    move-result v0

    const/16 v15, 0x3000

    if-eq v0, v15, :cond_1b

    const/16 v15, 0x300e

    if-eq v0, v15, :cond_1a

    const-string v15, "GLThread"

    const-string v2, "eglSwapBuffers"

    invoke-static {v15, v2, v0}, Lcom/oppo/camera/gl/l$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, v1, Lcom/oppo/camera/gl/l$i;->f:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_f

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0

    :cond_1a
    const/4 v0, 0x1

    const-string v2, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    const/4 v3, 0x1

    :cond_1b
    :goto_f
    if-eqz v8, :cond_1c

    const/4 v4, 0x1

    const/4 v8, 0x0

    :cond_1c
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_1d
    move v5, v0

    move/from16 v6, v18

    :try_start_13
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, v17

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    monitor-exit v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    monitor-enter v1

    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/l$i;->j()V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0
.end method

.method private l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/gl/l$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/gl/l$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/l$i;->n:I

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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
    .locals 3

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/l$i;->l:I

    iput p2, p0, Lcom/oppo/camera/gl/l$i;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->s:Z

    iput-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->o:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->q:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->b:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/gl/l$i;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/l$i;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Main thread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/l$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/l$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/l$i;->l()Z

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

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/gl/l$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->o:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->j:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->e:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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
    .locals 5

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->c:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->d:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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
    .locals 5

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->c:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/gl/l$i;->o:Z

    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->q:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->q:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->a:Z

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/l$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

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

    const-string v1, "GLProducer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/l$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/l$i;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/gl/l$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/l$j;->a(Lcom/oppo/camera/gl/l$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/l;->h()Lcom/oppo/camera/gl/l$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oppo/camera/gl/l$j;->a(Lcom/oppo/camera/gl/l$i;)V

    throw v0

    :goto_0
    return-void
.end method
