.class Lcom/color/support/widget/i;
.super Ljava/lang/Object;
.source "ExpandableRecyclerPosition.java"


# static fields
.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIII)Lcom/color/support/widget/i;
    .locals 1

    invoke-static {}, Lcom/color/support/widget/i;->c()Lcom/color/support/widget/i;

    move-result-object v0

    iput p0, v0, Lcom/color/support/widget/i;->d:I

    iput p1, v0, Lcom/color/support/widget/i;->a:I

    iput p2, v0, Lcom/color/support/widget/i;->b:I

    iput p3, v0, Lcom/color/support/widget/i;->c:I

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/i;->a:I

    iput v0, p0, Lcom/color/support/widget/i;->b:I

    iput v0, p0, Lcom/color/support/widget/i;->c:I

    iput v0, p0, Lcom/color/support/widget/i;->d:I

    return-void
.end method

.method private static c()Lcom/color/support/widget/i;
    .locals 3

    sget-object v0, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/i;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v1}, Lcom/color/support/widget/i;->b()V

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/color/support/widget/i;

    invoke-direct {v1}, Lcom/color/support/widget/i;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/color/support/widget/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
