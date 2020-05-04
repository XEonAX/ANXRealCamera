.class public Lco/polarr/renderer/filters/a;
.super Lco/polarr/renderer/filters/a/b;


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/a;->a:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "basic.glsl"

    invoke-direct {p0, p1, v0, p2}, Lco/polarr/renderer/filters/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lco/polarr/renderer/filters/a;->b:Z

    return-void
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lco/polarr/renderer/filters/a;
    .locals 2
    .annotation build Lco/polarr/a/a;
    .end annotation

    sget-object v0, Lco/polarr/renderer/filters/a;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/a;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/filters/a;

    new-instance v1, Lco/polarr/renderer/entities/Context;

    invoke-direct {v1}, Lco/polarr/renderer/entities/Context;-><init>()V

    invoke-direct {v0, p0, v1}, Lco/polarr/renderer/filters/a;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a;->k()V

    sget-object p0, Lco/polarr/renderer/filters/a;->a:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p0

    invoke-virtual {v0, p0}, Lco/polarr/renderer/filters/a;->a([F)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lco/polarr/renderer/filters/a;->b:Z

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lco/polarr/renderer/filters/a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draw()V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->draw()V

    return-void
.end method

.method public getMatrix()[F
    .locals 1
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-super {p0}, Lco/polarr/renderer/filters/a/b;->getMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public setInputTextureId(I)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/a;->a(I)V

    return-void
.end method

.method public setNeedClear(Z)V
    .locals 0
    .annotation build Lco/polarr/a/a;
    .end annotation

    iput-boolean p1, p0, Lco/polarr/renderer/filters/a;->b:Z

    return-void
.end method
