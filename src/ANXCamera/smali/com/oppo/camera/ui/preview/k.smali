.class public Lcom/oppo/camera/ui/preview/k;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/k$a;
    }
.end annotation


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static c:F


# instance fields
.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/oppo/camera/ui/preview/k$a;

.field private i:F

.field private j:Landroid/content/Context;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Lcom/oppo/camera/ui/preview/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oppo/camera/ui/preview/k;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/camera/ui/preview/k;->b:[F

    const/high16 v0, 0x44160000    # 600.0f

    sput v0, Lcom/oppo/camera/ui/preview/k;->c:F

    return-void

    :array_0
    .array-data 4
        0x428c0000    # 70.0f
        0x42dc0000    # 110.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/preview/k;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->e:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->f:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->g:I

    new-instance v0, Lcom/oppo/camera/ui/preview/k$a;

    const v3, 0x3e8a3d71    # 0.27f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/ui/preview/k$a;-><init>(Lcom/oppo/camera/ui/preview/k;FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/k;->h:Lcom/oppo/camera/ui/preview/k$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->i:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/k;->j:Landroid/content/Context;

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->k:F

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->l:F

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->n:F

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/k;)Lcom/oppo/camera/ui/preview/e$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/k;->o:Lcom/oppo/camera/ui/preview/e$b;

    return-object p0
.end method

