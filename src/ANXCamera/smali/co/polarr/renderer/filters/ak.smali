.class public Lco/polarr/renderer/filters/ak;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field public static final AUTO_ENHANCE_FILTER:Ljava/lang/String; = "AUTO_ENHANCE_FILTER"

.field private static final AUTO_ENHANCE_LUT_SIZE:I = 0x20

.field public static c:F = 0.0f

.field public static d:F = 0.0f

.field public static e:F = 0.0f

.field public static f:F = 0.0f

.field public static g:F = 0.0f

.field public static h:F = 0.0f

.field public static i:F = 0.08f

.field public static j:F = 0.6f

.field public static k:F = 0.88f

.field public static l:F = 0.2f

.field public static m:[B

.field public static n:[B


# instance fields
.field private I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/render/f;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/lang/String;

.field private K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private L:F

.field private M:[F

.field private N:[F

.field private O:Ljava/util/Random;

.field public a:Z

.field public b:Z

.field public o:Z

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "lookup_table"

    invoke-static {v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lco/polarr/renderer/filters/ak;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lco/polarr/renderer/filters/ak;->b:Z

    iput-boolean p1, p0, Lco/polarr/renderer/filters/ak;->o:Z

    const/4 p1, 0x0

    iput p1, p0, Lco/polarr/renderer/filters/ak;->p:F

    iput p1, p0, Lco/polarr/renderer/filters/ak;->q:F

    iput p1, p0, Lco/polarr/renderer/filters/ak;->r:F

    iput p1, p0, Lco/polarr/renderer/filters/ak;->s:F

    iput p1, p0, Lco/polarr/renderer/filters/ak;->t:F

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/filters/ak;->K:Ljava/util/Map;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lco/polarr/renderer/filters/ak;->L:F

    const/4 p1, 0x3

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lco/polarr/renderer/filters/ak;->M:[F

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lco/polarr/renderer/filters/ak;->N:[F

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/filters/ak;->O:Ljava/util/Random;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    throw p1
.end method

.method private a(I[BII)Lco/polarr/renderer/render/f;
    .locals 13

    move v0, p1

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const v3, 0x461c0c00    # 9987.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v2, 0x46240400    # 10497.0f

    const/16 v3, 0x2802

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x1908

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {p1, v1, v2, v3}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->overlayTextureBinded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lco/polarr/renderer/filters/ak;->n:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    const v1, 0x3d0900

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->E:Landroid/content/res/Resources;

    const-string v1, "textures/overlay_p4_3_weak.jpg"

    invoke-direct {p0, v0, v1}, Lco/polarr/renderer/filters/ak;->a(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/b/t;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    sput-object v1, Lco/polarr/renderer/filters/ak;->n:[B

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->overlayTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    sget-object v2, Lco/polarr/renderer/filters/ak;->n:[B

    const/16 v3, 0x3e8

    invoke-direct {p0, v1, v2, v3, v3}, Lco/polarr/renderer/filters/ak;->a(I[BII)Lco/polarr/renderer/render/f;

    move-result-object v1

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->overlayTexture:Lco/polarr/renderer/render/f;

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/polarr/renderer/entities/Context;->overlayTextureBinded:Z

    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->grainTextureBinded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lco/polarr/renderer/filters/ak;->m:[B

    if-eqz v0, :cond_1

    sget-object v0, Lco/polarr/renderer/filters/ak;->m:[B

    array-length v0, v0

    const/high16 v1, 0x400000

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->E:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "textures/film_grain_small.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/b/t;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    sput-object v0, Lco/polarr/renderer/filters/ak;->m:[B

    :cond_2
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    sget-object v2, Lco/polarr/renderer/filters/ak;->m:[B

    const/16 v3, 0x400

    invoke-direct {p0, v1, v2, v3, v3}, Lco/polarr/renderer/filters/ak;->a(I[BII)Lco/polarr/renderer/render/f;

    move-result-object v1

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/polarr/renderer/entities/Context;->grainTextureBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected C_()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lco/polarr/renderer/filters/ak;->L:F

    return-void
.end method

.method public a(Lco/polarr/renderer/entities/Cube;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    iput-object v2, v0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    iget-object v2, v0, Lco/polarr/renderer/filters/ak;->K:Ljava/util/Map;

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

    iget-object v4, v0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    iget-object v5, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

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

    iget-object v2, v0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

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

.method public a(ZFFFFF)V
    .locals 0

    iput-boolean p1, p0, Lco/polarr/renderer/filters/ak;->o:Z

    iput p2, p0, Lco/polarr/renderer/filters/ak;->p:F

    iput p3, p0, Lco/polarr/renderer/filters/ak;->q:F

    iput p4, p0, Lco/polarr/renderer/filters/ak;->r:F

    iput p5, p0, Lco/polarr/renderer/filters/ak;->s:F

    iput p6, p0, Lco/polarr/renderer/filters/ak;->t:F

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->draw()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lco/polarr/renderer/filters/ak;->o:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lco/polarr/renderer/filters/ak;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->b()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 10

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "lut_size"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lco/polarr/renderer/filters/ak;->K:Ljava/util/Map;

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "lookup_texture"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v3, 0x84c1

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    iget-object v5, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "grainTextureSize"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v4, v4

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    iget v3, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v4, "textureSize"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    aget v4, v0, v1

    aget v0, v0, v2

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "globalScreenRotation"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {}, Lco/polarr/renderer/e;->a()I

    move-result v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "grainRandomOffset"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lco/polarr/renderer/filters/ak;->O:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->O:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "is_apply_roundcorner"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-boolean v3, p0, Lco/polarr/renderer/filters/ak;->o:Z

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "roundcorner_radius"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v3, p0, Lco/polarr/renderer/filters/ak;->p:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "roundcorner_offset"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v3, p0, Lco/polarr/renderer/filters/ak;->q:F

    iget v4, p0, Lco/polarr/renderer/filters/ak;->r:F

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "roundcorner_size"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v3, p0, Lco/polarr/renderer/filters/ak;->s:F

    iget v4, p0, Lco/polarr/renderer/filters/ak;->t:F

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :cond_0
    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v3, "is_apply_vignette"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-boolean v4, p0, Lco/polarr/renderer/filters/ak;->b:Z

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v4, "crop"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v5, v5, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v4, v5}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    aget v6, v4, v6

    sub-float/2addr v5, v6

    aget v6, v4, v2

    sub-float/2addr v5, v6

    aput v5, v4, v2

    invoke-static {v0, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v4, "rotationMatrix"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->rotation90MatrixInv:[F

    invoke-static {v0, v2, v1, v4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    invoke-static {v0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    iget v4, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v5, "imgSize"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aget v5, v0, v1

    aget v0, v0, v2

    invoke-static {v4, v5, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v4, "lookup_intensity"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v4, p0, Lco/polarr/renderer/filters/ak;->L:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v4, "domain_min"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->M:[F

    invoke-static {v0, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v4, "domain_max"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lco/polarr/renderer/filters/ak;->N:[F

    invoke-static {v0, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    const-string v4, "vignette_amount"

    invoke-static {v0, v4}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v5, "vignette_exposure"

    const-string v6, "vignette_size"

    const-string v7, "vignette_roundness"

    const-string v8, "vignette_highlights"

    const-string v9, "vignette_feather"

    if-eqz v0, :cond_1

    invoke-static {}, Lco/polarr/renderer/a;->a()Lco/polarr/renderer/a;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/a;->a(Ljava/lang/String;)Lco/polarr/renderer/entities/FilterItem;

    move-result-object v0

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    invoke-static {v0}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->c:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->d:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->e:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->g:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->h:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->f:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_0
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    const-string v1, "grain_amount"

    invoke-static {v0, v1}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lco/polarr/renderer/a;->a()Lco/polarr/renderer/a;

    move-result-object v0

    iget-object v2, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lco/polarr/renderer/a;->a(Ljava/lang/String;)Lco/polarr/renderer/entities/FilterItem;

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->i:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v1, "grain_size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->j:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v1, "grain_highlights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->k:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v1, "grain_roughness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lco/polarr/renderer/filters/ak;->l:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    const-string v1, "overlay_amount"

    invoke-static {v0, v1}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget v1, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v2, "is_apply_overlay"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public g()V
    .locals 3

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->g()V

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    const-string v1, "p4_1.cube.rgb.bin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xde1

    if-eqz v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v2, "grainTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct {p0}, Lco/polarr/renderer/filters/ak;->o()V

    iget-object v2, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    const-string v2, "p4_3.cube.rgb.bin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lco/polarr/renderer/filters/ak;->x:I

    const-string v2, "overlayTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c3

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct {p0}, Lco/polarr/renderer/filters/ak;->j()V

    iget-object v2, p0, Lco/polarr/renderer/filters/ak;->u:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->overlayTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 10

    const-string v0, "AUTO_ENHANCE_FILTER"

    iput-object v0, p0, Lco/polarr/renderer/filters/ak;->J:Ljava/lang/String;

    iget-object v1, p0, Lco/polarr/renderer/filters/ak;->K:Ljava/util/Map;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x400

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

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

    iget-object v2, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public i()Lco/polarr/renderer/render/f;
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    const-string v1, "AUTO_ENHANCE_FILTER"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lco/polarr/renderer/filters/ak;->h()V

    :goto_0
    iget-object v0, p0, Lco/polarr/renderer/filters/ak;->I:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/render/f;

    return-object v0
.end method
