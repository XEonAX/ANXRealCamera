.class Lco/polarr/renderer/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/polarr/renderer/f;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lco/polarr/renderer/f;


# direct methods
.method constructor <init>(Lco/polarr/renderer/f;[B)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    iput-object p2, p0, Lco/polarr/renderer/f$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/f;Z)Z

    iget-object v0, p0, Lco/polarr/renderer/f$1;->a:[B

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lco/polarr/renderer/f$1;->a:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    invoke-static {v2}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/f;)Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const/16 v3, 0x12c

    invoke-static {v3, v3, v0, v2}, Lco/polarr/renderer/b/a;->a(II[ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    invoke-static {v0}, Lco/polarr/renderer/f;->b(Lco/polarr/renderer/f;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "highlights"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shadows"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clarity"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dehaze"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v2, v0}, Lco/polarr/renderer/FilterPackageUtil;->GetRefStates(Ljava/util/Map;F)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    invoke-static {v2}, Lco/polarr/renderer/f;->c(Lco/polarr/renderer/f;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    invoke-static {v3}, Lco/polarr/renderer/f;->c(Lco/polarr/renderer/f;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    invoke-static {v3}, Lco/polarr/renderer/f;->c(Lco/polarr/renderer/f;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lco/polarr/renderer/f$1;->b:Lco/polarr/renderer/f;

    invoke-static {v0, v1}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/f;Z)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
