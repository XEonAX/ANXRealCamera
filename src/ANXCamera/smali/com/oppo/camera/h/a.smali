.class public Lcom/oppo/camera/h/a;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FlashControllerCallback.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Z

.field private volatile c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:Lcom/oppo/camera/h/b;

.field private k:Lcom/oppo/camera/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/oppo/camera/e/f;)V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->b:Z

    iput v0, p0, Lcom/oppo/camera/h/a;->c:I

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->d:Z

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->e:Z

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->g:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/h/a;->h:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/h/a;->i:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    iput-object p1, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    sget-object p1, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/oppo/camera/h/b;

    sget-object v0, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/oppo/camera/h/b;-><init>(ILjava/util/Set;)V

    iput-object p1, p0, Lcom/oppo/camera/h/a;->j:Lcom/oppo/camera/h/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/h/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashControllerCallback"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/h/a;->i:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/h/a;->b:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/h/a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/h/a;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/h/a;->g:Z

    return v0
.end method

.method public h()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAeTriggerStart, mAeTriggerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/h/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/h/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashControllerCallback"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/h/a;->c:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/h/a;->i:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->e:Z

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->g:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/h/a;->i:I

    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->d:Z

    iput v0, p0, Lcom/oppo/camera/h/a;->c:I

    iget-object v0, p0, Lcom/oppo/camera/h/a;->j:Lcom/oppo/camera/h/b;

    invoke-virtual {v0}, Lcom/oppo/camera/h/b;->a()V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-boolean p1, p0, Lcom/oppo/camera/h/a;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "FlashControllerCallback"

    if-nez p3, :cond_1

    const-string p2, "onCaptureCompleted, result is null!"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/oppo/camera/e/f;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    invoke-interface {p2}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object p2

    const-string v2, "com.oppo.ae.aecsettled"

    invoke-virtual {p2, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const-string v3, "com.oppo.ae.preflashstate"

    invoke-virtual {p2, v3}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    check-cast p2, [I

    aget v0, p2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/h/a;->c:I

    :cond_5
    iget p2, p0, Lcom/oppo/camera/h/a;->c:I

    if-ne v3, p2, :cond_c

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v4

    iget-object v6, p0, Lcom/oppo/camera/h/a;->j:Lcom/oppo/camera/h/b;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v7

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/oppo/camera/h/b;->a(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/oppo/camera/e/f;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/oppo/camera/h/a;->g:Z

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v3

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_8

    move p2, v3

    goto :goto_4

    :cond_8
    move p2, v1

    :goto_4
    iget-boolean v6, p0, Lcom/oppo/camera/h/a;->d:Z

    if-nez v6, :cond_9

    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->d:Z

    iput-wide v4, p0, Lcom/oppo/camera/h/a;->h:J

    :cond_9
    if-eqz p2, :cond_a

    iget-wide v6, p0, Lcom/oppo/camera/h/a;->h:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    cmp-long p2, v4, v6

    if-gtz p2, :cond_b

    :cond_a
    if-eqz v2, :cond_c

    :cond_b
    iget-boolean p2, p0, Lcom/oppo/camera/h/a;->e:Z

    if-nez p2, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted, aeConverged and aeDone : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->e:Z

    iput-boolean v1, p0, Lcom/oppo/camera/h/a;->d:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/h/a;->h:J

    iput v3, p0, Lcom/oppo/camera/h/a;->i:I

    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->c()V

    :cond_c
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget p2, p0, Lcom/oppo/camera/h/a;->i:I

    const/4 p3, 0x2

    if-eq p3, p2, :cond_d

    iget-boolean p2, p0, Lcom/oppo/camera/h/a;->e:Z

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_d

    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->f:Z

    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->d()V

    iput p3, p0, Lcom/oppo/camera/h/a;->i:I

    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0xff

    if-ne v0, p1, :cond_e

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->b()V

    goto :goto_5

    :cond_e
    if-ne v0, v3, :cond_f

    iget-boolean p1, p0, Lcom/oppo/camera/h/a;->g:Z

    if-nez p1, :cond_f

    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->g:Z

    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->a()V

    :cond_f
    :goto_5
    return-void
.end method
