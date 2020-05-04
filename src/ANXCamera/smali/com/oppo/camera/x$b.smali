.class Lcom/oppo/camera/x$b;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/x;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Lcom/oppo/camera/x;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/x$b;->b:F

    iput p1, p0, Lcom/oppo/camera/x$b;->c:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/x;Lcom/oppo/camera/x$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/x$b;-><init>(Lcom/oppo/camera/x;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->j(Lcom/oppo/camera/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/x$a;->h()V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iget v0, p0, Lcom/oppo/camera/x$b;->b:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    iget v1, p0, Lcom/oppo/camera/x$b;->c:F

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/x;->a(FF)F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;FZZ)V

    :cond_2
    :goto_0
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->e(Lcom/oppo/camera/x;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->b(Lcom/oppo/camera/x;)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/x$b;->b:F

    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->f(Lcom/oppo/camera/x;)F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/x$b;->c:F

    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/x$a;->b()V

    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-virtual {p1}, Lcom/oppo/camera/x;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    invoke-static {p1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/x$a;->c()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/x$b;->a:Lcom/oppo/camera/x;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;I)V

    return-void
.end method
