.class Lcom/oppo/camera/k/b$a;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/k/b;

.field private b:F

.field private c:F

.field private d:Landroid/view/Window;

.field private e:Landroid/view/WindowManager$LayoutParams;


# virtual methods
.method public a(FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTargetBrightness, targetBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PortraitCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/oppo/camera/k/b$a;->b:F

    iput p1, p0, Lcom/oppo/camera/k/b$a;->c:F

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/k/b$a;->c:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/oppo/camera/k/b$a;->b:F

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/oppo/camera/k/b$a;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/oppo/camera/k/b$a;->a:Lcom/oppo/camera/k/b;

    invoke-static {v1}, Lcom/oppo/camera/k/b;->p(Lcom/oppo/camera/k/b;)Lcom/oppo/camera/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->I()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object p1, p0, Lcom/oppo/camera/k/b$a;->d:Landroid/view/Window;

    iget-object v0, p0, Lcom/oppo/camera/k/b$a;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
