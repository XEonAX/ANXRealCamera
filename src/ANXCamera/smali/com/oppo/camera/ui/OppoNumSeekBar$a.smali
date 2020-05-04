.class Lcom/oppo/camera/ui/OppoNumSeekBar$a;
.super Ljava/lang/Object;
.source "OppoNumSeekBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/OppoNumSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/OppoNumSeekBar;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/OppoNumSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/OppoNumSeekBar;Lcom/oppo/camera/ui/OppoNumSeekBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar$a;-><init>(Lcom/oppo/camera/ui/OppoNumSeekBar;)V

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
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/camera/ui/OppoNumSeekBar;->o:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(Lcom/oppo/camera/ui/OppoNumSeekBar;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v2}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(Lcom/oppo/camera/ui/OppoNumSeekBar;)F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(Lcom/oppo/camera/ui/OppoNumSeekBar;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget p1, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->k:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(Lcom/oppo/camera/ui/OppoNumSeekBar;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->e(Lcom/oppo/camera/ui/OppoNumSeekBar;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->f(Lcom/oppo/camera/ui/OppoNumSeekBar;)F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget v0, v0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget v0, v0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget p1, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget v0, v0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget p1, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;)Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;)Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/OppoNumSeekBar$b;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->invalidate()V

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$a;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a()V

    const/4 p1, 0x0

    return p1
.end method
