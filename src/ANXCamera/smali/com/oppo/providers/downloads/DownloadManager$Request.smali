.class public Lcom/oppo/providers/downloads/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/providers/downloads/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_PRIORITY:I = 0x0

.field public static final MAX_PRIORITY:I = 0xa

.field public static final NETWORK_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2

.field private static final SCANNABLE_VALUE_NO:I = 0x2

.field private static final SCANNABLE_VALUE_YES:I = 0x0

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_HIDDEN_UI:I = 0x0

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_DOWNLOAD_UI:I = 0x1

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION:I = 0x3

.field public static final VISIBILITY_VISIBLE_SELF_UI:I = 0x2


# instance fields
.field private mAllowedNetworkTypes:I

.field private mBackupUri:Landroid/net/Uri;

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestinationUri:Landroid/net/Uri;

.field private mDownloadDelay:Z

.field private mExtra:Ljava/lang/String;

.field private mFailRetryCount:I

.field private mFailRetryInterval:J

.field private mFileMD5:Ljava/lang/String;

.field private mFlags:I

.field private mHeaderMD5:Ljava/lang/String;

.field private mIsRelpaceFile:Z

.field private mMeteredAllowed:Z

.field private mMimeType:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mPriority:I

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoamingAllowed:Z

.field private mScannable:Z

.field private mStatisticsId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mUIVisibility:I

.field private mUri:Landroid/net/Uri;

.field private mUseSystemCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oppo/providers/downloads/DownloadManager;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    const/4 v0, 0x6

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mAllowedNetworkTypes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRoamingAllowed:Z

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMeteredAllowed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mScannable:Z

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUseSystemCache:Z

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDownloadDelay:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mExtra:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mIsRelpaceFile:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mStatisticsId:I

    iput v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryCount:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryInterval:J

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFileMD5:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mHeaderMD5:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mNotificationVisibility:I

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUIVisibility:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUri:Landroid/net/Uri;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    const/4 v0, 0x6

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mAllowedNetworkTypes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRoamingAllowed:Z

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMeteredAllowed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mScannable:Z

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUseSystemCache:Z

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDownloadDelay:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mExtra:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mIsRelpaceFile:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mStatisticsId:I

    iput v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryCount:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryInterval:J

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFileMD5:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mHeaderMD5:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mNotificationVisibility:I

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUIVisibility:I

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "https"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mBackupUri:Landroid/net/Uri;

    :cond_2
    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    const/4 v0, 0x6

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mAllowedNetworkTypes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRoamingAllowed:Z

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMeteredAllowed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mScannable:Z

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUseSystemCache:Z

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDownloadDelay:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mExtra:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    iput-boolean v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mIsRelpaceFile:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mStatisticsId:I

    iput v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryCount:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryInterval:J

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFileMD5:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mHeaderMD5:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mNotificationVisibility:I

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUIVisibility:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http_header_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "subPath cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "header may not contain \':\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "header cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public allowScanningByMediaScanner()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mScannable:Z

    return-void
.end method

.method public setAllowedNetworkTypes(I)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mAllowedNetworkTypes:I

    return-object p0
.end method

.method public setAllowedOverMetered(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMeteredAllowed:Z

    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRoamingAllowed:Z

    return-object p0
.end method

.method public setBackupUri(Landroid/net/Uri;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mBackupUri:Landroid/net/Uri;

    :cond_1
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists and is not a directory"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/oppo/providers/downloads/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create directory: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to get external storage files directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 2

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists and is not a directory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oppo/providers/downloads/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to get external storage public directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDestinationToSystemCache()Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUseSystemCache:Z

    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setDownloadDelay(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDownloadDelay:Z

    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mExtra:Ljava/lang/String;

    return-object p0
.end method

.method public setFailRetryCount(IJ)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryCount:I

    iput-wide p2, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryInterval:J

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invaild count."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFileMD5(Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFileMD5:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setHeaderMD5(Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mHeaderMD5:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setIsRelpaceFile(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mIsRelpaceFile:Z

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationVisibility(I)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mNotificationVisibility:I

    return-object p0
.end method

.method public setOppoPriority(I)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    :goto_0
    return-object p0
.end method

.method public setRequiresCharging(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public setRequiresChargingIdle(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public setRequiresCpuIdle(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public setRequiresProtectFore(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public setShowRunningNotification(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->setNotificationVisibility(I)Lcom/oppo/providers/downloads/DownloadManager$Request;

    move-result-object p1

    return-object p1
.end method

.method public setStatisticsId(I)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mStatisticsId:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisibleInDownloadsUi(Z)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUIVisibility:I

    return-object p0
.end method

.method public setVisibleInUi(I)Lcom/oppo/providers/downloads/DownloadManager$Request;
    .locals 0

    iput p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUIVisibility:I

    return-object p0
.end method

.method toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_public_api"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "notificationpackage"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    const/4 v2, 0x2

    const-string v3, "destination"

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "hint"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUseSystemCache:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mScannable:Z

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "scanned"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    const-string v2, "title"

    invoke-direct {p0, v0, v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    const-string v2, "description"

    invoke-direct {p0, v0, v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    const-string v2, "mimetype"

    invoke-direct {p0, v0, v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mNotificationVisibility:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "allowed_network_types"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "allow_roaming"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mMeteredAllowed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "allow_metered"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFlags:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "flags"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mUIVisibility:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "is_visible_in_downloads_ui"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mDownloadDelay:Z

    if-eqz p1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "control"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p1, 0xc1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mExtra:Ljava/lang/String;

    const-string v1, "extra"

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mPriority:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "priority"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mIsRelpaceFile:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "relpace_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mStatisticsId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "statistics_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "fail_retry_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFailRetryInterval:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time_interval_for_fail"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mBackupUri:Landroid/net/Uri;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "backup_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mFileMD5:Ljava/lang/String;

    const-string v1, "md5"

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager$Request;->mHeaderMD5:Ljava/lang/String;

    const-string v1, "header_md5"

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
