.class public abstract Lcom/oppo/camera/d/m;
.super Lcom/oppo/camera/d/a;
.source "VideoMode.java"

# interfaces
.implements Lcom/oppo/camera/d/n$d;
.implements Lcom/oppo/camera/d/n$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/m$a;,
        Lcom/oppo/camera/d/m$b;,
        Lcom/oppo/camera/d/m$c;
    }
.end annotation


# instance fields
.field protected W:Landroid/os/Handler;

.field protected X:Ljava/lang/String;

.field protected Y:J

.field protected Z:Landroid/media/CamcorderProfile;

.field private aA:Landroid/content/ContentValues;

.field private aB:Landroid/os/ParcelFileDescriptor;

.field private aC:Landroid/os/AsyncTask;

.field private aD:Landroid/animation/ValueAnimator;

.field private aE:Lcom/oppo/camera/d/m$a;

.field private aF:J

.field private aG:I

.field private aH:J

.field private aI:J

.field protected aa:Landroid/view/Surface;

.field protected ab:Ljava/lang/Object;

.field protected ac:Lcom/oppo/camera/d/n;

.field protected ad:I

.field protected ae:Z

.field private final af:Landroid/os/ConditionVariable;

.field private ag:Landroid/os/Handler;

.field private ah:Landroid/os/HandlerThread;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:I

.field private an:I

.field private ao:I

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:J

.field private ax:J

.field private ay:J