.method private a(Lcom/oppo/camera/gl/h;FF)V
    .locals 2

    mul-float v0, p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v0

    const v0, 0x3f333333    # 0.7f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    invoke-interface {p1, v1}, Lcom/oppo/camera/gl/h;->a(F)V

    iput v1, p0, Lcom/oppo/camera/ui/preview/k;->n:F

    :cond_0
    sget-object p2, Lcom/oppo/camera/ui/preview/k;->a:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    aget p2, p2, v1

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_1

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p3, p0, Lcom/oppo/camera/ui/preview/k;->l:F

    mul-float/2addr p2, p3

    sget-object p3, Lcom/oppo/camera/ui/preview/k;->b:[F

    aget p3, p3, v0

    add-float/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/oppo/camera/gl/h;->a(F)V

    iput p2, p0, Lcom/oppo/camera/ui/preview/k;->n:F

    :cond_1
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/preview/k;->n:F

    return v0
.end method

.method public a(I)V
    .locals 0

    int-to-float p1, p1

    sput p1, Lcom/oppo/camera/ui/preview/k;->c:F

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/k;->e:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/k;->f:I

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/ui/preview/e$b;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/ui/preview/k;->d:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->i:F

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/k;->j:Landroid/content/Context;

    sget-object p1, Lcom/oppo/camera/ui/preview/k;->a:[F

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    aget p1, p1, v2

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    iput v1, p0, Lcom/oppo/camera/ui/preview/k;->k:F

    sget-object p1, Lcom/oppo/camera/ui/preview/k;->b:[F

    aget v0, p1, v0

    aget p1, p1, v2

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/oppo/camera/ui/preview/k;->k:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/ui/preview/k;->l:F

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/k;->o:Lcom/oppo/camera/ui/preview/e$b;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v1, p5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/oppo/camera/ui/preview/k;->d:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Lcom/oppo/camera/ui/preview/k;->c:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/k;->h:Lcom/oppo/camera/ui/preview/k$a;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/preview/k$a;->getInterpolation(F)F

    move-result v2

    iget v3, v0, Lcom/oppo/camera/ui/preview/k;->m:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/k;->j:Landroid/content/Context;

    if-eqz v3, :cond_1

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/oppo/camera/ui/preview/k$1;

    invoke-direct {v4, v0}, Lcom/oppo/camera/ui/preview/k$1;-><init>(Lcom/oppo/camera/ui/preview/k;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iput v2, v0, Lcom/oppo/camera/ui/preview/k;->m:F

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v3, v2

    invoke-direct {v0, v9, v2, v3}, Lcom/oppo/camera/ui/preview/k;->a(Lcom/oppo/camera/gl/h;FF)V

    move/from16 v3, p2

    int-to-float v3, v3

    move/from16 v4, p4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float v10, v3, v6

    move/from16 v3, p3

    int-to-float v3, v3

    int-to-float v6, v1

    div-float v7, v6, v5

    add-float/2addr v3, v7

    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v8, v2, v7

    const/high16 v11, 0x3f800000    # 1.0f

    if-gez v8, :cond_2

    div-float/2addr v2, v7

    mul-float/2addr v2, v7

    sub-float/2addr v11, v2

    mul-float/2addr v4, v11

    mul-float/2addr v11, v6

    div-float v1, v4, v5

    sub-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float v1, v11, v5

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move v3, v6

    move v4, v5

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/c;->a(Lcom/oppo/camera/gl/h;IIII)V

    goto/16 :goto_0

    :cond_2
    sub-float v8, v2, v7

    const v12, 0x3f4ccccd    # 0.8f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_4

    const v2, 0x3f666666    # 0.9f

    mul-float v11, v4, v2

    mul-float v12, v6, v2

    div-float v2, v11, v5

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    div-float v2, v12, v5

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v3, v8, v2

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v15, 0x0

    if-gez v3, :cond_3

    div-float/2addr v8, v2

    invoke-interface {v9, v10, v15}, Lcom/oppo/camera/gl/h;->a(FF)V

    mul-float v2, v8, v4

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    iget v1, v0, Lcom/oppo/camera/ui/preview/k;->i:F

    mul-float v16, v6, v1

    move-object/from16 v1, p1

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-interface/range {v1 .. v8}, Lcom/oppo/camera/gl/h;->a(FFFFFFF)V

    neg-float v1, v10

    invoke-interface {v9, v1, v15}, Lcom/oppo/camera/gl/h;->a(FF)V

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/c;->a(Lcom/oppo/camera/gl/h;IIII)V

    goto :goto_0

    :cond_3
    sub-float/2addr v8, v2

    div-float/2addr v8, v2

    invoke-interface {v9, v10, v15}, Lcom/oppo/camera/gl/h;->a(FF)V

    const/high16 v2, 0x43870000    # 270.0f

    mul-float/2addr v8, v4

    add-float/2addr v2, v8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    iget v1, v0, Lcom/oppo/camera/ui/preview/k;->i:F

    mul-float v16, v6, v1

    move-object/from16 v1, p1

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-interface/range {v1 .. v8}, Lcom/oppo/camera/gl/h;->a(FFFFFFF)V

    neg-float v1, v10

    invoke-interface {v9, v1, v15}, Lcom/oppo/camera/gl/h;->a(FF)V

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/c;->a(Lcom/oppo/camera/gl/h;IIII)V

    goto :goto_0

    :cond_4
    sub-float v1, v11, v2

    div-float/2addr v1, v7

    mul-float/2addr v1, v7

    sub-float/2addr v11, v1

    mul-float/2addr v4, v11

    mul-float/2addr v11, v6

    div-float v1, v4, v5

    sub-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float v1, v11, v5

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move v3, v6

    move v4, v5

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/c;->a(Lcom/oppo/camera/gl/h;IIII)V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/k;->g:I

    return-void
.end method

.method public b(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z
    .locals 8

    int-to-float p2, p2

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    add-float/2addr p2, v1

    int-to-float p3, p3

    int-to-float p5, p5

    div-float/2addr p5, v0

    add-float/2addr p3, p5

    iget p5, p0, Lcom/oppo/camera/ui/preview/k;->g:I

    if-eqz p5, :cond_0

    int-to-float p5, p5

    div-float/2addr p4, p5

    goto :goto_0

    :cond_0
    const-string p4, "SwitchAnimManager"

    const-string p5, "mPreviewFrameLayoutWidth is 0."

    invoke-static {p4, p5}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p4, 0x3f800000    # 1.0f

    :goto_0
    iget p5, p0, Lcom/oppo/camera/ui/preview/k;->e:I

    int-to-float p5, p5

    mul-float/2addr p5, p4

    iget v1, p0, Lcom/oppo/camera/ui/preview/k;->f:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    div-float p4, p5, v0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    div-float p2, v1, v0

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->b()F

    move-result p2

    const p3, 0x3f4ccccd    # 0.8f

    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(F)V

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/gl/c;->a(Lcom/oppo/camera/gl/h;IIII)V

    invoke-interface {p1, p2}, Lcom/oppo/camera/gl/h;->a(F)V

    const/4 p1, 0x1

    return p1
.end method
