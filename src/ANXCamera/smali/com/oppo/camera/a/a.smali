.class public Lcom/oppo/camera/a/a;
.super Ljava/lang/Object;
.source "ApsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/a/a$a;,
        Lcom/oppo/camera/a/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/oppo/camera/a/a;


# instance fields
.field private A:Z

.field private B:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Lcom/oppo/camera/jni/APSClient;

.field private q:Lcom/oppo/camera/a/b;

.field private r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field private s:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/oppo/camera/a/d;

.field private u:Lcom/oppo/camera/Ipa/ImageProcessService;

.field private v:Landroid/os/HandlerThread;

.field private w:Landroid/os/Handler;

.field private x:Lcom/oppo/camera/jni/NativeBufferProducer;

.field private y:Landroid/media/Image;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/a/a;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/a/a;->e:I

    iput v0, p0, Lcom/oppo/camera/a/a;->f:I

    iput v0, p0, Lcom/oppo/camera/a/a;->g:I

    iput v0, p0, Lcom/oppo/camera/a/a;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->n:Z

    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    iput-object v1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/jni/NativeBufferProducer;

    invoke-direct {v2}, Lcom/oppo/camera/jni/NativeBufferProducer;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/a/a;->x:Lcom/oppo/camera/jni/NativeBufferProducer;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->y:Landroid/media/Image;

    iput v0, p0, Lcom/oppo/camera/a/a;->z:I

    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->A:Z

    new-instance v0, Lcom/oppo/camera/a/a$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/a/a$1;-><init>(Lcom/oppo/camera/a/a;)V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->B:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    new-instance v0, Lcom/oppo/camera/jni/APSClient;

    invoke-direct {v0}, Lcom/oppo/camera/jni/APSClient;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    new-instance v0, Lcom/oppo/camera/a/d;

    invoke-direct {v0}, Lcom/oppo/camera/a/d;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->g()V

    return-void
.end method

