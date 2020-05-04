.class public Lcom/oppo/camera/ui/preview/d;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/preview/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/oppo/camera/ui/preview/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/d$c;,
        Lcom/oppo/camera/ui/preview/d$a;,
        Lcom/oppo/camera/ui/preview/d$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/oppo/camera/ui/preview/d$b;

.field private C:Landroid/widget/ImageView;

.field private D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

.field private E:Landroid/widget/RelativeLayout$LayoutParams;

.field private F:Lcom/oppo/camera/ui/RotateImageView;

.field private G:Lcom/oppo/camera/ui/preview/j;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Lcom/oppo/camera/gl/GLImageView;

.field private K:Landroid/graphics/Bitmap;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Landroid/util/Size;

.field private O:Landroid/graphics/SurfaceTexture;

.field private P:Landroid/view/Surface;

.field private Q:Landroid/util/Size;

.field private R:Landroid/util/Size;

.field private S:Lcom/oppo/camera/ui/preview/d$a;

.field private T:Lcom/oppo/camera/ui/preview/e$b;

.field private U:Lcom/oppo/camera/gl/GLRootView;

.field private V:Lcom/oppo/camera/ui/RotableTextView;

.field private W:Lcom/oppo/camera/ui/i;

.field private X:Ljava/lang/Thread;

.field private Y:Z

.field private Z:Z

.field private volatile a:Z

.field private aa:Landroid/os/Handler;

.field private final ab:Lcom/oppo/camera/gl/GLView;

.field private ac:Landroid/view/animation/Animation$AnimationListener;

.field private ad:Landroid/view/animation/Animation$AnimationListener;

.field private final ae:Landroid/content/DialogInterface$OnClickListener;

.field private volatile b:I

.field private g:Ljava/lang/Object;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/app/Activity;

.field private t:Lcom/oppo/camera/i;

.field private u:Lcom/oppo/camera/ui/preview/e;

.field private v:Lcolor/support/v7/app/b;

.field private w:Lcolor/support/v7/app/b$a;

.field private x:Lcom/oppo/camera/ui/preview/FaceView;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/d$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->a:Z

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->b:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->h:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->i:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->k:Z

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->n:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->q:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->r:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->t:Lcom/oppo/camera/i;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    const/4 v2, 0x1

    iput v2, p0, Lcom/oppo/camera/ui/preview/d;->y:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->z:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->A:I

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->E:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->K:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    const-string v3, "off"

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/d;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->N:Landroid/util/Size;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->P:Landroid/view/Surface;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->Q:Landroid/util/Size;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->R:Landroid/util/Size;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->S:Lcom/oppo/camera/ui/preview/d$a;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->T:Lcom/oppo/camera/ui/preview/e$b;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->X:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->Y:Z

    const-string v0, "oppo.phonemanager.disable.clean"

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    new-instance v0, Lcom/oppo/camera/ui/preview/d$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$1;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/ui/preview/d$8;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$8;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->ab:Lcom/oppo/camera/gl/GLView;

    new-instance v0, Lcom/oppo/camera/ui/preview/d$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$9;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->ac:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/oppo/camera/ui/preview/d$10;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$10;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->ad:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/oppo/camera/ui/preview/d$11;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$11;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->ae:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/d;->t:Lcom/oppo/camera/i;

    iput-object p3, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraPreviewUI, mbCanUseCleanFunction: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraPreviewUI"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private N()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->ad:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->Y:Z

    return-void
.end method

.method private O()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private P()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private Q()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/ui/preview/d;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private R()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private S()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->i:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private T()V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "notifyPreviewImageAnimOnStart"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->S:Lcom/oppo/camera/ui/preview/d$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->Q:Landroid/util/Size;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/d$a;->a(Landroid/util/Size;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_1
    return-void
.end method

.method private U()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewImageAnimOnMiddle, mbCancleBlurAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->S:Lcom/oppo/camera/ui/preview/d$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->R:Landroid/util/Size;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->Q:Landroid/util/Size;

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/preview/d$a;->a(Landroid/util/Size;Landroid/util/Size;)V

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLImageView;->c()Z

    :cond_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/d;Lcom/oppo/camera/ui/i;)Lcom/oppo/camera/ui/i;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    return-object p1
