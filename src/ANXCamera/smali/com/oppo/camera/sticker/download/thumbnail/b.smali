.class public Lcom/oppo/camera/sticker/download/thumbnail/b;
.super Ljava/lang/Object;
.source "ThumbnailDownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/sticker/download/thumbnail/b$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/oppo/camera/sticker/download/thumbnail/a;

.field private d:Lcom/oppo/camera/sticker/download/thumbnail/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.sticker.thumb.download"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/camera/sticker/download/thumbnail/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/sticker/download/thumbnail/a;Lcom/oppo/camera/sticker/download/thumbnail/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    iput-object v0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->d:Lcom/oppo/camera/sticker/download/thumbnail/b$a;

    iput-object p1, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    iput-object p3, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->d:Lcom/oppo/camera/sticker/download/thumbnail/b$a;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/download/thumbnail/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/oppo/camera/sticker/c/a$a;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download, url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDownloadThread"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/sticker/c/a;

    iget-object v1, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/camera/sticker/c/a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/oppo/camera/sticker/c/a$b;->POST:Lcom/oppo/camera/sticker/c/a$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/oppo/camera/sticker/c/a;->a(Lcom/oppo/camera/sticker/c/a$b;Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/sticker/c/a;->a(Lokhttp3/Request;Ljava/lang/String;Lcom/oppo/camera/sticker/c/a$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ThumbnailDownloadThread"

    if-nez v0, :cond_0

    const-string p1, "checkMd5, file not exist!"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "checkMd5, empty md5!"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p1, p2}, Lcom/oppo/camera/sticker/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/sticker/download/thumbnail/b;)Lcom/oppo/camera/sticker/download/thumbnail/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/sticker/download/thumbnail/b;)Lcom/oppo/camera/sticker/download/thumbnail/b$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->d:Lcom/oppo/camera/sticker/download/thumbnail/b$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    invoke-interface {v0}, Lcom/oppo/camera/sticker/download/thumbnail/a;->getFirstDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ThumbnailDownloadThread"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    iget-object v3, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->b:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/oppo/camera/sticker/download/thumbnail/a;->getDownloadFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    invoke-interface {v3}, Lcom/oppo/camera/sticker/download/thumbnail/a;->getFirstDownloadFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oppo/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/oppo/camera/sticker/download/thumbnail/b$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/oppo/camera/sticker/download/thumbnail/b$1;-><init>(Lcom/oppo/camera/sticker/download/thumbnail/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/oppo/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oppo/camera/sticker/c/a$a;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/oppo/camera/sticker/download/thumbnail/b;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, md5 is verified!, do not need download anymore!, firstDownloadUrl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "firstDownloadUrl is empty!"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    invoke-interface {v0}, Lcom/oppo/camera/sticker/download/thumbnail/a;->getSecondDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    iget-object v3, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->b:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/oppo/camera/sticker/download/thumbnail/a;->getDownloadFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/sticker/download/thumbnail/b;->c:Lcom/oppo/camera/sticker/download/thumbnail/a;

    invoke-interface {v3}, Lcom/oppo/camera/sticker/download/thumbnail/a;->getSecondDownloadFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oppo/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Lcom/oppo/camera/sticker/download/thumbnail/b$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/oppo/camera/sticker/download/thumbnail/b$2;-><init>(Lcom/oppo/camera/sticker/download/thumbnail/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oppo/camera/sticker/c/a$a;)V

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/oppo/camera/sticker/download/thumbnail/b;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, md5 is verified!, do not need download anymore!, secondDownloadUrl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "secondDownloadUrl is empty!"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
