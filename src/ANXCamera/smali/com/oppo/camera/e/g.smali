.class public Lcom/oppo/camera/e/g;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Lcom/oppo/camera/e/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/e/g$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/media/ImageWriter;

.field private N:Lcom/oppo/camera/e/d;

.field private O:Lcom/oppo/camera/e/d;

.field private P:Z

.field private Q:Z

.field private final R:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private T:Lcom/oppo/camera/h/a;

.field private final U:Lcom/oppo/camera/b/a;

.field private final V:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private a:Landroid/hardware/camera2/CameraManager;

.field private b:Landroid/hardware/camera2/CameraDevice;

.field private c:Lcom/oppo/camera/e/f$f;

.field private d:Landroid/hardware/camera2/CameraCaptureSession;

.field private e:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private f:Lcom/oppo/camera/e/h;

.field private g:Lcom/oppo/camera/e/f$e;

.field private h:Lcom/oppo/camera/e/f$a;

.field private i:Lcom/oppo/camera/e/f$c;

.field private j:Lcom/oppo/camera/e/c;

.field private k:Lcom/oppo/camera/n/a;

.field private l:Landroid/os/HandlerThread;

.field private m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/e/g$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;

.field private p:Ljava/util/concurrent/Semaphore;

.field private q:I

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/e/g;->a:Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->h:Lcom/oppo/camera/e/f$a;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->i:Lcom/oppo/camera/e/f$c;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x5

    iput v1, p0, Lcom/oppo/camera/e/g;->q:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->r:Z

    const-string v3, "session_type_custom"

    iput-object v3, p0, Lcom/oppo/camera/e/g;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->t:Z

    const-string v3, "off"

    iput-object v3, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->v:Z

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->w:Z

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->x:Z

    iput v1, p0, Lcom/oppo/camera/e/g;->y:I

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->z:Z

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->A:Z

    iput-boolean v2, p0, Lcom/oppo/camera/e/g;->B:Z

    iput-boolean v2, p0, Lcom/oppo/camera/e/g;->C:Z

    const/16 v3, 0x8

    iput v3, p0, Lcom/oppo/camera/e/g;->D:I

    const v3, 0x8001

    iput v3, p0, Lcom/oppo/camera/e/g;->E:I

    iput v2, p0, Lcom/oppo/camera/e/g;->F:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/oppo/camera/e/g;->G:I

    iput v2, p0, Lcom/oppo/camera/e/g;->H:I

    iput v1, p0, Lcom/oppo/camera/e/g;->I:I

    iput v2, p0, Lcom/oppo/camera/e/g;->J:I

    iput v2, p0, Lcom/oppo/camera/e/g;->K:I

    iput v1, p0, Lcom/oppo/camera/e/g;->L:I

    iput-object v0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    iput-object v0, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    new-instance v0, Lcom/oppo/camera/e/d;

    invoke-direct {v0}, Lcom/oppo/camera/e/d;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->P:Z

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->Q:Z

    new-instance v0, Lcom/oppo/camera/e/g$21;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$21;-><init>(Lcom/oppo/camera/e/g;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->R:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v0, Lcom/oppo/camera/e/g$22;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$22;-><init>(Lcom/oppo/camera/e/g;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/oppo/camera/e/g$23;

    invoke-direct {v0, p0, p0}, Lcom/oppo/camera/e/g$23;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    new-instance v0, Lcom/oppo/camera/e/g$24;

    invoke-direct {v0, p0, p0}, Lcom/oppo/camera/e/g$24;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    new-instance v0, Lcom/oppo/camera/e/g$25;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$25;-><init>(Lcom/oppo/camera/e/g;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->V:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oppo/camera/n/a;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/n/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->J:I

    return p0
.end method

.method private A()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 2

    const-string v0, "getInputConfiguration"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oppo/camera/e/f$e;->a()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private B()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    const-string v0, "builderOutputSurfaces"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f$e;->a(Ljava/util/LinkedHashMap;)V

    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic B(Lcom/oppo/camera/e/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->v:Z

    return p0
.end method

.method static synthetic C(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->F:I

    return p0
.end method

.method private C()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPreviewBuilder, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createPreviewBuilder"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/e/g;->t:Z

    iget-object v2, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    sget-object v3, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    iget v3, p0, Lcom/oppo/camera/e/g;->K:I

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    invoke-virtual {v2}, Lcom/oppo/camera/e/c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "createPreviewBuilder, getAvailableCaptureRequestKeys"

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "getAvailableCaptureRequestKeys"

    invoke-static {v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    invoke-virtual {v5}, Lcom/oppo/camera/e/h;->i()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v4, "createPreviewBuilder, getAvailableCaptureRequestKeys X"

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "createPreviewBuilder, CaptureRequest.getKeys"

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CaptureRequest.getKeys"

    invoke-static {v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    invoke-virtual {v5, v2}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v2, "createPreviewBuilder, CaptureRequest.getKeys X"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e/c;->a(Ljava/util/Set;)V

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v3, "type_preview"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/e/g;->r:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/camera/e/g;->K:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v3, "type_video"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v3, "type_depth_preview"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v3, v4, v5}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v0, "createPreviewBuilder X"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private D()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method static synthetic D(Lcom/oppo/camera/e/g;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->v()Z

    move-result p0

    return p0
.end method

.method private E()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 10

    const-string v0, "type_still_capture_yuv_third"

    const-string v1, "type_still_capture_yuv_sub"

    const-string v2, "type_still_capture_yuv_main"

    const-string v3, "type_still_capture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCaptureBuilder, mbZsl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oppo/camera/e/g;->x:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OneCameraImpl"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    :try_start_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    :goto_0
    move-object v5, v4

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->x:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->P:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->P:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const-string v7, "com.mediatek.cshotfeature.capture"

    invoke-virtual {v4, v7}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    iget-object v7, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const-string v8, "com.mediatek.control.capture.early.notification.trigger"

    invoke-virtual {v7, v8}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v7

    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    new-array v8, v6, [I

    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-virtual {v5, v4, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-array v4, v6, [I

    aput v6, v4, v9

    invoke-virtual {v5, v7, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->x:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0, v5}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_4
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/oppo/camera/e/g;->P:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v4, "type_preview"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_6
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v5, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1, v5, v2}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_9
    :goto_2
    return-object v5
.end method

.method static synthetic E(Lcom/oppo/camera/e/g;)Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    return-object p0
.end method

.method private F()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4

    const-string v0, "type_still_capture_raw"

    const-string v1, "OneCameraImpl"

    const-string v2, "createRawCaptureBuilder"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-boolean v3, p0, Lcom/oppo/camera/e/g;->x:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    :goto_0
    move-object v2, v1

    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v1, "type_preview"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v2
.end method

.method static synthetic F(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    return-object p0
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic G(Lcom/oppo/camera/e/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->P:Z

    return p0
.end method

.method static synthetic H(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->D:I

    return p0
.end method

.method private H()V
    .locals 3

    const-string v0, "releaseResource"

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    :cond_1
    iput-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I(Lcom/oppo/camera/e/g;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->B()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->B:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->C:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic J(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->A()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K(Lcom/oppo/camera/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->C()V

    return-void
.end method

.method static synthetic L(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->R:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method static synthetic M(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic N(Lcom/oppo/camera/e/g;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic O(Lcom/oppo/camera/e/g;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic P(Lcom/oppo/camera/e/g;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic Q(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->E()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->F()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic S(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->V:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic T(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic U(Lcom/oppo/camera/e/g;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->z()Z

    move-result p0

    return p0
.end method

.method static synthetic V(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->D()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 11

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    goto :goto_0

    :cond_0
    move p1, v2

    move v3, p1

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const-string v5, ")"

    const-string v6, "OneCameraImpl"

    const-string v7, ", "

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    div-float/2addr v8, v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    div-float/2addr v1, p3

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    mul-float/2addr p3, v8

    float-to-int p3, p3

    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    iget v10, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v4, p3, v9, v10, p2}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getZoomCropFormRegin, newCropRect: ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", scaleW: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", scaleH: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    sub-float p3, v2, v3

    mul-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    div-float/2addr v1, p3

    float-to-int p3, v1

    iget v1, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, p2

    iget p2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-virtual {v0, v1, v2, v8, p2}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getZoomCropFormRegin, newCropRegion: ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", scaleWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", scaleHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->a:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->a:Landroid/hardware/camera2/CameraManager;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->b(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/c;)Lcom/oppo/camera/e/c;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$a;)Lcom/oppo/camera/e/f$a;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->h:Lcom/oppo/camera/e/f$a;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$e;)Lcom/oppo/camera/e/f$e;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    return-object p1
.end method

.method private a(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "closeCameraDevice"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/oppo/camera/e/g;->u(I)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/e/g$a;

    invoke-virtual {v4, p1}, Lcom/oppo/camera/e/g$a;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/e/g$a;

    invoke-static {v3}, Lcom/oppo/camera/e/g$a;->a(Lcom/oppo/camera/e/g$a;)Lcom/oppo/camera/e/i;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "OneCameraImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCacheToBuilder, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILcom/oppo/camera/e/f$d;Z)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILcom/oppo/camera/e/f$d;Z)V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v8, Lcom/oppo/camera/e/g$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oppo/camera/e/g$13;-><init>(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/oppo/camera/e/f$d;ZLandroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    invoke-virtual {v0, v8}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V
    .locals 3

    iget-boolean v0, p2, Lcom/oppo/camera/e/d;->a:Z

    if-eqz v0, :cond_0

    iget p2, p2, Lcom/oppo/camera/e/d;->C:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v0, "type_still_capture_yuv_main_high_pixel_mfnr"

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    if-eqz p2, :cond_0

    const-string v1, "OneCameraImpl"

    const-string v2, "filterCaptureBuilder, TYPE_STILL_CAPTURE_YUV_MAIN_HIGH_PIXEL_MFNR"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v2, "type_still_capture_yuv_main"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/oppo/camera/e/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;",
            "Lcom/oppo/camera/e/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/oppo/camera/e/g$15;

    invoke-direct {v0, p0, p2}, Lcom/oppo/camera/e/g$15;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->u(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppo/camera/e/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/e/i<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    new-instance v2, Lcom/oppo/camera/e/g$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/oppo/camera/e/g$a;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;Lcom/oppo/camera/e/i;Lcom/oppo/camera/e/g$1;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/oppo/camera/e/g$16;

    invoke-direct {v0, p0, p2}, Lcom/oppo/camera/e/g$16;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRepeating, builder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    invoke-interface {p3}, Lcom/oppo/camera/e/f$e;->e()Landroid/util/Range;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast p3, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    invoke-interface {p3}, Lcom/oppo/camera/e/f$e;->e()Landroid/util/Range;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p1, "requestRepeating start"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p3, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->z:Z

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;ZLcom/oppo/camera/e/f$b;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->b(ZLcom/oppo/camera/e/f$b;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->G:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 6

    const-string v0, "type_still_capture_yuv_third"

    const-string v1, "type_still_capture_yuv_sub"

    const-string v2, "type_still_capture_yuv_main"

    const-string v3, "type_still_capture"

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    new-instance p1, Lcom/oppo/camera/e/d;

    sget-object v5, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    invoke-direct {p1, v5}, Lcom/oppo/camera/e/d;-><init>(Lcom/oppo/camera/e/d$a;)V

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget v5, v5, Lcom/oppo/camera/e/d;->q:I

    iput v5, p1, Lcom/oppo/camera/e/d;->q:I

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget v5, v5, Lcom/oppo/camera/e/d;->x:I

    iput v5, p1, Lcom/oppo/camera/e/d;->x:I

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget v5, v5, Lcom/oppo/camera/e/d;->z:I

    iput v5, p1, Lcom/oppo/camera/e/d;->z:I

    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    :cond_0
    invoke-virtual {v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v5, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, v4, v1}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    :goto_0
    return-object v4
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method private b(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCapture, builder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    invoke-interface {p3}, Lcom/oppo/camera/e/f$e;->e()Landroid/util/Range;

    move-result-object p3

    if-nez p3, :cond_0

    return v0

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast p3, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p3, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->b(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->t:Z

    return p1
.end method

.method private b(ZLcom/oppo/camera/e/f$b;)Z
    .locals 6

    const-string v0, "closeSession"

    const-string v1, "abortCaptures"

    const-string v2, "stopRepeating"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeOldSession, mCameraCaptureSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mDeviceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OneCameraImpl"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/oppo/camera/e/g;->D:I

    const/4 v5, 0x5

    if-ne v5, v3, :cond_2

    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/oppo/camera/e/g;->u(I)V

    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_1

    const-string v3, "closeOldSession, begin to stopRepeating"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v2, "closeOldSession, begin to abortCaptures"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f$f;->d()V

    :cond_0
    const-string v1, "closeOldSession, begin to close"

    invoke-static {v4, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "closeOldSession"

    invoke-static {v4, v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2, v5}, Lcom/oppo/camera/e/f$b;->a(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/e/g;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->H:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/e/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->H()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e/g;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->I:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e/g;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method static synthetic d(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->v:Z

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/e/g;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->E:I

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/e/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->G()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->Q:Z

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/e/g;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->K:I

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/e/g;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->J:I

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/e/g;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->v(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/e/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->z:Z

    return p0
.end method

.method static synthetic k(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->E:I

    return p0
.end method

.method static synthetic l(Lcom/oppo/camera/e/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->r:Z

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->K:I

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->i:Lcom/oppo/camera/e/f$c;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/e/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->t:Z

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/h/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    return-object p0
.end method

.method static synthetic q(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/b/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/e/g;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/e/g;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/e/g;->I:I

    return v0
.end method

.method static synthetic s(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->q:I

    return p0
.end method

.method private s()Z
    .locals 3

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/h/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    invoke-virtual {v0}, Lcom/oppo/camera/h/a;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->v:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAeAfState, flash required, but ae not converged, mFlashControllerCallback.isAeConverged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    invoke-virtual {v2}, Lcom/oppo/camera/h/a;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbAeAfLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e/g;->v:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraImpl"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/h/a;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/h/a;->a(I)V

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->x()V

    :cond_2
    return v1
.end method

.method static synthetic t(Lcom/oppo/camera/e/g;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e/g;->I:I

    return p0
.end method

.method private t()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OneCameraImpl"

    const-string v2, "checkApertureSwitchState, isApertureSwitching"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/b/a;->a(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic u(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    return-object p0
.end method

.method private u(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceState, sessionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/e/g;->D:I

    return-void
.end method

.method private u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4

    const-string v0, "type_video"

    const-string v1, "type_preview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTriggerBuilder, templateType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/e/g;->Q:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/e/g;->r:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x3

    iget v1, p0, Lcom/oppo/camera/e/g;->K:I

    if-ne p1, v1, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v3
.end method

.method private v()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic v(Lcom/oppo/camera/e/g;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result p0

    return p0
.end method

.method private w()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->w:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic w(Lcom/oppo/camera/e/g;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->u()Z

    move-result p0

    return p0
.end method

.method private x()V
    .locals 2

    const-string v0, "OneCameraImpl"

    const-string v1, "triggerAeAfForFlash"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$10;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$10;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic x(Lcom/oppo/camera/e/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->y()V

    return-void
.end method

.method static synthetic y(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->h:Lcom/oppo/camera/e/f$a;

    return-object p0
.end method

.method private y()V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->v:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    return-object p0
.end method

.method private z()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->A:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(F)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oppo/camera/e/g;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;Landroid/os/Handler;)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;Landroid/os/Handler;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v7, Lcom/oppo/camera/e/g$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e/g$4;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;ILandroid/os/Handler;Lcom/oppo/camera/e/f$a;)V

    invoke-virtual {v0, v7}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/f$e;ZI)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    const-string v1, "OneCameraImpl"

    const-string v2, "createCaptureSession"

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v7, Lcom/oppo/camera/e/g$26;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p1

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e/g$26;-><init>(Lcom/oppo/camera/e/g;ZIILcom/oppo/camera/e/f$e;)V

    invoke-virtual {v0, v7}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode, focusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e/g$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$5;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {p4, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureTime, exposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->C:Z

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->I()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->C:Z

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, p2, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera, context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const-string v0, "openCamera, acquire success."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p5, p0, Lcom/oppo/camera/e/g;->F:I

    invoke-static {p2}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p5

    iput-object p5, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    iget-object p5, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v6, Lcom/oppo/camera/e/g$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e/g$1;-><init>(Lcom/oppo/camera/e/g;Landroid/content/Context;ZLcom/oppo/camera/e/f$b;I)V

    invoke-virtual {p5, v6}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Time out waiting to lock camera opening."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Interrupted while trying to lock camera opening."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 3

    const-string v0, "OneCameraImpl"

    const-string v1, "reprocessImage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    :cond_1
    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    invoke-virtual {v1, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "reprocessImage, Queueing more than it can have!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e/g$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/oppo/camera/e/g$9;-><init>(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_1
    const-string p2, "reprocessImage request is called even before taking picture"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$a;Lcom/oppo/camera/e/d;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/oppo/camera/e/g$14;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRepeatingRequest, previewCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraCaptureSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewBuilder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->i:Lcom/oppo/camera/e/f$c;

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$d;)V
    .locals 6

    iget-object v1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILcom/oppo/camera/e/f$d;Z)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlashMode, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_3

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_2

    const v2, 0x696d3fc

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "torch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v6

    goto :goto_0

    :cond_4
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v3

    :cond_5
    :goto_0
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OneCameraImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceReleased, hasReleased: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e/g;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->A:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZLcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->P:Z

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_CSHOT_FIRST_REQUEST_NUM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/camera/e/g;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    return-void
.end method

.method public a(ZLcom/oppo/camera/e/f$b;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCamera, mCameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "closeCamera, acquire success."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/e/g$12;-><init>(Lcom/oppo/camera/e/g;ZLcom/oppo/camera/e/f$b;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomBeautyValues, values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oppo.facebeauty.custom"

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oppo.mirror.enable"

    goto :goto_0

    :cond_0
    const-string v0, "com.mediatek.control.capture.flipmode"

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [I

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    aget p1, p1, v2

    if-ne p1, v3, :cond_2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMirrorState, mirror: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraImpl"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [I

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    array-length p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_1
    return-object v1
.end method

.method public b()V
    .locals 4

    const-string v0, "OneCameraImpl"

    const-string v1, "waitHandlerThread"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v3, Lcom/oppo/camera/e/g$20;

    invoke-direct {v3, p0}, Lcom/oppo/camera/e/g$20;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v1, v3}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    iput-object v2, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v1, "waitHandlerThread X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openStream, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$17;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$17;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->w:Z

    return-void
.end method

.method public b([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lcom/oppo/camera/e/h;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeStream, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$18;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$18;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [B

    aput-byte p1, v0, v1

    const-string p1, "com.oppo.mirror.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    aput p1, v0, v1

    const-string p1, "com.mediatek.control.capture.flipmode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "OneCameraImpl"

    const-string v1, "closeSession"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$3;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e/g;->q:I

    return-void
.end method

.method public d(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPIEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.auto.pi.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$2;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAISceneMode, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.ai.scene.app.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoExposureLock, aeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$8;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$8;-><init>(Lcom/oppo/camera/e/g;Z)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->P:Z

    return-void
.end method

.method public f(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.mediatek.vsdoffeature.vsdofFeatureCaptureWarningMsg"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoWhiteBalanceLock, awbLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceDetection, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startFaceDetection"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyLevel, level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.facebeauty.level"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLongShotEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.longshot.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopFaceDetection, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public h(I)V
    .locals 4

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-array v0, v1, [I

    aput p1, v0, v2

    const-string p1, "com.qti.stats.awbwrapper.AWBCCT"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-array v0, v1, [I

    aput p1, v0, v2

    const-string p1, "com.oppo.manualWB.color_temperature"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, v0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->x:Z

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const-string p1, "com.mediatek.control.capture.zsl.mode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    return-object v0
.end method

.method public i(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "org.codeaurora.qcamera3.exposure_metering.exposure_metering_mode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endOfStream, isHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "endOfStream"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    iget-object v2, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v3, Lcom/oppo/camera/e/g$19;

    invoke-direct {v3, p0, v1, p1}, Lcom/oppo/camera/e/g$19;-><init>(Lcom/oppo/camera/e/g;Landroid/os/ConditionVariable;Z)V

    invoke-virtual {v2, v3}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public j(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->B:Z

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->I()V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->B:Z

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->r()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIso, iso: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxISOValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v1, :cond_1

    int-to-float p1, p1

    int-to-float v2, v1

    div-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.faceblur.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$6;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSceneMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public k(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.mediatek.control.capture.early.notification.trigger"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public l()V
    .locals 3

    const-string v0, "OneCameraImpl"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$7;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public l(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDRMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/e/g;->y:I

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->G()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oppo/camera/e/g;->y:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lcom/oppo/camera/e/g;->L:I

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/oppo/camera/e/g;->L:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/oppo/camera/e/g;->L:I

    :goto_0
    new-array p1, v2, [I

    iget v3, p0, Lcom/oppo/camera/e/g;->L:I

    aput v3, p1, v1

    const-string v3, "com.mediatek.hdrfeature.SessionParamhdrMode"

    invoke-direct {p0, v3, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-array p1, v2, [I

    iget v3, p0, Lcom/oppo/camera/e/g;->y:I

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    aput v2, p1, v1

    const-string v0, "com.oppo.auto.hdr.enable"

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public l(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewPluginBypass, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.bypass.tpi.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/e/g;->G:I

    return v0
.end method

.method public m(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.picture.exif.flag"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public m(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/e/c;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/e/c;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public n()Lcom/oppo/camera/e/c;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    return-object v0
.end method

.method public n(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoEISRecordState, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.eis.record.state"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public n(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVHdrRequest, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.mediatek.hdrfeature.hdrMode"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/oppo/camera/e/g;->L:I

    aput v2, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "com.mediatek.hdrfeature.SessionParamhdrMode"

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public o(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.camera.3d.api.state"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected o(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetParamsForFlash, isFlashRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cancelAETrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    invoke-virtual {v0}, Lcom/oppo/camera/h/a;->i()V

    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$11;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$11;-><init>(Lcom/oppo/camera/e/g;Z)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/oppo/camera/e/g;->v:Z

    if-nez p1, :cond_0

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public p(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.faceblur.level"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public q()V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/e/g;->H:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/e/g;->H:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public q(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.supernight.mode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.rear.remosaic.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public s(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApertureValue, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.iris.aperture.value"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public t(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.high.resolution"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