.end method

.method private a(IIII)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/preview/d;->p:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    move v1, p4

    move p4, p3

    move p3, v1

    :cond_0
    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {p1, p3, p4}, Lcom/oppo/camera/ui/preview/e;->a(II)V

    :cond_2
    return-void
.end method

.method private a(IIZ)V
    .locals 6

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->S()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->N:Landroid/util/Size;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/e;->e()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/e;->f()I

    move-result v2

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float p1, p1

    mul-float/2addr v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    int-to-float p1, p2

    int-to-float p2, v2

    mul-float/2addr p2, v3

    div-float v2, p2, v4

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    :cond_2
    iget p1, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    :cond_3
    iget p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    if-nez p3, :cond_4

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    :cond_5
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->n:I

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    invoke-direct {p0, v3}, Lcom/oppo/camera/ui/preview/d;->h(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/d$b;->ae()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->N:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->N:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p1

    if-eqz p1, :cond_9

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    iput v3, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    goto :goto_1

    :cond_8
    iput v3, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    goto :goto_1

    :cond_a
    iget p1, p0, Lcom/oppo/camera/ui/preview/d;->y:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_b

    iget p1, p0, Lcom/oppo/camera/ui/preview/d;->n:I

    int-to-double v1, p1

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    :cond_b
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/d;->y:I

    if-eq p1, p2, :cond_c

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->I()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {}, Lcom/oppo/camera/o/d;->J()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    :cond_c
    :goto_1
    const-string p1, "CameraPreviewUI"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "layoutPreview, l: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", t: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oppo/camera/ui/preview/d;->m:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", w: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oppo/camera/ui/preview/d;->n:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", h: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oppo/camera/ui/preview/d;->o:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->T()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/d;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/d;->a(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/d;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/util/Size;)V

    return-void
.end method

.method private a(ZLcom/oppo/camera/ui/preview/a/i;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/preview/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p1}, Lcom/oppo/camera/ui/preview/e;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/preview/e$a;Z)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->T:Lcom/oppo/camera/ui/preview/e$b;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/ui/preview/e$b;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/ui/preview/a/i;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/GLRootView;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/d;->k:Z

    return p1
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->dismiss()V

    :cond_1
    new-instance v0, Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v2, 0x7f1000e5

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    new-instance v1, Lcom/oppo/camera/ui/preview/d$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/d$3;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->b(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/b$a;

    sget v0, Lcom/oppo/camera/v;->s:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->F()V

    :cond_3
    sget v0, Lcom/oppo/camera/v;->r:I

    if-eq v0, v5, :cond_4

    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v1, :cond_9

    :cond_4
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/oppo/camera/v;->r:I

    if-eq v0, v5, :cond_6

    sget v0, Lcom/oppo/camera/v;->r:I

    if-eq v0, v1, :cond_6

    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/content/DialogInterface$OnClickListener;)V

    :cond_7
    sget p1, Lcom/oppo/camera/v;->r:I

    if-eq p1, v4, :cond_8

    sget p1, Lcom/oppo/camera/v;->r:I

    if-ne p1, v3, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->E()V

    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    invoke-virtual {p1}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->show()V

    :cond_a
    return-void
.end method

