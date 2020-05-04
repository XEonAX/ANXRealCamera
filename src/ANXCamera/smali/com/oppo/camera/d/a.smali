.class public abstract Lcom/oppo/camera/d/a;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/e/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/a$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:Lcom/oppo/camera/a/a;

.field protected K:Lcom/oppo/camera/e/f;

.field protected L:Lcom/oppo/camera/d/b;

.field protected M:Lcom/oppo/camera/ui/c;

.field protected N:Landroid/app/Activity;

.field protected O:Landroid/content/SharedPreferences;

.field protected P:Lcom/oppo/camera/ui/preview/a/i;

.field protected Q:Landroid/view/ViewGroup;

.field protected R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected S:Ljava/lang/String;

.field protected T:I

.field protected U:F

.field protected V:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Ljava/lang/Object;

.field private final X:Ljava/lang/Object;

.field private final Y:Ljava/lang/Object;

.field private final Z:Ljava/lang/Object;

.field private aA:Landroid/os/Handler;

.field private aB:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field private final aa:Ljava/lang/Object;

.field private final ab:Ljava/lang/Object;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:I

.field private ag:I

.field private ah:Lcom/oppo/camera/Ipa/e$a;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:[I

.field private an:[I

.field private ao:[I

.field private ap:I

.field private aq:J

.field private ar:J

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:Ljava/lang/Object;

.field private ax:Landroid/hardware/camera2/TotalCaptureResult;

.field private ay:Z

.field private az:Z

.field public b:Z

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "pref_camera_photo_ratio_key"

    const-string v1, "pref_camera_flashmode_key"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->b:Z

    iput v0, p0, Lcom/oppo/camera/d/a;->g:I

    iput v0, p0, Lcom/oppo/camera/d/a;->i:I

    iput v0, p0, Lcom/oppo/camera/d/a;->j:I

    iput v0, p0, Lcom/oppo/camera/d/a;->k:I

    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/camera/d/a;->m:I

    iput v0, p0, Lcom/oppo/camera/d/a;->n:I

    iput v0, p0, Lcom/oppo/camera/d/a;->o:I

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->r:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->w:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->y:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->z:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->A:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->B:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->D:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->F:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->G:Z

    const-string v2, "off"

    iput-object v2, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->Q:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    const-string v3, "beauty"

    iput-object v3, p0, Lcom/oppo/camera/d/a;->S:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/d/a;->T:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/camera/d/a;->U:F

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->V:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->Z:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->aa:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->ab:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ac:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ad:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    iput v0, p0, Lcom/oppo/camera/d/a;->af:I

    iput v0, p0, Lcom/oppo/camera/d/a;->ag:I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    const-string v3, "thumbnail_index"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/d/a;->ai:I

    iput v0, p0, Lcom/oppo/camera/d/a;->aj:I

    iput v1, p0, Lcom/oppo/camera/d/a;->ak:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/camera/d/a;->al:I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->an:[I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->ao:[I

    iput v1, p0, Lcom/oppo/camera/d/a;->ap:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oppo/camera/d/a;->aq:J

    iput-wide v3, p0, Lcom/oppo/camera/d/a;->ar:J

    iput v0, p0, Lcom/oppo/camera/d/a;->as:I

    iput v1, p0, Lcom/oppo/camera/d/a;->at:I

    iput v0, p0, Lcom/oppo/camera/d/a;->au:I

    iput v1, p0, Lcom/oppo/camera/d/a;->av:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/d/a;->aw:Ljava/lang/Object;

    iput-object v2, p0, Lcom/oppo/camera/d/a;->ax:Landroid/hardware/camera2/TotalCaptureResult;

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ay:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->az:Z

    new-instance v0, Lcom/oppo/camera/d/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/d/a$1;-><init>(Lcom/oppo/camera/d/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/d/a$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/a$5;-><init>(Lcom/oppo/camera/d/a;)V

    iput-object v0, p0, Lcom/oppo/camera/d/a;->aB:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    iput-object p1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    iput-object p3, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    const-string p1, "2"

    invoke-static {p1}, Lcom/oppo/camera/debug/DebugUtil;->checkDualCameraType(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->D:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cB()V

    return-void
.end method

.method private a(Lcom/oppo/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/h;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)",
            "Landroid/util/Size;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/oppo/camera/e/h;->c(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "standard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "standard_high"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "full"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "square"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;Lcom/oppo/camera/Ipa/e$a;)Lcom/oppo/camera/Ipa/e$a;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->x(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cD()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/ui/preview/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;[BIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/d/a;->b([BIIIZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/a;->ao:[I

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/camera/d/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->q:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "com.oppo.capture.request.number"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    const-string v2, "com.oppo.aps.algo.flag"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const-string v3, "com.oppo.aps.reprocess.algo.flag"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    const-string v4, "com.oppo.configure.request.format"

    invoke-virtual {v0, v4}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v4

    const-string v5, "com.oppo.capture.request.need.preview.stream"

    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v6, "com.oppo.metadata.index.reprocess"

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v6

    const-string v7, "com.qti.chi.override.isQuadCFASnapshot"

    invoke-virtual {v0, v7}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    array-length v8, v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v7

    iput v1, p0, Lcom/oppo/camera/d/a;->ak:I

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    iget-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->ao:[I

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->az:Z

    if-nez v2, :cond_2

    const-string v2, "BaseMode"

    const-string v8, "updateCaptureParameters, ApsAlgoFlags updated"

    invoke-static {v2, v8}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->az:Z

    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->an:[I

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/d/a;->Z:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v7

    iput v2, p0, Lcom/oppo/camera/d/a;->al:I

    monitor-exit v1

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/oppo/camera/d/a;->aa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v7

    iput v2, p0, Lcom/oppo/camera/d/a;->ap:I

    monitor-exit v1

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/d/a;->aw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v7

    iput v2, p0, Lcom/oppo/camera/d/a;->av:I

    monitor-exit v1

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    array-length v1, v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/d/a;->ab:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    aget-byte p1, p1, v7

    iput p1, p0, Lcom/oppo/camera/d/a;->au:I

    monitor-exit v1

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_8
    :goto_6
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->y(I)V

    return-void
.end method

.method private b(Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v1

    const-string v0, "filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v2

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    iget v4, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v5}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v6

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/d;->a(Landroid/content/Context;Ljava/lang/String;IZ[Ljava/lang/String;Lcom/oppo/camera/ui/preview/a/g;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHDRMode, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_4

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->l(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->k(I)V

    goto :goto_0

    :cond_0
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->l(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->k(I)V

    goto :goto_0

    :cond_1
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->l(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->k(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "close"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->l(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->k(I)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_4
    return-void
.end method

.method private b([BIIIZ)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPictureCallback, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->l(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, p2

    move v6, p3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, p2

    move v5, p3

    :goto_1
    invoke-static {p4}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v8, v1

    move-object v3, p0

    move-object v4, p1

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/oppo/camera/d/a;->a([BIILjava/lang/String;ZZ)V

    return-void
.end method

.method private final b(Lcom/oppo/camera/e/d;)Z
    .locals 6

    const-string v0, "captureX beforeSnapping"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->q:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->r:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->B:Z

    iget-object v3, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->b()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beforeSnapping, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mbAutoHDR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->v:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BaseMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/d;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->G:Z

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->G:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->Y()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/a/a;->c()Z

    move-result p1

    iget-boolean v3, p0, Lcom/oppo/camera/d/a;->az:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeSnapping, needAps, mbAlgoFlagsUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->az:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isApsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cC()I

    move-result p1

    if-ne p1, v1, :cond_4

    const-string p1, "beforeSnapping, capturePreview not done!"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->k()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/a;->h:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->R()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->n()Z

    move-result p1

    iget-object v3, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    new-instance v4, Lcom/oppo/camera/d/a$3;

    invoke-direct {v4, p0}, Lcom/oppo/camera/d/a$3;-><init>(Lcom/oppo/camera/d/a;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->az:Z

    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->ac:Z

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    iget v4, p0, Lcom/oppo/camera/d/a;->h:I

    invoke-static {v3, v4}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/d/a;->i:I

    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iget v4, p0, Lcom/oppo/camera/d/a;->i:I

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->a(I)V

    iget-boolean v3, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v4, 0x4b

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->b(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v4, 0x5f

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->b(I)V

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iget-object v4, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v4}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->a(Landroid/location/Location;)V

    const-string v3, "pref_camera_blur_mode_key"

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->j(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->p(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->j(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->p(I)V

    :goto_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return p1

    :cond_7
    :goto_2
    const-string p1, "beforeSnapping, memory is not enough!"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static synthetic b(Lcom/oppo/camera/d/a;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/a;->am:[I

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/a;->at:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Lcom/oppo/camera/e/d;)Z
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v2, v0

    const/high16 v0, 0x100000

    div-int v0, v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p1, Lcom/oppo/camera/e/d;->i:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    iget v2, p1, Lcom/oppo/camera/e/d;->h:I

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p1, Lcom/oppo/camera/e/d;->h:I

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p1, Lcom/oppo/camera/e/d;->h:I

    :goto_1
    mul-int/2addr v0, v2

    :goto_2
    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-static {v2}, Lcom/oppo/camera/o/d;->e(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-static {v4}, Lcom/oppo/camera/o/d;->d(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/oppo/camera/e/d;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oppo/camera/e/d;->i:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needMemory: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", availableMemory: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v7, 0x100000

    div-long/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", totalMemory: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v4, v7

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMemoryState: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BaseMode"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v0

    cmp-long p1, v4, v2

    if-ltz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private cB()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/a/a;->a()Lcom/oppo/camera/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    :cond_0
    return-void
.end method

.method private cC()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/d/a;->ag:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cD()V
    .locals 5

    const-string v0, "BaseMode"

    const-string v1, "doAfterStartPreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bu()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    const-string v0, "key_high_picture_size"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v4, 0x7f0f0114

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_photo_ratio_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "standard_high"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/oppo/camera/d/a;->r(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->q(Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method private cE()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00c6

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cF()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v1, 0x7f0f00cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    const-string v2, "pref_camera_videoflashmode_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private cG()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.nearme.note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.coloros.note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private cH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aP()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    return-object v0
.end method

.method private cI()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    const-string v1, "key_beauty3d"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private cJ()Z
    .locals 8

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f0195

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    const-string v3, "pref_camera_hdr_mode_key"

    invoke-static {v3, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "on"

    if-nez v5, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v6

    :cond_1
    const-string v5, "torch"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v6

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private cK()Z
    .locals 8

    const-string v0, "func_torch_soft_light"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    const-string v4, "pref_camera_hdr_mode_key"

    invoke-static {v4, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "on"

    if-nez v6, :cond_1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private cL()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cM()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    const-string v2, "pref_camera_hdr_mode_key"

    invoke-static {v2, v1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cN()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v2, "is3HDR, mOneCamera is null"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->G()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/oppo/camera/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/a;->ak:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/d/a;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->ax:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method private d(Lcom/oppo/camera/e/d;)V
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "capturePreviewData"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cC()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    new-instance v2, Lcom/oppo/camera/d/a$4;

    invoke-direct {v2, p0, p1}, Lcom/oppo/camera/d/a$4;-><init>(Lcom/oppo/camera/d/a;Lcom/oppo/camera/e/d;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aa()Z

    move-result p1

    sget-object v3, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p1, v3}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/d/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/d/a;)[I
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->an:[I

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/d/a;)[I
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->am:[I

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/d/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    return-object p0
.end method

.method private l(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/a;->r(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702cb

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v7, -0x1

    const v8, 0x7f0702ca

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v2, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_4
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->q(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private n(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDRMenuVisibility(), flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUIInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_hdr_mode_key"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private o(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFalterMenuVisibility, flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "pref_filter_menu"

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private p(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPiMenuVisibility, flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "pref_camera_pi_mode_key"

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private q(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "BaseMode"

    if-nez v0, :cond_0

    const-string p1, "updateFlashMenuIfHDRIsAuto null  == mPreferences"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "off"

    if-eqz p1, :cond_1

    const-string p1, "pref_camera_torch_mode_key"

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string p1, "pref_camera_flashmode_key"

    const-string v2, "auto"

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFlashMenuIfHDRIsAuto flashMode  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private r(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMenuWithHDRChange(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_torch_mode_key"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_flashmode_key"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private x(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "MSG_PRE_UPDATE_THUMBNAIL"

    goto :goto_0

    :pswitch_1
    const-string p1, "MSG_CREATE_EFFECT_TEXTURE"

    goto :goto_0

    :pswitch_2
    const-string p1, "MSG_UPDATE_EFFECT_MENUNAME"

    goto :goto_0

    :pswitch_3
    const-string p1, "MSG_AFTER_START_PREVIEW"

    goto :goto_0

    :pswitch_4
    const-string p1, "MSG_DIS_SCREEN_HINT_ICON"

    goto :goto_0

    :pswitch_5
    const-string p1, "MSG_AFTER_TAKEPICTURE"

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

.method private y(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BaseMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCapturePreviewDataState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/d/a;->ag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/d/a;->ag:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public C()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v1, 0xa

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "full"

    return-object v0
.end method

.method public E()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public F()Z
    .locals 2

    const-string v0, "pref_filter_process_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    return v0
.end method

.method public H()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v1, 0x7f0f018f

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->z()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->d(I)V

    return-void
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public K()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final L()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->b:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->q:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->r:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->B:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, mbInCapturing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/a;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/preview/a/i;->d(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->h()V

    invoke-direct {p0, v1}, Lcom/oppo/camera/d/a;->y(I)V

    iget-object v2, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/oppo/camera/d/a;->r(Z)V

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->f(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->v:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->w:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->y:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->E:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->az:Z

    iput v1, p0, Lcom/oppo/camera/d/a;->l:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bp()V

    return-void
.end method

.method public final M()V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->i()V

    invoke-static {}, Lcom/oppo/camera/ui/preview/a/d;->a()V

    return-void
.end method

.method public final N()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    iput-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    return-void
.end method

.method public final O()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->f()V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ac:Z

    const/4 v0, 0x0

    return v0
.end method

.method public Q()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForceMode, capMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modeName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseMode"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/f/a;->a(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    iget v2, p0, Lcom/oppo/camera/d/a;->h:I

    invoke-static {v1, v2}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "pref_support_ipa_process"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v2

    if-lez v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v2, "pref_camera_blur_mode_key"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    const-string v2, "pref_filter_process_key"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v2

    if-lez v2, :cond_3

    or-int/lit16 v0, v0, 0x400

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExif, exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", jpegOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->m(I)V

    :cond_4
    return-void
.end method

.method public final S()V
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "initCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/a/i;->j()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->n(I)V

    const-string v1, "func_filter_vignette"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bd()Ljava/lang/String;

    move-result-object v1

    const-string v3, "oppo_video_filter_olympus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/a;->g:I

    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->u:Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/a;->Q:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->b()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->k()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->f()V

    sget-object v0, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aP()V

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/a;->r(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->q(Z)V

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->t:Z

    return-void
.end method

.method public final T()V
    .locals 5

    const-string v0, "BaseMode"

    const-string v1, "deInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    sget-object v1, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->a([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->n(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "off"

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->r(Z)V

    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->n(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->l(I)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->j(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->p(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a([Landroid/hardware/camera2/params/MeteringRectangle;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->f(Z)V

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->w:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->y:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->l()V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "pref_subsetting_key"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/preview/a/i;->d(I)V

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->az:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bp()V

    return-void
.end method

.method public final U()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->X()V

    :cond_0
    const-string v0, "oppo.debug.bgs.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    return-void
.end method

.method public final V()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->o(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->b()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->c(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->l(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->n(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bm()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforePreview, flashMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->E()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->d(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const-string v2, "func_request_fast_launch"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->m(Z)V

    :cond_1
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    sget-object v2, Lcom/oppo/camera/a$a;->FrameAverage:Lcom/oppo/camera/a$a;

    invoke-virtual {v2}, Lcom/oppo/camera/a$a;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->i(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    sget-object v2, Lcom/oppo/camera/a$a;->CenterWeighted:Lcom/oppo/camera/a$a;

    invoke-virtual {v2}, Lcom/oppo/camera/a$a;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->i(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->m()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->j()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i;->c(I)V

    :cond_5
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->f(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->v:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->w:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->y:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->W()V

    return-void
.end method

.method protected W()V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->az()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public X()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->B:Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->b()V

    :cond_0
    return-void
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->G:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->a()Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 5

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cG()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f0114

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x100

    invoke-virtual {p1, v2}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_CAPTURE_THIRD_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDecreasedSizeForThirdApp, configThirdPictureSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseMode"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    const-string v0, "func_sat_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "type_still_capture_yuv_sub"

    const-string v2, "type_still_capture_yuv_main"

    if-eqz v0, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/oppo/camera/e/c;->q:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "type_still_capture_yuv_third"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/oppo/camera/e/c;->r:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "pref_dual_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/oppo/camera/e/c;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    array-length p1, p2

    if-lt p1, v2, :cond_4

    const/4 p1, 0x0

    aget p1, p2, p1

    const/4 v0, 0x1

    aget p2, p2, v0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    array-length p1, p2

    const/4 v0, 0x4

    if-lt p1, v0, :cond_4

    aget p1, p2, v2

    const/4 v0, 0x3

    aget p2, p2, v0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    iput v0, p1, Lcom/oppo/camera/e/d;->q:I

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    iput-boolean v0, p1, Lcom/oppo/camera/e/d;->s:Z

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->w:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/oppo/camera/d/a;->o:I

    iput v0, p1, Lcom/oppo/camera/e/d;->x:I

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/d/a;->g:I

    iput v0, p1, Lcom/oppo/camera/e/d;->z:I

    return-object p1
.end method

.method public final a(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 3

    const-string v0, "BaseMode"

    const-string v1, "getCaptureMsgCommonData"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oppo/camera/d/a;->o:I

    iput v1, p1, Lcom/oppo/camera/statistics/model/DcsMsgData;->mScreenBrightness:I

    instance-of v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    iget v2, p0, Lcom/oppo/camera/d/a;->T:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCCT:Ljava/lang/String;

    iget v2, p0, Lcom/oppo/camera/d/a;->U:F

    iput v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mLux:F

    :cond_0
    const-string v1, "getCaptureMsgCommonData X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(IIZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bO()[I

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string p2, "onFaceBeautyItemValueChange, return"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    aput p2, v0, p1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a([I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method public a(IZ)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllViewWhenAnimation, animType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "on"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->b:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->C:Z

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702c6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto/16 :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz p1, :cond_8

    invoke-interface {p1, v2, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string p2, "pref_camera_hdr_mode_key"

    const-string v0, "off"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->l(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->g(Z)V

    goto :goto_0

    :cond_3
    const/16 v3, 0xa

    if-ne v3, p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v4, -0x1

    const v5, 0x7f0702c6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702cb

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v7, -0x1

    const v8, 0x7f0702ca

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_8
    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "torch"

    const-string v7, "auto"

    const-string v8, "on"

    const-string v9, "off"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v12, 0x7f0f00c6

    invoke-virtual {v4, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onSharedPreferenceChanged, flashMode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", mbAutoFlash: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "BaseMode"

    invoke-static {v13, v12}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v12, Lcom/oppo/camera/Camera;->a:Z

    if-nez v12, :cond_7

    sget-boolean v12, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0702c6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v3, :cond_2

    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0702c6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0703de

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->f(Z)V

    :cond_5
    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v3, :cond_6

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v3, v5}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cJ()Z

    goto :goto_3

    :cond_7
    :goto_1
    iput-boolean v11, v0, Lcom/oppo/camera/d/a;->ad:Z

    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->f(Z)V

    iget-boolean v12, v0, Lcom/oppo/camera/d/a;->v:Z

    iget-boolean v13, v0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {v0, v12, v13}, Lcom/oppo/camera/d/a;->c(ZZ)V

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v4, :cond_8

    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v13, 0x7f0f00e1

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_2

    :cond_8
    sget-boolean v4, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v4, :cond_9

    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v13, 0x7f0f00f3

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_9
    :goto_2
    iget-object v4, v0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v4, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_a
    :goto_3
    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "func_torch_soft_light"

    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    sget-boolean v12, Lcom/oppo/camera/Camera;->a:Z

    if-nez v12, :cond_b

    sget-boolean v12, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v12, :cond_e

    :cond_b
    iput-boolean v11, v0, Lcom/oppo/camera/d/a;->ad:Z

    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->f(Z)V

    iget-boolean v4, v0, Lcom/oppo/camera/d/a;->v:Z

    iget-boolean v5, v0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-boolean v1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v1, :cond_c

    iget-object v11, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v12, 0x7f0f00e1

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_4

    :cond_c
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v1, :cond_d

    iget-object v11, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v12, 0x7f0f00f3

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_e
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const v3, 0x7f0703de

    goto :goto_5

    :cond_f
    const v3, 0x7f0702c6

    :goto_5
    move v13, v3

    iget-object v11, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_6

    :cond_10
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v3, :cond_11

    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0702c6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_6

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto :goto_6

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_13
    :goto_6
    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cK()Z

    goto :goto_7

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cJ()Z

    :goto_7
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v3, :cond_16

    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v1, v6

    :cond_15
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v3, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v5}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_16
    :goto_8
    const-string v1, "pref_camera_vivid_effect_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v1

    const-string v3, "filter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v4, 0x7f0f00c1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v10}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;I)V

    :cond_17
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->bg()V

    :cond_18
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    const-string v11, "captureX onCaptureStarted"

    invoke-static {v11}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/oppo/camera/d/a;->aj:I

    const/4 v8, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    iget v2, v0, Lcom/oppo/camera/d/a;->aj:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/oppo/camera/d/a;->aj:I

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/oppo/camera/e/d;

    if-eqz v13, :cond_1

    iget-boolean v2, v13, Lcom/oppo/camera/e/d;->d:Z

    move v14, v2

    goto :goto_1

    :cond_1
    move v14, v12

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted, burstShot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mReprocessMetadataIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oppo/camera/d/a;->av:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "BaseMode"

    invoke-static {v15, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iput v2, v0, Lcom/oppo/camera/d/a;->k:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->aa()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/d/a$2;

    invoke-direct {v3, v0, v1}, Lcom/oppo/camera/d/a$2;-><init>(Lcom/oppo/camera/d/a;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    iget v1, v0, Lcom/oppo/camera/d/a;->ai:I

    iget v2, v0, Lcom/oppo/camera/d/a;->aj:I

    if-ne v1, v2, :cond_4

    move/from16 v16, v8

    goto :goto_2

    :cond_4
    move/from16 v16, v12

    :goto_2
    if-eqz v16, :cond_6

    const-string v1, "pref_support_capture_preview"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->aa()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/ui/preview/e;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    :cond_5
    iput-wide v9, v0, Lcom/oppo/camera/d/a;->aq:J

    :cond_6
    iget-object v1, v0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v14, :cond_9

    if-nez v16, :cond_8

    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v13}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v2

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v8, v12

    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJZ)V

    :cond_9
    iget v1, v0, Lcom/oppo/camera/d/a;->av:I

    iget v2, v0, Lcom/oppo/camera/d/a;->aj:I

    if-ne v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted, we save the use reprocess\'s metadata\'s timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v9, v0, Lcom/oppo/camera/d/a;->ar:J

    :cond_a
    invoke-virtual {v13}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    sget-object v2, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    if-eqz v1, :cond_b

    iput-wide v9, v1, Lcom/oppo/camera/Ipa/e$a;->n:J

    iget-object v2, v0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2, v1}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/Ipa/e$a;)Landroid/net/Uri;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    :cond_b
    invoke-static {v11}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed, request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/e/d;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/oppo/camera/e/d;->d:Z

    move v0, p1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    new-instance p1, Lcom/oppo/camera/a/a$a;

    invoke-direct {p1}, Lcom/oppo/camera/a/a$a;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    iput v0, p1, Lcom/oppo/camera/a/a$a;->c:I

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    iput v0, p1, Lcom/oppo/camera/a/a$a;->a:I

    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/a$a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_2

    iget-wide v1, p0, Lcom/oppo/camera/d/a;->aq:J

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/d/b;->a(J)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->L()V

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ab()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/d/a;->a([BIIIZ)V

    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    const-string p1, "BaseMode"

    const-string v0, "onProgress"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_support_fast_capture"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "com.mediatek.control.capture.next.ready"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    if-ne v4, v1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress, earlyNotify: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->A:Z

    :cond_3
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    const-string v0, "func_torch_soft_light"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-boolean v6, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/oppo/camera/d/a;->x:Z

    iget-object v7, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v7}, Lcom/oppo/camera/d/b;->p()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/a;->f(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v7, p0, Lcom/oppo/camera/d/a;->q:Z

    if-nez v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/a;->f(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/a;->f(Z)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eq v0, v6, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v0, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v5, "com.oppo.picture.exif.flag"

    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v6, "com.oppo.scene.state"

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v6

    if-eqz v5, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    array-length v7, v7

    if-lez v7, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    iget v7, p0, Lcom/oppo/camera/d/a;->af:I

    if-eq v7, v5, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, pictureExifFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oppo/camera/d/a;->af:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BaseMode"

    invoke-static {v8, v7}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/oppo/camera/d/a;->af:I

    :cond_6
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/Face;

    array-length v5, v5

    iput v5, p0, Lcom/oppo/camera/d/a;->n:I

    :cond_7
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "org.codeaurora.qcamera3.manualWB.color_temperature"

    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v7, "com.oppo.rawhdr.isp.luxindex"

    invoke-virtual {v0, v7}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v7

    goto :goto_3

    :cond_8
    const-string v5, "com.oppo.manualWB.color_temperature"

    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v7, "com.mediatek.3afeature.aeLuxIndex"

    invoke-virtual {v0, v7}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v7

    :goto_3
    iput v4, p0, Lcom/oppo/camera/d/a;->T:I

    if-eqz v5, :cond_9

    :try_start_0
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    iput v5, p0, Lcom/oppo/camera/d/a;->T:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/camera/d/a;->U:F

    if-eqz v7, :cond_a

    :try_start_1
    invoke-virtual {p1, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v4

    iput v5, p0, Lcom/oppo/camera/d/a;->U:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v6, :cond_d

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez v5, :cond_d

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v5, v5

    if-lez v5, :cond_e

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    iget-boolean v6, p0, Lcom/oppo/camera/d/a;->v:Z

    if-nez v5, :cond_b

    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->v:Z

    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->y:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eq v6, v2, :cond_e

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_6

    :cond_b
    if-ne v2, v5, :cond_c

    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->v:Z

    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->y:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eq v6, v2, :cond_e

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_6

    :cond_c
    if-ne v3, v5, :cond_e

    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->y:Z

    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->v:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eq v6, v2, :cond_e

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_6

    :cond_d
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->v:Z

    :cond_e
    :goto_6
    const-string v2, "scene.binning"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/16 v5, 0x67

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_f

    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->w:Z

    goto :goto_7

    :cond_f
    const/16 v5, 0x68

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v5, v2, :cond_10

    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->w:Z

    :cond_10
    :goto_7
    const-string v2, "capture.state"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v2, 0x3ea

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_11

    const/16 v2, 0x3eb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_15

    :cond_11
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->z:Z

    iget v0, p0, Lcom/oppo/camera/d/a;->l:I

    if-lez v0, :cond_12

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    :cond_12
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->h()I

    move-result v0

    if-ne v0, v1, :cond_14

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "pref_auto_night_scence_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    const-string v2, "pref_burst_shot_key"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    :cond_14
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->am()V

    :cond_15
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    iget-object v3, p0, Lcom/oppo/camera/d/a;->aB:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/oppo/camera/d/a;->V:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->cw()I

    move-result v8

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/TotalCaptureResult;Lcom/oppo/camera/jni/APSClient$BufferCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    :cond_16
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 8

    const-string v0, "captureX onCaptureCompleted"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/e/d;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/oppo/camera/e/d;->d:Z

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", burstShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseMode"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p2, :cond_6

    const-string p2, "func_sat_camera"

    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.oppo.aps.sat.snapshot.sensors.mask"

    invoke-interface {p2, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object p2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    array-length v5, p2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    array-length v5, p2

    move v6, v2

    :goto_1
    if-ge v2, v5, :cond_2

    aget v7, p2, v2

    if-ne v7, v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v6

    :cond_3
    if-lez v2, :cond_4

    iput v2, p0, Lcom/oppo/camera/d/a;->m:I

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/oppo/camera/d/a;->m:I

    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted, mDefaultCaptureNumber: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/d/a;->ak:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSensorNumber: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/d/a;->m:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/TotalCaptureResult;I)V

    :cond_6
    if-eqz v1, :cond_7

    iget-wide v2, p0, Lcom/oppo/camera/d/a;->ar:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p2, v2, v5

    if-nez p2, :cond_7

    const-string p2, "onCaptureCompleted, will save capture result for reprocess"

    invoke-static {v4, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/d/a;->ax:Landroid/hardware/camera2/TotalCaptureResult;

    :cond_7
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/media/Image;)V
    .locals 1

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->s:Z

    const-string v0, "BaseMode"

    if-eqz p1, :cond_0

    const-string p1, "onPostViewReceived, is paused, so return."

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onPostViewReceived"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/media/ImageReader;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/camera/d/a;->a(Landroid/media/ImageReader;IZ)Z

    return-void
.end method

.method protected a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    sget-object p3, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object p1

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object p1

    const-string p3, "com.oppo.request.aps.algo.flag"

    invoke-virtual {p1, p3}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iget-boolean p3, p0, Lcom/oppo/camera/d/a;->ay:Z

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->am:[I

    invoke-virtual {p2, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/e/f;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_0

    const-string p1, "key_support_zsl"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->at()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->h(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 2

    const-string v0, "pref_filter_process_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string p2, "updateBubbleValue, mPreference null"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract a(Z)V
.end method

.method protected a(ZZ)V
    .locals 0

    const-string p1, "BaseMode"

    const-string p2, "CameraTest Shutter clickable Restart"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([BIIIZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureCallback, data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p5, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "picture_data"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "picture_width"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "picture_height"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "picture_format"

    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "is_burst_shot"

    invoke-virtual {v2, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a([BIILjava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, p1}, Lcom/oppo/camera/d/b;->a([B)V

    invoke-virtual {p0, p1, p6}, Lcom/oppo/camera/d/a;->b([BZ)V

    if-eqz p5, :cond_3

    iget-boolean p5, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz p5, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    iget-object p5, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p2

    iget p3, p0, Lcom/oppo/camera/d/a;->j:I

    iget-object p5, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p5}, Lcom/oppo/camera/d/b;->k()I

    move-result p5

    invoke-static {p3, p5}, Lcom/oppo/camera/e/a;->b(II)I

    move-result p3

    rem-int/lit16 p3, p3, 0xb4

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_2
    move v1, p3

    move p3, p2

    move p2, v1

    :goto_0
    new-instance p5, Lcom/oppo/camera/v$a;

    invoke-direct {p5}, Lcom/oppo/camera/v$a;-><init>()V

    iput p3, p5, Lcom/oppo/camera/v$a;->o:I

    iput p2, p5, Lcom/oppo/camera/v$a;->p:I

    iput-object p1, p5, Lcom/oppo/camera/v$a;->d:[B

    iput-object p4, p5, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b([B)I

    move-result p2

    iput p2, p5, Lcom/oppo/camera/v$a;->r:I

    const/4 p2, 0x0

    iput-object p2, p5, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    iget-object p2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, p5}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/v$a;)V

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, p1}, Lcom/oppo/camera/d/b;->b([B)V

    invoke-virtual {p0, p1, p6}, Lcom/oppo/camera/d/a;->a([BZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    iput-boolean p2, p0, Lcom/oppo/camera/d/a;->q:Z

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ae()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->q:Z

    if-nez p1, :cond_5

    iput-boolean p3, p0, Lcom/oppo/camera/d/a;->B:Z

    :cond_5
    iput-boolean p3, p0, Lcom/oppo/camera/d/a;->b:Z

    iput-boolean p2, p0, Lcom/oppo/camera/d/a;->ay:Z

    iget p1, p0, Lcom/oppo/camera/d/a;->at:I

    iput p1, p0, Lcom/oppo/camera/d/a;->ak:I

    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, p3}, Lcom/oppo/camera/d/b;->c(Z)V

    :cond_6
    sget-boolean p1, Lcom/oppo/camera/Camera;->a:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz p1, :cond_8

    :cond_7
    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->ad:Z

    if-eqz p1, :cond_8

    if-nez p6, :cond_8

    iput-boolean p2, p0, Lcom/oppo/camera/d/a;->ad:Z

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string p2, "pref_camera_flashmode_key"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string p2, "pref_camera_videoflashmode_key"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pictureTakenCallback, mbInCapturing: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->q:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbNeedReloadFlashMenu: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->ad:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMode"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a([BZ)V
.end method

.method protected a([I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a([I)[I

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/e/f;->a([I)V

    :cond_0
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    aget-object v3, p1, v1

    iget v4, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    aget-object v7, p1, v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/media/ImageReader;IZ)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageReceived, isNeedAPSProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/oppo/camera/a/a$a;

    invoke-direct {p3}, Lcom/oppo/camera/a/a$a;-><init>()V

    iput-object p1, p3, Lcom/oppo/camera/a/a$a;->j:Landroid/media/ImageReader;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result p1

    iput p1, p3, Lcom/oppo/camera/a/a$a;->c:I

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    iput p1, p3, Lcom/oppo/camera/a/a$a;->a:I

    iput p2, p3, Lcom/oppo/camera/a/a$a;->k:I

    iget-object p1, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/d/a;->am:[I

    iput-object p2, p3, Lcom/oppo/camera/a/a$a;->b:[I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {p1, p3}, Lcom/oppo/camera/a/a;->b(Lcom/oppo/camera/a/a$a;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    const-string p1, "func_post_thumbnail"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ab()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/d/a;->a([BIIIZ)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_high_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_setting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public aA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->q:Z

    return v0
.end method

.method public aC()Lcom/oppo/camera/d/a$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected aD()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bm()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->l(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    return-void
.end method

.method public aE()V
    .locals 6

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "off"

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/a;->f(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v3, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0, v4}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->v:Z

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v5, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v5}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v3, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0, v4}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v3}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method protected aF()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    const-string v2, "pref_camera_vivid_effect_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected aG()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    const-string v2, "pref_camera_vivid_effect_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v3}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aH()V
    .locals 4

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final aI()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aD()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aH()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ah()V

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->E:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aF()V

    :cond_0
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->ad:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ad:Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_flashmode_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->c(Z)V

    :cond_3
    return-void
.end method

.method public aJ()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "onUpdateCameraSettingMenu"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_filter_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_video_filter_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b([Ljava/lang/String;)V

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->n(Z)V

    return-void
.end method

.method public aK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aL()V
    .locals 0

    return-void
.end method

.method public aM()V
    .locals 0

    return-void
.end method

.method public aN()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "onEffectSurfaceCreated"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected aO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method protected aP()V
    .locals 5

    const-string v0, "BaseMode"

    const-string v1, "updateEffectMenuNames"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_filter_process_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "func_face_beauty_process"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "beauty"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "filter"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cI()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v3

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/oppo/camera/d/b;->a(ZLjava/util/List;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public aQ()Z
    .locals 5

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cH()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "filter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v0, "BaseMode"

    const-string v2, "hasEffectSelected, not Support filter effect."

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public aR()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(I)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public aS()I
    .locals 1

    const-string v0, "func_face_beauty_custom"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "func_face_beauty_common"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public aT()V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    const-string v2, "resetFaceBeautyValues"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bO()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a([I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_2
    return-void
.end method

.method public aU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aV()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public aW()I
    .locals 4

    const-string v0, "func_face_beauty_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aZ()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFaceBeautyCurrIndex, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x66

    return v0
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected aY()Z
    .locals 3

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "ro.oppo.regionmark"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EUEX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected aZ()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aY()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "func_face_beauty_common"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "func_face_beauty_custom"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x66

    return v0

    :cond_3
    return v1
.end method

.method public a_(Z)V
    .locals 2

    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/16 v0, 0xb

    const-string v1, "button_color_inside_none"

    invoke-direct {p1, v0, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/c;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public aa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ab()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public ac()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ad()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method protected ae()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final af()Z
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "burstShotCapture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aE()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ag()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aG()V

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ai()Z

    move-result v0

    return v0
.end method

.method protected ag()V
    .locals 0

    return-void
.end method

.method protected ah()V
    .locals 0

    return-void
.end method

.method protected ai()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected aj()V
    .locals 0

    return-void
.end method

.method protected ak()V
    .locals 0

    return-void
.end method

.method public final al()Z
    .locals 6

    const-string v0, "BaseMode"

    const-string v1, "capture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->t()Lcom/oppo/camera/e/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/d;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->q:Z

    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->r:Z

    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->B:Z

    const-string v0, "captureX beforeSnapping"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->z:Z

    iput v3, p0, Lcom/oppo/camera/d/a;->aj:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->co()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->ay:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->x()Lcom/oppo/camera/e/f$a;

    move-result-object v5

    invoke-interface {v1, v4, v0, v5}, Lcom/oppo/camera/d/b;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->p()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->x()Lcom/oppo/camera/e/f$a;

    move-result-object v5

    invoke-interface {v1, v4, v0, v5}, Lcom/oppo/camera/d/b;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    :goto_0
    const-string v1, "pref_support_capture_preview"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/a;->y(I)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/d;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v3}, Lcom/oppo/camera/d/a;->y(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ba()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->l(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->t()V

    :cond_4
    :goto_2
    iput v3, p0, Lcom/oppo/camera/d/a;->k:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->Z()Z

    return v2
.end method

.method protected am()V
    .locals 0

    return-void
.end method

.method public an()V
    .locals 0

    return-void
.end method

.method public ao()V
    .locals 0

    return-void
.end method

.method public ap()V
    .locals 0

    return-void
.end method

.method protected aq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ar()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public as()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cC()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public at()Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public au()I
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v2, v0, [[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v4}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/e/h;->x()[I

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultAFMode, focusMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public av()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "func_torch_soft_light"

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cE()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "off"

    return-object v0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "torch"

    :cond_4
    return-object v0
.end method

.method protected aw()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const v1, 0x7f0f0195

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ax()Z
    .locals 3

    const-string v0, "key_high_picture_size"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public ay()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f015c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_timer_shutter_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public az()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bo()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public abstract b()I
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 5

    const-string v0, "key_high_picture_size"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f0114

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_photo_ratio_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p1, v2}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPictureSize, sizeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "standard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz v2, :cond_1

    invoke-static {p1, v3, v4}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v2, "full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "square"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v2, "16_9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v2, "standard_high"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {p1, v3, v4}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 0

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 0

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1, p2}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020043

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const/4 p1, 0x0

    :goto_0
    array-length v0, v2

    if-ge p1, v0, :cond_4

    aget-object v0, v2, p1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->az:Z

    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    iput p1, p0, Lcom/oppo/camera/d/a;->j:I

    return-void
.end method

.method protected b(Landroid/media/Image;)V
    .locals 0

    return-void
.end method

.method public final b(ZZ)V
    .locals 3

    const-string v0, "BaseMode"

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/d/a;->l:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterCallback, mPostCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/d/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->r:Z

    :cond_0
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz v1, :cond_1

    const-string p1, "shutterCallback, camera pause, so return"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bE()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->c()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    return-void
.end method

.method protected b([BZ)V
    .locals 0

    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    aget-object v3, p1, v1

    iget v4, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v6, p1, v1

    const-string v7, "pref_camera_photo_ratio_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v9, 0x7f0f0114

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    aget-object v6, p1, v1

    const-string v7, "pref_camera_flashmode_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v9, 0x7f0f00c6

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    aget-object v7, p1, v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_subsetting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->B()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "pref_setting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->B()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :cond_3
    return v0

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bA()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bB()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bC()Z
    .locals 4

    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f00d0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bD()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayScreenHintIconInSwitchOn, isOpenFrontTorch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenFlash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->cq()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "displayScreenHintIconInSwitchOn, beauty3DMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bu()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0702cb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v8, -0x1

    const v9, 0x7f0702ca

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0703de

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v8, -0x1

    const v9, 0x7f0702c6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method protected bE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bG()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bH()V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aP()V

    return-void
.end method

.method public bI()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oppo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/a;->af:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bK()V
    .locals 3

    const-string v0, "func_face_beauty_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeforePreview, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->j(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bO()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->a([I)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->j(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bM()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected bN()[I
    .locals 1

    sget-object v0, Lcom/oppo/camera/d/a;->e:[I

    return-object v0
.end method

.method protected bO()[I
    .locals 6

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v1, "getCustomBeautyValues, customBeautyKeys null"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    const-string v2, "func_face_beauty_custom"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v5

    aget v5, v5, v3

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "func_face_beauty_common"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_4

    aget-object v4, v0, v3

    iget v5, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v5}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bM()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_3

    :cond_4
    aput v3, v1, v3

    :goto_3
    const/4 v2, 0x1

    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_6

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_6

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object v1
.end method

.method public bP()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bR()V
    .locals 0

    return-void
.end method

.method public bS()V
    .locals 0

    return-void
.end method

.method public bT()V
    .locals 0

    return-void
.end method

.method public bU()V
    .locals 0

    return-void
.end method

.method public bV()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bW()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bZ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ba()Z
    .locals 2

    const-string v0, "func_face_beauty_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bc()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->be()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v0

    return v0
.end method

.method public bd()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected be()Ljava/lang/String;
    .locals 1

    const-string v0, "key_filter_index"

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_filter_menu"

    return-object v0
.end method

.method protected bg()V
    .locals 0

    return-void
.end method

.method public bh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bj()Z
    .locals 5

    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string v2, "on"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v4, 0x7f0f0061

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bk()Z
    .locals 4

    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f01ba

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bl()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f01ba

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_vivid_effect_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bm()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v1, "updateAISceneMode failed"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bj()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(I)V

    :goto_0
    return-void
.end method

.method public bn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bp()V
    .locals 0

    return-void
.end method

.method public bq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public br()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->I()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bs()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->J()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bt()Z
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    const-string v1, "func_torch_soft_light"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bu()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bv()Z
    .locals 2

    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bw()Z
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected bx()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v2, "isOpenFlash mPreferences is equal null "

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected by()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v2, "isAutoFlash mPreferences is equal null "

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected bz()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "standard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "square"

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "standard_high"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "full"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "16_9"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->a()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreviewSize, sizeList: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BaseMode"

    invoke-static {v5, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v4}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x440

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    :cond_5
    return-object p1
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/a;->g:I

    return-void
.end method

.method public final c(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume, isShortcutType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->Q()V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->a(Z)V

    const-string p1, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->n(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->n(Z)V

    :goto_0
    const-string p1, "pref_filter_menu"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->o(Z)V

    const-string p1, "pref_camera_pi_mode_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->p(Z)V

    return-void
.end method

.method public c(ZZ)V
    .locals 12

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->cq()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BaseMode"

    const-string p2, "displayAllIcon, beauty3DMode"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702cb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v7, -0x1

    const v8, 0x7f0702ca

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p2, p1, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0702c6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p2, p1, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cA()V
    .locals 0

    return-void
.end method

.method public ca()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ce()V
    .locals 0

    return-void
.end method

.method public cf()V
    .locals 0

    return-void
.end method

.method public cg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ci()V
    .locals 0

    return-void
.end method

.method public cj()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 2

    new-instance v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    invoke-direct {v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_0

    const-string v1, "pref_filter_process_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->O:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public ck()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public cl()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cn()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->v()V

    :cond_1
    return-void
.end method

.method protected co()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cq()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cr()V
    .locals 0

    return-void
.end method

.method protected cs()V
    .locals 0

    return-void
.end method

.method protected ct()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final cv()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cx()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public cy()V
    .locals 0

    return-void
.end method

.method public cz()V
    .locals 0

    return-void
.end method

.method public d()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(ZZ)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const-string v0, "pref_update_setting_background_bar_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_face_detection_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_continuous_focus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_support_switch_camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_support_thumbnail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_camera_slogan_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_subsetting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "key_support_zsl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_support_rotate_hint_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_get_preview_on_switch_button_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "func_request_fast_launch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->A()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    const-string v0, "pref_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ax()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :cond_5
    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "pref_filter_process_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    const-string v0, "need_preview_stream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p0, Lcom/oppo/camera/d/a;->ap:I

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    :cond_8
    const-string v0, "func_reset_auto_focus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aB()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :cond_a
    :goto_3
    return v1

    :cond_b
    const-string v0, "pref_mirror_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    return p1

    :cond_c
    return v2

    :cond_d
    :goto_4
    return v1
.end method

.method public final d(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->am()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->o()Z

    move-result p1

    return p1
.end method

.method protected d(I)[I
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->c:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->d:[I

    :goto_0
    return-object p1
.end method

.method public e(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected e(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->b:[Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/a;->j:I

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->x:Z

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/e/f;->b(Z)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public g(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFaceBeautyItemValue, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->h(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->h(I)I

    move-result p1

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectMenuChange, menuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/d/a;->S:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    return-void
.end method

.method protected h(I)I
    .locals 1

    const-string v0, "func_face_beauty_common"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bM()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "func_face_beauty_custom"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_2
    const p1, -0x186a0

    return p1
.end method

.method protected abstract h()V
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->F:Z

    return-void
.end method

.method protected abstract i()V
.end method

.method public i(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceBeautyItemChange, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->j(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFaceBeautyItemChange, mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string v0, "isBubbleOpen, mPreference null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "key_bubble_short_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected abstract j()V
.end method

.method protected j(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    const-string v0, "func_face_beauty_process"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, p1}, Lcom/oppo/camera/e/f;->g(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->g(I)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string v0, "containsBubbleKey, mPreference null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract k()V
.end method

.method public k(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectItemChange, currMenuName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "beauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->i(I)V

    goto :goto_0

    :cond_0
    const-string v1, "filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->l(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_still_capture_raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "pref_support_raw_post_process"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract l()V
.end method

.method protected l(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bl()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->n(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->be()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bf()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bU()V

    return-void
.end method

.method protected abstract m()V
.end method

.method public m(I)V
    .locals 0

    return-void
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method

.method protected n(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bl()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFilterParam, mPreviewEffectProcess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract n()Z
.end method

.method protected o(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected abstract o()Z
.end method

.method public p()I
    .locals 4

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BaseMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultCaptureNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/d/a;->ak:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oppo/camera/d/a;->ak:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultCaptureNumber, mbShouldDisableAps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->ay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public p(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bB()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v0

    const/16 v3, 0x19

    const/16 v4, 0x18

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3

    :cond_6
    return v1
.end method

.method public q(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q()Z
    .locals 5

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ay:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const-string v2, "BaseMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedAPSProcess, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mApsAlgoFlags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/d/a;->am:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedAPSProcess, mbShouldDisableAps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->ay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->Z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/d/a;->al:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public r(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->p()I

    move-result v0

    return v0
.end method

.method public s(I)V
    .locals 0

    return-void
.end method

.method public t(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public t()Lcom/oppo/camera/e/d;
    .locals 4

    new-instance v0, Lcom/oppo/camera/e/d;

    invoke-direct {v0}, Lcom/oppo/camera/e/d;-><init>()V

    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ax()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->a:Z

    iget v1, p0, Lcom/oppo/camera/d/a;->au:I

    iput v1, v0, Lcom/oppo/camera/e/d;->C:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/e/d;->b:Ljava/lang/String;

    const-string v1, "func_filter_vignette"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oppo/camera/e/d;->b:Ljava/lang/String;

    const-string v3, "oppo_video_filter_olympus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->c:Z

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->p:Z

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->d:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->e:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ba()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->f:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->u()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->g:Z

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/oppo/camera/e/d;->h:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ad()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/e/d;->i:I

    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->j:Z

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->az()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/oppo/camera/d/a;->a_:Ljava/lang/String;

    :goto_2
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->A:Z

    iget-boolean v1, v0, Lcom/oppo/camera/e/d;->j:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cG()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->k:Z

    :cond_3
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    return-object v0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/d/a;->o:I

    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ba()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->y(I)V

    return-void
.end method

.method protected v(I)V
    .locals 0

    return-void
.end method

.method protected w(I)I
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_DEFAULT_TO_REAL_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_DEFAULT_TO_FRONT_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public w()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected x()Lcom/oppo/camera/e/f$a;
    .locals 2

    const-string v0, "pref_support_fast_capture"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->k(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->k(Z)V

    :goto_0
    return-object p0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
