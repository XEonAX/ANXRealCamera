.class public Lcom/oppo/camera/ui/preview/h;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;
.implements Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/h$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/oppo/camera/ui/preview/c;

.field private D:Lcom/oppo/camera/i;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private a:Z

.field private b:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Activity;

.field private k:Lcom/oppo/camera/ui/preview/FaceView;

.field private l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

.field private m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

.field private n:Z

.field private o:Lcom/oppo/camera/ui/RotateImageView;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->h:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/oppo/camera/ui/preview/h;->s:I

    iget v3, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    iput v3, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->A:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->B:I

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    const/4 v1, 0x4

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    const-string v1, "normal"

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->O:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->P:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->R:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    new-instance p1, Lcom/oppo/camera/ui/preview/h$a;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/ui/preview/h$a;-><init>(Lcom/oppo/camera/ui/preview/h;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    iput-object p3, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    return-void
.end method

.method private F()V
    .locals 13

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    const-wide/16 v0, 0x3e8

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-direct {p0, v0, v6, v1}, Lcom/oppo/camera/ui/preview/h;->a(IZZ)V

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v2, v6, v6}, Lcom/oppo/camera/ui/preview/c;->b(ZZ)V

    :cond_0
    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-direct {p0, v2, v6, v7}, Lcom/oppo/camera/ui/preview/h;->a(IZZ)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v2, v6, v6}, Lcom/oppo/camera/ui/preview/c;->b(ZZ)V

    :cond_1
    iget v8, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    iget v9, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    const/4 v12, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/oppo/camera/ui/preview/h;->a(IIZZZ)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v6, v0, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/h;->a(IIZZZ)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v6, v0, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/h;->g(Z)V

    :cond_4
    :goto_0
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private G()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCapture, mAfFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v0, Lcom/oppo/camera/v;->s:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->e()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/preview/c;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    return-void
.end method

.method private H()V
    .locals 4

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->O:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->P:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->A:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/camera/ui/preview/h;->a(IIIZ)V

    return-void
.end method

.method private I()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setBarVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getValue()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->resetProgress()V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/h;->a(F)V

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    return-object p0
.end method

.method private a(F)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->q()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/c;->r()I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    float-to-int p1, v2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/c;->a(I)V

    :cond_1
    return-void
.end method

