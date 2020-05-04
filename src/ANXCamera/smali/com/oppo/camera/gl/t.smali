.class public abstract Lcom/oppo/camera/gl/t;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/gl/t$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/gl/g;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/oppo/camera/gl/s;

.field protected d:Lcom/oppo/camera/gl/n;

.field protected e:Lcom/oppo/camera/gl/p;

.field protected f:Landroid/os/Handler;

.field protected g:Lcom/oppo/camera/ui/preview/e$a;

.field protected h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/gl/t$a;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/oppo/camera/ui/preview/a/i;

.field protected j:Lcom/oppo/camera/gl/GLRootView;

.field protected k:I

.field protected l:I

.field protected m:Ljava/lang/Object;

.field protected n:J

.field protected o:I

.field private final p:Ljava/lang/Object;

.field private q:Landroid/graphics/SurfaceTexture;

.field private r:[F

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->d:Lcom/oppo/camera/gl/n;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->e:Lcom/oppo/camera/gl/p;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->f:Landroid/os/Handler;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->g:Lcom/oppo/camera/ui/preview/e$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->j:Lcom/oppo/camera/gl/GLRootView;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/gl/t;->n:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/gl/t;->o:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->r:[F

    iput-boolean v1, p0, Lcom/oppo/camera/gl/t;->s:Z

    iput-boolean v1, p0, Lcom/oppo/camera/gl/t;->t:Z

    iput-boolean v1, p0, Lcom/oppo/camera/gl/t;->u:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/gl/t;->v:I

    iput v0, p0, Lcom/oppo/camera/gl/t;->w:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/gl/t;->x:F

    iput v1, p0, Lcom/oppo/camera/gl/t;->y:I

    iput v1, p0, Lcom/oppo/camera/gl/t;->z:I

    return-void
.end method

.method private static a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/t$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->g()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->h()I

    move-result v4

    sget-object v5, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/gl/g;

    iget-object v9, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p0, p2, v5, v9, v8}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result p2

    invoke-static {p2, v3, v4}, Lcom/oppo/camera/o/d;->b(III)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_1

    :cond_1
    sget-object v5, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v8, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/gl/g;

    iget-object v9, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-interface {v5, p2, v8, v9}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;)Z

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->e:Lcom/oppo/camera/gl/p;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/t$a;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/oppo/camera/gl/t$a;->a()Z

    move-result v8

    invoke-virtual {p2, v3, v4, v5, v8}, Lcom/oppo/camera/gl/p;->a(IIIZ)V

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->e:Lcom/oppo/camera/gl/p;

    iget-object v5, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v5}, Lcom/oppo/camera/gl/s;->d()I

    move-result v5

    invoke-virtual {p2, v5, v3, v4}, Lcom/oppo/camera/gl/p;->a(III)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/gl/t$a;->a(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result p2

    invoke-static {p2, v3, v4}, Lcom/oppo/camera/o/d;->b(III)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v3, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean p2, v0, Lcom/oppo/camera/gl/t$a;->h:Z

    if-eqz p2, :cond_2

    iget-wide v4, p0, Lcom/oppo/camera/gl/t;->n:J

    goto :goto_0

    :cond_2
    move-wide v4, v6

    :goto_0
    iput-wide v6, p0, Lcom/oppo/camera/gl/t;->n:J

    monitor-exit v3

    move-wide v6, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    invoke-static {}, Lcom/oppo/camera/o/d;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v4, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/gl/g;

    iget-object v5, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-interface {v3, p2, v4, v5}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;)Z

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result p2

    iget-object v3, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->g()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->h()I

    move-result v4

    const-string v5, "preview"

    invoke-static {p2, v3, v4, v5}, Lcom/oppo/camera/o/d;->a(IIILjava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v0, v8, v6, v7}, Lcom/oppo/camera/gl/t$a;->a(Landroid/graphics/Bitmap;J)V

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "capturePreview, dump bitmap use time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", timeStamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SurfaceTextureScreenNail"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private h()Z
    .locals 11

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/t$a;

    iget-object v6, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-wide v7, p0, Lcom/oppo/camera/gl/t;->n:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-wide v7, p0, Lcom/oppo/camera/gl/t;->n:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const-string v8, "SurfaceTextureScreenNail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "needCapturePreview, previewTimestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mCaptureTimestamp: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oppo/camera/gl/t;->n:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeStampMatched: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", size: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, v2, Lcom/oppo/camera/gl/t$a;->h:Z

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    move v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v0, v5

    :goto_1
    invoke-static {}, Lcom/oppo/camera/o/d;->a()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    return v4

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "acquireSurfaceTexture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/gl/g;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/g;-><init>(I)V

    new-instance v2, Lcom/oppo/camera/gl/g;

    invoke-direct {v2, v1}, Lcom/oppo/camera/gl/g;-><init>(I)V

    new-instance v3, Lcom/oppo/camera/gl/g;

    invoke-direct {v3, v1}, Lcom/oppo/camera/gl/g;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    iget v2, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v3, p0, Lcom/oppo/camera/gl/t;->l:I

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/gl/g;->a(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v2, p0, Lcom/oppo/camera/gl/t;->l:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/g;->d()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/a/i;->a(Z)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    monitor-enter p0

    :try_start_1
    iput-boolean v3, p0, Lcom/oppo/camera/gl/t;->s:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/t;->o:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize(), height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/gl/t;->k:I

    iput p2, p0, Lcom/oppo/camera/gl/t;->l:I

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->l()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    :cond_0
    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v2, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v3, p0, Lcom/oppo/camera/gl/t;->l:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/preview/a/i;->b(II)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/gl/GLRootView;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/camera/gl/t;->j:Lcom/oppo/camera/gl/GLRootView;

    iget-object p1, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->j:Lcom/oppo/camera/gl/GLRootView;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/GLRootView;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;IIIII)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/gl/t;->s:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/oppo/camera/gl/h;->a(I)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->d()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/gl/t;->y:I

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->e()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/gl/t;->z:I

    invoke-interface {p1, p4, p5}, Lcom/oppo/camera/gl/h;->a(II)V

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p2

    div-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p3

    int-to-float v4, v1

    int-to-float v5, v3

    invoke-interface {p1, v4, v5}, Lcom/oppo/camera/gl/h;->a(FF)V

    iget-boolean v4, p0, Lcom/oppo/camera/gl/t;->u:Z

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/oppo/camera/gl/t;->x:F

    const/4 v7, 0x0

    sub-float/2addr v4, v7

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    sget-object v4, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS_PREVIEW_SCALE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/oppo/camera/config/CameraConfig;->getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F

    move-result v4

    iput v4, p0, Lcom/oppo/camera/gl/t;->x:F

    :cond_1
    iget v4, p0, Lcom/oppo/camera/gl/t;->x:F

    iget v7, p0, Lcom/oppo/camera/gl/t;->x:F

    neg-float v7, v7

    invoke-interface {p1, v4, v7, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v6, v5, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    :goto_0
    const/4 v4, 0x1

    if-ne p6, v4, :cond_3

    invoke-interface {p1, v5, v6, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    goto :goto_1

    :cond_3
    if-ne p6, v0, :cond_4

    invoke-interface {p1, v6, v5, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    :cond_4
    :goto_1
    neg-int p6, v1

    int-to-float p6, p6

    neg-int v0, v3

    int-to-float v0, v0

    invoke-interface {p1, p6, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    iget-object p6, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p6}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object p6, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->r:[F

    invoke-virtual {p6, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v3, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;IIII)Z

    move-result p6

    if-nez p6, :cond_5

    iget-object p6, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Lcom/oppo/camera/gl/c;

    iget-object v2, p0, Lcom/oppo/camera/gl/t;->r:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    :cond_5
    iget p2, p0, Lcom/oppo/camera/gl/t;->y:I

    iget p3, p0, Lcom/oppo/camera/gl/t;->z:I

    invoke-interface {p1, p2, p3}, Lcom/oppo/camera/gl/h;->a(II)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->f()V

    iget-object p1, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v5

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->f()I

    move-result v6

    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    const/4 p3, 0x0

    int-to-float v0, v6

    invoke-interface {p1, p3, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, p3, v0}, Lcom/oppo/camera/gl/h;->a(FFF)V

    iget-object p3, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->r:[F

    invoke-virtual {p3, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/oppo/camera/gl/t;->r:[F

    :goto_0
    move-object v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    monitor-enter p0

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/gl/g;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/g;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    iget-object v0, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/g;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/g;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(I)V

    iget-object v0, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_a

    iget-boolean v2, v1, Lcom/oppo/camera/gl/t;->s:Z

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const-string v2, "Surfacetexture.draw"

    invoke-static {v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/gl/g;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/g;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/oppo/camera/gl/h;->a(I)V

    div-int/lit8 v2, p5, 0x2

    add-int v2, p3, v2

    div-int/lit8 v3, p6, 0x2

    add-int v3, p4, v3

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-interface {p1, v4, v5}, Lcom/oppo/camera/gl/h;->a(FF)V

    iget-boolean v4, v1, Lcom/oppo/camera/gl/t;->u:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    iget v4, v1, Lcom/oppo/camera/gl/t;->x:F

    const/4 v6, 0x0

    sub-float/2addr v4, v6

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    sget-object v4, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS_PREVIEW_SCALE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/oppo/camera/config/CameraConfig;->getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F

    move-result v4

    iput v4, v1, Lcom/oppo/camera/gl/t;->x:F

    :cond_2
    iget v4, v1, Lcom/oppo/camera/gl/t;->x:F

    iget v6, v1, Lcom/oppo/camera/gl/t;->x:F

    neg-float v6, v6

    invoke-interface {p1, v4, v6, v5}, Lcom/oppo/camera/gl/h;->a(FFF)V

    goto :goto_0

    :cond_3
    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {p1, v5, v4, v5}, Lcom/oppo/camera/gl/h;->a(FFF)V

    :goto_0
    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcom/oppo/camera/gl/h;->a(FF)V

    iget-object v2, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v2, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->r:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v2, v1, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->r:[F

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/preview/a/i;->a([F)V

    invoke-direct {p0}, Lcom/oppo/camera/gl/t;->h()Z

    move-result v11

    iget-object v2, v1, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v12, v1, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/oppo/camera/gl/g;

    iget v9, v1, Lcom/oppo/camera/gl/t;->o:I

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIIII)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v11, :cond_6

    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    :cond_5
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oppo/camera/gl/c;

    iget-object v4, v1, Lcom/oppo/camera/gl/t;->r:[F

    move-object v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    :cond_6
    :goto_1
    invoke-virtual {p0, v10}, Lcom/oppo/camera/gl/t;->a(I)V

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/oppo/camera/o/d;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    :cond_8
    :goto_2
    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->f()V

    iget-object v2, v1, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/preview/a/i;->b(Lcom/oppo/camera/gl/h;IIII)Z

    iget v0, v1, Lcom/oppo/camera/gl/t;->v:I

    if-ltz v0, :cond_9

    iget v0, v1, Lcom/oppo/camera/gl/t;->w:I

    if-ltz v0, :cond_9

    iget-boolean v0, v1, Lcom/oppo/camera/gl/t;->t:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/oppo/camera/gl/t;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    :cond_9
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const-string v0, "Surfacetexture.draw"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_a
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SurfaceTextureScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureOnePreviewCallback, cb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needCheckTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p1, Lcom/oppo/camera/gl/t$a;->h:Z

    iput-boolean p2, p1, Lcom/oppo/camera/gl/t$a;->i:Z

    iget-object p2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p3, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p1, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/t;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/gl/t;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oppo/camera/gl/t;->n:J

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oppo/camera/gl/t;->u:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public c()V
    .locals 3

    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "releaseSurfaceTexture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/gl/t;->s:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->g()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/g;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/g;->l()V

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/oppo/camera/gl/t;->a(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Landroid/graphics/SurfaceTexture;)V

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

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    iget v2, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v3, p0, Lcom/oppo/camera/gl/t;->l:I

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/gl/g;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/gl/t;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/gl/t;->l:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
