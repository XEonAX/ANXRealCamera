.class public Lco/polarr/renderer/filters/bf;
.super Lco/polarr/renderer/filters/a/b;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const-string p1, "screen_vertex"

    invoke-static {p1}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lco/polarr/renderer/filters/bf;->H:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lco/polarr/renderer/filters/bf;->a:Z

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 5

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget v0, p0, Lco/polarr/renderer/filters/bf;->x:I

    const-string v1, "cacheTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/bf;->l()I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lco/polarr/renderer/filters/bf;->u:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lco/polarr/renderer/filters/bf;->u:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "grid_size"

    invoke-static {v2, v0}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget v3, p0, Lco/polarr/renderer/filters/bf;->x:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aget v4, v0, v3

    aget v0, v0, v1

    invoke-static {v2, v4, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/bf;->x:I

    const-string v2, "showTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/bf;->x:I

    const-string v2, "cropMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lco/polarr/renderer/filters/bf;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->cropMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/bf;->x:I

    const-string v2, "viewMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lco/polarr/renderer/filters/bf;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->viewMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/bf;->x:I

    const-string v1, "img_size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/bf;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/b/c;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/bf;->x:I

    const-string v1, "zoom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/bf;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    iget v1, v1, Lco/polarr/renderer/entities/Context$Screen;->zoom:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
