.class Lcom/oppo/camera/ui/CameraScreenHintView$a;
.super Landroid/view/animation/Animation;
.source "CameraScreenHintView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/CameraScreenHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/CameraScreenHintView;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->d:F

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->f:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    invoke-virtual {p0, p0}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z

    return-void
.end method

.method private a(FLandroid/view/animation/Transformation;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->getScaleFactor()F

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->d:F

    iget v2, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->e:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->f:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    iget v2, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->g:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method private a(II)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->setStartOffset(J)V

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenAnimation, animationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->h(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenHintView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    const/16 v7, 0x12c

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v8, 0x4

    if-eq p1, v8, :cond_1

    invoke-direct {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(II)V

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(II)V

    iput v5, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    iput v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xa0

    invoke-direct {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(II)V

    iget-object v6, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v6}, Lcom/oppo/camera/ui/CameraScreenHintView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f01002c

    invoke-virtual {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->setInterpolator(Landroid/content/Context;I)V

    iput v5, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    iput v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    if-eqz v8, :cond_3

    if-ne v8, v1, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v8}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v8}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oppo/camera/ui/menu/OppoTextView;->clearAnimation()V

    iget-object v8, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v8, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;I)V

    :cond_4
    iget-object v8, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v8, v6}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z

    :cond_5
    invoke-direct {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(II)V

    iput v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    iput v5, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    goto :goto_0

    :cond_6
    iget v7, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    if-eq v7, v4, :cond_7

    if-ne v7, v0, :cond_9

    :cond_7
    iget-object v7, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v7}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v7}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/camera/ui/RotateImageView;->clearAnimation()V

    iget-object v7, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v7}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_8
    iget-object v7, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v7, v6}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z

    :cond_9
    const/16 v6, 0x50

    const/16 v7, 0x14a

    invoke-direct {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(II)V

    iget-object v6, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v6}, Lcom/oppo/camera/ui/CameraScreenHintView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f01004a

    invoke-virtual {p0, v6, v7}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->setInterpolator(Landroid/content/Context;I)V

    iput v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    iput v5, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    :goto_0
    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->h(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {p1, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    if-eqz p1, :cond_f

    if-eq p1, v4, :cond_d

    if-eq p1, v1, :cond_f

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_1

    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->clearAnimation()V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->c(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->clearAnimation()V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->c(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    goto :goto_1

    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->clearAnimation()V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->c(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/CameraScreenHintView$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_11
    :goto_1
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    if-eqz v1, :cond_5

    const/4 p1, 0x1

    if-eq v1, p1, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_4

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(FLandroid/view/animation/Transformation;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd(), mAnimationType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraScreenHintView"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationStart(), mbActivityPause: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraScreenHintView"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->h:I

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewWidth()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->f:I

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewHeight()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->g:I

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-static {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void
.end method
