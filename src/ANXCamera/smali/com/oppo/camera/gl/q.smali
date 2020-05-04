.class public Lcom/oppo/camera/gl/q;
.super Landroid/view/SurfaceView;
.source "OppoGLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/gl/q$j;,
        Lcom/oppo/camera/gl/q$l;,
        Lcom/oppo/camera/gl/q$i;,
        Lcom/oppo/camera/gl/q$h;,
        Lcom/oppo/camera/gl/q$n;,
        Lcom/oppo/camera/gl/q$b;,
        Lcom/oppo/camera/gl/q$a;,
        Lcom/oppo/camera/gl/q$e;,
        Lcom/oppo/camera/gl/q$d;,
        Lcom/oppo/camera/gl/q$g;,
        Lcom/oppo/camera/gl/q$c;,
        Lcom/oppo/camera/gl/q$f;,
        Lcom/oppo/camera/gl/q$m;,
        Lcom/oppo/camera/gl/q$k;
    }
.end annotation


# static fields
.field private static a:Lcom/oppo/camera/gl/q$j;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/Surface;

.field private d:Lcom/oppo/camera/gl/r;

.field private e:Z

.field private f:Lcom/oppo/camera/gl/q$i;

.field private g:Lcom/oppo/camera/gl/q$m;

.field private h:Z

.field private i:Lcom/oppo/camera/gl/q$e;

.field private j:Lcom/oppo/camera/gl/q$f;

.field private k:Lcom/oppo/camera/gl/q$g;

.field private l:Lcom/oppo/camera/gl/q$k;

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oppo/camera/gl/q$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/q$j;-><init>(Lcom/oppo/camera/gl/q$1;)V

    sput-object v0, Lcom/oppo/camera/gl/q;->a:Lcom/oppo/camera/gl/q$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->c:Landroid/view/Surface;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->d:Lcom/oppo/camera/gl/r;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q;->e:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->g:Lcom/oppo/camera/gl/q$m;

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q;->h:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->i:Lcom/oppo/camera/gl/q$e;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->j:Lcom/oppo/camera/gl/q$f;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->k:Lcom/oppo/camera/gl/q$g;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->l:Lcom/oppo/camera/gl/q$k;

    iput v0, p0, Lcom/oppo/camera/gl/q;->m:I

    iput v0, p0, Lcom/oppo/camera/gl/q;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q;->o:Z

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->c:Landroid/view/Surface;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->d:Lcom/oppo/camera/gl/r;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oppo/camera/gl/q;->e:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->g:Lcom/oppo/camera/gl/q$m;

    iput-boolean p2, p0, Lcom/oppo/camera/gl/q;->h:Z

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->i:Lcom/oppo/camera/gl/q$e;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->j:Lcom/oppo/camera/gl/q$f;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->k:Lcom/oppo/camera/gl/q$g;

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->l:Lcom/oppo/camera/gl/q$k;

    iput p2, p0, Lcom/oppo/camera/gl/q;->m:I

    iput p2, p0, Lcom/oppo/camera/gl/q;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q;->o:Z

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->b()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/gl/q;->n:I

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->c:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->j:Lcom/oppo/camera/gl/q$f;

    return-object p0
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$g;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->k:Lcom/oppo/camera/gl/q$g;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/gl/q;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->c:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$k;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->l:Lcom/oppo/camera/gl/q$k;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/oppo/camera/gl/q;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/gl/q;->m:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/gl/q;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/gl/q;->o:Z

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->g:Lcom/oppo/camera/gl/q$m;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/gl/q;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/gl/q;->e:Z

    return p0
.end method

.method static synthetic j()Lcom/oppo/camera/gl/q$j;
    .locals 1

    sget-object v0, Lcom/oppo/camera/gl/q;->a:Lcom/oppo/camera/gl/q$j;

    return-object v0
.end method

.method static synthetic j(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/r;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->d:Lcom/oppo/camera/gl/r;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->c()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/q$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->g()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->f()V

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
    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public g()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/gl/q$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/gl/q$1;-><init>(Lcom/oppo/camera/gl/q;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/gl/q;->m:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q;->o:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->b()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q;->e:Z

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q;->e:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->g:Lcom/oppo/camera/gl/q$m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/oppo/camera/gl/q$i;

    iget-object v3, p0, Lcom/oppo/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/oppo/camera/gl/q$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/gl/q$i;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q;->h:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$i;->h()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/gl/q;->h:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/gl/q;->m:I

    return-void
.end method

.method public setEGLConfigChooser(Lcom/oppo/camera/gl/q$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->e()V

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->i:Lcom/oppo/camera/gl/q$e;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/oppo/camera/gl/q$n;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/gl/q$n;-><init>(Lcom/oppo/camera/gl/q;Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/q;->setEGLConfigChooser(Lcom/oppo/camera/gl/q$e;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->e()V

    iput p1, p0, Lcom/oppo/camera/gl/q;->n:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/oppo/camera/gl/q$f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->e()V

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->j:Lcom/oppo/camera/gl/q$f;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/oppo/camera/gl/q$g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->e()V

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->k:Lcom/oppo/camera/gl/q$g;

    return-void
.end method

.method public setGLWrapper(Lcom/oppo/camera/gl/q$k;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->l:Lcom/oppo/camera/gl/q$k;

    return-void
.end method

.method public setOutput(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->c:Landroid/view/Surface;

    return-void
.end method

.method public setOutputRender(Lcom/oppo/camera/gl/r;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->d:Lcom/oppo/camera/gl/r;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/gl/q;->o:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/q$i;->a(I)V

    return-void
.end method

.method public setRenderer(Lcom/oppo/camera/gl/q$m;)V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/gl/q;->e()V

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->i:Lcom/oppo/camera/gl/q$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/gl/q$n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/gl/q$n;-><init>(Lcom/oppo/camera/gl/q;Z)V

    iput-object v0, p0, Lcom/oppo/camera/gl/q;->i:Lcom/oppo/camera/gl/q$e;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/q;->j:Lcom/oppo/camera/gl/q$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/gl/q$c;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/gl/q$c;-><init>(Lcom/oppo/camera/gl/q;Lcom/oppo/camera/gl/q$1;)V

    iput-object v0, p0, Lcom/oppo/camera/gl/q;->j:Lcom/oppo/camera/gl/q$f;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/q;->k:Lcom/oppo/camera/gl/q$g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/oppo/camera/gl/q$d;

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/q$d;-><init>(Lcom/oppo/camera/gl/q$1;)V

    iput-object v0, p0, Lcom/oppo/camera/gl/q;->k:Lcom/oppo/camera/gl/q$g;

    :cond_2
    iput-object p1, p0, Lcom/oppo/camera/gl/q;->g:Lcom/oppo/camera/gl/q$m;

    new-instance p1, Lcom/oppo/camera/gl/q$i;

    iget-object v0, p0, Lcom/oppo/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/oppo/camera/gl/q$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    iget-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/q$i;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {p1, p3, p4}, Lcom/oppo/camera/gl/q$i;->a(II)V

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

    const-string p2, "GLSurfaceView"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/q$i;->d()V

    const-string p1, "GLSurfaceView"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/q$i;->e()V

    const-string p1, "GLSurfaceView"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/gl/q;->f:Lcom/oppo/camera/gl/q$i;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/oppo/camera/gl/q$i;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
