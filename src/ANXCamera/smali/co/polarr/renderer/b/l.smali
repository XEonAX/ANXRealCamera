.class public final Lco/polarr/renderer/b/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/b/l$a;,
        Lco/polarr/renderer/b/l$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/b/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lco/polarr/renderer/b/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lco/polarr/renderer/b/l;->a:Ljava/util/List;

    new-instance v0, Lco/polarr/renderer/b/l$1;

    invoke-direct {v0}, Lco/polarr/renderer/b/l$1;-><init>()V

    sput-object v0, Lco/polarr/renderer/b/l;->b:Lco/polarr/renderer/b/l$b;

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lco/polarr/renderer/b/l;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lco/polarr/renderer/b/l$b;)V
    .locals 1

    const-class v0, Lco/polarr/renderer/b/l;

    monitor-enter v0

    if-eqz p0, :cond_2

    :try_start_0
    sget-object v0, Lco/polarr/renderer/b/l;->b:Lco/polarr/renderer/b/l$b;

    if-eq p0, v0, :cond_1

    sget-object v0, Lco/polarr/renderer/b/l;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lco/polarr/renderer/b/l;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class p0, Lco/polarr/renderer/b/l;

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot plant MyLogger into itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "tree == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    const-class v0, Lco/polarr/renderer/b/l;

    monitor-exit v0

    throw p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lco/polarr/renderer/b/l;->b:Lco/polarr/renderer/b/l$b;

    invoke-virtual {v0, p0, p1}, Lco/polarr/renderer/b/l$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
