.class public Lcom/oppo/camera/panorama/d;
.super Ljava/lang/Object;
.source "FNPanoramaProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/panorama/d$c;,
        Lcom/oppo/camera/panorama/d$a;,
        Lcom/oppo/camera/panorama/d$d;,
        Lcom/oppo/camera/panorama/d$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/graphics/Bitmap;

.field private a:Lcom/oppo/camera/panorama/d$c;

.field private b:Lcom/oppo/camera/jni/FormatConverter;

.field private c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:Landroid/hardware/SensorManager;

.field private o:Landroid/hardware/Sensor;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    iput-object v0, p0, Lcom/oppo/camera/panorama/d;->b:Lcom/oppo/camera/jni/FormatConverter;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/panorama/d;->c:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oppo/camera/panorama/d;->d:J

    iput-wide v2, p0, Lcom/oppo/camera/panorama/d;->e:J

    iput v1, p0, Lcom/oppo/camera/panorama/d;->f:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->g:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->h:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/panorama/d;->i:F

    iput v2, p0, Lcom/oppo/camera/panorama/d;->j:F

    iput v2, p0, Lcom/oppo/camera/panorama/d;->k:F

    const/16 v2, 0x22

    iput v2, p0, Lcom/oppo/camera/panorama/d;->l:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->m:I

    iput-object v0, p0, Lcom/oppo/camera/panorama/d;->n:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oppo/camera/panorama/d;->o:Landroid/hardware/Sensor;

    const/16 v2, 0x5a0

    iput v2, p0, Lcom/oppo/camera/panorama/d;->p:I

    const/16 v2, 0x438

    iput v2, p0, Lcom/oppo/camera/panorama/d;->q:I

    const/16 v2, 0x780

    iput v2, p0, Lcom/oppo/camera/panorama/d;->r:I

    const/16 v2, 0x1e0

    iput v2, p0, Lcom/oppo/camera/panorama/d;->s:I

    const/16 v3, 0x280

    iput v3, p0, Lcom/oppo/camera/panorama/d;->t:I

    iput v2, p0, Lcom/oppo/camera/panorama/d;->u:I

    iput v3, p0, Lcom/oppo/camera/panorama/d;->v:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->w:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->x:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->y:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->z:I

    iput v1, p0, Lcom/oppo/camera/panorama/d;->A:I

    iput-object v0, p0, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    return-void
.end method

