.class public Lco/polarr/renderer/filters/ai;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field public static final AUTO_ENHANCE_FILTER:Ljava/lang/String; = "AUTO_ENHANCE_FILTER"

.field private static final AUTO_ENHANCE_LUT_SIZE:I = 0x20


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/render/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:F

.field private e:[F

.field private f:[F


# virtual methods
.method public a(Lco/polarr/renderer/entities/Cube;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    iput-object v2, v0, Lco/polarr/renderer/filters/ai;->b:Ljava/lang/String;

    iget-object v2, v0, Lco/polarr/renderer/filters/ai;->c:Ljava/util/Map;

    iget-object v3, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    iget v4, v1, Lco/polarr/renderer/entities/Cube;->size:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lco/polarr/renderer/entities/Cube;->size:I

    iget v3, v1, Lco/polarr/renderer/entities/Cube;->size:I

    mul-int/2addr v2, v3

    iget v3, v1, Lco/polarr/renderer/entities/Cube;->size:I

    iget-object v4, v0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    iget-object v5, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    iget-object v5, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/polarr/renderer/render/f;

    invoke-static {v4, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    new-array v11, v4, [I

    array-length v4, v11

    const/4 v6, 0x0

    const/16 v7, 0x1908

    move-object v5, v11

    move v8, v2

    move v9, v3

    invoke-static/range {v4 .. v9}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    aget v4, v11, v10

    const/16 v5, 0x1908

    invoke-static {v4, v5, v2, v3}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    const/16 v2, 0x2600

    const v3, 0x812f

    invoke-static {v3, v3, v2, v2}, Lco/polarr/renderer/b/i;->a(IIII)V

    iget-object v2, v0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    iget-object v3, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v4, Lco/polarr/renderer/render/f;->c:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v11, 0xde1

    const/4 v12, 0x0

    iget v13, v4, Lco/polarr/renderer/render/f;->f:I

    iget v14, v4, Lco/polarr/renderer/render/f;->d:I

    iget v15, v4, Lco/polarr/renderer/render/f;->e:I

    const/16 v16, 0x0

    iget v1, v4, Lco/polarr/renderer/render/f;->f:I

    const/16 v18, 0x1401

    move/from16 v17, v1

    move-object/from16 v19, v2

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lco/polarr/renderer/filters/ai;->b:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected d()V
    .locals 5

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget-object v0, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/ai;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/filters/ai;->x:I

    const-string v2, "lookup_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    iget-object v3, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    iget-object v4, p0, Lco/polarr/renderer/filters/ai;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lco/polarr/renderer/filters/ai;->x:I

    const-string v2, "lut_size"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lco/polarr/renderer/filters/ai;->c:Ljava/util/Map;

    iget-object v3, p0, Lco/polarr/renderer/filters/ai;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_0
    iget v0, p0, Lco/polarr/renderer/filters/ai;->x:I

    const-string v2, "lookup_intensity"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lco/polarr/renderer/filters/ai;->d:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ai;->x:I

    const-string v2, "domain_min"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lco/polarr/renderer/filters/ai;->e:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/ai;->x:I

    const-string v2, "domain_max"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lco/polarr/renderer/filters/ai;->f:[F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public f()V
    .locals 10

    const-string v0, "AUTO_ENHANCE_FILTER"

    iput-object v0, p0, Lco/polarr/renderer/filters/ai;->b:Ljava/lang/String;

    iget-object v1, p0, Lco/polarr/renderer/filters/ai;->c:Ljava/util/Map;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x400

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/render/f;

    invoke-static {v0, v3, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    array-length v4, v1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x400

    const/16 v9, 0x20

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    const/4 v4, 0x0

    aget v1, v1, v4

    const/16 v4, 0x1908

    invoke-static {v1, v4, v3, v2}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v1

    const/16 v2, 0x2600

    const v3, 0x812f

    invoke-static {v3, v3, v2, v2}, Lco/polarr/renderer/b/i;->a(IIII)V

    iget-object v2, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public h()Lco/polarr/renderer/render/f;
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    const-string v1, "AUTO_ENHANCE_FILTER"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lco/polarr/renderer/filters/ai;->f()V

    :goto_0
    iget-object v0, p0, Lco/polarr/renderer/filters/ai;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/render/f;

    return-object v0
.end method
