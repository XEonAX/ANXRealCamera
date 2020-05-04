.class public Lcom/oppo/camera/j/a;
.super Lcom/oppo/camera/j/d;
.source "CallGalleryPreDecodeThread.java"


# static fields
.field private static b:Lcom/oppo/camera/j/a;


# instance fields
.field private a:Lcom/oppo/camera/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/j/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    return-void
.end method

.method public static a()Lcom/oppo/camera/j/a;
    .locals 2

    const-class v0, Lcom/oppo/camera/j/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/j/a;->b:Lcom/oppo/camera/j/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/j/a;

    invoke-direct {v1}, Lcom/oppo/camera/j/a;-><init>()V

    sput-object v1, Lcom/oppo/camera/j/a;->b:Lcom/oppo/camera/j/a;

    :cond_0
    sget-object v1, Lcom/oppo/camera/j/a;->b:Lcom/oppo/camera/j/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/oppo/camera/v$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/j/a;->d()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/oppo/camera/v$a;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/j/a;->c(Lcom/oppo/camera/v$a;)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/j;

    invoke-direct {v0}, Lcom/oppo/camera/j;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    iget-object v0, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/j;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/oppo/camera/v$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CallGalleryPreDecodeThread"

    const-string v1, "handlePicture, callGallery"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    iget-object v5, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oppo/camera/v$a;->l:J

    iget-boolean v8, p1, Lcom/oppo/camera/v$a;->w:Z

    invoke-virtual/range {v2 .. v8}, Lcom/oppo/camera/j;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/j;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/j/a;->a:Lcom/oppo/camera/j;

    :cond_0
    return-void
.end method
