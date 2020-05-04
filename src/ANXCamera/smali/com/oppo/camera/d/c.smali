.class public Lcom/oppo/camera/d/c;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/c$a;,
        Lcom/oppo/camera/d/c$b;
    }
.end annotation


# instance fields
.field private A:Landroid/media/AudioRecord;

.field private B:Lcom/oppo/camera/d/d;

.field private C:Lcom/oppo/camera/d/c$a;

.field private D:Lcom/oppo/camera/gl/q;

.field private E:Landroid/os/Handler;

.field private F:Landroid/os/Handler;

.field private G:Ljava/lang/Thread;

.field private H:Landroid/os/ConditionVariable;

.field private I:Lcom/oppo/camera/d/c$b;

.field private J:Ljava/util/concurrent/CountDownLatch;

.field private K:F

.field private L:F

.field private M:J

.field private N:Z

.field private O:Z

.field private P:Z

.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Landroid/media/MediaMuxer;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/io/FileDescriptor;

.field private u:Landroid/media/MediaCodec;

.field private v:Landroid/media/MediaCodec;

.field private w:Landroid/view/Surface;

.field private x:Landroid/media/MediaFormat;

.field private y:Landroid/media/MediaFormat;

.field private z:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/c;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    iput v1, p0, Lcom/oppo/camera/d/c;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/d/c;->h:I

    iput v1, p0, Lcom/oppo/camera/d/c;->i:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/oppo/camera/d/c;->j:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oppo/camera/d/c;->k:J

    iput-wide v2, p0, Lcom/oppo/camera/d/c;->l:J

    iput-wide v2, p0, Lcom/oppo/camera/d/c;->m:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/oppo/camera/d/c;->n:J

    iput-wide v4, p0, Lcom/oppo/camera/d/c;->o:J

    iput-wide v4, p0, Lcom/oppo/camera/d/c;->p:J

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    const/4 v5, 0x3

    iput v5, p0, Lcom/oppo/camera/d/c;->r:I

    iput-object v4, p0, Lcom/oppo/camera/d/c;->s:Ljava/lang/String;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->B:Lcom/oppo/camera/d/d;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    iput-object v4, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v5, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    new-instance v5, Lcom/oppo/camera/d/c$b;

    invoke-direct {v5, p0, v4}, Lcom/oppo/camera/d/c$b;-><init>(Lcom/oppo/camera/d/c;Lcom/oppo/camera/d/c$1;)V

    iput-object v5, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/oppo/camera/d/c;->J:Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x0

    iput v4, p0, Lcom/oppo/camera/d/c;->K:F

    iput v4, p0, Lcom/oppo/camera/d/c;->L:F

    iput-wide v2, p0, Lcom/oppo/camera/d/c;->M:J

    iput-boolean v0, p0, Lcom/oppo/camera/d/c;->N:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->O:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->P:Z

    new-instance v0, Lcom/oppo/camera/d/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/d/c$a;-><init>(Lcom/oppo/camera/d/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    return-void
.end method

.method private A()Z
    .locals 4

    const-string v0, "CameraMediaCodec"

    const-string v1, "startAudioInput"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->z()V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "startAudioInput, mAudioRecord may be conflict or have some other exception"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->y()I

    move-result v1

    new-array v1, v1, [B

    new-instance v2, Lcom/oppo/camera/d/c$6;

    const-string v3, "audio input thread"

    invoke-direct {v2, p0, v3, v1}, Lcom/oppo/camera/d/c$6;-><init>(Lcom/oppo/camera/d/c;Ljava/lang/String;[B)V

    iput-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/c;->f:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->n:J

    return-wide p1
.end method

.method private declared-synchronized a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraMediaCodec"

    const-string v1, "writeSampleData"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->r()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/d/c;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/d/c;->a([BII)V

    return-void
.end method

.method private a([BII)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioFrame, mAudioCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    :cond_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioFrame, outputBufferIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_0

    iget v2, p0, Lcom/oppo/camera/d/c;->r:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioFrame break, mRecorderState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v4, v0

    if-eqz p1, :cond_2

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const/4 v9, 0x0

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/d/c;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/d/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->M:J

    return-wide p1
.end method

.method static synthetic b(Lcom/oppo/camera/d/c;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->J:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/d/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->o:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->q()V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/d/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->p:J

    return-wide p1
.end method

.method static synthetic d(Lcom/oppo/camera/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->t()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/d/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->k:J

    return-wide p1
.end method

.method static synthetic e(Lcom/oppo/camera/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->s()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/c;->m:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video codec thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/c;->n:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/d/c;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/d/c;->f:I

    return p0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "audio codec thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/d/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/c;->M:J

    return-wide v0
.end method

.method private j()Landroid/media/MediaFormat;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->l:I

    iget-object v2, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v2, v2, Lcom/oppo/camera/d/c$b;->j:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->h:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->k:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    const v1, 0x7f000789

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    const/4 v1, 0x1

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic k(Lcom/oppo/camera/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/c;->o:J

    return-wide v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/oppo/camera/d/c$b;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "video/hevc"

    return-object v0

    :cond_0
    const-string v0, "video/avc"

    return-object v0
.end method

.method private l()Landroid/media/MediaFormat;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->m()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->b:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->n()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->b:I

    :goto_0
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->a:I

    if-nez v1, :cond_1

    const v1, 0x1f400

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->a:I

    :goto_1
    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    const/4 v1, 0x2

    const-string v2, "aac-profile"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic l(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/c$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    return-object p0
.end method

.method private m()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/oppo/camera/d/c$b;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v0, v0, Lcom/oppo/camera/d/c$b;->d:I

    goto :goto_0

    :cond_0
    const v0, 0xbb80

    :goto_0
    return v0
.end method

.method static synthetic m(Lcom/oppo/camera/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/c;->p:J

    return-wide v0
.end method

.method private n()I
    .locals 5

    iget v0, p0, Lcom/oppo/camera/d/c;->j:I

    const/4 v1, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    const/16 v4, 0x10

    if-eq v0, v4, :cond_1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelCount, channelCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraMediaCodec"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic n(Lcom/oppo/camera/d/c;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/d/c;->r:I

    return p0
.end method

.method static synthetic o(Lcom/oppo/camera/d/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private o()V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "stopAudioInput"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/oppo/camera/d/c;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method private p()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAudioEncode, mAudioCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbAudioCodecOutputDataCome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/c;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 5

    const-string v0, "CameraMediaCodec"

    const-string v1, "initAudioCodec"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "initAudioCodec, createEncoderByType fail"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->l()Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/d/c$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/c$3;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAudioCodec, mInputByteBuffer.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/oppo/camera/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->w()V

    return-void
.end method

.method static synthetic r(Lcom/oppo/camera/d/c;)I
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->y()I

    move-result p0

    return p0
.end method

.method private r()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "CameraMediaCodec"

    const-string v1, "initVideoCodec"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "initVideoCodec, createEncoderByType fail"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    new-instance v1, Lcom/oppo/camera/d/c$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/c$4;-><init>(Lcom/oppo/camera/d/c;)V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->j()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/q;->setOutput(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method static synthetic s(Lcom/oppo/camera/d/c;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    return-object p0
.end method

.method private s()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseVideoCodec"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "releaseVideoCodec, end"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    throw v0
.end method

.method static synthetic t(Lcom/oppo/camera/d/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private t()V
    .locals 15

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, start"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v5, -0x3

    if-ne v2, v5, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v5, -0x2

    if-ne v2, v5, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v2, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v2, :cond_1

    const-string v2, "CameraMediaCodec"

    const-string v3, "audioEncoder, addTrack mAudioTrack"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->w()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, Audio INFO_TRY_AGAIN_LATER"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    const-string v0, "CameraMediaCodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioEncoder, Audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/oppo/camera/d/c;->m:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    iput-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->n:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-gez v6, :cond_6

    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v9, p0, Lcom/oppo/camera/d/c;->n:J

    :cond_6
    const-string v6, "CameraMediaCodec"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioEncoder, audio bufferInfo.presentationTimeUs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/oppo/camera/d/c;->g:I

    aget-object v9, v0, v2

    invoke-direct {p0, v6, v9, v1}, Lcom/oppo/camera/d/c;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v6, p0, Lcom/oppo/camera/d/c;->c:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-wide v9, p0, Lcom/oppo/camera/d/c;->M:J

    iget v13, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v13, v13

    add-long/2addr v9, v13

    iput-wide v9, p0, Lcom/oppo/camera/d/c;->M:J

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v6, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->o:J

    cmp-long v2, v9, v11

    if-lez v2, :cond_7

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->n:J

    sub-long/2addr v1, v9

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->o:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_7

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, reach to max duration time"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    const/16 v2, 0x320

    invoke-virtual {v1, v8, v2, v5}, Lcom/oppo/camera/d/c$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/c$a;->sendMessage(Landroid/os/Message;)Z

    iput-wide v3, p0, Lcom/oppo/camera/d/c;->o:J

    goto :goto_1

    :cond_7
    iget-wide v1, p0, Lcom/oppo/camera/d/c;->p:J

    cmp-long v1, v1, v11

    if-lez v1, :cond_8

    iget-wide v1, p0, Lcom/oppo/camera/d/c;->M:J

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->p:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_8

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, reach to max file size"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    const/16 v2, 0x321

    invoke-virtual {v1, v8, v2, v5}, Lcom/oppo/camera/d/c$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/c$a;->sendMessage(Landroid/os/Message;)Z

    iput-wide v3, p0, Lcom/oppo/camera/d/c;->p:J

    :cond_8
    :goto_1
    iget v1, p0, Lcom/oppo/camera/d/c;->r:I

    if-ne v1, v7, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/d/c;->k:J

    :cond_9
    iput-boolean v8, p0, Lcom/oppo/camera/d/c;->P:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_a
    :goto_2
    const-string v2, "CameraMediaCodec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audioEncoder, Audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, audio codec exception"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->u()V

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, release audio codec"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->u()V

    throw v0
.end method

.method static synthetic u(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/c;->B:Lcom/oppo/camera/d/d;

    return-object p0
.end method

.method private u()V
    .locals 6

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseAudioCodec"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CameraMediaCodec"

    const-string v3, "releaseAudioCodec, audio input thread not end and we wait it here"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iput-object v1, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v2, -0x1

    :try_start_3
    const-string v3, "CameraMediaCodec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAudioCodec, mAudioCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    :goto_2
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "CameraMediaCodec"

    const-string v4, "releaseAudioCodec, stop fail"

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    goto :goto_2

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseAudioCodec, end"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4
    :try_start_7
    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    throw v3

    :goto_5
    iput-object v1, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private v()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoEncode, mbVideoCodecOutputDataCome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/c;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->g()V

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/oppo/camera/d/c$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/c$5;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private w()V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "startMediaMuxer"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/d/c;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/c;->g:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v1, p0, Lcom/oppo/camera/d/c;->f:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    :goto_2
    return-void
.end method

.method private x()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMediaMuxer, mbScopeEnableAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v2, :cond_1

    iget v2, p0, Lcom/oppo/camera/d/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    :goto_0
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v2, "CameraMediaCodec"

    const-string v3, "stopMediaMuxer, failed to stop the muxer"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :try_start_5
    iget v1, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/oppo/camera/d/c;->f:I

    if-ltz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_2
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    :goto_3
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    :try_start_8
    const-string v0, "CameraMediaCodec"

    const-string v2, "stopMediaMuxer, failed to stop the muxer"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method

.method private y()I
    .locals 3

    iget v0, p0, Lcom/oppo/camera/d/c;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->m()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/c;->i:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, p0, Lcom/oppo/camera/d/c;->i:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/c;->i:I

    :cond_0
    iget v0, p0, Lcom/oppo/camera/d/c;->i:I

    return v0
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->m()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->y()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->f()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->h()V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v2, v2, Lcom/oppo/camera/d/c$b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v2, v2, Lcom/oppo/camera/d/c$b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/oppo/camera/d/c;->h:I

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/oppo/camera/d/c;->K:F

    iget v2, p0, Lcom/oppo/camera/d/c;->L:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/c;->K:F

    iput p2, p0, Lcom/oppo/camera/d/c;->L:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/c;->h:I

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p2, v0, Lcom/oppo/camera/d/c$b;->l:I

    iput p1, v0, Lcom/oppo/camera/d/c$b;->j:I

    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->o:J

    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->k:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->h:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->i:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->a:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->b:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->c:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->d:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->duration:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->e:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->f:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->quality:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->g:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->j:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, v0, Lcom/oppo/camera/d/c$b;->l:I

    return-void
.end method

.method public a(Lcom/oppo/camera/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/c;->B:Lcom/oppo/camera/d/d;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/q;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/c;->s:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->h:I

    return-void
.end method

.method public b(J)V
    .locals 0

    long-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/oppo/camera/d/c;->p:J

    return-void
.end method

.method public b()Z
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/d/c$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/c$1;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/d/c$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/c$2;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->J:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->O:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->P:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->A()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->N:Z

    iget-object v1, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/gl/q;->i()V

    goto :goto_1

    :cond_0
    const-string v1, "start, mGLSurfaceView is null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->N:Z

    return v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->k:I

    return-void
.end method

.method public c()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/d/c;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iput v1, p0, Lcom/oppo/camera/d/c;->r:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->i()V

    goto :goto_0

    :cond_1
    const-string v0, "CameraMediaCodec"

    const-string v1, "stop, mGLSurfaceView is null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/d/c;->l:J

    iput-wide v0, p0, Lcom/oppo/camera/d/c;->k:J

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->v()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->o()V

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->p()V

    iget-object v0, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->N:Z

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/d/c;->k:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/camera/d/c;->r:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/d/c;->l:J

    iget-object v1, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/gl/q;->h()V

    goto :goto_0

    :cond_0
    const-string v1, "pause, mGLSurfaceView is null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->f:I

    return-void
.end method

.method public e()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/c;->l:J

    iget-wide v0, p0, Lcom/oppo/camera/d/c;->m:J

    iget-wide v2, p0, Lcom/oppo/camera/d/c;->l:J

    iget-wide v4, p0, Lcom/oppo/camera/d/c;->k:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/c;->m:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume, mPausedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/d/c;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/d/c;->r:I

    iget-object v0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->i()V

    goto :goto_0

    :cond_0
    const-string v0, "CameraMediaCodec"

    const-string v1, "resume, mGLSurfaceView is null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->i:I

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->a:I

    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->b:I

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->d:I

    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->c:I

    return-void
.end method