.method private a(IIIZ)V
    .locals 3

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getAlpha()F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v0, 0x12c

    invoke-virtual {p4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Lcom/oppo/camera/ui/preview/h$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/h$2;-><init>(Lcom/oppo/camera/ui/preview/h;III)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/h;->a(III)V

    return-void
.end method

.method private a(IIZZZ)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFocusSuccess, mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->g()Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {p1, p3, p5}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a(ZZ)V

    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->R:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a(IZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusFail, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusManager"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->g()Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method private a([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v1, p1, p2}, Lcom/oppo/camera/ui/preview/c;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->s()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->I()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Z)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "onFocusStart"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->x()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a()V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/ui/preview/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->G()V

    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/ui/preview/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->F()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v1, "func_reset_auto_focus"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public B()V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v1, "func_reset_auto_focus"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FocusManager"

    const-string v2, "isFocusIndicatorAshed() is null"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getAlpha()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    :cond_1
    return-void
.end method

.method public a(III)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_4

    const/16 p1, 0x10e

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p3

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    sub-int/2addr p1, v2

    if-lt p2, p1, :cond_1

    neg-int p1, p3

    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    neg-int p1, p3

    iget p2, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    if-gt p2, v2, :cond_3

    neg-int p1, p3

    iget p2, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    neg-int p1, p3

    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_4
    add-int/2addr p1, p3

    iget p2, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    sub-int/2addr p2, v2

    if-lt p1, p2, :cond_5

    neg-int p1, p3

    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method public a(IIZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/oppo/camera/ui/preview/h;->g:Z

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/oppo/camera/ui/preview/h;->x:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1, v2}, Lcom/oppo/camera/ui/preview/c;->a(II)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->I()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp, fromUserTouch: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "FocusManager"

    invoke-static {v6, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/oppo/camera/ui/preview/h;->i:Z

    iget v4, v0, Lcom/oppo/camera/ui/preview/h;->A:I

    iget v7, v0, Lcom/oppo/camera/ui/preview/h;->B:I

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->k()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v8

    invoke-static {v8}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v10, "key_fixed_focus_lens_support_tap_shutter"

    invoke-interface {v8, v10}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->f()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v1, v9}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->G()V

    return-void

    :cond_4
    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->j()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v1, "onSingleTapUp(), front camera not support touch ae"

    invoke-static {v6, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v6, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->r()I

    move-result v6

    if-ne v9, v6, :cond_7

    iget-object v6, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/oppo/camera/ui/preview/c;->m()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->q()V

    iput-boolean v3, v0, Lcom/oppo/camera/ui/preview/h;->i:Z

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v3, v9}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v3, v6, v9}, Lcom/oppo/camera/ui/preview/c;->a(ZZ)V

    :cond_8
    iget v3, v0, Lcom/oppo/camera/ui/preview/h;->y:I

    iget v8, v0, Lcom/oppo/camera/ui/preview/h;->z:I

    iget-object v10, v0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v10}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v11, v4, 0x2

    sub-int v11, v1, v11

    sub-int/2addr v3, v4

    invoke-static {v11, v6, v3}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v3

    div-int/lit8 v11, v7, 0x2

    sub-int v11, v2, v11

    sub-int/2addr v8, v7

    invoke-static {v11, v6, v8}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v7

    invoke-virtual {v10, v3, v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v8

    const/16 v10, 0xd

    aput v6, v8, v10

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->requestLayout()V

    iput v3, v0, Lcom/oppo/camera/ui/preview/h;->O:I

    iput v7, v0, Lcom/oppo/camera/ui/preview/h;->P:I

    invoke-direct {v0, v3, v7, v4, v6}, Lcom/oppo/camera/ui/preview/h;->a(IIIZ)V

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->b()V

    :cond_9
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-wide/16 v7, 0xfa0

    const/4 v4, 0x6

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->k()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v3, v0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a()V

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->show()V

    :cond_b
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->s()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Lcom/oppo/camera/a;->d()I

    move-result v19

    int-to-float v1, v1

    int-to-float v2, v2

    iget v12, v0, Lcom/oppo/camera/ui/preview/h;->y:I

    iget v13, v0, Lcom/oppo/camera/ui/preview/h;->z:I

    iget v14, v0, Lcom/oppo/camera/ui/preview/h;->A:I

    iget-boolean v15, v0, Lcom/oppo/camera/ui/preview/h;->h:Z

    iget v11, v0, Lcom/oppo/camera/ui/preview/h;->w:I

    const/16 v17, 0x0

    move v10, v1

    move/from16 v16, v11

    move v11, v2

    move-object/from16 v18, v3

    invoke-static/range {v10 .. v19}, Lcom/oppo/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v15

    iget-object v10, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v10}, Lcom/oppo/camera/ui/preview/c;->k()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Lcom/oppo/camera/a;->c()I

    move-result v19

    iget v12, v0, Lcom/oppo/camera/ui/preview/h;->y:I

    iget v13, v0, Lcom/oppo/camera/ui/preview/h;->z:I

    iget v14, v0, Lcom/oppo/camera/ui/preview/h;->A:I

    iget-boolean v4, v0, Lcom/oppo/camera/ui/preview/h;->h:Z

    iget v5, v0, Lcom/oppo/camera/ui/preview/h;->w:I

    const/16 v17, 0x0

    move v10, v1

    move v11, v2

    move-object v1, v15

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v18, v3

    invoke-static/range {v10 .. v19}, Lcom/oppo/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/oppo/camera/ui/preview/h;->a([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->k()V

    goto :goto_0

    :cond_c
    move-object v1, v15

    iget-object v2, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/oppo/camera/ui/preview/c;->a([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    iput-boolean v6, v0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->s()V

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v2, "key_fixed_focus_lens_support_metering"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    :goto_0
    return-void
.end method

.method public a(II[II)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    if-eqz p3, :cond_2

    aget p3, p3, v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFocusState, state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isPdaf: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/4 p1, 0x3

    if-eq p4, p1, :cond_4

    const/4 p1, 0x4

    if-eq p4, p1, :cond_4

    const/4 p1, 0x5

    if-ne p4, p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateFocusState, return, cameraState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v1, 0x7f0f015c

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/RotateImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0800f4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "initialized"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/h;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x7

    if-le v0, v3, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v6, 0xb4

    if-eq v0, v3, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    if-eqz v4, :cond_9

    if-ne v4, v6, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x5a

    if-ne v4, v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    neg-float v0, v1

    :goto_0
    move v1, v3

    goto :goto_2

    :cond_9
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v2

    :goto_2
    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v1, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v5, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    if-ne v1, v5, :cond_e

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_c
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v1, v5

    iget-object v5, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v5, :cond_d

    invoke-virtual {v5, v2}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setAlpha(F)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setBarVisibility(Z)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setMoveProgress(F)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    move v2, v3

    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_16

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    if-ne p1, v0, :cond_16

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    if-ne p1, v4, :cond_16

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->s:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz p1, :cond_12

    if-ne p1, v6, :cond_11

    goto :goto_3

    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_16

    goto :goto_4

    :cond_12
    :goto_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x437a0000    # 250.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_16

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_16

    :goto_4
    move v2, v3

    goto :goto_5

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz p1, :cond_14

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    if-eq p1, v0, :cond_15

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->s:I

    if-ne p1, v0, :cond_16

    :cond_15
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    :cond_16
    :goto_5
    return v2
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/FaceView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->A:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->B:I

    const v1, 0x7f060230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setOrientation(IZ)V

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->h:Z

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0f015c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->w:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->v()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->o()V

    return-void
.end method

.method public d(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusState(), mFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    return-void
.end method

.method public d(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sceenCenterTouchFocus(), delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/camera/ui/preview/h;->a(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/oppo/camera/ui/preview/h$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/preview/h$5;-><init>(Lcom/oppo/camera/ui/preview/h;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->b:Z

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0800f8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    const v2, 0x7f0b0068

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const v1, 0x7f0800f4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setOnFocusIndicatorDisappearListener(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setRotation(F)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0800d9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setOnSeekBarChangeListener(Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/oppo/camera/ui/preview/h$6;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/preview/h$6;-><init>(Lcom/oppo/camera/ui/preview/h;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->R:Z

    return-void
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->G()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/h$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/h$1;-><init>(Lcom/oppo/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    const v3, 0x7f0f018a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_tap_shutter_key"

    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->k()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 4

    const-string v0, "FocusManager"

    const-string v1, "delayCapture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDelayCapture, mAfFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->E()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFocusStateBeforeCapture, mFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->t()V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->s()V

    return-void
.end method

.method public onOrientationChange(I)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->H()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onProgressChange(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/h;->a(F)V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "resetAutoFocusMode()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->l()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->q()V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "resetCameraFocusState()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->t()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->d()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->p()I

    move-result v0

    return v0
.end method

.method public s()V
    .locals 11

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    :goto_1
    iget-boolean v3, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    xor-int/2addr v3, v2

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v5, 0x7

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_4

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/g;->a(Z)V

    goto :goto_2

    :cond_4
    if-ne v4, v7, :cond_5

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/g;->b(Z)V

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    if-eq v7, v4, :cond_6

    if-ne v8, v4, :cond_7

    :cond_6
    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/g;->a(Z)V

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v3, 0x6

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v9, 0xfa0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-eq v0, v8, :cond_a

    if-ne v0, v7, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v6}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-eq v0, v8, :cond_d

    if-eq v0, v7, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    :cond_e
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    instance-of v2, v0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public t()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/h$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/h$3;-><init>(Lcom/oppo/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->b:Z

    return v0
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/h$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/h$4;-><init>(Lcom/oppo/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public y()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0f018a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_tap_shutter_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v1, :cond_1

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
