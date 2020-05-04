.class public Lco/polarr/renderer/filters/a/d;
.super Lco/polarr/renderer/filters/a/a;


# static fields
.field private static final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lco/polarr/renderer/filters/a/a;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/a;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/polarr/renderer/filters/a/a;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/filters/a/d;->b:Ljava/util/LinkedList;

    const/4 p1, 0x0

    iput p1, p0, Lco/polarr/renderer/filters/a/d;->d:I

    iput p1, p0, Lco/polarr/renderer/filters/a/d;->e:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    iput-object p2, p0, Lco/polarr/renderer/filters/a/d;->c:Lco/polarr/renderer/filters/a/a;

    iput-boolean p1, p0, Lco/polarr/renderer/filters/a/d;->h:Z

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, Lco/polarr/renderer/filters/a/d;->g:Z

    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;
    .locals 4

    sget-object v0, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/filters/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lco/polarr/renderer/filters/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lco/polarr/renderer/filters/a/d;-><init>(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/d;->k()V

    sget-object p0, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p0

    invoke-virtual {v1, p0}, Lco/polarr/renderer/filters/a/d;->a([F)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h()Lco/polarr/renderer/filters/a/d;
    .locals 4

    sget-object v0, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/filters/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lco/polarr/renderer/filters/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lco/polarr/renderer/filters/a/d;-><init>(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/d;->k()V

    sget-object v2, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/polarr/renderer/filters/a/d;->a([F)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i()V
    .locals 2

    sget-object v0, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/polarr/renderer/filters/a/d;->a:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private r()V
    .locals 3

    iget-boolean v0, p0, Lco/polarr/renderer/filters/a/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->c:Lco/polarr/renderer/filters/a/a;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/a;->k()V

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->c:Lco/polarr/renderer/filters/a/a;

    iget v1, p0, Lco/polarr/renderer/filters/a/d;->d:I

    iget v2, p0, Lco/polarr/renderer/filters/a/d;->e:I

    invoke-virtual {v0, v1, v2}, Lco/polarr/renderer/filters/a/a;->b(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/polarr/renderer/filters/a/d;->g:Z

    :cond_0
    return-void
.end method

.method private s()Z
    .locals 5

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lco/polarr/renderer/filters/a/d;->f:I

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-direct {p0}, Lco/polarr/renderer/filters/a/d;->t()V

    return v1
.end method

.method private t()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(II)V
    .locals 0

    iput p1, p0, Lco/polarr/renderer/filters/a/d;->d:I

    iput p2, p0, Lco/polarr/renderer/filters/a/d;->e:I

    invoke-direct {p0}, Lco/polarr/renderer/filters/a/d;->r()V

    return-void
.end method

.method public a(Lco/polarr/renderer/filters/a/a;)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/filters/a/d;->c:Lco/polarr/renderer/filters/a/a;

    return-void
.end method

.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lco/polarr/renderer/filters/a/d;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lco/polarr/renderer/filters/a/a;->b()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lco/polarr/renderer/filters/a/d;->f:I

    return-void
.end method

.method protected b_()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    aget v0, v0, v1

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(I)V

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->b:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lco/polarr/renderer/filters/a/d;->b:Ljava/util/LinkedList;

    iget-object v3, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lco/polarr/renderer/filters/a/d;->s()Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public draw()V
    .locals 2

    invoke-virtual {p0}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->c:Lco/polarr/renderer/filters/a/a;

    invoke-virtual {p0}, Lco/polarr/renderer/filters/a/d;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/a;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->c:Lco/polarr/renderer/filters/a/a;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/a;->draw()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lco/polarr/renderer/filters/a/d;->q()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public j()V
    .locals 6

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lco/polarr/renderer/filters/a/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lco/polarr/renderer/filters/a/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lco/polarr/renderer/filters/a/d;->f:I

    return v0
.end method

.method public o()V
    .locals 5

    invoke-direct {p0}, Lco/polarr/renderer/filters/a/d;->r()V

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lco/polarr/renderer/filters/a/d;->f:I

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget v0, p0, Lco/polarr/renderer/filters/a/d;->d:I

    iget v2, p0, Lco/polarr/renderer/filters/a/d;->e:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public p()V
    .locals 0

    invoke-direct {p0}, Lco/polarr/renderer/filters/a/d;->t()V

    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/filters/a/d;->i:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method
