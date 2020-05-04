.class Lcom/oppo/camera/ui/preview/o$a;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/o;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/preview/o;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/preview/o;Lcom/oppo/camera/ui/preview/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/o$a;-><init>(Lcom/oppo/camera/ui/preview/o;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->n(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->c(Lcom/oppo/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->m(Lcom/oppo/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ZoomSeekBar"

    const-string v0, "MyGestureListener, onLongPress to performExpand"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/o;->L_()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;Z)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->l(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->c(Lcom/oppo/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->m(Lcom/oppo/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->d(Lcom/oppo/camera/ui/preview/o;)F

    move-result v3

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->e(Lcom/oppo/camera/ui/preview/o;)F

    move-result v4

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->f(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    int-to-float v5, p1

    invoke-static/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;FFFFF)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomSeekBar"

    const-string p2, "MyGestureListener, onScroll to performExpand"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/o;->L_()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1, p3}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;Z)Z

    :cond_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "ZoomSeekBar"

    const-string v1, "MyGestureListener, onSingleTapUp"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;)Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/f;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "MyGestureListener, onSingleTapUp return, spring is running"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/o;->b(Lcom/oppo/camera/ui/preview/o;)I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->c(Lcom/oppo/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/o;->d(Lcom/oppo/camera/ui/preview/o;)F

    move-result v6

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->e(Lcom/oppo/camera/ui/preview/o;)F

    move-result v7

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->f(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    int-to-float v8, p1

    invoke-static/range {v3 .. v8}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;FFFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/o;->K_()V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->g(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->c(Lcom/oppo/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/o;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->h(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    if-ge p1, v1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->i(Lcom/oppo/camera/ui/preview/o;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->h(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    :goto_0
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->h(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/o;->i(Lcom/oppo/camera/ui/preview/o;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->h(Lcom/oppo/camera/ui/preview/o;)I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1, v4, v5}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;FF)I

    move-result p1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp, targetIndex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/o;->j(Lcom/oppo/camera/ui/preview/o;)Lcom/oppo/camera/ui/g$a;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->a(I)F

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/o;->k(Lcom/oppo/camera/ui/preview/o;)Lcom/oppo/camera/ui/g$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/g$a;->a(F)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v1, p1, v0}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;IF)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$a;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    :cond_6
    :goto_2
    return v2
.end method
