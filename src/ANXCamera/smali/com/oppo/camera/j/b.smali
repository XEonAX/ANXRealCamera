.class public Lcom/oppo/camera/j/b;
.super Lcom/oppo/camera/j/d;
.source "ImageSaverThread.java"


# static fields
.field private static c:Lcom/oppo/camera/j/b;


# instance fields
.field private a:J

.field private b:Lcom/oppo/camera/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/j/d;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/j/b;->a:J

    new-instance v0, Lcom/oppo/camera/j/c;

    invoke-direct {v0}, Lcom/oppo/camera/j/c;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/j/b;->b:Lcom/oppo/camera/j/c;

    return-void
.end method

.method public static a()Lcom/oppo/camera/j/b;
    .locals 2

    const-class v0, Lcom/oppo/camera/j/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/j/b;->c:Lcom/oppo/camera/j/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/j/b;

    invoke-direct {v1}, Lcom/oppo/camera/j/b;-><init>()V

    sput-object v1, Lcom/oppo/camera/j/b;->c:Lcom/oppo/camera/j/b;

    :cond_0
    sget-object v1, Lcom/oppo/camera/j/b;->c:Lcom/oppo/camera/j/b;

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
.method public a(ZLandroid/app/Activity;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/j/b;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/j/b;->b:Lcom/oppo/camera/j/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/j/c;->a(Landroid/app/Activity;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/oppo/camera/v$a;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/oppo/camera/v$a;->d:[B

    const/4 v5, -0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/oppo/camera/v$a;->d:[B

    array-length v4, v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    iget-wide v6, v1, Lcom/oppo/camera/v$a;->C:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget v7, v1, Lcom/oppo/camera/v$a;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x3

    iget-object v7, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    aput-object v7, v3, v4

    const/4 v4, 0x4

    iget-object v7, v1, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    aput-object v7, v3, v4

    const/4 v4, 0x5

    iget-boolean v7, v1, Lcom/oppo/camera/v$a;->D:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v4, "handlePicture, picture.jpeg: %d, timeStamp: %d, mRecBurstNum: %d, mUri: %s, mUpdateThumbTask: %s, mbLatestPicture: %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageSaverThread"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/oppo/camera/v$a;->m:J

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/oppo/camera/j/b;->b:Lcom/oppo/camera/j/c;

    invoke-virtual {v2}, Lcom/oppo/camera/j/c;->a()V

    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/v$a;->a:Landroid/content/ContentResolver;

    iget-object v2, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    iget-object v4, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    if-eqz v4, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/oppo/camera/v;->c(Lcom/oppo/camera/v$a;)Lcom/oppo/camera/v$a;

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/oppo/camera/v$a;->d:[B

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/oppo/camera/j/b;->b:Lcom/oppo/camera/j/c;

    iget-object v7, v1, Lcom/oppo/camera/v$a;->d:[B

    array-length v7, v7

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Lcom/oppo/camera/j/c;->a(J)V

    invoke-static/range {p1 .. p1}, Lcom/oppo/camera/v;->a(Lcom/oppo/camera/v$a;)Lcom/oppo/camera/v$a;

    :cond_3
    :goto_1
    const-string v4, "CameraTest Picture Save End"

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    if-eqz v4, :cond_d

    iget-boolean v4, v1, Lcom/oppo/camera/v$a;->D:Z

    if-eqz v4, :cond_4

    iget v4, v1, Lcom/oppo/camera/v$a;->n:I

    if-eq v5, v4, :cond_5

    :cond_4
    iget v4, v1, Lcom/oppo/camera/v$a;->n:I

    if-ne v6, v4, :cond_6

    :cond_5
    invoke-static {}, Lcom/oppo/camera/j/a;->a()Lcom/oppo/camera/j/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oppo/camera/j/a;->a(Lcom/oppo/camera/v$a;)V

    :cond_6
    iget-object v4, v1, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    if-eqz v4, :cond_a

    const-string v4, "handlePicture, create thumbnail for JpegData start"

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/camera/o/d;->e(Ljava/lang/String;)[B

    move-result-object v11

    iget v4, v1, Lcom/oppo/camera/v$a;->o:I

    iget v7, v1, Lcom/oppo/camera/v$a;->p:I

    iget v8, v1, Lcom/oppo/camera/v$a;->s:I

    iget v12, v1, Lcom/oppo/camera/v$a;->s:I

    invoke-static {v4, v7, v8, v12}, Lcom/oppo/camera/o/d;->a(IIII)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePicture, create thumbnail for Exif start, inSampleSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", thumbnailData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_7

    array-length v7, v11

    if-lez v7, :cond_7

    iget v12, v1, Lcom/oppo/camera/v$a;->r:I

    const/4 v13, 0x1

    iget-object v14, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/oppo/camera/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    int-to-long v7, v5

    move-wide/from16 v16, v7

    invoke-static/range {v11 .. v17}, Lcom/oppo/camera/ui/control/e;->a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oppo/camera/ui/control/e;

    move-result-object v11

    if-nez v11, :cond_9

    iget-object v12, v1, Lcom/oppo/camera/v$a;->d:[B

    if-eqz v12, :cond_9

    iget-object v13, v1, Lcom/oppo/camera/v$a;->d:[B

    iget v14, v1, Lcom/oppo/camera/v$a;->r:I

    iget-object v11, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v1, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {v5, v12}, Lcom/oppo/camera/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move v15, v4

    move-object/from16 v16, v11

    move-wide/from16 v18, v7

    invoke-static/range {v13 .. v19}, Lcom/oppo/camera/ui/control/e;->a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oppo/camera/ui/control/e;

    move-result-object v11

    goto :goto_2

    :cond_7
    iget-object v7, v1, Lcom/oppo/camera/v$a;->d:[B

    if-eqz v7, :cond_8

    iget-object v13, v1, Lcom/oppo/camera/v$a;->d:[B

    iget v14, v1, Lcom/oppo/camera/v$a;->r:I

    iget-object v7, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/oppo/camera/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    int-to-long v11, v5

    move v15, v4

    move-object/from16 v16, v7

    move-wide/from16 v18, v11

    invoke-static/range {v13 .. v19}, Lcom/oppo/camera/ui/control/e;->a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oppo/camera/ui/control/e;

    move-result-object v11

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    :cond_9
    :goto_2
    const-string v4, "handlePicture, create thumbnail for Exif end"

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    iget-boolean v4, v1, Lcom/oppo/camera/v$a;->E:Z

    invoke-interface {v3, v11, v4}, Lcom/oppo/camera/ui/control/e$a;->a(Lcom/oppo/camera/ui/control/e;Z)V

    :cond_a
    iget-wide v3, v1, Lcom/oppo/camera/v$a;->m:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_b

    iget v2, v1, Lcom/oppo/camera/v$a;->n:I

    if-ne v2, v6, :cond_c

    iget-object v2, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/v;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oppo/camera/j/b;->a:J

    goto :goto_3

    :cond_b
    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/v;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    :cond_c
    :goto_3
    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_d
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
