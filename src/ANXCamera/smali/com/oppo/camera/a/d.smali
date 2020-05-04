.class public Lcom/oppo/camera/a/d;
.super Ljava/lang/Object;
.source "FrameInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/a/d$b;,
        Lcom/oppo/camera/a/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/oppo/camera/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/a/d;->b:Z

    return-void
.end method


# virtual methods
.method public a(J)Lcom/oppo/camera/a/d$a;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/a/d$a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/oppo/camera/a/d$a;

    invoke-direct {p1}, Lcom/oppo/camera/a/d$a;-><init>()V

    :cond_0
    return-object p1
.end method

.method public a(JI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iput p3, v0, Lcom/oppo/camera/a/d$a;->b:I

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(JJ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iput-wide p3, v0, Lcom/oppo/camera/a/d$a;->a:J

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(JLandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iput-object p3, v0, Lcom/oppo/camera/a/d$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(JLcom/oppo/camera/a/d$b;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iget-object v1, v0, Lcom/oppo/camera/a/d$a;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, v0, Lcom/oppo/camera/a/d$a;->g:Ljava/util/Vector;

    invoke-virtual {v2, v1, p3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/a/d;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/a/d;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public b(JI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iput p3, v0, Lcom/oppo/camera/a/d$a;->c:I

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(JI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iput p3, v0, Lcom/oppo/camera/a/d$a;->d:I

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(JI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    iput p3, v0, Lcom/oppo/camera/a/d$a;->e:I

    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
