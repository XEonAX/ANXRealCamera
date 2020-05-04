.class public Lcom/oppo/camera/sticker/download/b;
.super Ljava/lang/Object;
.source "DownloadStatesCallbackImpl.java"

# interfaces
.implements Lcom/oppo/providers/downloads/DownloadStatesCallback;


# static fields
.field private static final a:Z


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sticker.download.debuggable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/camera/sticker/download/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/android/providers/downloads/DownloadInfoData;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfoData;->mReason:J

    long-to-int v0, v0

    const/16 v1, 0x3f3

    const/16 v2, -0x28

    const/16 v3, -0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownloadErrorCode, unknown error! info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadStateCallbackImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :pswitch_0
    const/16 v2, -0x30

    goto :goto_1

    :pswitch_1
    const/16 v2, -0x2f

    goto :goto_1

    :pswitch_2
    const/16 v2, -0x2e

    goto :goto_1

    :pswitch_3
    const/16 v2, -0x2d

    goto :goto_1

    :pswitch_4
    const/16 v2, -0x2c

    goto :goto_1

    :pswitch_5
    const/16 v2, -0x2b

    goto :goto_1

    :pswitch_6
    const/16 v2, -0x2a

    goto :goto_1

    :pswitch_7
    const/16 v2, -0x29

    goto :goto_1

    :pswitch_8
    const/16 v2, -0x16

    goto :goto_1

    :pswitch_9
    const/16 v2, -0x17

    goto :goto_1

    :pswitch_a
    const/16 v2, -0x15

    goto :goto_1

    :goto_0
    :pswitch_b
    move v2, v3

    goto :goto_1

    :pswitch_c
    const/16 v2, -0x18

    goto :goto_1

    :pswitch_d
    const/16 v2, -0x19

    goto :goto_1

    :pswitch_e
    const/16 v2, -0x1a

    goto :goto_1

    :cond_0
    const/16 v2, -0x32

    goto :goto_1

    :cond_1
    const/16 v2, -0x31

    :cond_2
    :goto_1
    :pswitch_f
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_f
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3ec
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/android/providers/downloads/DownloadInfoData;Z)V
    .locals 4

    const-string v0, "DownloadStateCallbackImpl"

    if-nez p1, :cond_0

    const-string p1, "handleDownloadStateChanged, downloadInfo is null!"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfoData;->mUuid:Ljava/lang/String;

    const-string v3, "download_uuid"

    invoke-static {v1, v3, v2}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/camera/sticker/data/StickerItemWrapper;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadStateChanged, can\'t find the sticker item with download uuid.  downloadInfo: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-boolean v2, Lcom/oppo/camera/sticker/download/b;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDownloadStateChanged, downloadDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stickerItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", downloadInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/sticker/download/b;->e(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V

    goto :goto_0

    :cond_3
    iget p2, p1, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    const/4 v2, 0x1

    if-eq p2, v2, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_7

    const/4 v2, 0x4

    if-eq p2, v2, :cond_6

    const/16 v2, 0x8

    if-eq p2, v2, :cond_5

    const/16 v2, 0x10

    if-eq p2, v2, :cond_4

    const-string p1, "handleDownloadStateChanged, unsupported download status!"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/sticker/download/b;->d(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/sticker/download/b;->c(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/sticker/download/b;->b(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_new"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v2, p2, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "download_state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    invoke-static {v2, v4, v3, v0}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    sget-boolean v2, Lcom/oppo/camera/sticker/download/b;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDownloadPending, update count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadStateCallbackImpl"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerNew(Z)V

    iget p2, p2, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setDownloadState(I)V

    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;Z)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "download_state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    invoke-static {v2, v4, v3, v0}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    sget-boolean v2, Lcom/oppo/camera/sticker/download/b;->a:Z

    const-string v3, "DownloadStateCallbackImpl"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDownloadFail, update count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloadFail, isCopyFileError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", downloadInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stickerItem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setDownloadState(I)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object p2

    const/16 p3, -0x33

    invoke-virtual {p2, p1, p3}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/android/providers/downloads/DownloadInfoData;)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)V

    :goto_0
    return-void
.end method

.method private b(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p2, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-static {v1, v3, v2, v0}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    sget-boolean v1, Lcom/oppo/camera/sticker/download/b;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloadRunning, update count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadStateCallbackImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerNew(Z)V

    iget p2, p2, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setDownloadState(I)V

    return-void
.end method

.method private c(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p2, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-static {v1, v3, v2, v0}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloadPaused, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stickerItem: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadInfo: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadStateCallbackImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/providers/downloads/DownloadInfoData;->mStatus:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setDownloadState(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/android/providers/downloads/DownloadInfoData;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/sticker/h;->b(Lcom/oppo/camera/sticker/data/StickerItem;I)V

    return-void
.end method

.method private d(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/providers/downloads/DownloadInfoData;->mFileName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/oppo/camera/sticker/download/c;->a(Landroid/content/Context;Lcom/oppo/camera/sticker/data/StickerItemWrapper;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloadSuccess, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "stickerItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", downloadInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadStateCallbackImpl"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oppo/camera/sticker/h;->b(Lcom/oppo/camera/sticker/data/StickerItem;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadSuccess, installSticker sticker fail! stickerItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;Z)V

    :goto_0
    return-void
.end method

.method private e(Lcom/oppo/camera/sticker/data/StickerItemWrapper;Lcom/android/providers/downloads/DownloadInfoData;)V
    .locals 5

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->getDownloadState()I

    move-result p2

    const-string v0, "DownloadStateCallbackImpl"

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadDelete, sticker is download successful! stickerItem: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "download_state"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/download/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    invoke-static {v2, v4, v3, p2}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDownloadDelete, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", stickerItem: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setDownloadState(I)V

    return-void
.end method


# virtual methods
.method public onDownloadDeleted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DownloadStateCallbackImpl"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfoData;

    sget-boolean v2, Lcom/oppo/camera/sticker/download/b;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadDeleted, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/android/providers/downloads/DownloadInfoData;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "onDownloadDeleted, dataList is empty!"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadInserted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DownloadStateCallbackImpl"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfoData;

    sget-boolean v2, Lcom/oppo/camera/sticker/download/b;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadInserted, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/android/providers/downloads/DownloadInfoData;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "onDownloadInserted, dataList is empty!"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DownloadStateCallbackImpl"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfoData;

    sget-boolean v2, Lcom/oppo/camera/sticker/download/b;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadUpdated, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/sticker/download/b;->a(Lcom/android/providers/downloads/DownloadInfoData;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "onDownloadUpdated, dataList is empty!"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
