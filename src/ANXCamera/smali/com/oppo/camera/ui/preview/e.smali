.class public Lcom/oppo/camera/ui/preview/e;
.super Lcom/oppo/camera/gl/t;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/e$b;,
        Lcom/oppo/camera/ui/preview/e$a;
    }
.end annotation


# instance fields
.field private A:Landroid/content/Context;

.field private B:Lcom/oppo/camera/ui/preview/l;

.field private C:Lcom/oppo/camera/ui/preview/b;

.field private D:Lcom/oppo/camera/gl/s;

.field private E:Lcom/oppo/camera/gl/s;

.field private F:Lcom/oppo/camera/gl/d;

.field private G:Lcom/oppo/camera/ui/preview/e$b;

.field private H:I

.field private final p:[F

.field private q:I

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/preview/e$a;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/oppo/camera/gl/t;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/e;->p:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/preview/e;->r:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/e;->s:F

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->u:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->w:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->y:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->z:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    new-instance v3, Lcom/oppo/camera/ui/preview/l;

    invoke-direct {v3}, Lcom/oppo/camera/ui/preview/l;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/e;->B:Lcom/oppo/camera/ui/preview/l;

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    iput v0, p0, Lcom/oppo/camera/ui/preview/e;->H:I

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    new-instance p1, Lcom/oppo/camera/ui/preview/k;

    invoke-direct {p1}, Lcom/oppo/camera/ui/preview/k;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    if-nez p3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->u:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/gl/p;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->e:Lcom/oppo/camera/gl/p;

    return-object p0
.end method

.method private a(Lcom/oppo/camera/gl/h;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/g;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/e;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/gl/t;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/gl/p;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->e:Lcom/oppo/camera/gl/p;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/ui/preview/e$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/ui/preview/e$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->v:Z

    invoke-super {p0}, Lcom/oppo/camera/gl/t;->a()V

    new-instance v1, Lcom/oppo/camera/gl/s;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->f()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    new-instance v1, Lcom/oppo/camera/gl/s;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->f()I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/e;->E:Lcom/oppo/camera/gl/s;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/gl/t;->a(II)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "setGaussianBlurBitmap"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/oppo/camera/ui/preview/e;->H:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/oppo/camera/gl/d;

    invoke-direct {p2, p1}, Lcom/oppo/camera/gl/d;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p2}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$b;->d()V

    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-wide p3, p0, Lcom/oppo/camera/ui/preview/e;->n:J

    const-string p2, "CameraScreenNail"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCaptureStarted: mCaptureTimestamp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/oppo/camera/ui/preview/e;->n:J

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lcom/oppo/camera/gl/h;IIII)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-super/range {v0 .. v6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v9, p5

    move/from16 v10, p6

    iget-object v11, v1, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->t:Z

    const/4 v12, 0x1

    if-nez v2, :cond_0

    iput-boolean v12, v1, Lcom/oppo/camera/ui/preview/e;->t:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/e;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->v:Z

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    if-eqz p2, :cond_2

    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    goto/16 :goto_6

    :cond_2
    if-eqz v0, :cond_16

    const/16 v2, 0xb

    iget v3, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const v4, 0x3e99999a    # 0.3f

    if-ne v2, v3, :cond_4

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    iget v3, v1, Lcom/oppo/camera/ui/preview/e;->s:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->c()V

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    float-to-double v2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_3

    invoke-interface {v0, v4}, Lcom/oppo/camera/gl/h;->a(F)V

    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->f()V

    monitor-exit v11

    return-void

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    invoke-interface {v0, v2}, Lcom/oppo/camera/gl/h;->a(F)V

    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/e;->k()V

    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->f()V

    monitor-exit v11

    return-void

    :cond_4
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->c()V

    invoke-interface {v0, v4}, Lcom/oppo/camera/gl/h;->a(F)V

    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->f()V

    monitor-exit v11

    return-void

    :cond_5
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-nez v2, :cond_7

    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    iget-boolean v0, v1, Lcom/oppo/camera/ui/preview/e;->w:Z

    if-nez v0, :cond_6

    iput-boolean v12, v1, Lcom/oppo/camera/ui/preview/e;->w:Z

    const-string v0, "CameraScreenNail"

    const-string v2, "CameraTest First Frame Draw"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    monitor-exit v11

    return-void

    :cond_7
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const/16 v13, 0x9

    const/4 v14, 0x4

    const/4 v8, 0x0

    if-eq v2, v12, :cond_e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    const/4 v3, 0x5

    const/16 v7, 0x8

    const/4 v4, 0x6

    if-eq v2, v3, :cond_9

    if-eq v2, v4, :cond_a

    const/4 v3, 0x7

    if-eq v2, v3, :cond_a

    if-eq v2, v7, :cond_8

    move/from16 v12, p3

    move v15, v8

    const/4 v2, 0x3

    move/from16 v8, p4

    goto/16 :goto_3

    :cond_8
    move v15, v8

    goto :goto_0

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    invoke-interface {v2, v9, v10}, Lcom/oppo/camera/ui/preview/b;->a(II)V

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v2}, Lcom/oppo/camera/ui/preview/e$a;->K()V

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    :cond_a
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->y:Z

    if-eqz v2, :cond_b

    monitor-exit v11

    return-void

    :cond_b
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v6, v1, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v16, v6

    move/from16 v6, p5

    move v12, v7

    move/from16 v7, p6

    move v15, v8

    move-object/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/ui/preview/b;->b(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z

    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    invoke-virtual {v1, v12}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    :goto_0
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    iget v4, v1, Lcom/oppo/camera/ui/preview/e;->H:I

    invoke-interface {v3, v4}, Lcom/oppo/camera/ui/preview/e$b;->a(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/preview/b;->a(I)V

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    invoke-interface {v2, v3, v4}, Lcom/oppo/camera/ui/preview/b;->a(Landroid/content/Context;Lcom/oppo/camera/ui/preview/e$b;)V

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/ui/preview/e$2;

    invoke-direct {v3, v1}, Lcom/oppo/camera/ui/preview/e$2;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v15, v1, Lcom/oppo/camera/ui/preview/e;->z:Z

    invoke-virtual {v1, v13}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->u:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    move v2, v15

    :goto_1
    iput-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->u:Z

    move/from16 v12, p3

    move/from16 v8, p4

    goto :goto_2

    :cond_d
    move v15, v8

    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;)V

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->B:Lcom/oppo/camera/ui/preview/l;

    move/from16 v12, p3

    move/from16 v8, p4

    invoke-virtual {v2, v12, v8, v9, v10}, Lcom/oppo/camera/ui/preview/l;->a(IIII)V

    invoke-virtual {v1, v14}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    :goto_2
    const/4 v2, 0x3

    goto :goto_3

    :cond_e
    move/from16 v12, p3

    move v15, v8

    move/from16 v8, p4

    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    :goto_3
    iget v3, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-eq v3, v2, :cond_f

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-eq v2, v14, :cond_f

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-ne v2, v13, :cond_16

    :cond_f
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    goto :goto_4

    :cond_10
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-ne v2, v14, :cond_11

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->B:Lcom/oppo/camera/ui/preview/l;

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    invoke-virtual {v2, v0, v1, v3}, Lcom/oppo/camera/ui/preview/l;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/preview/e;Lcom/oppo/camera/gl/s;)Z

    move-result v2

    goto :goto_5

    :cond_11
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v14, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, v14

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/ui/preview/b;->a(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z

    move-result v8

    move v2, v8

    goto :goto_5

    :cond_12
    :goto_4
    move v2, v15

    :goto_5
    if-eqz v2, :cond_13

    iget-object v0, v1, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    goto :goto_6

    :cond_13
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-ne v2, v13, :cond_15

    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->z:Z

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/ui/preview/e$3;

    invoke-direct {v3, v1}, Lcom/oppo/camera/ui/preview/e$3;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v15}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    :cond_14
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    invoke-interface {v2}, Lcom/oppo/camera/ui/preview/b;->a()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/gl/h;->a(F)V

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IIII)V

    iget-object v0, v1, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    monitor-exit v11

    return-void

    :cond_15
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    :cond_16
    :goto_6
    monitor-exit v11

    return-void

    :cond_17
    :goto_7
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/oppo/camera/ui/preview/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimState, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/preview/a/i;->a(II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->t:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    :cond_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/oppo/camera/gl/t;->c()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    invoke-interface {v1, p1, p2}, Lcom/oppo/camera/ui/preview/b;->b(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->w:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->h()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->j:Lcom/oppo/camera/gl/GLRootView;

    new-instance v1, Lcom/oppo/camera/ui/preview/e$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/e$1;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->a()V

    :cond_0
    new-instance v0, Lcom/oppo/camera/gl/p;

    invoke-direct {v0}, Lcom/oppo/camera/gl/p;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/e;->e:Lcom/oppo/camera/gl/p;

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "animateOpenEnd"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/e;->r:F

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->z:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "forceRequestRender"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/e$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/e$4;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string v0, "CameraScreenNail.onFrameAvailable"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const-string p1, "CameraScreenNail"

    const-string v1, "****************GOT U HERE!"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CameraScreenNail.onFrameAvailable"

    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->v:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->v:Z

    const-string p1, "CameraScreenNail"

    const-string v1, "CameraTest First Frame available"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->t:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$a;->L()V

    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraScreenNail.onFrameAvailable"

    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
