.class public Lco/polarr/renderer/filters/q;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lco/polarr/renderer/render/f;

.field private d:[I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[[F>;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/q;->b:Landroid/util/LruCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lco/polarr/renderer/filters/q;->a:Ljava/util/List;

    sget-object v0, Lco/polarr/renderer/filters/q;->a:Ljava/util/List;

    const-string v1, "curves_red"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/polarr/renderer/filters/q;->a:Ljava/util/List;

    const-string v1, "curves_green"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/polarr/renderer/filters/q;->a:Ljava/util/List;

    const-string v1, "curves_blue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/polarr/renderer/filters/q;->a:Ljava/util/List;

    const-string v1, "curves_all"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 4

    const-string v0, "curves"

    invoke-static {v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    iget-object p1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    const/4 p2, 0x2

    new-array v0, p2, [[F

    new-array v1, p2, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, p2, [F

    fill-array-data v1, :array_1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "curves_red"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    new-array v0, p2, [[F

    new-array v1, p2, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, p2, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const-string v1, "curves_green"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    new-array v0, p2, [[F

    new-array v1, p2, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    new-array v1, p2, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const-string v1, "curves_blue"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    new-array v0, p2, [[F

    new-array v1, p2, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    new-array p2, p2, [F

    fill-array-data p2, :array_7

    aput-object p2, v0, v3

    const-string p2, "curves_all"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
    .end array-data
.end method

.method private static a(III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_1

    if-ne v1, p1, :cond_0

    and-int/lit16 v2, p2, 0xff

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    :goto_1
    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static a(Lco/polarr/renderer/a/a;IF)I
    .locals 6

    invoke-virtual {p0, p1}, Lco/polarr/renderer/a/a;->a(I)F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    float-to-int p0, p2

    return p0

    :cond_0
    float-to-double v0, p0

    const-wide/16 v2, 0x0

    const-wide v4, 0x406fe00000000000L    # 255.0

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/b/t;->a(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private a(Ljava/lang/String;[[FZ)V
    .locals 6

    if-nez p3, :cond_1

    iget-object p3, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p2, :cond_0

    iget-object p3, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3, p2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x72474b98

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_5

    const v1, -0x6d128bba

    if-eq v0, v1, :cond_4

    const v1, -0x6d124cca    # -1.5000982E-27f

    if-eq v0, v1, :cond_3

    const v1, -0x353e75ab    # -6341930.5f

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "curves_blue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p3, v2

    goto :goto_0

    :cond_3
    const-string v0, "curves_red"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p3, v4

    goto :goto_0

    :cond_4
    const-string v0, "curves_all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p3, v3

    goto :goto_0

    :cond_5
    const-string v0, "curves_green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p3, v5

    :cond_6
    :goto_0
    if-eqz p3, :cond_9

    if-eq p3, v5, :cond_8

    if-eq p3, v2, :cond_a

    if-eq p3, v3, :cond_7

    return-void

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_1

    :cond_9
    move v2, v4

    :cond_a
    :goto_1
    :try_start_0
    invoke-static {p2}, Lco/polarr/renderer/filters/q;->a([[F)[[F

    move-result-object p1

    new-instance p2, Lco/polarr/renderer/a/a;

    aget-object p3, p1, v4

    aget-object v0, p1, v5

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1, v1}, Lco/polarr/renderer/a/a;-><init>([F[FLjava/lang/Float;Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    aget-object p1, p1, v5

    aget p1, p1, v4

    float-to-int p1, p1

    :goto_2
    const/16 p3, 0xff

    if-gt v4, p3, :cond_b

    int-to-float p1, p1

    :try_start_1
    invoke-static {p2, v4, p1}, Lco/polarr/renderer/filters/q;->a(Lco/polarr/renderer/a/a;IF)I

    move-result p1

    iget-object p3, p0, Lco/polarr/renderer/filters/q;->d:[I

    iget-object v0, p0, Lco/polarr/renderer/filters/q;->d:[I

    aget v0, v0, v4

    invoke-static {v0, v2, p1}, Lco/polarr/renderer/filters/q;->a(III)I

    move-result v0

    aput v0, p3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-void
.end method

.method private static a([[F)[[F
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [[F

    array-length v1, p0

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length v1, p0

    new-array v1, v1, [F

    const/4 v3, 0x1

    aput-object v1, v0, v3

    array-length v1, p0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, p0, v4

    aget-object v7, v0, v2

    aget v8, v6, v2

    aput v8, v7, v5

    aget-object v7, v0, v3

    aget v6, v6, v3

    aput v6, v7, v5

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/polarr/renderer/filters/q;->f:Z

    iget-object v0, p0, Lco/polarr/renderer/filters/q;->d:[I

    monitor-enter v0

    :try_start_0
    check-cast p2, [[F

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lco/polarr/renderer/filters/q;->a(Ljava/lang/String;[[FZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lco/polarr/renderer/filters/q;->b:Landroid/util/LruCache;

    iget-object v1, p0, Lco/polarr/renderer/filters/q;->d:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lco/polarr/renderer/filters/q;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lco/polarr/renderer/filters/q;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/polarr/renderer/filters/q;->f:Z

    iput-object p1, p0, Lco/polarr/renderer/filters/q;->d:[I

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b_()V
    .locals 5

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->b_()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    invoke-static {v3}, Lco/polarr/renderer/render/b;->b(I)V

    const/16 v3, 0x100

    new-array v4, v3, [I

    iput-object v4, p0, Lco/polarr/renderer/filters/q;->d:[I

    aget v1, v1, v2

    const/16 v4, 0x1908

    invoke-static {v1, v4, v3, v0}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v1

    iput-object v1, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget-object v1, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lco/polarr/renderer/b/i;->a()V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput-boolean v0, p0, Lco/polarr/renderer/filters/q;->f:Z

    iget-object v1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lco/polarr/renderer/filters/q;->u:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v2, v3}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    invoke-direct {p0, v2, v3, v0}, Lco/polarr/renderer/filters/q;->a(Ljava/lang/String;[[FZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 7

    iget-object v0, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    aget-object v3, v2, v5

    aget v4, v3, v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    aget v3, v3, v1

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    aget-object v2, v2, v1

    aget v3, v2, v5

    const/high16 v4, 0x437f0000    # 255.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    :goto_0
    return v5

    :cond_4
    return v1
.end method

.method protected d()V
    .locals 14

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget-boolean v0, p0, Lco/polarr/renderer/filters/q;->f:Z

    const/16 v1, 0xde1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/filters/q;->d:[I

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lco/polarr/renderer/filters/q;->d:[I

    array-length v2, v2

    const/4 v3, 0x4

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v12

    iget-object v2, p0, Lco/polarr/renderer/filters/q;->d:[I

    invoke-virtual {v12, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0x8

    const/16 v13, 0xcf5

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    iget-object v6, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v6, v6, Lco/polarr/renderer/render/f;->f:I

    iget-object v7, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v7, v7, Lco/polarr/renderer/render/f;->d:I

    iget-object v8, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v8, v8, Lco/polarr/renderer/render/f;->e:I

    const/4 v9, 0x0

    iget-object v10, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v10, v10, Lco/polarr/renderer/render/f;->f:I

    const/16 v11, 0x1401

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iput-boolean v2, p0, Lco/polarr/renderer/filters/q;->f:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget v0, p0, Lco/polarr/renderer/filters/q;->x:I

    const-string v2, "map"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public h()V
    .locals 6

    invoke-virtual {p0}, Lco/polarr/renderer/filters/q;->p_()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/16 v3, 0x100

    new-array v4, v3, [I

    iput-object v4, p0, Lco/polarr/renderer/filters/q;->d:[I

    aget v4, v1, v2

    const/16 v5, 0x1908

    invoke-static {v4, v5, v3, v0}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    aget v1, v1, v2

    invoke-static {v1}, Lco/polarr/renderer/render/b;->b(I)V

    iput-boolean v0, p0, Lco/polarr/renderer/filters/q;->f:Z

    iget-object v1, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lco/polarr/renderer/b/i;->a()V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, p0, Lco/polarr/renderer/filters/q;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lco/polarr/renderer/filters/q;->u:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v2, v3}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    invoke-direct {p0, v2, v3, v0}, Lco/polarr/renderer/filters/q;->a(Ljava/lang/String;[[FZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p_()V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/filters/q;->c:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_0
    return-void
.end method