.method private b(Landroid/util/Size;)V
    .locals 12

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "CameraPreviewUI"

    const-string v0, "layoutPreviewFrameToPreviewSize, mActivity is null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    const-string v4, "pref_video_eis"

    invoke-interface {v3, v4}, Lcom/oppo/camera/ui/preview/d$b;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/preview/e;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->ae()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    invoke-direct {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v8, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v0, v8, v6

    if-gez v0, :cond_9

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/oppo/camera/ui/preview/d;->p:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v0

    div-float/2addr v3, v5

    goto :goto_2

    :cond_6
    move v3, p1

    :goto_2
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result p1

    int-to-float p1, p1

    int-to-float v5, v1

    div-float/2addr p1, v5

    :cond_7
    cmpl-float p1, v3, p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_8
    move-object p1, v4

    :goto_3
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v3, p1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p1

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/d$b;->ae()Z

    move-result v3

    if-eqz v3, :cond_a

    if-ne p1, v1, :cond_e

    :cond_a
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float v3, p1

    int-to-float v5, v0

    div-float/2addr v3, v5

    int-to-double v5, v0

    int-to-double v7, p1

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    move v1, v2

    :goto_4
    if-eqz v1, :cond_d

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_e
    :goto_5
    move-object p1, v4

    :goto_6
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->E:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->E:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/oppo/camera/ui/preview/d$b;->e(II)V

    :cond_10
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->U()V

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, v1, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {p1, v3, v2, v1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/PreviewFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->O()I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->P()I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->Q()I

    move-result p0

    return p0
.end method

.method private h(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/d;->i:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic i(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->R()I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/d;->r:I

    return p0
.end method

.method static synthetic k(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/d;->q:I

    return p0
.end method

.method static synthetic l(Lcom/oppo/camera/ui/preview/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/d;->a:Z

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/d;->b:I

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/d$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/ui/preview/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/d;->Y:Z

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/ui/preview/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->N()V

    return-void
.end method

.method static synthetic q(Lcom/oppo/camera/ui/preview/d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/ui/preview/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    return p0
.end method

.method static synthetic s(Lcom/oppo/camera/ui/preview/d;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/RotableTextView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    return-object p0
.end method

.method static synthetic u(Lcom/oppo/camera/ui/preview/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/preview/d;->z:I

    return p0
.end method

.method static synthetic v(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/FaceView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    return-object p0
.end method

.method static synthetic w(Lcom/oppo/camera/ui/preview/d;)Lcolor/support/v7/app/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    return-object p0
.end method

.method static synthetic x(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/d;->t:Lcom/oppo/camera/i;

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/ui/preview/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/preview/d;->h:Z

    return p0
.end method


# virtual methods
.method public A()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->Y:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/oppo/camera/ui/preview/d$c;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/d$c;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->ac:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/d$15;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/d$15;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/preview/d;->z:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/d;->A:I

    return-void
.end method

.method public D()Lcom/oppo/camera/gl/GLRootView;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    return-object v0
.end method

.method public E()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    const v2, 0x7f020038

    const v3, 0x7f020039

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oppo/camera/v;->r:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    if-eqz v1, :cond_2

    const v1, 0x7f020036

    goto :goto_1

    :cond_2
    const v1, 0x7f020037

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    new-instance v2, Lcom/oppo/camera/ui/preview/d$4;

    invoke-direct {v2, p0, v5}, Lcom/oppo/camera/ui/preview/d$4;-><init>(Lcom/oppo/camera/ui/preview/d;Z)V

    invoke-virtual {v1, v0, v2}, Lcolor/support/v7/app/b$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    return-void
.end method

.method public F()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    new-instance v1, Lcom/oppo/camera/ui/preview/d$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/d$6;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    const v2, 0x7f0f0090

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    return-void
.end method

.method public G()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStorageHint(), storage_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oppo/camera/v;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Storage.sStorageOverrideState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oppo/camera/v;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/oppo/camera/v;->s:I

    if-eqz v0, :cond_a

    const v1, 0x7f0f017c

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const v6, 0x7f0f016f

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->ae:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_4
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v1, 0x7f0f017d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v1, 0x7f0f017b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    goto :goto_1

    :cond_7
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget v0, Lcom/oppo/camera/v;->r:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->L:Ljava/lang/String;

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->ae:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->cancel()V

    :cond_b
    :goto_2
    return-void
.end method

.method public H()V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "cancelBlurAnimation"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->R:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->Q:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->S:Lcom/oppo/camera/ui/preview/d$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    const-string v0, "CameraPreviewUI"

    const-string v1, "notifyPreviewImageAnimationOnMiddle cancel animation"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLRootView;->a()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->ag()V

    :cond_1
    return-void
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->ah()V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->ai()V

    :cond_1
    return-void
.end method

.method public M()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->h:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLRootView;->c()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setEISScale(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->h()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->q:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/d;->r:I

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    new-instance v0, Lcom/oppo/camera/ui/preview/d$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$2;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    new-instance v1, Lcolor/support/v7/app/b$a;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v3, 0x7f1000e5

    invoke-direct {v1, v2, v3}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0f0090

    invoke-virtual {v1, v2, v0}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b$a;->d()Lcolor/support/v7/app/b;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/d;->Z:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f0171

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0090

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    const v0, 0x7f0f0170

    new-instance v1, Lcom/oppo/camera/ui/preview/d$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/d$5;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f007c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->M:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/d;->a(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->m()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShowPreviewImageAnimation, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", moreTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/d;->R:Landroid/util/Size;

    iput-object p3, p0, Lcom/oppo/camera/ui/preview/d;->Q:Landroid/util/Size;

    iput-object p4, p0, Lcom/oppo/camera/ui/preview/d;->S:Lcom/oppo/camera/ui/preview/d$a;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v2, 0x7f08006b

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/gl/GLImageView;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/oppo/camera/gl/GLImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/GLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {v4, v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    new-instance v3, Lcom/oppo/camera/ui/preview/d$7;

    invoke-direct {v3, p0, p4}, Lcom/oppo/camera/ui/preview/d$7;-><init>(Lcom/oppo/camera/ui/preview/d;Lcom/oppo/camera/ui/preview/d$a;)V

    invoke-virtual {v0, v3}, Lcom/oppo/camera/gl/GLImageView;->setAnimationEndListener(Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;)V

    iget-object p4, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {p4, p2}, Lcom/oppo/camera/gl/GLImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-static {p2, p4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p4, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p4

    if-ne p2, p4, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    const-string p4, "pref_video_eis"

    invoke-interface {p2, p4}, Lcom/oppo/camera/ui/preview/d$b;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/d;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/oppo/camera/gl/GLImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/gl/GLImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/GLImageView;->c()Z

    move-result p2

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startShowPreviewImageAnimation, isStartAnimation: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-static {p4, p3}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oppo/camera/gl/GLImageView;->setChangeToSize(I)V

    :cond_4
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->K:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->onUserInteraction()V

    :cond_5
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/d;->j:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    int-to-long p2, p5

    invoke-virtual {p1, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setCropRegion(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreviewSize, previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutPreview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraPreviewUI"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/util/Size;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->X:Ljava/lang/Thread;

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/ui/preview/d$14;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/ui/preview/d$14;-><init>(Lcom/oppo/camera/ui/preview/d;Landroid/util/Size;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/util/Size;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->O()I

    move-result v3

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->P()I

    move-result v4

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->Q()I

    move-result v5

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/d;->R()I

    move-result v6

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/GLRootView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/gl/GLRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->ab:Lcom/oppo/camera/gl/GLView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->setContentPane(Lcom/oppo/camera/gl/GLView;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->ak()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(ZLcom/oppo/camera/ui/preview/a/i;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v0, 0x7f08006b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/FaceView;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v0, 0x7f0800f8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/oppo/camera/ui/preview/PreviewFrameLayout$OnSizeChangedListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->T:Lcom/oppo/camera/ui/preview/e$b;

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/preview/j;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/preview/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/j;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/j;->setVisibility(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    const-string v0, "pref_camera_assistant_line_key"

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/preview/d$b;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->M:Ljava/lang/String;

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/oppo/camera/ui/preview/j;->a(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->G:Lcom/oppo/camera/ui/preview/j;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/j;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->z()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setFaces([Landroid/hardware/camera2/params/Face;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/util/Size;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSurfaceTexture, previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d;->N:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/preview/d;->b(II)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/e;->e()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/e;->f()I

    move-result v2

    iget-boolean v3, p0, Lcom/oppo/camera/ui/preview/d;->h:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/e;->h()V

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v3, v3, v1, v2}, Lcom/oppo/camera/ui/preview/d;->a(IIII)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/e;->a()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/e;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->P:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oppo/camera/ui/preview/d;->a(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/e;->d()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "CameraPreviewUI"

    const-string v1, "updateSurfaceTexture, Activity already pause. Avoid 0x502."

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CameraPreviewUI"

    const-string v0, "dispatchTouchEvent, mReviewImage is show"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 3

    const-string v0, "CameraPreviewUI"

    const-string v1, "onResumeMessage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->t:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_assistant_line_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->M:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/d;->a(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->m()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->X:Ljava/lang/Thread;

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setZoomValue(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->y:I

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d$b;->e(II)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/d;->h(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->l:I

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/d;->A:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotableTextView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Lcom/oppo/camera/ui/preview/d$12;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/d$12;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotableTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "CameraPreviewUI"

    const-string v1, "releaseSurfaceTexture"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/e;->c()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/e;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->O:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->P:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/d;->P:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 3

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->z:I

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotableTextView;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/oppo/camera/ui/preview/FaceView;->a(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/i;->a(IZ)V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setMirror(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "CameraPreviewUI"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->h:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/gl/GLRootView;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->m()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->k()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->q()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/FaceView;->b()V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->H:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oppo/camera/gl/GLRootView;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->K:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/d;->K:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->i()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/d;->h(Z)V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/d;->k:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->c()V

    return-void
.end method

.method public d(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->p:I

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/d;->a:Z

    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/d;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/d$b;->aj()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/d;->b:I

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/e;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setMainFaceIndex(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/d;->k:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setMirror(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/FaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->b()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->d()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/d;->k:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->v:Lcolor/support/v7/app/b;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->w:Lcolor/support/v7/app/b$a;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/FaceView;->e()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->removeAllViews()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->J:Lcom/oppo/camera/gl/GLImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLImageView;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLImageView;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/e;->i()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->U:Lcom/oppo/camera/gl/GLRootView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLRootView;->f()V

    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/FaceView;->setShowBeauty3DFace(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0028

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotableTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const v2, 0x7f0800b0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    invoke-static {}, Lcom/oppo/camera/o/d;->u()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    iget v1, p0, Lcom/oppo/camera/ui/preview/d;->z:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/RotableTextView;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->V:Lcom/oppo/camera/ui/RotableTextView;

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/d$b;->a(Lcom/oppo/camera/ui/RotateImageView;)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->j()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->F:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->I:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oppo/camera/ui/preview/d$13;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/d$13;-><init>(Lcom/oppo/camera/ui/preview/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->n()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/i;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/app/Activity;)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {p1, p4, p5}, Lcom/oppo/camera/ui/preview/e;->c(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    invoke-virtual {p1, p5, p4}, Lcom/oppo/camera/ui/preview/e;->c(II)V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/i;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/d;->W:Lcom/oppo/camera/ui/i;

    :cond_1
    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->B:Lcom/oppo/camera/ui/preview/d$b;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/d;->l()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/d;->a(Z)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->C:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public u()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->P:Landroid/view/Surface;

    return-object v0
.end method

.method public v()Landroid/util/Size;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/d;->N:Landroid/util/Size;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w()Lcom/oppo/camera/ui/preview/e;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    return-object v0
.end method

.method public x()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->D:Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    return-object v0
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->u:Lcom/oppo/camera/ui/preview/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/e;->m()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d;->x:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->b()V

    :cond_0
    return-void
.end method
