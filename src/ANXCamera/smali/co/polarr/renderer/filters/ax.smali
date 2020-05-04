.class public Lco/polarr/renderer/filters/ax;
.super Lco/polarr/renderer/filters/a/b;


# instance fields
.field public a:Z

.field public b:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "overlay"

    invoke-static {v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lco/polarr/renderer/filters/ax;->b:F

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 4

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget v0, p0, Lco/polarr/renderer/filters/ax;->x:I

    const-string v1, "overlayMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/ax;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->overlayMask:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/ax;->x:I

    const-string v1, "opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lco/polarr/renderer/filters/ax;->b:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public draw()V
    .locals 0

    invoke-virtual {p0}, Lco/polarr/renderer/filters/ax;->n()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/ax;->d()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/ax;->g()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/ax;->e()V

    return-void
.end method
