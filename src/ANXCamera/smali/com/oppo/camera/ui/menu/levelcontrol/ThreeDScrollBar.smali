.class public Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;
.super Landroid/view/TextureView;
.source "ThreeDScrollBar.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

.field private d:Lcom/oppo/camera/gl/l;

.field private e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

.field private f:Landroid/view/VelocityTracker;

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

.field private p:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

.field private q:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v0, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a:Landroid/view/animation/Interpolator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {p2, v1, v0, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b:Landroid/view/animation/Interpolator;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/os/Handler;

    const/4 p2, 0x1

    iput p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j:F

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k:F

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l:F

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->m:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$1;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->o:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$2;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->p:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$3;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->q:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setOpaque(Z)V

    invoke-virtual {p0, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/os/Handler;

    new-instance p2, Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-direct {p2, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    new-instance p2, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$4;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$4;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)V

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/ui/menu/levelcontrol/f$a;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)Lcom/oppo/camera/gl/l;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    return-object p0
.end method

.method private a(F)V
    .locals 6

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    invoke-interface {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->d()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v2

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v3

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f(F)F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v4, v3, v1

    const v5, 0x3ecccccd    # 0.4f

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v2

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f(F)F

    move-result p1

    mul-float/2addr p1, v5

    add-float v3, v2, p1

    add-float p1, v1, v0

    cmpl-float v0, v3, p1

    if-lez v0, :cond_1

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    cmpg-float v1, v3, v2

    if-gtz v1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f(F)F

    move-result p1

    mul-float/2addr p1, v5

    add-float v3, v1, p1

    sub-float p1, v2, v0

    cmpg-float v0, v3, p1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    invoke-direct {p0, v3, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FZ)V

    return-void
.end method

.method private a(FZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToYAngle, angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDScrollBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(FFILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l;->d()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l:F

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(I)V

    return-void
.end method

.method private a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z
    .locals 7

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v0

    sub-float v3, p1, v0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setScrolling(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v2

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(FFILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/gl/l;->b(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance p3, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$7;

    invoke-direct {p3, p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$7;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)Lcom/oppo/camera/ui/menu/levelcontrol/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    return-object p0
.end method

.method private b(F)V
    .locals 9

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v0

    const-string v1, "ThreeDScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByFling, texture not init, so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    return-void

    :cond_0
    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p1

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f(F)F

    move-result v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v2

    const v3, 0x46ea6000    # 30000.0f

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    invoke-interface {v3}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->d()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v3

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v4

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v5

    add-float/2addr v5, v0

    const/16 v0, 0x1a

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_6

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_1

    goto/16 :goto_0

    :cond_1
    cmpl-float v6, v5, v3

    if-lez v6, :cond_3

    add-float v0, v3, v2

    cmpl-float v6, v5, v0

    if-lez v6, :cond_2

    move v5, v0

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-direct {p0, v5}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->q:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    goto :goto_1

    :cond_3
    cmpg-float v6, v5, v4

    if-gtz v6, :cond_5

    sub-float v0, v4, v2

    cmpg-float v6, v5, v0

    if-gez v6, :cond_4

    move v5, v0

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-direct {p0, v5}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->q:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    invoke-direct {p0, v5}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a:Landroid/view/animation/Interpolator;

    iget-object v8, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->p:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, v6, v0, v7, v8}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    goto :goto_1

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrollToByFling, toYAngle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", positiveLimit: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", negativeLimit: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", animFrame: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", velocityX: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", outLimitDiff: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemChanged, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasTexturesInited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDScrollBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->a(I)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v0

    const-string v1, "ThreeDScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByClick, texture not init, so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    return-void

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f(F)F

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v5

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v3

    add-float/2addr v3, p1

    cmpl-float p1, v3, v0

    if-gtz p1, :cond_3

    cmpg-float p1, v3, v2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToByClick, toYAngle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result p1

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->o:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    return-void
.end method

.method private c(I)F
    .locals 1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g()F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method

.method private c(F)I
    .locals 4

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ThreeDScrollBar"

    const-string v0, "convertAngleToIndex, texture not init, so return"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ltz v3, :cond_4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v0

    if-ge v3, v0, :cond_3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :cond_4
    :goto_1
    return v1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    return-object p0
.end method

.method private getCurrYAngle()F
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getModelNum()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v1

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollNear, angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreeDScrollBar"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->p:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "ThreeDScrollBar"

    const-string v1, "cancelYAngleAnim"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setScrolling(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/gl/l;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a()V

    :cond_2
    return-void
.end method

.method private j()Z
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l;->d()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i()V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FZ)V

    return-void
.end method

.method public a(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewSizeChanged, Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDScrollBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p2, p1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a([F)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$5;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;II)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/l;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/l;->d()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTextures, mGLProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDScrollBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/l;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l;->g()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/gl/l;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/l;->f()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setScrolling(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->m:Z

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v0

    const-string v1, "ThreeDScrollBar"

    if-nez v0, :cond_0

    const-string v0, "slideToNextItem, texture not init, so return"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slideToNextItem, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i()V

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->p:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()Z

    move-result v0

    const-string v1, "ThreeDScrollBar"

    if-nez v0, :cond_0

    const-string v0, "slideToPreviousItem, texture not init, so return"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    invoke-interface {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->d()I

    move-result v2

    if-gt v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slideToPreviousItem, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i()V

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->p:Lcom/oppo/camera/ui/menu/levelcontrol/f$b;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oppo/camera/ui/menu/levelcontrol/f$b;)Z

    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(I)F

    move-result v0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceScrollNearWithNoAnim, angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrYAngle()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreeDScrollBar"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FZ)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 8

    const-string v0, "ThreeDScrollBar"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/gl/l;

    invoke-direct {v0, p1}, Lcom/oppo/camera/gl/l;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    iget p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/l;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/l;->a(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/gl/l;->a(IIIIII)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/l;->a(Lcom/oppo/camera/gl/l$m;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/l;->b(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oppo/camera/gl/l;->a(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {p1, v1, v0, p2, p3}, Lcom/oppo/camera/gl/l;->a(Landroid/view/SurfaceHolder;III)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(I)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "ThreeDScrollBar"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/l;->b(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/l;->e()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string p1, "ThreeDScrollBar"

    const-string v0, "onSurfaceTextureSizeChanged"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/oppo/camera/gl/l;->a(Landroid/view/SurfaceHolder;III)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oppo/camera/gl/l;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/l;->d()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->n:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ThreeDScrollBar"

    const-string v1, "onTouchEvent, click scrolling, reset touch x"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    invoke-interface {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Landroid/view/MotionEvent;)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_9

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    const/4 v0, 0x6

    if-eq v1, v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i()V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Landroid/view/MotionEvent;)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    :cond_7
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l:F

    sub-float v1, v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l:F

    goto :goto_0

    :cond_a
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j:F

    sub-float v1, v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j:F

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(F)V

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_e

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(F)V

    goto :goto_1

    :cond_e
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h()V

    goto :goto_1

    :cond_f
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->i()V

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k:F

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:Landroid/view/VelocityTracker;

    :goto_1
    return v2
.end method

.method public setCameraEntryType(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->h:I

    return-void
.end method

.method public setScrolling(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScrolling, isScrolling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDScrollBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->m:Z

    return-void
.end method

.method public setThreeDScrollBarTextureViewCallback(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;

    return-void
.end method