.field private az:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-string p3, "video_size_1080p"

    iput-object p3, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/oppo/camera/d/m;->Y:J

    iput-object p2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/d/m;->ad:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->ae:Z

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/d/m;->am:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/d/m;->an:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/oppo/camera/d/m;->ao:I

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->ap:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->aq:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->ar:Z

    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->as:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->at:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    iput-wide p3, p0, Lcom/oppo/camera/d/m;->aw:J

    iput-wide p3, p0, Lcom/oppo/camera/d/m;->ax:J

    iput-wide p3, p0, Lcom/oppo/camera/d/m;->ay:J

    iput-object p2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    iput-wide p3, p0, Lcom/oppo/camera/d/m;->aF:J

    iput v0, p0, Lcom/oppo/camera/d/m;->aG:I

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dt()V

    new-instance p3, Lcom/oppo/camera/d/m$c;

    invoke-direct {p3, p0, p2}, Lcom/oppo/camera/d/m$c;-><init>(Lcom/oppo/camera/d/m;Lcom/oppo/camera/d/m$1;)V

    iput-object p3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    new-instance p2, Lcom/oppo/camera/d/m$a;

    invoke-direct {p2, p0, p1}, Lcom/oppo/camera/d/m$a;-><init>(Lcom/oppo/camera/d/m;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CameraRecorder"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/oppo/camera/d/m$1;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/d/m$1;-><init>(Lcom/oppo/camera/d/m;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private A(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    :cond_0
    const-string p1, ".3gp"

    return-object p1
.end method

.method private B(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "video/mp4"

    return-object p1

    :cond_0
    const-string p1, "video/3gpp"

    return-object p1
.end method

.method private C(I)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/m;->b(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->A(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->di()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateVideoFilename, path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoMode"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    invoke-static {v5}, Lcom/oppo/camera/l/a;->f(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    const-string p1, "generateVideoFilename, Exception: mk video dir fail...."

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v4, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    new-instance v5, Landroid/content/ContentValues;

    const/4 v7, 0x7

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v5, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->k()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/m;->ad:I

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, La/a/a;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateVideoFilename, New video filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    invoke-direct {p0, p2}, Lcom/oppo/camera/d/m;->n(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/f/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/f/a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tagflags"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "media_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "content://com.oppo.gallery3d.albumsprovider/locked_pictures"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VideoMode"

    const-string v1, "addVideoToMediaStore, updateLockCameraAlbum, error: "

    invoke-static {v0, v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dc()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->at:Z

    return p1
.end method

.method private b(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f01a3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.brightness.mode"

    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbf

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera.video.exponential.brightness"

    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera.video.brightness"

    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "screen_brightness"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v1

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    sub-float v4, p1, v2

    invoke-virtual {v3, v4, v2}, Lcom/oppo/camera/d/m$a;->a(FF)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightness, brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currBrightness: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", winParams.screenBrightness: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.camera.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget p1, Lcom/color/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->db()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/d/m;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dq()Z

    move-result p0

    return p0
.end method

.method private cB()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/m;->aG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cJ()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/m;->aG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private cK()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoMode"

    const-string v2, "closeVideoFileDescriptor, Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method private cL()V
    .locals 4

    const-string v0, "VideoMode"

    const-string v1, "releaseVideoRecorderWrapper, Releasing media recorder."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->c()Z

    iput-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    :cond_1
    return-void
.end method

.method private cX()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private cY()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private cZ()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->Y:J

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aw:J

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->ax:J

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cX()V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->H()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cY()V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->ds()V

    return-void
.end method

.method private da()Z
    .locals 11

    const-string v0, "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: "

    const-string v1, "type_video"

    const-string v2, "VideoMode"

    const-string v3, "stopVideoRecording"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->ca()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    iget-wide v5, p0, Lcom/oppo/camera/d/m;->aF:J

    iget-wide v7, p0, Lcom/oppo/camera/d/m;->Y:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/oppo/camera/d/m;->aF:J

    const-wide/16 v5, 0x3e8

    const/4 v3, 0x1

    const/4 v7, 0x3

    :try_start_0
    iget-object v8, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v8}, Lcom/oppo/camera/d/n;->b()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v9, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    iput-object v9, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopVideoRecording, mCurrentVideoFilename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", stopResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-wide v9, p0, Lcom/oppo/camera/d/m;->Y:J

    cmp-long v5, v9, v5

    if-ltz v5, :cond_0

    if-nez v8, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    move v4, v3

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move v8, v3

    move-object v3, v4

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move v8, v3

    :goto_0
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopVideoRecording fail, mVideoFilename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iget-object v9, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v7, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v9, p0, Lcom/oppo/camera/d/m;->Y:J

    cmp-long v4, v9, v5

    if-ltz v4, :cond_4

    if-nez v8, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_6
    return v3

    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-wide v9, p0, Lcom/oppo/camera/d/m;->Y:J

    cmp-long v4, v9, v5

    if-ltz v4, :cond_7

    if-nez v8, :cond_8

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_9
    throw v3

    :cond_a
    :goto_2
    return v4
.end method

.method private db()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "stopVideoRecordThread"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->da()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ae:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cT()Z

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/d/m$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/m$4;-><init>(Lcom/oppo/camera/d/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private dc()V
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "startVideoRecordThread"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->s:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "type_video"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v3}, Lcom/oppo/camera/d/n;->e()V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v3}, Lcom/oppo/camera/d/n;->a()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordThread, start end, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->x(I)V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/oppo/camera/d/m;->F:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordThread failed, mVideoFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    const-string v3, "oppo.multimedia.record.conflict"

    invoke-static {v3}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "persist.sys.record.forbid"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/oppo/camera/d/m;->F:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method

.method private dd()V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cH()V

    const-string v0, "key_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06035e

    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->z(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f06035d

    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->z(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cU()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cN()Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/Float;I)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/d/m;->ay:J

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dn()V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->A()V

    const-string v0, "VideoMode"

    const-string v1, "startVideoRecordHandler end"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private de()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->y()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->at:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cb()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->ae:Z

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->ds()V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->do()V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dp()V

    const/4 v1, 0x2

    const-string v3, "VideoMode"

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->x(I)V

    const-string v0, "startVideoRecording, ret is false, so return"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoRecording, mVideoRecorder: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cV()Z

    move-result v0

    const-wide/16 v4, 0x7d0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->x(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dk()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "startVideoRecording, init FileDescriptor fail"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dl()V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dg()V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v2}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->z()V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oppo_is_camera_recording"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "afterInitRecorder end"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private df()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->aq:Z

    const-string v2, "VideoMode"

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeAudioPlayback, Not send broadcast to restore the background music: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeAudioPlayback, send broadcast to restore the background music: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.music.musicservicecommand.resume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "VideoReqMusicRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private dg()V
    .locals 5

    const-string v0, "VideoMode"

    const-string v1, "pauseAudioPlayback"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback, Not send broadcast to pause the background music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/camera/d/m;->aq:Z

    :cond_0
    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback, send broadcast to pause the background music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/oppo/camera/d/m;->aq:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.music.musicservicecommand.pause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "VideoReqMusicPause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private dh()Z
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "recDisabledReturn"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ap:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f00f4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private di()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/camera/v;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/camera/v;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private dj()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    const-string v1, "VID"

    const-string v2, "Slow"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    return-object v0
.end method

.method private dk()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cK()V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    const-string v2, "VideoMode"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder, saveUri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "rw"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/m;->C(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "initializeRecorder, mVideoFilename is null"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private dl()V
    .locals 13

    const-string v0, "VideoMode"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide v4, 0x100000000L

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v6, "is_from_oppo_mms"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v7}, Lcom/oppo/camera/d/b;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move v6, v1

    :cond_3
    :goto_1
    new-instance v0, Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v7

    invoke-direct {v0, v7}, Lcom/oppo/camera/d/n;-><init>(Z)V

    iput-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v7, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v7, v8}, Lcom/oppo/camera/d/n;->a(Landroid/view/Surface;)V

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v7}, Lcom/oppo/camera/ui/c;->a()Lcom/oppo/camera/gl/GLRootView;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/gl/q;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    move v1, v7

    :cond_5
    invoke-static {v1}, La/a/a;->a(Z)V

    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->as:Z

    const/4 v8, 0x5

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/d/n;->a(I)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-nez v6, :cond_7

    const v1, 0x4e200

    iput v1, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    iput v1, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/oppo/camera/d/n;->f(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v10, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v11, v12}, Lcom/oppo/camera/f/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/oppo/camera/d/n;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/d/n;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    const/16 v10, 0x8

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v12, 0x7f0f019a

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_video_codec_key"

    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "H264"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iput v9, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const/16 v8, 0x800

    invoke-virtual {v1, v10, v8}, Lcom/oppo/camera/d/n;->b(II)V

    goto :goto_3

    :cond_9
    const-string v10, "H265"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput v8, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    :cond_a
    :goto_3
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->az()Ljava/lang/String;

    move-result-object v1

    const-string v8, "off"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->k()I

    move-result v1

    if-eqz v1, :cond_c

    const/16 v8, 0xb4

    if-ne v1, v8, :cond_b

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v7}, Lcom/oppo/camera/d/n;->l(I)V

    goto :goto_5

    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v9}, Lcom/oppo/camera/d/n;->l(I)V

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cC()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeRecorder, vCodec: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", vBitRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", reduceBitRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cW()Z

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", aBitRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aCodec: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aChannel: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aSampleRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pQuality: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "VideoMode"

    invoke-static {v7, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/d/n;->a(Landroid/media/CamcorderProfile;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v6, :cond_e

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto/16 :goto_a

    :cond_e
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto/16 :goto_a

    :cond_f
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cW()Z

    move-result v6

    if-eqz v6, :cond_10

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v6, v9

    goto :goto_6

    :cond_10
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_6
    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto/16 :goto_a

    :cond_11
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iput v9, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    iget-object v7, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v7, v1}, Lcom/oppo/camera/d/n;->h(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cC()I

    move-result v7

    iput v7, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v7}, Lcom/oppo/camera/d/n;->i(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v8, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v7, v8}, Lcom/oppo/camera/d/n;->a(II)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v7}, Lcom/oppo/camera/d/n;->j(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const v6, 0xfa00

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x18

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_8

    :cond_13
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_8

    :cond_14
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cW()Z

    move-result v6

    if-eqz v6, :cond_15

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v6, v9

    goto :goto_7

    :cond_15
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_7
    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    :goto_8
    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->as:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v6, "video_size_cif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v6, "video_size_qcif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_9

    :cond_16
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->b(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->c(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->d(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->e(I)V

    goto :goto_a

    :cond_17
    :goto_9
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    div-int/2addr v6, v10

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->b(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->c(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    div-int/2addr v6, v10

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->d(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->e(I)V

    :cond_18
    :goto_a
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v6, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v1, v8

    invoke-virtual {v6, v7, v1}, Lcom/oppo/camera/d/n;->a(FF)V

    :cond_19
    const-string v1, "key_short_video"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const v6, 0xea60

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->k(I)V

    goto :goto_b

    :cond_1a
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, p0, Lcom/oppo/camera/d/m;->an:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->k(I)V

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v8, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-interface {v6, v7, v8}, Lcom/oppo/camera/ui/c;->a(II)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeRecorder, vFPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vSize: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-virtual {v1, v0, v6}, Lcom/oppo/camera/d/n;->c(II)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/d/n;->a(Ljava/io/FileDescriptor;)V

    goto :goto_c

    :cond_1b
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/n;->a(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {v0, v6, v7}, Lcom/oppo/camera/d/n;->a(D)V

    :cond_1c
    sget-object v0, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/v;->b(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1d

    cmp-long v2, v4, v0

    if-gez v2, :cond_1d

    move-wide v0, v4

    :cond_1d
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v2, v0, v1}, Lcom/oppo/camera/d/n;->a(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/d/n$d;)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/d/n$e;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder end, maxFileSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", requestedSizeLimit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dm()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x1036640

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v2, 0x780

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x438

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v2, "video_size_720p"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x2d0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v3, 0x500

    iput v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_cif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v1, 0x160

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x120

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v1, 0xafc80

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_qcif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v1, 0xb0

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x90

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v1, 0x2ee00

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x1e0

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v1, 0x895440

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_4
    :goto_0
    return-void
.end method

.method private dn()V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/d/m;->ay:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oppo/camera/d/m;->aw:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->Y:J

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/d/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bT()V

    return-void

    :cond_1
    const-string v0, "key_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    iget-wide v1, p0, Lcom/oppo/camera/d/m;->Y:J

    iget-boolean v3, p0, Lcom/oppo/camera/d/m;->ar:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/ui/c;->a(JZ)V

    :cond_2
    iget v0, p0, Lcom/oppo/camera/d/m;->am:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/d/m;->am:I

    iget v0, p0, Lcom/oppo/camera/d/m;->am:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/oppo/camera/d/m;->am:I

    iget v0, p0, Lcom/oppo/camera/d/m;->am:I

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime, mbShowRecordingIndicator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->ar:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->ar:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ar:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->ar:Z

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private do()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.multimedia.soundrecorder.stopRecroderNormal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dp()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.camera.record.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dq()Z
    .locals 6

    const-string v0, "type_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const-string v0, "VideoMode"

    const-string v2, "prepareVideoSurface"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->y(I)V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dr()V

    const-string v0, "prepareVideoSurface"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/d/n;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/oppo/camera/d/n;-><init>(Z)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_0
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->a(Landroid/view/Surface;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/n;->f(I)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/n;->h(I)V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    iget v4, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-virtual {v0, v3, v4}, Lcom/oppo/camera/d/n;->c(II)V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v5, 0x7f0f019a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_video_codec_key"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/d/n;->a(D)V

    :cond_1
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/n;->i(I)V

    iget-object v4, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/d/n;->a(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareVideoSurface videoCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", videoBitRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "H264"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/n;->j(I)V

    const/16 v3, 0x8

    const/16 v4, 0x800

    invoke-virtual {v0, v3, v4}, Lcom/oppo/camera/d/n;->b(II)V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_0

    :cond_2
    const-string v4, "H265"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->j(I)V

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->g(I)V

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "VideoMode"

    const-string v5, "TempMediaRecorder"

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/n;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSessionSurface, setOutputFile failed, tempFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->c()Z

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/l/a;->c(Ljava/lang/String;)Z

    :cond_5
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->y(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const-string v0, "prepareVideoSurface"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    :goto_4
    return v1
.end method

.method private dr()V
    .locals 11

    const-string v0, "readVideoPreferences"

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bQ()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    iget v2, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oppo/camera/d/m;->j:I

    iget-object v3, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v4, 0x7f0f01ad

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/camera/d/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/oppo/camera/d/m;->j:I

    iget-object v3, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v4, 0x7f0f01ac

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/camera/d/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->p(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v4

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v7, "is_from_oppo_mms"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    :cond_1
    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eqz v8, :cond_4

    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x6

    if-eq v5, v2, :cond_2

    const/4 v5, 0x5

    if-eq v5, v2, :cond_2

    const-string v2, "readVideoPreferences, EXTRA_VIDEO_QUALITY is not support, reset to QUALITY_480P"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v10

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v5, "video_size_cif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v5, "video_size_qcif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v9

    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readVideoPreferences, quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_5

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/oppo/camera/d/m;->an:I

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readVideoPreferences, mMaxVideoDurationInMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/d/m;->an:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v3, v2}, Lcom/oppo/camera/e/e;->c(II)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v3, v2}, Lcom/oppo/camera/e/e;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v2, v10}, Lcom/oppo/camera/e/e;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    :goto_2
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dm()V

    goto :goto_3

    :cond_8
    :try_start_0
    iget v3, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v3, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const-string v3, "readVideoPreferences, CamcorderProfile.get fail! "

    invoke-static {v1, v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    if-nez v2, :cond_9

    const-string v0, "readVideoPreferences, mProfile is null, so return..."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v2, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v3, "video_size_4kuhd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const v3, 0x5f5e100

    iput v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/16 v3, 0xf00

    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x870

    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v3, 0xbb80

    iput v3, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    const v3, 0x26160

    iput v3, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v9, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    :cond_a
    iget-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cC()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget-object v2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cQ()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readVideoPreferences, videoFrameWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoFrameHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoFrameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoBitRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private ds()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "hideHintViewShowZoom"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->c(Z)V

    :cond_0
    return-void
.end method

.method private dt()V
    .locals 4

    invoke-static {}, Lcom/oppo/camera/o/d;->X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v1, 0x7f0f019a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_codec_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "H265"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VideoMode"

    const-string v3, "checkVideoCodecAndReset, reset video codec to default."

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private du()V
    .locals 6

    new-instance v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    iget-wide v1, p0, Lcom/oppo/camera/d/m;->Y:J

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bQ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->av()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    sget-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/oppo/camera/v;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    iget v1, p0, Lcom/oppo/camera/d/m;->ad:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mOrientation:I

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v3, 0x7f0f019a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_codec_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    iget-wide v1, p0, Lcom/oppo/camera/d/m;->aI:J

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mCameraEnterType:Ljava/lang/String;

    :cond_0
    iget-wide v1, p0, Lcom/oppo/camera/d/m;->aI:J

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bL()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/m;->h(I)I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFaceBeauty:I

    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->az()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsMirror:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bP()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "key_support_video_high_fps"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFps:I

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v4, 0x7f0f00f0

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsRecordLocation:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->aW()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mSmooth:I

    const-string v1, "pref_filter_process_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->F()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bc()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bc()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->o(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFilterType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "default"

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFilterType:Ljava/lang/String;

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mLocation:Ljava/lang/String;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "pref_camera_torch_mode_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->av()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/m;->p(I)I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mbFlashTrigger:I

    :cond_7
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->O()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAeAfLock:Ljava/lang/String;

    :cond_8
    const-string v1, "pref_zoom_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mZoomValue:Ljava/lang/String;

    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->P()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->R()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:I

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v3, 0x7f0f01be

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_volume_key_function_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVolumeFunction:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v3, 0x7f0f016e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_sound_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsShutterVoice:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/d/m;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFaceCount:I

    iget v1, p0, Lcom/oppo/camera/d/m;->o:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mScreenBrightness:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->report()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->df()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cZ()V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/d/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/d/m;->au:Z

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/d/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/d/m;->at:Z

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/d/m;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dn()V

    return-void
.end method

.method static synthetic k(Lcom/oppo/camera/d/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dd()V

    return-void
.end method

.method private n(Ljava/lang/String;)J
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/oppo/camera/d/m;->Y:J

    const-string p1, "VideoMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractMetadataDurationFromFile duration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    :goto_1
    return-wide v2

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    throw p1
.end method

.method private o(Ljava/lang/String;)V
    .locals 6

    const-string v0, "VideoMode"

    const-string v1, "cleanupEmptyFile"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupEmptyFile, Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p(Ljava/lang/String;)I
    .locals 11

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "video_size_qcif"

    const-string v4, "video_size_cif"

    const/4 v5, 0x5

    const-string v6, "video_size_480p"

    const-string v7, "video_size_720p"

    const-string v8, "video_size_1080p"

    const/4 v9, 0x6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v10, "video_size_4kuhd"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v1, v9

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v5

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v9}, Lcom/oppo/camera/e/e;->a(I)I

    move-result v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v5}, Lcom/oppo/camera/e/e;->a(I)I

    move-result v1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/oppo/camera/e/e;->a(I)I

    move-result v1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchRecModeToVideoQuality, mVideoSizeType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoQuality: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private y(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSurfaceState, mVideoSurfaceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->aG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/d/m;->aG:I

    return-void
.end method

.method private z(I)I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/a;->I()V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public P()Z
    .locals 3

    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_1
    :goto_0
    const-string v0, "VideoMode"

    const-string v1, "onBackPressed, isVideoRecording return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method public X()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aH:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aI:J

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->H()V

    :cond_2
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "capture.state"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3ea

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3eb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/d/m$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/m$2;-><init>(Lcom/oppo/camera/d/m;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/oppo/camera/d/n;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError, what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eq p2, v0, :cond_1

    const/16 p1, -0x3ef

    if-eq p3, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x44c

    if-eq p2, p1, :cond_1

    const/16 p1, 0x44d

    if-ne p2, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bZ()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_0

    const-string p1, "VideoMode"

    const-string v0, "configSessionSurface, mProfile is null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "type_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configSessionSurface, mVideoSurfaceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->aG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cB()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cJ()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VideoMode"

    const-string v3, "configSessionSurface, send MSG_PREPARE_VIDEO_SURFACE"

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/m;->y(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v0, :cond_3

    const-string v0, "type_video"

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 2

    const-string p1, "VideoMode"

    const-string v0, "onResume"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aF:J

    return-void
.end method

.method protected a([BZ)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    return-void
.end method

.method protected a(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VideoMode"

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/oppo/camera/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v4, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iput-object v4, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_1
    return v1

    :cond_2
    const-string v0, "oppo.camera.save.originalvideofile"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUpdateSlowVideoToMediaStore save originalVideoFileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->m(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->k()V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteUpdateVideo, originalVideoFileName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  compiledSlowVideoFileName: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteUpdateVideo, mCurrentVideoUri: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_4

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteUpdateVideo, insert, mCurrentVideoUri: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteUpdateSlowVideoToMediaStore mbDisplayOnLock: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/m;->F:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->a(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->b(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_5
    return v3

    :cond_6
    :goto_2
    const-string p1, "deleteUpdateVideo return! File name is null"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public an()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->x()V

    :cond_0
    return-void
.end method

.method public ap()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->b(IZ)V

    :cond_0
    return-void
.end method

.method public at()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public au()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/util/Size;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;II)V
    .locals 0

    const-string p1, "VideoMode"

    const-string p3, "onInfo"

    invoke-static {p1, p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 p3, 0x320

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x321

    if-ne p2, p3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->at:Z

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b([BZ)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->f()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/ui/c;->b_:[Ljava/lang/String;

    return-object v0
.end method

.method public bP()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    const v1, 0x7f0f01a1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_fps_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->h()Z

    move-result v0

    const-string v1, "VideoMode"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "video_size_480p"

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    const-string v4, "is_from_oppo_mms"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_0

    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_0
    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const-string v4, "video_size_1080p"

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    const-string v4, "video_size_720p"

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string v4, "mms_size_type"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoSizeType, sizeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_size_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "getVideoSizeType, mPreferences is null!"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bR()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "deleteCurrentVideo"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iput-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->k()V

    return-void
.end method

.method public bS()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->B(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "IsFromOppoViewCamera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayVideoActivity, Couldn\'t view video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode"

    invoke-static {v2, v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bT()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoShutterButtonClick, mMediaRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraInterface.isAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->s:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->F()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->G()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cc()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onVideoShutterButtonClick, compiling video!"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onVideoShutterButtonClick, being capture mode change!"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->N()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->k()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->D()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "onVideoShutterButtonClick, memory or storage is not enough"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const v3, 0x7f0f018f

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dh()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const-string v0, "onVideoShutterButtonClick, CameraTest Click Video Button"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bZ()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/d/m;->aH:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aI:J

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->de()V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    const-string v0, "onVideoShutterButtonClick, starting or error processing"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterButtonClick, mbPaused: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->s:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", CameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAnimationRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->F()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBlurAnimRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->G()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraInterface.getSwitchingCameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->u()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bU()V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "VideoMode"

    const-string v1, "notifyScanVideoFile, sendBroadcast() success"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bV()Z
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "onVideoRecordingPause, VideoRecord is not started, so return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/oppo/camera/d/m;->Y:J

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    const-string v1, "onVideoRecordingPause, mRecordingTotalTime less then 1s, so return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->e(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->ax:J

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->g()Z

    move-result v0

    return v0
.end method

.method public bW()Z
    .locals 6

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingResume"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onVideoRecordingResume, VideoRecord is not started, so return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(Z)V

    iget-wide v0, p0, Lcom/oppo/camera/d/m;->aw:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/d/m;->ax:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aw:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->ax:J

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->f()Z

    move-result v0

    return v0
.end method

.method public bX()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bY()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bZ()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected be()Ljava/lang/String;
    .locals 1

    const-string v0, "key_video_filter_index"

    return-object v0
.end method

.method protected cC()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method protected cD()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cF()V
    .locals 0

    return-void
.end method

.method public cG()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v1, 0x7f0f01b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected cH()V
    .locals 0

    return-void
.end method

.method protected cI()V
    .locals 0

    return-void
.end method

.method protected cM()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v2, 0x7f0f00cb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_videoflashmode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "func_torch_soft_light"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public cN()Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cO()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected cP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    return-object v0
.end method

.method protected cQ()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    return v0
.end method

.method protected cR()Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cS()Landroid/media/CamcorderProfile;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method protected cT()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "CameraTest Video Flie Save End, mCurrentVideoUri: "

    const-string v1, "VideoMode"

    const-string v2, "addVideoToMediaStore"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/v;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v4, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iput-object v4, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_0
    const-string v0, "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediastore."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v7, v8}, Lcom/oppo/camera/f/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "title"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_size"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v6, v7}, Lcom/oppo/camera/f/a;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tagflags"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->n(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "duration"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addVideoToMediaStore, duration: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mCurrentVideoFilename: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v6, "_display_name"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, displayname: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "_display_name=  ?"

    new-array v11, v3, [Ljava/lang/String;

    aput-object v2, v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_5

    :try_start_1
    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, no popwindows mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v7

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, popwindows mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, no popwindows else mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    iget-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/oppo/camera/d/m;->a(Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/oppo/camera/d/m;->b(Landroid/net/Uri;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, Video mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v4

    :goto_2
    :try_start_2
    const-string v6, "addVideoToMediaStore, failed to add video to media store"

    invoke-static {v1, v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iput-object v4, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_a
    :goto_4
    move v3, v5

    :goto_5
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_b
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->du()V

    return v3
.end method

.method protected cU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cW()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v2, 0x7f0f019a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_codec_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public ca()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ck()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/d/m;->aF:J

    return-wide v0
.end method

.method public cl()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public d(ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartError, fromBroadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->H()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_2
    const/4 v0, 0x5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->l()V

    sget-object p1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/oppo/camera/v;->f()Z

    move-result p1

    if-nez p1, :cond_5

    sput v0, Lcom/oppo/camera/v;->r:I

    const-string p1, "invalid"

    sput-object p1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    sput v2, Lcom/oppo/camera/v;->s:I

    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->k()V

    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->av:Z

    return-void

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    new-instance p2, Lcom/oppo/camera/d/m$3;

    invoke-direct {p2, p0}, Lcom/oppo/camera/d/m$3;-><init>(Lcom/oppo/camera/d/m;)V

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->av:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_slogan_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_continuous_focus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_video_codec_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_video_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "key_support_fovc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "key_support_zsl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "key_support_video_recorder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const-string v0, "pref_video_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "pref_filter_process_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    const-string v0, "func_filter_vignette"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v2
.end method

.method protected d(I)[I
    .locals 1

    const-string v0, "pref_video_filter_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->j:[I

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(I)[I

    move-result-object p1

    return-object p1
.end method

.method public e(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->e(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected e(I)[Ljava/lang/String;
    .locals 1

    const-string v0, "pref_video_filter_menu"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->i:[Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "button_color_inside_red"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method protected h(I)I
    .locals 2

    const-string v0, "func_face_beauty_common"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    const v1, -0x186a0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->aY()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0x28

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const-string v0, "func_face_beauty_custom"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oppo/camera/d/m;->f:[I

    aget p1, v0, p1

    return p1

    :cond_3
    return v1
.end method

.method protected h()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cF()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->j(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->i(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->H()V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->ca()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->C()V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->df()V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cZ()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cI()V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->au:Z

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->d(Z)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->x(I)V

    :cond_3
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/m;->y(I)V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "forceStopVideoRecording, mRecordSig.block"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    const-string v1, "forceStopVideoRecording, mRecordSig.block X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_2
    return-void
.end method

.method protected j()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iput-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->ap:Z

    return-void
.end method

.method protected k()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v2, 0x7f0f00a3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iget-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "type_still_capture_yuv_main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "type_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected l(Ljava/lang/String;)Landroid/util/Size;
    .locals 5

    const-string v0, "video_size_4kuhd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2d0

    const/16 v2, 0x438

    const/16 v3, 0x780

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_1
    const-string v0, "video_size_1080p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "video_size_720p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x500

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "video_size_480p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e0

    goto :goto_1

    :cond_4
    const-string v0, "video_size_cif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x160

    const/16 v0, 0x120

    goto :goto_1

    :cond_5
    const-string v0, "video_size_qcif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb0

    const/16 v0, 0x90

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoPreviewSize, videoSizeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", width: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VideoMode"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public l(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->l(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->B()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->x(I)V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->da()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ae:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cT()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncCommandBeforeFinish, failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected m()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dr()V

    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteVideoFile, fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVideoFile, Could not delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected n(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopVideoRecording, checkRecordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->B()V

    iget-wide v2, p0, Lcom/oppo/camera/d/m;->Y:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "onStopVideoRecording, Record Time less than 1 second."

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_short_video"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/oppo/camera/d/m;->Y:J

    sub-long/2addr v4, v1

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->x(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->da()Z

    move-result p1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "type_video"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->ae:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cT()Z

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->C()V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->df()V

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cZ()V

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1, p1}, Lcom/oppo/camera/d/b;->d(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cI()V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->x(I)V

    :goto_0
    return-void
.end method

.method protected n()Z
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onBeforeSnapping"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onBeforeSnapping, is not in RECORD_STARTED"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected o(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVideoRecordingSound, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->as:Z

    return-void
.end method

.method public t(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/control/e;->a(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/control/e;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected x(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRecordState, mMediaRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/d/m;->ao:I

    return-void
.end method
