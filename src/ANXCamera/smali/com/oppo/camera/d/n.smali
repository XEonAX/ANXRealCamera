.class public Lcom/oppo/camera/d/n;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/n$a;,
        Lcom/oppo/camera/d/n$b;,
        Lcom/oppo/camera/d/n$c;,
        Lcom/oppo/camera/d/n$d;,
        Lcom/oppo/camera/d/n$e;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/media/MediaRecorder;

.field private c:Lcom/oppo/camera/d/c;

.field private d:Lcom/oppo/camera/d/n$e;

.field private e:Lcom/oppo/camera/d/n$d;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    iput-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    iput-object v0, p0, Lcom/oppo/camera/d/n;->d:Lcom/oppo/camera/d/n$e;

    iput-object v0, p0, Lcom/oppo/camera/d/n;->e:Lcom/oppo/camera/d/n$d;

    iput-boolean p1, p0, Lcom/oppo/camera/d/n;->a:Z

    invoke-direct {p0}, Lcom/oppo/camera/d/n;->h()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/n;->d:Lcom/oppo/camera/d/n$e;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/n;->e:Lcom/oppo/camera/d/n$d;

    return-object p0
.end method

.method private h()V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/d/c;

    invoke-direct {v0}, Lcom/oppo/camera/d/c;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    new-instance v2, Lcom/oppo/camera/d/n$a;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/d/n$a;-><init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/d/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/oppo/camera/d/n$c;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/d/n$c;-><init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/oppo/camera/d/n$b;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/d/n$b;-><init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/c;->a(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/c;->a(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/c;->b(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_0
    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Landroid/media/CamcorderProfile;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/d/n$d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/n;->e:Lcom/oppo/camera/d/n$d;

    return-void
.end method

.method public a(Lcom/oppo/camera/d/n$e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/n;->d:Lcom/oppo/camera/d/n$e;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/q;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/gl/q;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeExifTag, exifInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "set-title="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/d/d;)V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->g(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_0
    return-void
.end method

.method public c(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/d/c;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-static {p2, p1}, Lcom/oppo/camera/e/a;->b(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v1, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "set-author=realme_"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->h(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "VideoRecorder"

    const-string v2, "resume, Could not resume video recorder"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "VideoRecorder"

    const-string v1, "pause, Could not pause video recorder"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->d(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->c(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->e(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/c;->a(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_0
    return-void
.end method

.method public l(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMirror, mirrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v2, "setParameter"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set-video-mirror="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v0, "setVideoMirror, IllegalAccessException"

    invoke-static {v1, v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string v0, "setVideoMirror, InvocationTargetException"

    invoke-static {v1, v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string v0, "setVideoMirror, NoSuchMethodException"

    invoke-static {v1, v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoMirror, mMediaRecorder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mbUseCameraMediaCodec: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
