.class public Lcom/oppo/camera/gl/GLRootView;
.super Lcom/oppo/camera/gl/q;
.source "GLRootView.java"

# interfaces
.implements Lcom/oppo/camera/gl/m;
.implements Lcom/oppo/camera/gl/q$m;
.implements Lcom/oppo/camera/gl/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/gl/GLRootView$IdleRunner;,
        Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/oppo/camera/gl/e;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/gl/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/oppo/camera/gl/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/oppo/camera/gl/GLRootView$IdleRunner;

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private g:I

.field private h:J

.field private i:I

.field private j:Ljavax/microedition/khronos/opengles/GL11;

.field private k:Lcom/oppo/camera/gl/h;

.field private l:Lcom/oppo/camera/gl/GLView;

.field private m:I

.field private n:Landroid/graphics/Matrix;

.field private o:I

.field private p:I

.field private volatile q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/gl/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/gl/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oppo/camera/gl/e;

    invoke-direct {p1}, Lcom/oppo/camera/gl/e;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->a:Lcom/oppo/camera/gl/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/oppo/camera/gl/GLRootView$IdleRunner;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/gl/GLRootView$IdleRunner;-><init>(Lcom/oppo/camera/gl/GLRootView;Lcom/oppo/camera/gl/GLRootView$1;)V

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->d:Lcom/oppo/camera/gl/GLRootView$IdleRunner;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->f:Ljava/util/concurrent/locks/Condition;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/gl/GLRootView;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/gl/GLRootView;->h:J

    iput p1, p0, Lcom/oppo/camera/gl/GLRootView;->i:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->q:Z

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/gl/GLRootView;->t:Z

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->u:Z

    iput p1, p0, Lcom/oppo/camera/gl/GLRootView;->v:I

    iput p1, p0, Lcom/oppo/camera/gl/GLRootView;->w:I

    iput-object p2, p0, Lcom/oppo/camera/gl/GLRootView;->x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->y:Z

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/GLRootView;->setEGLContextClientVersion(I)V

    iget p1, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    invoke-virtual {p0, p2}, Lcom/oppo/camera/gl/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->a:Lcom/oppo/camera/gl/e;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/GLRootView;->setEGLConfigChooser(Lcom/oppo/camera/gl/q$e;)V

    invoke-virtual {p0, p0}, Lcom/oppo/camera/gl/GLRootView;->setRenderer(Lcom/oppo/camera/gl/q$m;)V

    invoke-virtual {p0, p0}, Lcom/oppo/camera/gl/GLRootView;->setOutputRender(Lcom/oppo/camera/gl/r;)V

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private a(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/oppo/camera/gl/h;->a(FF)V

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/oppo/camera/gl/h;->a(FFFF)V

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/oppo/camera/gl/h;->a(FF)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/gl/GLRootView;)Lcom/oppo/camera/gl/h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    return-object p0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->g()V

    invoke-static {}, Lcom/oppo/camera/gl/v;->o()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->q:Z

    iget v0, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/GLRootView;->k()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/gl/h;->a(I)V

    iget v0, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/GLRootView;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLView;->a(Lcom/oppo/camera/gl/h;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    invoke-interface {v0}, Lcom/oppo/camera/gl/h;->f()V

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oppo/camera/gl/b;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/gl/f;

    invoke-virtual {v3, v0, v1}, Lcom/oppo/camera/gl/f;->a(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-static {}, Lcom/oppo/camera/gl/v;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->a()V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->d:Lcom/oppo/camera/gl/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLRootView$IdleRunner;->enable()V

    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/oppo/camera/gl/GLRootView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/gl/GLRootView;->q:Z

    return p0
.end method

.method private k()V
    .locals 8

    iget v0, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->v:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->w:I

    if-eq v1, v2, :cond_2

    :cond_0
    iput v3, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    rem-int/lit16 v4, v2, 0xb4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    int-to-float v2, v2

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :goto_0
    iput v3, p0, Lcom/oppo/camera/gl/GLRootView;->o:I

    iput v0, p0, Lcom/oppo/camera/gl/GLRootView;->v:I

    iput v1, p0, Lcom/oppo/camera/gl/GLRootView;->w:I

    :cond_2
    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_3

    move v7, v1

    move v1, v0

    move v0, v7

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutContentPane, size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", compensation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GLRootView"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/oppo/camera/gl/GLView;->a(IIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "GLRootView"

    const-string v1, "requestRender, Activity.finish(), so return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->q:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->q:Z

    invoke-super {p0}, Lcom/oppo/camera/gl/q;->a()V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/GLView;->b(Lcom/oppo/camera/gl/h;)V

    :cond_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGLRootViewListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView;->x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRootView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oppo/camera/gl/w;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    invoke-interface {p1, p2, p3}, Lcom/oppo/camera/gl/h;->a(II)V

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;->onSurfaceChanged()V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/oppo/camera/gl/GLView;->a(II)V

    :cond_2
    iput-boolean v1, p0, Lcom/oppo/camera/gl/GLRootView;->y:Z

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string p2, "GLRootView"

    const-string v0, "onSurfaceCreated(GL10 gl1, EGLConfig config)"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLObject has changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    new-instance p1, Lcom/oppo/camera/gl/i;

    invoke-direct {p1}, Lcom/oppo/camera/gl/i;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->k:Lcom/oppo/camera/gl/h;

    invoke-static {}, Lcom/oppo/camera/gl/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/GLRootView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;->onSurfaceCreated()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLView;->f()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->y:Z

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->u:Z

    const-string p1, "onSurfaceCreated mFinsh = false"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public b()V
    .locals 4

    const-string v0, "requestLayoutContentPane, mRenderLock.unlock()"

    const-string v1, "GLRootView"

    const-string v2, "requestLayoutContentPane, mRenderLock.lock()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/camera/gl/GLRootView;->p:I

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/gl/b;->a()V

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/GLRootView;->c(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->t:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLRootView;->t:Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public c()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/gl/q;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->u:Z

    const-string v0, "GLRootView"

    const-string v1, "onResume mFinsh = false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->e()V

    invoke-super {p0}, Lcom/oppo/camera/gl/q;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/gl/GLRootView;->s:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    return v1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/GLRootView;->s:Z

    :cond_3
    iget v2, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    invoke-virtual {v2, p1}, Lcom/oppo/camera/gl/GLView;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v3

    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/oppo/camera/gl/GLRootView;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public e()V
    .locals 2

    const-string v0, "GLRootView"

    const-string v1, "unfreeze"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->r:Z

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->u:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/oppo/camera/gl/q;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/oppo/camera/gl/q;->finalize()V

    throw v0
.end method

.method public getCompensation()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/gl/GLRootView;->m:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/gl/GLRootView;->o:I

    return v0
.end method

.method public declared-synchronized getSurfaceState()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->e()V

    invoke-super {p0}, Lcom/oppo/camera/gl/q;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->b()V

    :cond_0
    return-void
.end method

.method public setContentPane(Lcom/oppo/camera/gl/GLView;)V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->s:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/gl/GLView;->b(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/GLRootView;->s:Z

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLView;->b()V

    invoke-static {}, Lcom/oppo/camera/gl/c;->a()V

    :cond_2
    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->l:Lcom/oppo/camera/gl/GLView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/oppo/camera/gl/GLView;->a(Lcom/oppo/camera/gl/m;)V

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->b()V

    :cond_3
    return-void
.end method

.method public setGLRootViewListener(Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/GLRootView;->x:Lcom/oppo/camera/gl/GLRootView$GLRootViewListener;

    return-void
.end method

.method public setLightsOutMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x105

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/GLRootView;->setSystemUiVisibility(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->e()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/camera/gl/q;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "surfaceChanged, w: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", h: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLRootView"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->e()V

    invoke-super {p0, p1}, Lcom/oppo/camera/gl/q;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const-string p1, "GLRootView"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLRootView;->e()V

    invoke-super {p0, p1}, Lcom/oppo/camera/gl/q;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const-string p1, "GLRootView"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
