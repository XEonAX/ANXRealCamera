.class Lcom/a/a/a$a;
.super Lcom/a/a/i;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/view/Choreographer;

.field private final c:Landroid/view/Choreographer$FrameCallback;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/i;-><init>()V

    iput-object p1, p0, Lcom/a/a/a$a;->b:Landroid/view/Choreographer;

    new-instance p1, Lcom/a/a/a$a$1;

    invoke-direct {p1, p0}, Lcom/a/a/a$a$1;-><init>(Lcom/a/a/a$a;)V

    iput-object p1, p0, Lcom/a/a/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method static synthetic a(Lcom/a/a/a$a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/a/a/a$a;->e:J

    return-wide p1
.end method

.method public static a()Lcom/a/a/a$a;
    .locals 2

    new-instance v0, Lcom/a/a/a$a;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a$a;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/a/a/a$a;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/a/a/a$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/a/a$a;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/a/a/a$a;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    iget-object p0, p0, Lcom/a/a/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/a/a/a$a;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/a/a/a$a;->b:Landroid/view/Choreographer;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/a$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a$a;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a$a;->e:J

    iget-object v0, p0, Lcom/a/a/a$a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/a/a/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/a/a/a$a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/a/a/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a$a;->d:Z

    iget-object v0, p0, Lcom/a/a/a$a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/a/a/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