.method public static a()Lcom/oppo/camera/a/a;
    .locals 2

    sget-object v0, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/oppo/camera/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/a/a;

    invoke-direct {v1}, Lcom/oppo/camera/a/a;-><init>()V

    sput-object v1, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/APSClient$BufferCallback;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "MSG_CAPTURE_STARTED"

    goto :goto_0

    :pswitch_1
    const-string p1, "MSG_UNINIT"

    goto :goto_0

    :pswitch_2
    const-string p1, "MSG_DECREASE_PROCESS_IMAGE_NUMBER"

    goto :goto_0

    :pswitch_3
    const-string p1, "MSG_IMAGE_RECEIVED"

    goto :goto_0

    :pswitch_4
    const-string p1, "MSG_METADATA_ARRIVED"

    goto :goto_0

    :pswitch_5
    const-string p1, "MSG_INT_AND_UPDATE_APS"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;J)V
    .locals 2

    const-string v0, "ApsController"

    const-string v1, "updateMetaData"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    invoke-static {p1, v0}, Lcom/oppo/camera/a/c;->a(Landroid/hardware/camera2/CaptureResult;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/oppo/camera/a/d;->c(JI)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/oppo/camera/a/d;->b(JI)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-virtual {v0, p2, p3, p1}, Lcom/oppo/camera/a/d;->a(JI)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "ApsController"

    const-string v0, "handlerCaptureStarted, bundle is null, return"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "update"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "time_stamp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "frame_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerCaptureStarted, usedForTagProcess: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", timestamp: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", frameNumber: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ApsController"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/oppo/camera/a/a;->e:I

    iput-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/oppo/camera/a/d;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/a/a;->b(Landroid/hardware/camera2/TotalCaptureResult;I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;Lcom/oppo/camera/a/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a$a;)V

    return-void
.end method

.method private a(Lcom/oppo/camera/a/d$b;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "captureX addFrameAndProcessImage"

    invoke-static {v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const-string v4, ", needMergeNumber: "

    const-string v8, "ApsController"

    if-eqz v1, :cond_1

    iget-object v9, v1, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    if-eqz v9, :cond_1

    iget-boolean v9, v0, Lcom/oppo/camera/a/a;->o:Z

    if-eqz v9, :cond_1

    iget-object v9, v1, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    invoke-virtual {v9}, Landroid/media/Image;->getFormat()I

    move-result v15

    iget v14, v1, Lcom/oppo/camera/a/d$b;->b:I

    invoke-virtual {v9}, Landroid/media/Image;->getWidth()I

    move-result v13

    invoke-virtual {v9}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-static {v15}, Lcom/oppo/camera/a/c;->a(I)I

    move-result v10

    invoke-virtual {v9}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    iget-object v12, v0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v12, v5, v6}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v12

    move-object/from16 v25, v8

    iget-wide v7, v12, Lcom/oppo/camera/a/d$a;->a:J

    move-object/from16 v26, v3

    invoke-static {v10, v9, v15}, Lcom/oppo/camera/a/c;->a(ILandroid/media/Image;I)[Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/camera/a/c;->a([Ljava/nio/ByteBuffer;)[I

    move-result-object v1

    move/from16 v16, v14

    invoke-static {v10, v9}, Lcom/oppo/camera/a/c;->a(ILandroid/media/Image;)[I

    move-result-object v14

    invoke-static {v1, v14}, Lcom/oppo/camera/a/c;->a([I[I)[I

    move-result-object v17

    move-object/from16 v27, v9

    iget v9, v12, Lcom/oppo/camera/a/d$a;->b:I

    if-nez v9, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    move/from16 v18, v11

    iget-wide v11, v0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v9, v11, v12}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addFrameAndProcessImage, camera is closing, use the first frame mCaptureTimeStamp: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v13

    move-object/from16 v20, v14

    iget-wide v13, v0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", cameraId: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/oppo/camera/a/d$a;->e:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v14, v25

    invoke-static {v14, v9}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v18, v11

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v14, v25

    :goto_0
    iget v9, v0, Lcom/oppo/camera/a/a;->e:I

    const/4 v11, 0x1

    add-int/2addr v9, v11

    iput v9, v0, Lcom/oppo/camera/a/a;->e:I

    iput v15, v0, Lcom/oppo/camera/a/a;->z:I

    iput v2, v0, Lcom/oppo/camera/a/a;->f:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addFrameAndProcessImage, the frameId: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCallbackNumber: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oppo/camera/a/a;->e:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", imageTimestamp: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", planNumber: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", buffers: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bufferStride: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", width: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v19

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v18

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", format: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mMetaBufferFd: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/oppo/camera/a/d$a;->c:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mMetaBufSize: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/oppo/camera/a/d$a;->b:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", role: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v16

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", logicCameraId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget v9, v12, Lcom/oppo/camera/a/d$a;->d:I

    iget v11, v12, Lcom/oppo/camera/a/d$a;->c:I

    iget v12, v12, Lcom/oppo/camera/a/d$a;->b:I

    move/from16 v19, v11

    move/from16 v21, v12

    move-wide v11, v7

    move-object v13, v3

    move v3, v6

    move-object v7, v14

    move-object/from16 v6, v20

    move-object v14, v1

    move v1, v15

    move-object v15, v6

    move-object/from16 v16, v17

    move/from16 v17, v1

    move/from16 v18, v9

    move/from16 v20, v21

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v10 .. v23}, Lcom/oppo/camera/jni/APSClient;->addFrameBuff(J[Ljava/nio/ByteBuffer;[I[I[IIIIIIII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addFrameAndProcessImage X, addFrameLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v27

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v26, v3

    move-object v7, v8

    iget v1, v0, Lcom/oppo/camera/a/a;->e:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oppo/camera/a/a;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFrameAndProcessImage, Invalid case, mCallbackNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oppo/camera/a/a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbInit: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oppo/camera/a/a;->o:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/oppo/camera/a/d;->a(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget v4, v0, Lcom/oppo/camera/a/a;->e:I

    if-ne v2, v4, :cond_2

    move/from16 v24, v11

    goto :goto_2

    :cond_2
    const/16 v24, 0x0

    :goto_2
    if-eqz v24, :cond_3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppo/camera/a/a;->a(Ljava/lang/String;)V

    :cond_3
    const/16 v2, 0x20

    if-ne v2, v1, :cond_4

    if-eqz v24, :cond_4

    const-string v1, "addFrameAndProcessImage, this is last RAW image, don\'t need close image"

    invoke-static {v7, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/oppo/camera/a/a;->y:Landroid/media/Image;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    :cond_5
    :goto_3
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v0}, Lcom/oppo/camera/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    iget v1, p0, Lcom/oppo/camera/a/a;->z:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(J)V

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkConditionAndProcess, FrameInfo is Invalid, mCaptureTimeStamp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApsController"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->i()V

    iget-object p1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    invoke-virtual {p1}, Lcom/oppo/camera/jni/APSClient;->clear()I

    :goto_0
    return-void
.end method

.method private a([I)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p0, Lcom/oppo/camera/a/a;->h:I

    if-eq p5, p1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needUpdateAps, captureMode: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cameraId: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", logicCameraId: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", algos: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApsController"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/a/a;)Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/a/a;->y:Landroid/media/Image;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 5

    const-string v0, "captureX handleMetadata"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iput p2, p0, Lcom/oppo/camera/a/a;->f:I

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lcom/oppo/camera/a/d;->a(JLandroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/CaptureResult;J)V

    iget-object v2, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v2

    iget-object v2, v2, Lcom/oppo/camera/a/d$a;->g:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlerMetadata, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", totalNumber: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeStamp: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", imageWrappers.size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ApsController"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/a/d$b;

    iget-object v3, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, p2, v3}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/d$b;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/a/a;Lcom/oppo/camera/a/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->d(Lcom/oppo/camera/a/a$a;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/oppo/camera/a/b;

    invoke-direct {v0}, Lcom/oppo/camera/a/b;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    const-string v2, "camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logic_camera_id"

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identity"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage, parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mApsAlgoFlgs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ApsController"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v5, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v5, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    invoke-virtual {p1, v1, v5}, Lcom/oppo/camera/jni/APSClient;->processImages([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/a/a;->g:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/oppo/camera/a/a;->g:I

    :goto_0
    iget p1, p0, Lcom/oppo/camera/a/a;->g:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {p1, v1, v5, v6}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", algoFlags: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mInProcessImageNumber: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/a/a;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->i()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    return-object p0
.end method

.method private c(Lcom/oppo/camera/a/a$a;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/a/a;->e:I

    iget-object v1, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->n:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->h:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->g:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    iget v0, p1, Lcom/oppo/camera/a/a$a;->d:I

    iput v0, p0, Lcom/oppo/camera/a/a;->h:I

    iget v0, p1, Lcom/oppo/camera/a/a$a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    new-instance v0, Lcom/oppo/camera/a/b;

    invoke-direct {v0}, Lcom/oppo/camera/a/b;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    sget-object v1, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture_mode"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    const-string v2, "logic_camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    const-string v2, "camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/oppo/camera/a/a$a;->i:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {p1}, Lcom/oppo/camera/a/c;->a(Landroid/hardware/camera2/CaptureResult;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->h()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/a/a;->o:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic d(Lcom/oppo/camera/a/a;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/a/a;->h:I

    return p0
.end method

.method private d(Lcom/oppo/camera/a/a$a;)V
    .locals 10

    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->j:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iget v3, p1, Lcom/oppo/camera/a/a$a;->a:I

    iget v4, p1, Lcom/oppo/camera/a/a$a;->c:I

    iget-object v5, p1, Lcom/oppo/camera/a/a$a;->b:[I

    invoke-direct {p0, v5}, Lcom/oppo/camera/a/a;->a([I)V

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;)V

    new-instance v5, Lcom/oppo/camera/a/d$b;

    iget-object v6, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/oppo/camera/a/d$b;-><init>(Lcom/oppo/camera/a/d;)V

    iput-object v0, v5, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    iget p1, p1, Lcom/oppo/camera/a/a$a;->k:I

    iput p1, v5, Lcom/oppo/camera/a/d$b;->b:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlerImageArrived, timeStamp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", need merge number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApsController"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result p1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    iget-wide v8, p0, Lcom/oppo/camera/a/a;->d:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object p1

    iget p1, p1, Lcom/oppo/camera/a/d$a;->b:I

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2, v5}, Lcom/oppo/camera/a/d;->a(JLcom/oppo/camera/a/d$b;)V

    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2, v3}, Lcom/oppo/camera/a/d;->d(JI)V

    const-string p1, "ApsController"

    const-string v0, "handlerImageArrived, metadata don\'t arrived, put into the cache"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/oppo/camera/a/a;->d:J

    cmp-long p1, v6, v3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-wide v3, p0, Lcom/oppo/camera/a/a;->d:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_2

    iput-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    const-string v0, "ApsController"

    const-string v1, "handlerImageArrived, data is before start notify"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v5, v4, p1}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/d$b;II)V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/NativeBufferProducer;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/a/a;->x:Lcom/oppo/camera/jni/NativeBufferProducer;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/a/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "apscontroller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oppo/camera/a/a$b;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/a/a$b;-><init>(Lcom/oppo/camera/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->l()V

    return-void
.end method

.method private h()V
    .locals 11

    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oppo/camera/a/b;

    invoke-direct {v0}, Lcom/oppo/camera/a/b;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    const-string v1, "camera_id"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    invoke-static {v0, v1}, Lcom/oppo/camera/a/c;->a(Ljava/lang/String;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object v0

    const-string v1, "ApsController"

    if-nez v0, :cond_1

    const-string v0, "initApsParameters, getCameraCharacteristicsData fail, need check"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    aget v7, v0, v2

    const/4 v2, 0x1

    aget v8, v0, v2

    const/4 v2, 0x2

    aget v9, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initApsParameters, parameters: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", algoFlags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", chararcteristicsAddr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chararcteristicsFd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chararcteristicsBuffSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->B:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/jni/APSClient;->setDataCallback(Lcom/oppo/camera/jni/APSClient$BufferCallback;)V

    iget-object v4, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v10, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/oppo/camera/jni/APSClient;->algoInit([Ljava/lang/String;[Ljava/lang/String;III[Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V

    return-void
.end method

.method private i()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetProcessStateAndNotify, mBufferCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mApsCallbackAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->j()V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/camera/a/a;->g:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x20

    iget v1, p0, Lcom/oppo/camera/a/a;->z:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/camera/a/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/jni/APSClient$BufferCallback;->onDataCallback(Lcom/oppo/camera/jni/APSClient$APSResultInfo;)V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/a/d;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v0}, Lcom/oppo/camera/a/d;->b()V

    iput v1, p0, Lcom/oppo/camera/a/a;->e:I

    iput v1, p0, Lcom/oppo/camera/a/a;->f:I

    iget-object v0, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUninit, mbInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUninit, parameters: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    invoke-virtual {v2}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mInitAlgos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    invoke-virtual {v1}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/jni/APSClient;->unint([Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    return-void
.end method

.method private l()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decreaseInProcessNum, mInProcessImageNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/a/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/a/a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/a/a;->g:I

    return-void
.end method

.method private m()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ApsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClosingCamera, mbIsCameraClosing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/a/a;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->n:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJZ)V
    .locals 1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "time_stamp"

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "frame_id"

    invoke-virtual {p2, p3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "update"

    invoke-virtual {p2, p3, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p2, 0x6

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Lcom/oppo/camera/jni/APSClient$BufferCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p6

    move-object v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/a/a$a;

    invoke-direct {v0}, Lcom/oppo/camera/a/a$a;-><init>()V

    iput-object p2, v0, Lcom/oppo/camera/a/a$a;->h:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    iput-object p3, v0, Lcom/oppo/camera/a/a$a;->f:Ljava/lang/String;

    iput-object p5, v0, Lcom/oppo/camera/a/a$a;->g:[Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/oppo/camera/a/a$a;->a:I

    iput-object p6, v0, Lcom/oppo/camera/a/a$a;->e:Ljava/lang/String;

    iput-object p1, v0, Lcom/oppo/camera/a/a$a;->i:Landroid/hardware/camera2/TotalCaptureResult;

    iput p7, v0, Lcom/oppo/camera/a/a$a;->d:I

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/ImageProcessService;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    return-void
.end method

.method public a(Lcom/oppo/camera/a/a$a;)V
    .locals 2

    const-string v0, "ApsController"

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/oppo/camera/a/a$a;->c:I

    iget-object v0, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/d$b;II)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/jni/APSClient;->startConnect()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->A:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAfterStartPreview, mbApsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oppo/camera/a/a$a;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/a/a;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ApsController"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 5

    const-string v0, "ApsController"

    const-string v1, "waitHandlerThread"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    check-cast v1, Lcom/oppo/camera/a/a$b;

    new-instance v2, Lcom/oppo/camera/a/a$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/a/a$2;-><init>(Lcom/oppo/camera/a/a;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/a/a$b;->a(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->g()V

    iput-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/a/a;->e:I

    iget v2, p0, Lcom/oppo/camera/a/a;->f:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitHandlerThread, This time capture fail, the mCallbackNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/a/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is not match request mDebugNeedMergeNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/a/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureTimeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->j()V

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v1, "waitHandlerThread X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforePause, mCaptureTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-boolean v3, p0, Lcom/oppo/camera/a/a;->n:Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/a/a;->d()V

    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/jni/APSClient;->resetConnectStatus()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/a/a;->A:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforePause, mbApsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
