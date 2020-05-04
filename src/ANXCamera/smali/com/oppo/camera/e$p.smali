.class Lcom/oppo/camera/e$p;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private final b:Landroid/graphics/Rect;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/e$p;->b:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/e$p;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e$p;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e$p;->d:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/e$p;->d:Z

    iput-boolean p1, p0, Lcom/oppo/camera/e$p;->c:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    const-string v1, "CameraManager"

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->R(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->S(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->al()V

    const-string p1, "onLongPress, hidepopupwindow, so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "onLongPress, needSubSettingTouchEvent, so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v2, p1

    add-double/2addr v2, v4

    double-to-int p1, v2

    iget-object v2, p0, Lcom/oppo/camera/e$p;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->am()I

    move-result v2

    if-lt p1, v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->an()I

    move-result v2

    if-gt p1, v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e;->r(Z)V

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Lcom/oppo/camera/e;->b(ZZ)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v7}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/oppo/camera/ui/e;->b(II)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    const-string v4, "pref_continuous_focus_key"

    invoke-virtual {v2, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "CameraTest Camera Touch Focus Start"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1, v0, p1, v3}, Lcom/oppo/camera/ui/preview/h;->a(IIZ)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string p1, "onLongPress, is not preview state,so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v1, "CameraManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onScroll, isVideoRecording, so return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll, mCameraProcessManager.isPreviewStarted() :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v3}, Lcom/oppo/camera/e;->O()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/e$p;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->U(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/d/i;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p3

    if-eqz p3, :cond_2

    return v2

    :cond_2
    iget-object p3, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/h;->y()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result p3

    rem-int/lit16 p3, p3, 0xb4

    if-eqz p3, :cond_3

    return v2

    :cond_3
    iget-object p3, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->R(Lcom/oppo/camera/e;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p1, "onScroll, mFirstTimeInitialized is false, so return."

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll, eX1 - eX2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v3, p3, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", eY1 - eY2: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->L()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->W(Lcom/oppo/camera/e;)Landroid/view/VelocityTracker;

    move-result-object p2

    const/16 v0, 0x190

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->W(Lcom/oppo/camera/e;)Landroid/view/VelocityTracker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScroll, xVelocity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->W(Lcom/oppo/camera/e;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", yVelocity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->W(Lcom/oppo/camera/e;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    return v2

    :cond_6
    const/high16 p1, 0x43480000    # 200.0f

    cmpl-float v0, v3, p1

    const/4 v1, 0x0

    const/4 v4, 0x3

    if-gtz v0, :cond_7

    const/high16 v0, -0x3cb80000    # -200.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_8

    cmpl-float v0, v3, v1

    if-lez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;I)I

    iput-boolean v2, p0, Lcom/oppo/camera/e$p;->d:Z

    return v2

    :cond_8
    sub-float/2addr p4, p3

    cmpl-float p3, p4, p1

    if-gtz p3, :cond_9

    cmpl-float p1, p2, p1

    if-lez p1, :cond_a

    cmpg-float p1, v3, v1

    if-gez p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-eq p1, v4, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;I)I

    iput-boolean v2, p0, Lcom/oppo/camera/e$p;->d:Z

    :cond_a
    :goto_0
    return v2

    :cond_b
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onScroll, mbCanScroll: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/e$p;->d:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbDoubleFinger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->U(Lcom/oppo/camera/e;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "CameraManager"

    const/4 v5, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->d()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/camera/d/i;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->Q()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->O()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/oppo/camera/e$p;->c:Z

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/camera/ui/e;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onSingleTapUp, needSubSettingTouchEvent, so return"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$p;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iget-object v6, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v7}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v8}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v8

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oppo/camera/e$p;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->am()I

    move-result p1

    if-lt v0, p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->an()I

    move-result p1

    if-gt v0, p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/e;->r(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1, v5, v5}, Lcom/oppo/camera/e;->b(ZZ)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iget-object v6, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v7}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v8}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v8

    invoke-direct {p1, v2, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/e;->b(II)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string v2, "pref_continuous_focus_key"

    invoke-virtual {p1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "CameraTest Camera Touch Focus Start"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->e()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0, v3}, Lcom/oppo/camera/ui/preview/h;->a(IIZ)V

    goto :goto_0

    :cond_2
    const-string p1, "onSingleTapUp, y is not in right area"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iput-boolean v5, p0, Lcom/oppo/camera/e$p;->c:Z

    return v3

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleTapUp, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSwitchingCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSnapShotProgress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", !isPreviewStarted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e$p;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbHasReceiveDownEvent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e$p;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method
