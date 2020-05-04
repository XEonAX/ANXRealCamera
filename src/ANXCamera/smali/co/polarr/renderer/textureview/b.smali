.class public Lco/polarr/renderer/textureview/b;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EglSurfaceBase"


# instance fields
.field protected a:Lco/polarr/renderer/textureview/a;

.field private b:Landroid/opengl/EGLSurface;

.field private c:I

.field private d:I


# direct methods
.method protected constructor <init>(Lco/polarr/renderer/textureview/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    iput v0, p0, Lco/polarr/renderer/textureview/b;->c:I

    iput v0, p0, Lco/polarr/renderer/textureview/b;->d:I

    iput-object p1, p0, Lco/polarr/renderer/textureview/b;->a:Lco/polarr/renderer/textureview/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/textureview/b;->a:Lco/polarr/renderer/textureview/a;

    iget-object v1, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/textureview/a;->a(Landroid/opengl/EGLSurface;)V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    iput v0, p0, Lco/polarr/renderer/textureview/b;->d:I

    iput v0, p0, Lco/polarr/renderer/textureview/b;->c:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/textureview/b;->a:Lco/polarr/renderer/textureview/a;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/textureview/a;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/textureview/b;->a:Lco/polarr/renderer/textureview/a;

    iget-object v1, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/textureview/a;->b(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/textureview/b;->a:Lco/polarr/renderer/textureview/a;

    iget-object v1, p0, Lco/polarr/renderer/textureview/b;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/textureview/a;->c(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "EglSurfaceBase"

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
