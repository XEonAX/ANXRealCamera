.class public Lcom/oppo/camera/sticker/f;
.super Ljava/lang/Object;
.source "StickerDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/sticker/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oppo/camera/sticker/f$a;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/sticker/f;->b:Lcom/oppo/camera/sticker/f$a;

    new-instance v0, Lcom/oppo/camera/sticker/f$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/sticker/f$1;-><init>(Lcom/oppo/camera/sticker/f;)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/f;->c:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/protocol/StickerCategory;Ljava/lang/String;J)Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;
    .locals 3

    new-instance v0, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;

    invoke-direct {v0}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;-><init>()V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryName(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->iconPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setIconUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->iconMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setIconMd5(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->highlightIconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->highlightIconPath:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightUrl(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->highlightIconMd5:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightMd5(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setLastRequestTime(J)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->readableId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setReadableId(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->position:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setPosition(I)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->isNew:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/oppo/camera/sticker/protocol/StickerCategory;->isNew:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryNew(Z)V

    :cond_2
    return-object v0
.end method

.method private a(Lcom/oppo/camera/sticker/protocol/Sticker;Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;Ljava/lang/String;J)Lcom/oppo/camera/sticker/data/StickerItemWrapper;
    .locals 3

    new-instance v0, Lcom/oppo/camera/sticker/data/StickerItemWrapper;

    invoke-direct {v0}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;-><init>()V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerId(J)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerUUID(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerName(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setFileDownloadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->fileMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setFileMd5(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->thumbnailPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->thumbnailMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setThumbnailMd5(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setLogoUrl(Ljava/lang/String;)V

    :cond_2
    iget-object p3, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->logoMd5:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setLogoMd5(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->version:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setVersion(J)V

    invoke-virtual {v0, p4, p5}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setLastRequestTime(J)V

    invoke-virtual {p2}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setCategoryId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;->getPosition()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setCategoryPosition(I)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->position:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setPosition(I)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->compatibleApp:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setAttribute(J)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->hasMusic:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setHasMusic(Z)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setIsBuildIn(Z)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->materialType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setMaterialType(I)V

    iget-object p2, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->isNew:Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/oppo/camera/sticker/protocol/Sticker;->isNew:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerNew(Z)V

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/f;)Lcom/oppo/camera/sticker/f$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/f;->b:Lcom/oppo/camera/sticker/f$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oppo/camera/sticker/download/thumbnail/ThumbDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.coloros.providers.sticker.download.category.thumbnail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadCategoryThumbnail, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerDataRequest"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/f;Lcom/oppo/camera/sticker/protocol/StickerResponse;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/sticker/f;->a(Lcom/oppo/camera/sticker/protocol/StickerResponse;J)V

    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/protocol/StickerResponse;J)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-wide/from16 v7, p2

    const-string v9, "StickerDataRequest"

    if-nez v0, :cond_0

    const-string v0, "dealStickerResponseData, response is null!"

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f40

    if-ne v1, v2, :cond_8

    iget-object v1, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/camera/debug/PrefUtils;->getLocalDataVersion(Landroid/content/Context;)J

    move-result-wide v1

    iget-object v3, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->dataVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealStickerResponseData, localDataVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", responseVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v10, v1

    if-lez v1, :cond_7

    iget-object v1, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/camera/sticker/a/b;->b(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->checkInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0xea60

    mul-long/2addr v1, v3

    iget-object v3, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/oppo/camera/debug/PrefUtils;->updateCheckInterval(Landroid/content/Context;J)V

    iget-object v12, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->fileServerHost:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "dealStickerResponseData, hort url is empty!"

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->category:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "dealStickerResponseData, responseStickerCategoryList is null!"

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/sticker/protocol/StickerCategory;

    invoke-direct {v6, v0, v12, v7, v8}, Lcom/oppo/camera/sticker/f;->a(Lcom/oppo/camera/sticker/protocol/StickerCategory;Ljava/lang/String;J)Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/oppo/camera/sticker/protocol/StickerCategory;->sticker:Ljava/util/List;

    if-nez v0, :cond_4

    const-string v0, "dealStickerResponseData, stickerList is null!"

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oppo/camera/sticker/protocol/Sticker;

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v12

    move-object/from16 v17, v4

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/sticker/f;->a(Lcom/oppo/camera/sticker/protocol/Sticker;Lcom/oppo/camera/sticker/data/StickerCategoryItemWrapper;Ljava/lang/String;J)Lcom/oppo/camera/sticker/data/StickerItemWrapper;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v17

    goto :goto_1

    :cond_5
    iget-object v0, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/oppo/camera/sticker/a/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    iget-object v1, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v1, v14}, Lcom/oppo/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/oppo/camera/debug/PrefUtils;->updateLocalDataVersion(Landroid/content/Context;J)V

    iget-object v0, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/oppo/camera/debug/PrefUtils;->updateRequestTime(Landroid/content/Context;J)V

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealStickerResponseData db fail! updateCategoryResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", updateItemResult: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/sticker/a/b;->c(Landroid/content/Context;)V

    goto :goto_3

    :cond_7
    const-string v0, "dealStickerResponseData, data version already new. do not update!"

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/oppo/camera/sticker/f;->a(Landroid/content/Context;)V

    iget-object v0, v6, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/oppo/camera/sticker/f;->b(Landroid/content/Context;)V

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealStickerResponseData error! resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resultDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oppo/camera/sticker/protocol/StickerResponse;->resultDesc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private a(I)[B
    .locals 2

    new-instance p1, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-direct {p1}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;-><init>()V

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->model(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->resResolution(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    const-string v0, "100"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->protocolVersion(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/d/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->clientVersion(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->colorosVersion(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/d/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->androidVersion(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/d/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->otaVersion(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    invoke-static {}, Lcom/oppo/camera/sticker/d/a;->a()Lcom/oppo/camera/sticker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->locale(Ljava/lang/String;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/debug/PrefUtils;->getLocalDataVersion(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->localDataVersion(Ljava/lang/Long;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->compatibleApp(Ljava/lang/Long;)Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;

    sget-object v0, Lcom/oppo/camera/sticker/protocol/StickerRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/protocol/StickerRequest$Builder;->build()Lcom/oppo/camera/sticker/protocol/StickerRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oppo/camera/sticker/download/thumbnail/ThumbDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.coloros.providers.sticker.download.sticker.thumbnail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadStickerThumbnail, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerDataRequest"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/debug/PrefUtils;->getAuditingMode(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StickerDataRequest"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oppo/camera/sticker/c/a;

    iget-object v2, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oppo/camera/sticker/c/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/f;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/sticker/c/a;->a([B)Lokhttp3/RequestBody;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/sticker/c/a$b;->POST:Lcom/oppo/camera/sticker/c/a$b;

    iget-object v4, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v4, v0}, Lcom/oppo/camera/sticker/c/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Lcom/oppo/camera/sticker/f;->a(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/oppo/camera/sticker/c/a;->a(Lcom/oppo/camera/sticker/c/a$b;Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    new-instance v2, Lcom/oppo/camera/sticker/f$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/sticker/f$2;-><init>(Lcom/oppo/camera/sticker/f;)V

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/sticker/c/a;->a(Lokhttp3/Request;Lcom/oppo/camera/sticker/c/a$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerDataRequest"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sticker.thumbnail.service"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/sticker/f;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/f;->b:Lcom/oppo/camera/sticker/f$a;

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerDataRequest"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/f;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/debug/PrefUtils;->getCheckInterval(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/camera/debug/PrefUtils;->getLastRequestTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    const-string v0, "StickerDataRequest"

    const-string v1, "checkUpdateData, do not need update data!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/f;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oppo/camera/sticker/f;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/sticker/f;->d()V

    :goto_0
    return-void
.end method
