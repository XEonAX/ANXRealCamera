.class public Lcom/oppo/camera/ui/menu/levelcontrol/k;
.super Ljava/lang/Object;
.source "WrapperTexture.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/k;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e:I

    iput p3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d:I

    iput p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    iget v5, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d:I

    iget v6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e:I

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v2, v1

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const v2, 0x812f

    const/16 v3, 0x2802

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v3, 0x2803

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const v2, 0x46180400    # 9729.0f

    const/16 v3, 0x2801

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v3, 0x2800

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare, textureId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WrapperTexture"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, La/a/a;->a(Z)V

    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v2, v1

    iput v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v2, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V
    :try_end_0
    .catch La/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, La/a/b;->printStackTrace()V

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare, textureId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WrapperTexture"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    return-void
.end method

.method public b()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycle, textureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WrapperTexture"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/k;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    iget v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b:I

    aput v3, v2, v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    :cond_0
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/k;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
