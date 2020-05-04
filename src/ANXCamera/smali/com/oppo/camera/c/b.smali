.class public Lcom/oppo/camera/c/b;
.super Ljava/lang/Object;
.source "Beauty3DManager.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private volatile b:I

.field private volatile c:Z

.field private d:Z

.field private e:I

.field private f:Lcom/oppo/camera/e/f;

.field private g:Lcom/oppo/camera/ui/beauty3d/g;

.field private h:Lcom/oppo/camera/c/d;

.field private i:Lcom/oppo/camera/c/c;

.field private j:[I

.field private k:[I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/os/Handler;

.field private r:Lcom/oppo/camera/ui/beauty3d/g$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/c/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/c/b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/c/b;->b:I

    iput-boolean v1, p0, Lcom/oppo/camera/c/b;->c:Z

    iput-boolean v1, p0, Lcom/oppo/camera/c/b;->d:Z

    iput v1, p0, Lcom/oppo/camera/c/b;->e:I

    iput-object v0, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    iput-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    iput-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    iput-object v0, p0, Lcom/oppo/camera/c/b;->i:Lcom/oppo/camera/c/c;

    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v0, v2, v1

    iput-object v2, p0, Lcom/oppo/camera/c/b;->j:[I

    new-array v2, v0, [I

    const/4 v3, 0x2

    aput v3, v2, v1

    iput-object v2, p0, Lcom/oppo/camera/c/b;->k:[I

    new-array v0, v0, [I

    const/4 v2, 0x3

    aput v2, v0, v1

    iput-object v0, p0, Lcom/oppo/camera/c/b;->l:[I

    iput v1, p0, Lcom/oppo/camera/c/b;->m:I

    iput v1, p0, Lcom/oppo/camera/c/b;->n:I

    iput v1, p0, Lcom/oppo/camera/c/b;->o:I

    iput v1, p0, Lcom/oppo/camera/c/b;->p:I

    new-instance v0, Lcom/oppo/camera/c/b$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/c/b$1;-><init>(Lcom/oppo/camera/c/b;)V

    iput-object v0, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/c/b$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/c/b$2;-><init>(Lcom/oppo/camera/c/b;)V

    iput-object v0, p0, Lcom/oppo/camera/c/b;->r:Lcom/oppo/camera/ui/beauty3d/g$a;

    iput-object p1, p0, Lcom/oppo/camera/c/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    new-instance p2, Lcom/oppo/camera/ui/beauty3d/g;

    invoke-direct {p2, p1}, Lcom/oppo/camera/ui/beauty3d/g;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/c/b;->i:Lcom/oppo/camera/c/c;

    iget-object p2, p0, Lcom/oppo/camera/c/b;->i:Lcom/oppo/camera/c/c;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/c/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/c/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/c/b;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/c/b;->e(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/c/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/c/b;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/c/b;->b:I

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/c/b;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/c/b;->c(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/c/b;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/c/b;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/c/b;->m:I

    return v0
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->i:Lcom/oppo/camera/c/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/c/c;->f(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "com.oppo.beauty3d.analyses.result"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    aget v5, v2, v4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/c/b;->c(Ljava/lang/String;[I)V

    :cond_0
    const-string v1, "com.oppo.beauty3d.analyses.ffd"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    aget v0, p1, v4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oppo/camera/c/b;->c(Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/c/b;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/c/b;->d(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/c/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/c/b;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    const-string v0, "Beauty3DManager"

    const-string v1, "onBeauty3DEdit"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v1

    const-string v2, "com.oppo.beauty3d.custom.result"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBeauty3DEdit, styleResult.length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/oppo/camera/c/b;->c(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/c/b;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/c/b;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/c/b;->n:I

    return v0
.end method

.method private e(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "com.oppo.beauty3d.scan.result"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeautyScanResult, update hint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Beauty3DManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    aget v3, p1, v0

    iget v4, p0, Lcom/oppo/camera/c/b;->e:I

    if-eq v4, v3, :cond_2

    iput v3, p0, Lcom/oppo/camera/c/b;->e:I

    invoke-virtual {p0, v3}, Lcom/oppo/camera/c/b;->b(I)V

    :cond_2
    aget v3, p1, v1

    const-string v4, "onBeautyScanResult, update process: "

    if-nez v3, :cond_3

    const-string v1, "onBeautyScanResult, BEAUTY3D_SCAN_SUCCESS"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget p1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/oppo/camera/c/b;->d:Z

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Lcom/oppo/camera/c/b;->b(I)V

    iput-boolean v0, p0, Lcom/oppo/camera/c/b;->d:Z

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/c/b;->l()V

    goto :goto_0

    :cond_3
    if-ne v3, v0, :cond_4

    aget p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/c/b;->b(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x13

    if-gt v3, p1, :cond_5

    invoke-direct {p0, v3}, Lcom/oppo/camera/c/b;->c(I)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x14

    if-lt v3, p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBeautyScanResult, updateHintValue: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    invoke-direct {p0, v3}, Lcom/oppo/camera/c/b;->c(I)V

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/c/b$6;

    invoke-direct {v0, p0}, Lcom/oppo/camera/c/b$6;-><init>(Lcom/oppo/camera/c/b;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/c/b;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/c/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/c/b;->p:I

    return v0
.end method

.method static synthetic g(Lcom/oppo/camera/c/b;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/c/b;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/c/b;->o:I

    return v0
.end method

.method static synthetic h(Lcom/oppo/camera/c/b;)Lcom/oppo/camera/ui/beauty3d/g;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)I
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/c/b;->c:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    return p1

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    return p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    iget-object v1, p0, Lcom/oppo/camera/c/b;->r:Lcom/oppo/camera/ui/beauty3d/g$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/beauty3d/g;->a(Lcom/oppo/camera/ui/beauty3d/g$a;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeauty3DState, mBeauty3DState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/c/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/c/b;->b:I

    return-void
.end method

.method public a(ILandroid/util/Size;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    invoke-static {p2}, Lcom/oppo/camera/o/d;->b(Landroid/util/Size;)Z

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/oppo/camera/ui/beauty3d/g;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/c/b;->c:Z

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/camera/c/b;->a(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->k()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oppo/camera/c/b;->a(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/camera/c/b;->a(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/c/b;->b(Landroid/util/Size;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/c/b;->a(Z)V

    const-string p1, "Beauty3DManager"

    const-string v0, "onBeauty3DSessionConfigured, enterBeauty3D Mode"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/beauty3d/g;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/c/b;->c:Z

    return-void
.end method

.method public a(Ljava/lang/String;[I)Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeauty3DParams, setParam, key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Beauty3DManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/c/b;->c()V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/c/b$7;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/c/b$7;-><init>(Lcom/oppo/camera/c/b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/c/b$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/c/b$3;-><init>(Lcom/oppo/camera/c/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/c/b$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/c/b$4;-><init>(Lcom/oppo/camera/c/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/c/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/c/b$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/c/b$5;-><init>(Lcom/oppo/camera/c/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/c/b;->a(Landroid/hardware/camera2/TotalCaptureResult;)I

    return-void
.end method

.method public b(Landroid/util/Size;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeauty3DResume, beauty3dState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/c/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/oppo/camera/ui/beauty3d/g;->a(IZII)V

    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/beauty3d/g;->d(Z)V

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz p1, :cond_2

    invoke-interface {p1, v3}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1, v2, v2}, Lcom/oppo/camera/ui/beauty3d/g;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/beauty3d/g;->d(Z)V

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v5, 0x7

    if-eq v0, v5, :cond_8

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/16 v6, 0x9

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/16 v5, 0x8

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v6, 0x6

    if-ne v0, v6, :cond_c

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBeauty3DResume, editUICurrentState: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {v6}, Lcom/oppo/camera/ui/beauty3d/g;->k()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->k()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/c/b;->j()V

    :cond_6
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    if-ne v0, v5, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p0, v3, p1}, Lcom/oppo/camera/c/b;->a(ILandroid/util/Size;)V

    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/beauty3d/g;->c(Z)V

    goto :goto_1

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz v0, :cond_9

    invoke-interface {v0, v3}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_9
    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    if-ne v0, v5, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->k()I

    move-result v0

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->k()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->a()V

    :cond_a
    invoke-virtual {p0, v3, p1}, Lcom/oppo/camera/c/b;->a(ILandroid/util/Size;)V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/g;->f()V

    :cond_c
    :goto_1
    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/g;->j()V

    :cond_d
    return-void
.end method

.method public b(Lcom/oppo/camera/e/f;)V
    .locals 6

    iput-object p1, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    const-string p1, "Beauty3DManager"

    const-string v0, "onBeauty3DCreateSession, enterBeauty3D Mode"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    const-string v0, "com.oppo.beauty3d.mode"

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    const-string v1, "com.oppo.beauty3d.scan.state"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/c/b;->j:[I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    new-array p1, v3, [I

    aput v2, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/c/b;->j:[I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    new-array p1, v3, [I

    aput v3, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    const/16 v1, 0x9

    const/16 v5, 0x8

    if-eq p1, v5, :cond_3

    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    if-ne p1, v1, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/c/b;->l:[I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    if-ne p1, v5, :cond_4

    new-array p1, v3, [I

    aput v2, p1, v2

    const-string v0, "com.oppo.beauty3d.analyses.rotatedegree"

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    new-array p1, v4, [I

    fill-array-data p1, :array_0

    const-string v0, "com.oppo.beauty3d.custom.position"

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/oppo/camera/c/b;->b:I

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/c/b;->e()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/c/b;->k:[I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    invoke-virtual {p0}, Lcom/oppo/camera/c/b;->e()V

    :cond_6
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/beauty3d/g;->d(Z)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;[I)Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/oppo/camera/c/b;->f:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitBeauty3DParams, setParam, key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Beauty3DManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public c()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oppo/camera/c/b;->m:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_scan_click"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/c/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/oppo/camera/c/b;->n:I

    if-lez v1, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_save_click"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/c/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/oppo/camera/c/b;->o:I

    if-lez v1, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_delete_click"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/c/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/oppo/camera/c/b;->p:I

    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_start_edit_click"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/c/b;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v1, v3, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public c(Landroid/util/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/util/Size;)Z

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/oppo/camera/ui/beauty3d/g;->b(IZII)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/g;->a(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/beauty3d/g;->b(Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/util/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/util/Size;)Z

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/oppo/camera/ui/beauty3d/g;->c(IZII)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/beauty3d/g;->c(Z)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/c/b;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    iget v1, p0, Lcom/oppo/camera/c/b;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/beauty3d/g;->b(I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/c/b;->n()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/c/b;->a(Ljava/lang/String;[I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/beauty3d/g;->e(Z)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/c/b;->b:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/c/b;->c:Z

    return v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/oppo/camera/c/d;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/oppo/camera/ui/beauty3d/g;->a(IZII)V

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->a()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/c/b;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/c/b;->a(I)V

    iget-object v1, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    invoke-interface {v1}, Lcom/oppo/camera/c/d;->d()V

    iget v1, p0, Lcom/oppo/camera/c/b;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/c/b;->m:I

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->l()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->b()V

    :cond_0
    return-void
.end method

.method public n()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->g()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->h()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->i()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->j()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/g;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/c/b;->g:Lcom/oppo/camera/ui/beauty3d/g;

    iput-object v0, p0, Lcom/oppo/camera/c/b;->h:Lcom/oppo/camera/c/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/c/b;->b:I

    return-void
.end method
