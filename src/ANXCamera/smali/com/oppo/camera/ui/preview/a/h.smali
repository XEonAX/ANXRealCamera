.class public Lcom/oppo/camera/ui/preview/a/h;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/a/h$b;,
        Lcom/oppo/camera/ui/preview/a/h$a;,
        Lcom/oppo/camera/ui/preview/a/h$c;
    }
.end annotation


# static fields
.field private static a:Lcom/oppo/camera/ui/preview/a/h;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/oppo/camera/ui/preview/a/h$c;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Lcom/oppo/camera/ui/preview/a/l;

.field private i:J

.field private j:Lcom/oppo/camera/sticker/h;

.field private k:Z

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/ui/preview/a/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/oppo/camera/sticker/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    new-instance v1, Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-direct {v1}, Lcom/oppo/camera/ui/preview/a/h$c;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/oppo/camera/ui/preview/a/h;->i:J

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/h;->k:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->l:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/h;->m:Z

    new-instance v0, Lcom/oppo/camera/ui/preview/a/h$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/a/h$5;-><init>(Lcom/oppo/camera/ui/preview/a/h;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->n:Lcom/oppo/camera/sticker/a;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    const-string v0, "sticker_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->e:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/h;->g()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/h$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 3

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcolor/support/v7/app/b$a;

    const v1, 0x7f1001d4

    invoke-direct {v0, p1, v1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->a(Z)Lcolor/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/preview/a/h$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/h$4;-><init>(Lcom/oppo/camera/ui/preview/a/h;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->b(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0f0224

    new-instance v2, Lcom/oppo/camera/ui/preview/a/h$3;

    invoke-direct {v2, p0, p2}, Lcom/oppo/camera/ui/preview/a/h$3;-><init>(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p2

    const v0, 0x7f0f0222

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p2

    const v0, 0x7f0f0223

    invoke-virtual {p2, v0}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcolor/support/v7/app/b;->show()V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcolor/support/v7/app/b;->a(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_1

    const v0, 0x7f050084

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showNetworkWarningDialog, not a activity context! context: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageStickerTools"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oppo/camera/ui/preview/a/h$b;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h$b;->a(Lcom/oppo/camera/ui/preview/a/h$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_uuid"

    invoke-static {v2, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h$b;->b(Lcom/oppo/camera/ui/preview/a/h$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_type"

    invoke-static {v2, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h$b;->c(Lcom/oppo/camera/ui/preview/a/h$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_name"

    invoke-static {v2, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sticker_download_result"

    invoke-static {v1, p2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h$b;->d(Lcom/oppo/camera/ui/preview/a/h$b;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sticker_network"

    invoke-static {v1, p2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h$b;->e(Lcom/oppo/camera/ui/preview/a/h$b;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sticker_download_cost_time"

    invoke-static {v1, p2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sticker_download"

    invoke-static {p2, v2, v0, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h;->l:Ljava/util/HashMap;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h$b;->a(Lcom/oppo/camera/ui/preview/a/h$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/h;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/h;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/h;->e(Lcom/oppo/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/ui/preview/a/h$b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/h$b;Z)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    invoke-static {}, Lcom/oppo/camera/e/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/h;->k:Z

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ImageStickerTools"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "readStickerStream, stickerUri is null"

    invoke-static {v1, p0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v3, v0, p1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStickerStream, ex: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v0

    :goto_5
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    throw p0
.end method

.method public static b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;
    .locals 2

    sget-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/ui/preview/a/h;->a:Lcom/oppo/camera/ui/preview/a/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/preview/a/h;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oppo/camera/ui/preview/a/h;->a:Lcom/oppo/camera/ui/preview/a/h;

    :cond_0
    sget-object p0, Lcom/oppo/camera/ui/preview/a/h;->a:Lcom/oppo/camera/ui/preview/a/h;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/l;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    return-object p0
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/sticker/data/StickerCategoryItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/sticker/ui/h$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a/h$c;->a()V

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/sticker/data/StickerCategoryItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->getIconFileUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->isCategoryNew()Z

    move-result v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-virtual {p0, v6, v4}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v7

    :goto_1
    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    const v6, 0x7f0703df

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_3
    if-nez v7, :cond_4

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    const v6, 0x7f0703b0

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_4
    new-instance v3, Lcom/oppo/camera/sticker/ui/h$a;

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->getReadableId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/oppo/camera/sticker/ui/h$a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->getReadableId()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v1}, Lcom/oppo/camera/ui/preview/a/h$c;->b(Ljava/lang/String;I)V

    move v1, v4

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private b(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/h;->b()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/l;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/a/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static c(Lcom/oppo/camera/sticker/data/StickerItem;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppo/camera/ui/preview/a/h;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ANIMOJI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/a/h;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/h;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method public static d(Lcom/oppo/camera/sticker/data/StickerItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ANIMOJI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadStickerNearme uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->l:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->l:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/preview/a/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/preview/a/h$b;-><init>(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/ui/preview/a/h$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/ui/preview/a/h$b;->a(Lcom/oppo/camera/ui/preview/a/h$b;J)J

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/h;->i()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$b;->a(Lcom/oppo/camera/ui/preview/a/h$b;I)I

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$b;->a(Lcom/oppo/camera/ui/preview/a/h$b;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$b;->b(Lcom/oppo/camera/ui/preview/a/h$b;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$b;->c(Lcom/oppo/camera/ui/preview/a/h$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StickerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->f:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method private i()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/color/util/ColorNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/color/util/ColorNetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v1

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703cb

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :goto_3
    if-eqz p2, :cond_3

    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw p1
.end method

.method public a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedStickerItem, preferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImageStickerTools"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "getSelectedStickerItem"

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const-string v2, "unselected_uuid"

    const-string v3, "pref_current_sticker_uuid"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    const-string v3, "uuid"

    invoke-static {v2, v3, p1}, Lcom/oppo/camera/sticker/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public a()Lcom/oppo/camera/ui/preview/a/h$c;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/sticker/ui/h$a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oppo/camera/sticker/data/StickerItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/ui/h$a;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    iget-wide v3, p0, Lcom/oppo/camera/ui/preview/a/h;->i:J

    iget-object v5, v1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/oppo/camera/sticker/g;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/oppo/camera/sticker/g;->a(Landroid/database/Cursor;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/oppo/camera/sticker/data/StickerItem;->setCategoryId(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ANIMOJI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySingleStickerInfo, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImageStickerTools"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public a(IZ)V
    .locals 2

    sget-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/h;->m:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/h;->m:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/ui/preview/a/h$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/preview/a/h$1;-><init>(Lcom/oppo/camera/ui/preview/a/h;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/h;->b(I)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ImageStickerTools"

    const-string v1, "initStickerMediator"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/h;->a()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->n:Lcom/oppo/camera/sticker/a;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/g;Lcom/oppo/camera/sticker/data/StickerItem;Z)V
    .locals 7

    sget-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/preview/a/h$c;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a/h$c;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/h$c;->c()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/a/h$c;->d()I

    move-result v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "ImageStickerTools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImageResource, stickerList.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2, v3, p2, p3}, Lcom/oppo/camera/ui/preview/a/g;->a(Ljava/util/ArrayList;ILcom/oppo/camera/sticker/data/StickerItem;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->g:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/ui/preview/a/h$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/oppo/camera/ui/preview/a/h$2;-><init>(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/sticker/data/StickerItem;Lcom/oppo/camera/ui/preview/a/g;Z)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectClick, isDownloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->isDownloaded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", item.needUpdate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->needUpdate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->needUpdate()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    if-eqz v1, :cond_9

    iget-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/h;->k:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    invoke-virtual {p1, v4}, Lcom/oppo/camera/sticker/data/StickerItem;->setDownloadState(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lcom/oppo/camera/ui/preview/a/l;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1, v0}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;Z)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/h;->e(Lcom/oppo/camera/sticker/data/StickerItem;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/color/util/ColorNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v4}, Lcom/oppo/camera/sticker/data/StickerItem;->setDownloadState(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lcom/oppo/camera/ui/preview/a/l;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;Z)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/h;->e(Lcom/oppo/camera/sticker/data/StickerItem;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/color/util/ColorNetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Lcom/oppo/camera/sticker/data/StickerItem;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    const v2, 0x7f0f023b

    invoke-static {v1, v2}, Lcom/oppo/camera/o/c;->a(Landroid/content/Context;I)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/oppo/camera/sticker/data/StickerItem;->setDownloadState(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->h:Lcom/oppo/camera/ui/preview/a/l;

    if-eqz v1, :cond_9

    invoke-interface {v1, p1}, Lcom/oppo/camera/ui/preview/a/l;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_9
    :goto_2
    return v0

    :cond_a
    const-string p1, "onEffectClick, item is null!"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 4

    const-string v0, "refreshStickerInfoByCameraId"

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v0, "refreshStickerInfoByCameraId, mContext is null"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/h;->c()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-direct {p0, v2}, Lcom/oppo/camera/ui/preview/a/h;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/preview/a/h$c;->a(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/h$c;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/preview/a/h;->b(Lcom/oppo/camera/sticker/data/StickerItem;)V

    goto :goto_0

    :cond_1
    const-string v2, "initStickerInfoToMap, databaseList is null"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$c;->a(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/preview/a/h$c;->a(Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/oppo/camera/ui/preview/a/h$c;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, "ImageStickerTools"

    const-string v0, "refreshSticker, item is null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/a/h$c;->b(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/sticker/data/StickerCategoryItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/oppo/camera/ui/preview/a/h;->i:J

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/sticker/e;->a(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/oppo/camera/sticker/e;->a(Landroid/database/Cursor;)Lcom/oppo/camera/sticker/data/StickerCategoryItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :catch_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public d()V
    .locals 3

    const-string v0, "ImageStickerTools"

    const-string v1, "releaseResource"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->n:Lcom/oppo/camera/sticker/a;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/h;->b(Lcom/oppo/camera/sticker/a;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/h;->b()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    :cond_0
    sget-object v0, Lcom/oppo/camera/ui/preview/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h;->d:Lcom/oppo/camera/ui/preview/a/h$c;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/h$c;->a()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/h;->h()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/h;->m:Z

    sput-object v1, Lcom/oppo/camera/ui/preview/a/h;->a:Lcom/oppo/camera/ui/preview/a/h;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    if-eqz v0, :cond_0

    const-string v0, "ImageStickerTools"

    const-string v1, "requestSticker"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/h;->j:Lcom/oppo/camera/sticker/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/h;->c()V

    :cond_0
    return-void
.end method
