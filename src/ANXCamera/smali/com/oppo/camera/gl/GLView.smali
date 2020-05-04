.class public Lcom/oppo/camera/gl/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# instance fields
.field protected final a:Landroid/graphics/Rect;

.field protected final b:Landroid/graphics/Rect;

.field protected c:Lcom/oppo/camera/gl/GLView;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field private j:Lcom/oppo/camera/gl/m;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/gl/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/oppo/camera/gl/GLView;

.field private m:Lcom/oppo/camera/gl/f;

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/gl/GLView;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->d:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->e:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->f:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->g:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->h:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->i:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->n:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->o:I

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->p:I

    return-void
.end method

.method private b(IIII)Z
    .locals 3

    sub-int v0, p3, p1

    iget-object v1, p0, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/gl/GLView;->n:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public a(I)Lcom/oppo/camera/gl/GLView;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/gl/GLView;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected a(II)V
    .locals 0

    return-void
.end method

.method public a(IIII)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/gl/GLView;->b(IIII)Z

    move-result v1

    iget v0, p0, Lcom/oppo/camera/gl/GLView;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/camera/gl/GLView;->n:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/gl/GLView;->a(ZIIII)V

    return-void
.end method

.method protected a(Lcom/oppo/camera/gl/h;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/GLView;->c(Lcom/oppo/camera/gl/h;)V

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/gl/GLView;->a(I)Lcom/oppo/camera/gl/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/oppo/camera/gl/GLView;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/GLView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/GLView;)V
    .locals 5

    invoke-virtual {p2}, Lcom/oppo/camera/gl/GLView;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/oppo/camera/gl/GLView;->m:Lcom/oppo/camera/gl/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/oppo/camera/gl/GLView;->g:I

    sub-int/2addr v0, v1

    iget-object v1, p2, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oppo/camera/gl/GLView;->f:I

    sub-int/2addr v1, v2

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3}, Lcom/oppo/camera/gl/h;->a(FF)V

    iget-object v2, p2, Lcom/oppo/camera/gl/GLView;->m:Lcom/oppo/camera/gl/f;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oppo/camera/gl/f;->a()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/oppo/camera/gl/h;->a(I)V

    invoke-static {}, Lcom/oppo/camera/gl/b;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/gl/f;->b(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->e()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/oppo/camera/gl/GLView;->m:Lcom/oppo/camera/gl/f;

    :goto_0
    invoke-virtual {v2, p1}, Lcom/oppo/camera/gl/f;->a(Lcom/oppo/camera/gl/h;)V

    :cond_2
    invoke-virtual {p2, p1}, Lcom/oppo/camera/gl/GLView;->a(Lcom/oppo/camera/gl/h;)V

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->f()V

    :cond_3
    neg-int p2, v0

    int-to-float p2, p2

    neg-int v0, v1

    int-to-float v0, v0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/m;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->c:Lcom/oppo/camera/gl/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->j:Lcom/oppo/camera/gl/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oppo/camera/gl/w;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/GLView;->b(Lcom/oppo/camera/gl/m;)V

    return-void
.end method

.method protected a(ZIIII)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Landroid/view/MotionEvent;IILcom/oppo/camera/gl/GLView;Z)Z
    .locals 3

    iget-object v0, p4, Lcom/oppo/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz p5, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    neg-int p2, v1

    int-to-float p2, p2

    neg-int p3, v2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p4, p1}, Lcom/oppo/camera/gl/GLView;->b(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, v1

    int-to-float p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    int-to-float p2, v1

    int-to-float p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->c:Lcom/oppo/camera/gl/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->j:Lcom/oppo/camera/gl/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oppo/camera/gl/w;->a(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->g()V

    return-void
.end method

.method protected b(Lcom/oppo/camera/gl/h;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/oppo/camera/gl/m;)V
    .locals 3

    iput-object p1, p0, Lcom/oppo/camera/gl/GLView;->j:Lcom/oppo/camera/gl/m;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/gl/GLView;->a(I)Lcom/oppo/camera/gl/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/camera/gl/GLView;->b(Lcom/oppo/camera/gl/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    iget-object v5, p0, Lcom/oppo/camera/gl/GLView;->l:Lcom/oppo/camera/gl/GLView;

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v5, p0, Lcom/oppo/camera/gl/GLView;->l:Lcom/oppo/camera/gl/GLView;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/GLView;->a(Landroid/view/MotionEvent;IILcom/oppo/camera/gl/GLView;Z)Z

    iput-object v10, p0, Lcom/oppo/camera/gl/GLView;->l:Lcom/oppo/camera/gl/GLView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/GLView;->a(Landroid/view/MotionEvent;IILcom/oppo/camera/gl/GLView;Z)Z

    if-eq v8, v11, :cond_1

    if-ne v8, v9, :cond_2

    :cond_1
    iput-object v10, p0, Lcom/oppo/camera/gl/GLView;->l:Lcom/oppo/camera/gl/GLView;

    :cond_2
    return v9

    :cond_3
    :goto_0
    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->c()I

    move-result v1

    sub-int/2addr v1, v9

    move v8, v1

    :goto_1
    if-ltz v8, :cond_6

    invoke-virtual {p0, v8}, Lcom/oppo/camera/gl/GLView;->a(I)Lcom/oppo/camera/gl/GLView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oppo/camera/gl/GLView;->a()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-object v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/gl/GLView;->a(Landroid/view/MotionEvent;IILcom/oppo/camera/gl/GLView;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v10, p0, Lcom/oppo/camera/gl/GLView;->l:Lcom/oppo/camera/gl/GLView;

    return v9

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/GLView;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected c(Lcom/oppo/camera/gl/h;)V
    .locals 0

    return-void
.end method

.method public d()Lcom/oppo/camera/gl/m;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLView;->j:Lcom/oppo/camera/gl/m;

    return-object v0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->d()Lcom/oppo/camera/gl/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/gl/m;->a()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected g()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLView;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/gl/GLView;->a(I)Lcom/oppo/camera/gl/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/gl/GLView;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/gl/GLView;->j:Lcom/oppo/camera/gl/m;

    return-void
.end method