.method private declared-synchronized a(FZ)I
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/panorama/d;->k:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/oppo/camera/panorama/d;->k:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/oppo/camera/panorama/d;->k:F

    :goto_0
    iget p1, p0, Lcom/oppo/camera/panorama/d;->k:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/d;FZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/panorama/d;->a(FZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/d;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->h:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/panorama/d;->d:J

    return-wide p1
.end method

.method private a(Landroid/graphics/Bitmap;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, v1}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/oppo/camera/panorama/d;->l:I

    invoke-direct {p0, v2}, Lcom/oppo/camera/panorama/d;->g(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    int-to-float p2, p3

    invoke-virtual {v1, p5, v3, p2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-virtual {v1, p1, p2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v1, p5, p2, p3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, p1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/d;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/panorama/d;->o:Landroid/hardware/Sensor;

    return-object p0
.end method

.method private declared-synchronized a(FFZ)V
    .locals 0

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput p1, p0, Lcom/oppo/camera/panorama/d;->i:F

    iput p1, p0, Lcom/oppo/camera/panorama/d;->j:F

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/oppo/camera/panorama/d;->i:F

    add-float/2addr p3, p1

    iput p3, p0, Lcom/oppo/camera/panorama/d;->i:F

    iget p1, p0, Lcom/oppo/camera/panorama/d;->j:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/panorama/d;->j:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/d;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/panorama/d;->a(FFZ)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/d;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->c:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/panorama/d;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/oppo/camera/panorama/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/d;->g:I

    return p0
.end method

.method static synthetic d(Lcom/oppo/camera/panorama/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/d;->f:I

    return p0
.end method

.method private d(I)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e(I)I
    .locals 2

    const/16 v0, 0x11

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x12

    if-ne p1, v1, :cond_1

    const/16 p1, 0x21

    return p1

    :cond_1
    return v0
.end method

.method static synthetic e(Lcom/oppo/camera/panorama/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/d;->c:I

    return p0
.end method

.method private f(I)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/d;->q:I

    iget v1, p0, Lcom/oppo/camera/panorama/d;->w:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/panorama/d;->y:I

    div-int/2addr p1, v0

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/panorama/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/d;->h:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/panorama/d;)F
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/panorama/d;->i()F

    move-result p0

    return p0
.end method

.method private g(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/d;->e(I)I

    move-result p1

    const/16 v0, 0x22

    if-eq v0, p1, :cond_1

    const/16 v0, 0x21

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic h(Lcom/oppo/camera/panorama/d;)F
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/panorama/d;->j()F

    move-result p0

    return p0
.end method

.method private declared-synchronized i()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/camera/panorama/d;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/oppo/camera/panorama/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/panorama/d;->m:I

    return p0
.end method

.method private declared-synchronized j()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/camera/panorama/d;->j:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a([BZ)Lcom/oppo/camera/panorama/d$a;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p2

    new-instance v7, Lcom/oppo/camera/panorama/d$a;

    invoke-direct {v7, v6}, Lcom/oppo/camera/panorama/d$a;-><init>(Lcom/oppo/camera/panorama/d;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/panorama/d;->g()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/panorama/d;->h()I

    move-result v2

    iget v3, v6, Lcom/oppo/camera/panorama/d;->l:I

    invoke-direct {v6, v3}, Lcom/oppo/camera/panorama/d;->g(I)Z

    move-result v3

    iget v4, v6, Lcom/oppo/camera/panorama/d;->q:I

    div-int/lit8 v4, v4, 0x2

    iget v5, v6, Lcom/oppo/camera/panorama/d;->l:I

    const/4 v8, 0x0

    const/16 v9, 0x22

    if-ne v5, v9, :cond_0

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    iget v5, v6, Lcom/oppo/camera/panorama/d;->A:I

    if-lez v5, :cond_1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    move v4, v8

    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v9, v6, Lcom/oppo/camera/panorama/d;->b:Lcom/oppo/camera/jni/FormatConverter;

    if-eqz v9, :cond_2

    iget-wide v10, v6, Lcom/oppo/camera/panorama/d;->e:J

    move-object/from16 v12, p1

    move v13, v4

    move-object v14, v5

    move v15, v1

    invoke-virtual/range {v9 .. v15}, Lcom/oppo/camera/jni/FormatConverter;->nv21ToBitmapProcess(J[BILandroid/graphics/Bitmap;I)I

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addKeyFrame, mPreviewH: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/oppo/camera/panorama/d;->v:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mPreviewW: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/oppo/camera/panorama/d;->u:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", yuv_offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mRgbFactor: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/oppo/camera/panorama/d;->z:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rgbW: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOffsetX: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/oppo/camera/panorama/d;->w:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOffsetY: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/oppo/camera/panorama/d;->x:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mKeyFrameCounter: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/oppo/camera/panorama/d;->A:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isCapturing: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentBitmap: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "FNPanoramaProcess"

    invoke-static {v9, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v6, Lcom/oppo/camera/panorama/d;->A:I

    add-int/2addr v4, v2

    iput v4, v6, Lcom/oppo/camera/panorama/d;->A:I

    iget-object v4, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    iput v8, v6, Lcom/oppo/camera/panorama/d;->A:I

    :cond_3
    iget v4, v6, Lcom/oppo/camera/panorama/d;->w:I

    invoke-virtual {v6, v4}, Lcom/oppo/camera/panorama/d;->c(I)I

    move-result v4

    if-lez v4, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-gez v4, :cond_6

    if-nez v3, :cond_6

    :cond_5
    neg-int v4, v4

    :cond_6
    move v8, v4

    iget v3, v6, Lcom/oppo/camera/panorama/d;->A:I

    if-eq v3, v2, :cond_9

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/panorama/d;->g()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int v2, v0, v1

    iget v0, v6, Lcom/oppo/camera/panorama/d;->x:I

    invoke-virtual {v6, v0}, Lcom/oppo/camera/panorama/d;->c(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/panorama/d;->g()I

    move-result v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int v4, v0, v1

    iget-object v1, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/panorama/d;->a(Landroid/graphics/Bitmap;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/oppo/camera/panorama/d$a;->a(I)V

    iget v0, v6, Lcom/oppo/camera/panorama/d;->x:I

    invoke-virtual {v6, v0}, Lcom/oppo/camera/panorama/d;->c(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/oppo/camera/panorama/d$a;->b(I)V

    iget-object v0, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0}, Lcom/oppo/camera/panorama/d$a;->a(Landroid/graphics/Bitmap;)V

    :cond_8
    return-object v7

    :cond_9
    :goto_2
    iput-object v5, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    iget v0, v6, Lcom/oppo/camera/panorama/d;->A:I

    if-ne v0, v2, :cond_a

    invoke-virtual {v7, v8}, Lcom/oppo/camera/panorama/d$a;->a(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v7, v1}, Lcom/oppo/camera/panorama/d$a;->a(I)V

    :goto_3
    iget v0, v6, Lcom/oppo/camera/panorama/d;->x:I

    invoke-virtual {v6, v0}, Lcom/oppo/camera/panorama/d;->c(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/oppo/camera/panorama/d$a;->b(I)V

    iget-object v0, v6, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0}, Lcom/oppo/camera/panorama/d$a;->a(Landroid/graphics/Bitmap;)V

    return-object v7
.end method

.method public a(I)V
    .locals 4

    iget-wide v0, p0, Lcom/oppo/camera/panorama/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/d;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oppo/camera/panorama/d$c;->sendEmptyMessage(I)Z

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oppo/camera/panorama/d$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->u:I

    iput p2, p0, Lcom/oppo/camera/panorama/d;->v:I

    iput p1, p0, Lcom/oppo/camera/panorama/d;->q:I

    iput p2, p0, Lcom/oppo/camera/panorama/d;->r:I

    return-void
.end method

.method public a(Landroid/app/Activity;IILcom/oppo/camera/panorama/d$b;)V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com/fotonation/panorama"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/oppo/camera/panorama/d$c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, p4}, Lcom/oppo/camera/panorama/d$c;-><init>(Lcom/oppo/camera/panorama/d;Landroid/os/Looper;Lcom/oppo/camera/panorama/d$b;)V

    iput-object v1, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    iput p2, p0, Lcom/oppo/camera/panorama/d;->f:I

    iput p3, p0, Lcom/oppo/camera/panorama/d;->g:I

    const/16 p2, 0x11

    iput p2, p0, Lcom/oppo/camera/panorama/d;->m:I

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/oppo/camera/panorama/d;->n:Landroid/hardware/SensorManager;

    iget-object p1, p0, Lcom/oppo/camera/panorama/d;->n:Landroid/hardware/SensorManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/d;->o:Landroid/hardware/Sensor;

    iget-object p1, p0, Lcom/oppo/camera/panorama/d;->o:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/panorama/d;->n:Landroid/hardware/SensorManager;

    iget-object p3, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/panorama/d$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Z[B)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/oppo/camera/panorama/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/panorama/d;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/oppo/camera/panorama/d;->c:I

    iget-object p1, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    invoke-virtual {p1, v1, p2}, Lcom/oppo/camera/panorama/d$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/panorama/d;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/panorama/d;->A:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->l:I

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->s:I

    iput p2, p0, Lcom/oppo/camera/panorama/d;->t:I

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/d;->q:I

    iget v1, p0, Lcom/oppo/camera/panorama/d;->r:I

    mul-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/oppo/camera/panorama/d;->u:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/oppo/camera/panorama/d;->y:I

    iget v1, p0, Lcom/oppo/camera/panorama/d;->y:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/panorama/d;->z:I

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/d;->f()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/panorama/d;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/panorama/d;->p:I

    iget v0, p0, Lcom/oppo/camera/panorama/d;->p:I

    iget v1, p0, Lcom/oppo/camera/panorama/d;->y:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/oppo/camera/panorama/d;->p:I

    :cond_1
    iget v0, p0, Lcom/oppo/camera/panorama/d;->z:I

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/panorama/d;->z:I

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->A:I

    :cond_3
    return-void
.end method

.method public c(I)I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/panorama/d;->z:I

    div-int/2addr p1, v0

    return p1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/panorama/d;->n:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/d;->a:Lcom/oppo/camera/panorama/d$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/d$c;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/d;->b:Lcom/oppo/camera/jni/FormatConverter;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/oppo/camera/panorama/d;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/jni/FormatConverter;->nv21ToBitmapUnInit(J)I

    :cond_2
    return-void
.end method

.method public c(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d;->w:I

    iput p2, p0, Lcom/oppo/camera/panorama/d;->x:I

    return-void
.end method

.method public d()V
    .locals 15

    iget-object v0, p0, Lcom/oppo/camera/panorama/d;->b:Lcom/oppo/camera/jni/FormatConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/jni/FormatConverter;

    invoke-direct {v0}, Lcom/oppo/camera/jni/FormatConverter;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/panorama/d;->b:Lcom/oppo/camera/jni/FormatConverter;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/d;->b:Lcom/oppo/camera/jni/FormatConverter;

    iget v6, p0, Lcom/oppo/camera/panorama/d;->v:I

    iget v5, p0, Lcom/oppo/camera/panorama/d;->u:I

    iget v0, p0, Lcom/oppo/camera/panorama/d;->q:I

    iget v2, p0, Lcom/oppo/camera/panorama/d;->z:I

    div-int v7, v0, v2

    iget v0, p0, Lcom/oppo/camera/panorama/d;->r:I

    div-int v8, v0, v2

    int-to-float v9, v2

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v2, v6

    move v3, v5

    move v4, v6

    invoke-virtual/range {v1 .. v14}, Lcom/oppo/camera/jni/FormatConverter;->nv21ToBitmapInit(IIIIIIIFIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/panorama/d;->e:J

    return-void
.end method

.method public e()Z
    .locals 3

    const/16 v0, 0xf0

    invoke-direct {p0, v0}, Lcom/oppo/camera/panorama/d;->f(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/camera/panorama/d;->p:I

    mul-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/oppo/camera/panorama/d;->y:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/d;->h()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/panorama/d;->t:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/oppo/camera/panorama/d;->s:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public g()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/d;->q:I

    iget v1, p0, Lcom/oppo/camera/panorama/d;->z:I

    div-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/panorama/d;->r:I

    iget v1, p0, Lcom/oppo/camera/panorama/d;->z:I

    div-int/2addr v0, v1

    return v0
.end method
