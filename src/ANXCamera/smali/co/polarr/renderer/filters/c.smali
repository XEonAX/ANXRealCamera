.class public Lco/polarr/renderer/filters/c;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field private static b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/c;->b:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 2

    const-string v0, "blur"

    invoke-static {v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/c;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/c;
    .locals 2

    sget-object v0, Lco/polarr/renderer/filters/c;->b:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/c;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/filters/c;

    invoke-direct {v0, p0, p1}, Lco/polarr/renderer/filters/c;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/c;->k()V

    sget-object p0, Lco/polarr/renderer/filters/c;->b:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/c;->a(Lco/polarr/renderer/entities/Context;)V

    return-object v0
.end method

.method public static d_()V
    .locals 1

    sget-object v0, Lco/polarr/renderer/filters/c;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 4

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->d()V

    iget v0, p0, Lco/polarr/renderer/filters/c;->x:I

    const-string v1, "delta"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lco/polarr/renderer/filters/c;->a:[F

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method
