.class public Lcom/oppo/camera/ui/control/ShutterButton;
.super Lcom/oppo/camera/ui/RotateImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;,
        Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;
    }
.end annotation


# instance fields
.field protected a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private b:Z

.field private c:Z

.field private d:Lcom/oppo/camera/ui/d;

.field private e:Landroid/view/GestureDetector;

.field private f:Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->d:Lcom/oppo/camera/ui/d;

    new-instance v0, Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;-><init>(Lcom/oppo/camera/ui/control/ShutterButton;Lcom/oppo/camera/ui/control/ShutterButton$1;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->f:Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->d:Lcom/oppo/camera/ui/d;

    new-instance p2, Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    invoke-direct {p2, p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;-><init>(Lcom/oppo/camera/ui/control/ShutterButton;Lcom/oppo/camera/ui/control/ShutterButton$1;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/ShutterButton;->f:Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->d:Lcom/oppo/camera/ui/d;

    new-instance p2, Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    invoke-direct {p2, p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;-><init>(Lcom/oppo/camera/ui/control/ShutterButton;Lcom/oppo/camera/ui/control/ShutterButton$1;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/ShutterButton;->f:Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;->a(Lcom/oppo/camera/ui/control/ShutterButton;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/ShutterButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/ShutterButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->d:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/RotateImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->isPressed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->b:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/control/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/oppo/camera/ui/control/ShutterButton$1;-><init>(Lcom/oppo/camera/ui/control/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->a(Z)V

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->b:Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", event.getAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", getRawY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;->c(Lcom/oppo/camera/ui/control/ShutterButton;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->c:Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;->H()V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;->I()V

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->e:Landroid/view/GestureDetector;

    if-nez v0, :cond_7

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/ui/control/ShutterButton;->f:Lcom/oppo/camera/ui/control/ShutterButton$MyGestureListener;

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->e:Landroid/view/GestureDetector;

    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ShutterButton;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;->a(Lcom/oppo/camera/ui/control/ShutterButton;)V

    :cond_0
    return v0
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCameraUIListener(Lcom/oppo/camera/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->d:Lcom/oppo/camera/ui/d;

    return-void
.end method

.method public setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/ShutterButton;->a:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    return-void
.end method
