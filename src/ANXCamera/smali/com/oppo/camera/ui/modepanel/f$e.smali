.class Lcom/oppo/camera/ui/modepanel/f$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/modepanel/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/modepanel/f;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/modepanel/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f$e;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/modepanel/f;Lcom/oppo/camera/ui/modepanel/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/modepanel/f$e;-><init>(Lcom/oppo/camera/ui/modepanel/f;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p4, p0, Lcom/oppo/camera/ui/modepanel/f$e;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p4}, Lcom/oppo/camera/ui/modepanel/f;->i(Lcom/oppo/camera/ui/modepanel/f;)Lcom/oppo/camera/ui/modepanel/f$b;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p4, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p4, p4, v1

    if-ltz p4, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p4, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p4

    if-gtz p4, :cond_3

    const/high16 p4, 0x43480000    # 200.0f

    invoke-static {p3, p4}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string p1, "MoreUIControl"

    const-string p2, "MoreViewGestureListener, onFling, slide to previous mode"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f$e;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p1}, Lcom/oppo/camera/ui/modepanel/f;->i(Lcom/oppo/camera/ui/modepanel/f;)Lcom/oppo/camera/ui/modepanel/f$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/modepanel/f$b;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f$e;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p1}, Lcom/oppo/camera/ui/modepanel/f;->i(Lcom/oppo/camera/ui/modepanel/f;)Lcom/oppo/camera/ui/modepanel/f$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "MoreUIControl"

    const-string v0, "MoreViewGestureListener, onSingleTapUp, go back to last index"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f$e;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p1}, Lcom/oppo/camera/ui/modepanel/f;->i(Lcom/oppo/camera/ui/modepanel/f;)Lcom/oppo/camera/ui/modepanel/f$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/modepanel/f$b;->b()V

    const/4 p1, 0x1

    return p1
.end method
