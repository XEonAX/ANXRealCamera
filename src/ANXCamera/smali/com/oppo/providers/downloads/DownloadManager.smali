.class public Lcom/oppo/providers/downloads/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/providers/downloads/DownloadManager$CursorTranslator;,
        Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;,
        Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;,
        Lcom/oppo/providers/downloads/DownloadManager$Query;,
        Lcom/oppo/providers/downloads/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field private static final ACTION_UI_PACKAGEBANE:Ljava/lang/String; = "coloros.intent.action.VIEW_DOWNLOADS"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field private static final AS:Ljava/lang/String; = " AS "

.field public static final CHANGE_TYPE_DELETE:Ljava/lang/String; = "delete"

.field public static final CHANGE_TYPE_INSERT:Ljava/lang/String; = "insert"

.field public static final CHANGE_TYPE_UPDATE:Ljava/lang/String; = "update"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field private static final DEFAULT_PROVIDER_PACKAGENAME:Ljava/lang/String; = "com.android.providers.downloads"

.field private static final DEFAULT_UI_PACKAGENAME:Ljava/lang/String; = "com.coloros.providers.downloads.ui"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_CLIENT_ERROR:I = 0x3f4

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_HTTP_SERVER_ERROR:I = 0x3f3

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_BY_APP:I = 0x5

.field public static final PAUSED_DEVICE_NOT_FOUND_ERROR:I = 0x7

.field public static final PAUSED_INSUFFICIENT_SPACE_ERROR:I = 0x6

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field private static final PROVIDER_VERSION:Ljava/lang/String; = "provider_version"

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_MASK:I = 0x1f

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;

.field public static final UNDERLYING_COLUMNS_OLD:[Ljava/lang/String;

.field private static mDownloadProviderVersionForManager:I

.field private static sDownloadManager:Lcom/oppo/providers/downloads/DownloadManager;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAccessFilename:Z

.field private mBaseUri:Landroid/net/Uri;

.field private mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

.field private mDownloadDBCallback:Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;

.field private mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "_id"

    const-string v1, "local_filename"

    const-string v2, "mediaprovider_uri"

    const-string v3, "destination"

    const-string v4, "title"

    const-string v5, "description"

    const-string v6, "uri"

    const-string v7, "status"

    const-string v8, "hint"

    const-string v9, "media_type"

    const-string v10, "total_size"

    const-string v11, "last_modified_timestamp"

    const-string v12, "bytes_so_far"

    const-string v13, "allow_write"

    const-string v14, "local_uri"

    const-string v15, "reason"

    const-string v16, "notificationpackage"

    const-string v17, "is_visible_in_downloads_ui"

    const-string v18, "download_speed"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/providers/downloads/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "_data AS local_filename"

    const-string v3, "mediaprovider_uri"

    const-string v4, "destination"

    const-string v5, "title"

    const-string v6, "description"

    const-string v7, "uri"

    const-string v8, "status"

    const-string v9, "hint"

    const-string v10, "notificationpackage"

    const-string v11, "mimetype AS media_type"

    const-string v12, "total_bytes AS total_size"

    const-string v13, "lastmod AS last_modified_timestamp"

    const-string v14, "current_bytes AS bytes_so_far"

    const-string v15, "allow_write"

    const-string v16, "is_visible_in_downloads_ui"

    const-string v17, "download_speed"

    const-string v18, "\'placeholder\' AS local_uri"

    const-string v19, "\'placeholder\' AS reason"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/providers/downloads/DownloadManager;->UNDERLYING_COLUMNS_OLD:[Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/providers/downloads/DownloadManager;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/oppo/providers/downloads/DownloadManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/4 v0, 0x0

    sput v0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadProviderVersionForManager:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/providers/downloads/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oppo/providers/downloads/DownloadManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    :goto_0
    sget-boolean p2, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    const-string v0, "DownloadManager"

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager. mPackageName = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge p2, v1, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mAccessFilename:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.android.providers.downloads"

    const/16 v1, 0x80

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p2, "provider_version"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadProviderVersionForManager:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager,exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The context and resolver can\'t be null !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadProviderVersionForManager:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/providers/downloads/DownloadManager;)Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;
    .locals 0

    iget-object p0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadDBCallback:Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oppo/providers/downloads/DownloadManager;)Lcom/oppo/providers/downloads/DownloadStatesCallback;
    .locals 0

    iget-object p0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oppo/providers/downloads/DownloadManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oppo/providers/downloads/DownloadManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static dumpArray([Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpArray array= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadManager"

    invoke-static {v0, p0}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getDownloadManagerInstance(Landroid/content/Context;)Lcom/oppo/providers/downloads/DownloadManager;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->getDownloadManagerInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDownloadManagerInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager;
    .locals 2

    const-class v0, Lcom/oppo/providers/downloads/DownloadManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/providers/downloads/DownloadManager;->sDownloadManager:Lcom/oppo/providers/downloads/DownloadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/providers/downloads/DownloadManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/oppo/providers/downloads/DownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/oppo/providers/downloads/DownloadManager;->sDownloadManager:Lcom/oppo/providers/downloads/DownloadManager;

    :cond_0
    sget-object p0, Lcom/oppo/providers/downloads/DownloadManager;->sDownloadManager:Lcom/oppo/providers/downloads/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "com.coloros.providers.downloads.ui"

    return-object p0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getWhereClauseForPackages([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "notificationpackage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isActiveNetworkExpensive(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized registerContentObserver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;-><init>(Lcom/oppo/providers/downloads/DownloadManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oppo/providers/downloads/OppoDownloads;->DOWNLOADS_DB_LISTEN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterContentObserver()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadChangeObserver:Lcom/oppo/providers/downloads/DownloadManager$DownloadManagerContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Lcom/oppo/providers/downloads/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 12

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/oppo/providers/downloads/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/oppo/providers/downloads/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 2

    const-string v0, "title"

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v0, p2}, Lcom/oppo/providers/downloads/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {v0, p5}, Lcom/oppo/providers/downloads/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {v0, p4}, Lcom/oppo/providers/downloads/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-ltz v0, :cond_5

    if-eqz p10, :cond_0

    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$Request;

    invoke-direct {v0, p10}, Lcom/oppo/providers/downloads/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$Request;

    const-string p10, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v0, p10}, Lcom/oppo/providers/downloads/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Lcom/oppo/providers/downloads/DownloadManager$Request;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oppo/providers/downloads/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Lcom/oppo/providers/downloads/DownloadManager$Request;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/oppo/providers/downloads/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;

    if-eqz p11, :cond_1

    invoke-virtual {p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Referer"

    invoke-virtual {v0, p2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Request;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/oppo/providers/downloads/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "destination"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "_data"

    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "status"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "total_bytes"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x2

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    move p3, p2

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "scanned"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p8, :cond_3

    const/4 p2, 0x3

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "visibility"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "allow_write"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object p3, Lcom/android/providers/downloads/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " invalid value for param: totalBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enqueue(Lcom/oppo/providers/downloads/DownloadManager$Request;)J
    .locals 5

    const-string v0, "DownloadManager"

    const-wide/16 v1, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/oppo/providers/downloads/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    iget-object v3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/providers/downloads/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p1, "enqueue, downloadUri = null, return -1."

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueue, occur exception. e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public enqueueWithUuid(Lcom/oppo/providers/downloads/DownloadManager$Request;)Ljava/lang/String;
    .locals 4

    const-string v0, "DownloadManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/oppo/providers/downloads/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/providers/downloads/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p1, "enqueue, downloadUri = null, return -1."

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/providers/downloads/DownloadManager;->getUuidFromDownloadId(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueWithUuid, occur exception. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public varargs forceDownload([J)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bypass_recommended_size_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDownloadData(J)Lcom/android/providers/downloads/DownloadInfoData;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->setAccessFilename(Z)V

    new-instance v1, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    new-array v0, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p2}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;->newDownloadInfoSimple()Lcom/android/providers/downloads/DownloadInfoData;

    move-result-object v0

    sget-boolean v1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadData. info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p2, p1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public getDownloadData(ILjava/lang/String;ZLjava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/providers/downloads/DownloadManager;->getDownloadData(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadData(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->setAccessFilename(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/oppo/providers/downloads/DownloadManager;->queryDownloadData(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    sget-boolean p3, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p3, :cond_0

    const-string p3, "DownloadManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getDownloadData  c.getCount() = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez p2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    new-instance p2, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;

    iget-object p3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p2, p3, p1}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {p2}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;->newDownloadInfoSimple()Lcom/android/providers/downloads/DownloadInfoData;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
.end method

.method public varargs getDownloadData([J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->setAccessFilename(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v2}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    invoke-virtual {v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    const-string v3, "DownloadManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadData -array-  mPackageName = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    aput-object v4, p1, v0

    invoke-virtual {v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByPackage([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget-boolean v2, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadData  c.getCount() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lez v0, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v2, p1}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;->newDownloadInfoSimple()Lcom/android/providers/downloads/DownloadInfoData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :goto_1
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getDownloadDataWithUuid(Ljava/lang/String;)Lcom/android/providers/downloads/DownloadInfoData;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->setAccessFilename(Z)V

    new-instance v1, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByUuid([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "DownloadManager"

    if-eqz v1, :cond_1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadDataWithUuid  c.getCount() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;

    iget-object v3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, v3, v0}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;->newDownloadInfoSimple()Lcom/android/providers/downloads/DownloadInfoData;

    move-result-object v1

    sget-boolean v3, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadDataWithUuid. info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, p1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method public varargs getDownloadDataWithUuid([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/providers/downloads/DownloadInfoData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->setAccessFilename(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v2}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    invoke-virtual {v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByUuid([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    const-string v3, "DownloadManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadDataWithUuid -array-  mPackageName = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    aput-object v4, p1, v0

    invoke-virtual {v2, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByPackage([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget-boolean v2, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadDataWithUuid  c.getCount() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lez v0, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v2, p1}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfoData$BaseReader;->newDownloadInfoSimple()Lcom/android/providers/downloads/DownloadInfoData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :goto_1
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getDownloadUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/providers/downloads/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v0}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "media_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, p2

    :goto_1
    :try_start_2
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened in getMimeTypeForDownloadedFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-object p2

    :catchall_1
    move-exception p2

    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p2
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 4

    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v0}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v3, v2, :cond_3

    sget-object v2, Lcom/android/providers/downloads/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string p2, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened in getUriForDownloadedFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public getUuidFromDownloadId(J)Ljava/lang/String;
    .locals 10

    const-string v0, "uuid"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v1, v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueWithUuid, uuid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v2

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catchall_1
    move-exception p2

    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
.end method

.method public isDownloadManagerForStrictQuery()Z
    .locals 1

    sget v0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadProviderVersionForManager:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs markRowDeleted([J)I
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input param \'ids\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Lcom/oppo/providers/downloads/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "r"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public varargs pauseDownload([J)I
    .locals 14

    const/4 v0, 0x0

    const-string v1, "DownloadManager"

    if-eqz p1, :cond_11

    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-boolean v2, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownload dumpArray array= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "_id"

    const-string v3, "status"

    const-string v4, "control"

    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :try_start_1
    const-string v2, "pauseDownload return 0!"

    invoke-static {v1, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    :try_start_2
    sget-boolean v5, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseDownload cursor.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v7}, Lcom/android/providers/downloads/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0xc7

    if-ne v7, v9, :cond_5

    goto :goto_1

    :cond_5
    move v7, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v7, v13

    :goto_2
    if-nez v7, :cond_8

    if-ne v8, v13, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_3
    const-string v8, "pauseDownload meet %s task id=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    if-eqz v7, :cond_9

    const-string v7, "completed"

    goto :goto_4

    :cond_9
    const-string v7, "paused"

    :goto_4
    aput-object v7, v9, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_b

    goto :goto_7

    :catch_0
    move-exception v2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v12

    goto/16 :goto_9

    :catch_1
    move-exception v2

    move-object p1, v12

    :goto_6
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in pauseDownload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_b

    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_c

    const-string p1, "pauseDownload pauseIds size <= 0, return."

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    sget-boolean v2, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseDownload pauseIdList = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne p1, v13, :cond_e

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_e
    new-array v2, p1, [J

    :goto_8
    if-ge v0, p1, :cond_f

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :cond_11
    :goto_a
    const-string p1, "pauseDownload input param \'ids\' can\'t be null"

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public varargs pauseDownloadWithUuid([Ljava/lang/String;)I
    .locals 14

    const/4 v0, 0x0

    const-string v1, "DownloadManager"

    if-eqz p1, :cond_f

    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-boolean v2, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownloadWithUuid dumpArray= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "uuid"

    const-string v3, "status"

    const-string v4, "control"

    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object v9, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_3

    const-string p1, "pauseDownloadWithUuid return 0!"

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    :try_start_1
    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseDownloadWithUuid cursor.getCount() = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v12, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5}, Lcom/android/providers/downloads/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v7

    if-nez v7, :cond_6

    const/16 v7, 0xc7

    if-ne v5, v7, :cond_5

    goto :goto_1

    :cond_5
    move v5, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v13

    :goto_2
    if-nez v5, :cond_8

    if-ne v6, v13, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_3
    const-string v6, "pauseDownloadWithUuid meet %s task uuid=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v5, :cond_9

    const-string v5, "completed"

    goto :goto_4

    :cond_9
    const-string v5, "paused"

    :goto_4
    aput-object v5, v7, v0

    aput-object p1, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_a
    if-eqz v12, :cond_b

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception happened in pauseDownloadWithUuid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_b

    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_c

    const-string p1, "pauseDownloadWithUuid pauseIds size <= 0, return."

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownloadWithUuid pauseIdList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :goto_7
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw p1

    :cond_f
    :goto_8
    const-string p1, "pauseDownloadWithUuid input param \'uuids\' can\'t be null"

    invoke-static {v1, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$CursorTranslator;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mAccessFilename:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/oppo/providers/downloads/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v0
.end method

.method public queryDownloadData(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/database/Cursor;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->setAccessFilename(Z)V

    sget-boolean v1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDownloadData  mPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadManager"

    invoke-static {v2, v1}, Lcom/oppo/providers/downloads/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mPackageName:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByPackage([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setProjection([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    :cond_2
    invoke-virtual {v1, p3}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByUri(Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-virtual {v1, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByStatus(I)Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-virtual {v1, p4}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/oppo/providers/downloads/DownloadManager$Query;

    if-eqz p5, :cond_3

    invoke-virtual {v1, p5, p6}, Lcom/oppo/providers/downloads/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Lcom/oppo/providers/downloads/DownloadManager$Query;

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-object p1
.end method

.method public registerDownloadDBCallback(Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadDBCallback:Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;

    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerDownloadDBCallback  mDownloadDBCallback = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadDBCallback:Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/providers/downloads/DownloadManager;->registerContentObserver()V

    return-void
.end method

.method public registerDownloadStatesCallback(Lcom/oppo/providers/downloads/DownloadStatesCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

    invoke-direct {p0}, Lcom/oppo/providers/downloads/DownloadManager;->registerContentObserver()V

    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerDownloadStatesCallback  mDownloadStatesCallback = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs remove(Z[J)I
    .locals 3

    if-eqz p2, :cond_2

    array-length p1, p2

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove start synchroDeleteFile force true , ids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remove input param \'ids\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs removeWithUuid(Z[Ljava/lang/String;)I
    .locals 2

    if-eqz p2, :cond_1

    array-length p1, p2

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeWithUuid start synchroDeleteFile force true , uuids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remove input param \'uuids\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rename(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 8

    invoke-static {p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v0}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v3

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "title"

    if-eqz v4, :cond_4

    :try_start_2
    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x8

    if-eq v4, v2, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v3

    :cond_3
    :try_start_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "media_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "image/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v7, v1, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, "_data=?"

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "_data"

    invoke-virtual {p1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "mediaprovider_uri"

    invoke-virtual {p1, p4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    new-array p4, v1, [J

    aput-wide p2, p4, v3

    iget-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p4}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p1, v0, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    return v1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to rename to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Already exists "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document with id "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p1

    :cond_c
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not a valid filename"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restartDownload(JLjava/lang/String;)I
    .locals 8

    const-string v0, "status"

    sget-boolean v1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    const-string v2, "DownloadManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartDownload downloadid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", updateUri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v1, v3

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {p2}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    invoke-virtual {p2, v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v3

    :cond_2
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restartDownload 2 Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v3

    :cond_4
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_4

    :catch_1
    move-exception v4

    move-object p2, p1

    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in restartDownload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "current_bytes"

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "total_bytes"

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "control"

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "numfailed"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "uri"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v1, v1, v3

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0, p2, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1
.end method

.method public varargs restartDownload([J)I
    .locals 8

    const-string v0, "status"

    const-string v1, "DownloadManager"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v4}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    invoke-virtual {v4, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterById([J)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return v3

    :cond_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    const/16 v6, 0x10

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restartDownload Cannot restart incomplete downloadid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    return v3

    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v2

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v4, v2

    :goto_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception happened in restartDownload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "total_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_data"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "control"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "numfailed"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length v0, p1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v5, p1, v3

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1
.end method

.method public restartDownloadWithUuid(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "status"

    sget-boolean v1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    const-string v2, "DownloadManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartDownloadWithUuid downloadUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updateUri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x0

    :try_start_0
    new-instance v4, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v4}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    invoke-virtual {v4, v1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByUuid([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v3

    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restartDownloadWithUuid 2 Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v3

    :cond_4
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in restartDownload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "current_bytes"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "total_bytes"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_data"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "control"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "numfailed"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "uri"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :goto_3
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2
.end method

.method public varargs restartDownloadWithUuid([Ljava/lang/String;)I
    .locals 7

    const-string v0, "status"

    const-string v1, "DownloadManager"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/oppo/providers/downloads/DownloadManager$Query;

    invoke-direct {v4}, Lcom/oppo/providers/downloads/DownloadManager$Query;-><init>()V

    invoke-virtual {v4, p1}, Lcom/oppo/providers/downloads/DownloadManager$Query;->setFilterByUuid([Ljava/lang/String;)Lcom/oppo/providers/downloads/DownloadManager$Query;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/providers/downloads/DownloadManager;->query(Lcom/oppo/providers/downloads/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return v2

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restartDownloadWithUuid Cannot restart incomplete downloadid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return v2

    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in restartDownload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "current_bytes"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "total_bytes"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "_data"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "control"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "numfailed"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :goto_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method public varargs resumeDownload([J)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DownloadManager"

    if-eqz v0, :cond_10

    array-length v5, v0

    if-nez v5, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-boolean v5, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeDownload dumpArray= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "_id"

    const-string v6, "status"

    const-string v7, "control"

    filled-new-array {v7, v6, v5}, [Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/util/ArrayList;

    array-length v8, v0

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x1

    const/4 v13, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v9, v1, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x0

    move-object v13, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_3

    :try_start_1
    const-string v0, "resumeDownload return 0!"

    invoke-static {v4, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    return v2

    :cond_3
    :try_start_2
    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumeDownload cursor.getCount() = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/providers/downloads/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v11

    if-nez v11, :cond_6

    const/16 v11, 0xc7

    if-ne v0, v11, :cond_5

    goto :goto_1

    :cond_5
    move v11, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v11, v15

    :goto_2
    if-nez v11, :cond_7

    if-nez v10, :cond_8

    :cond_7
    const/16 v10, 0xc1

    if-eq v0, v10, :cond_8

    const/16 v10, 0xc2

    if-eq v0, v10, :cond_8

    const/16 v10, 0xc3

    if-eq v0, v10, :cond_8

    const/16 v10, 0xc4

    if-eq v0, v10, :cond_8

    const/16 v10, 0xc6

    if-eq v0, v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resumeDownload Cannot resume a completed task. id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", stauts = "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_9
    if-eqz v13, :cond_a

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    :goto_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception happened in getUriForDownloadedFile: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_a

    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    const-string v0, "resumeDownload resumeIdList size <= 0, return."

    invoke-static {v4, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_b
    sget-boolean v5, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumeDownload resumeIdList = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v5, 0xbe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "numfailed"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne v0, v15, :cond_d

    iget-object v0, v1, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, v1, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_d
    new-array v3, v0, [J

    :goto_6
    if-ge v2, v0, :cond_e

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    iget-object v0, v1, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, v1, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v13, :cond_f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    :cond_10
    :goto_8
    const-string v0, "resumeDownload input param \'ids\' can\'t be null"

    invoke-static {v4, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public varargs resumeDownloadWithUuid([Ljava/lang/String;)I
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DownloadManager"

    if-eqz p1, :cond_e

    array-length v3, p1

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-boolean v3, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeDownloadWithUuid dumpArray= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "uuid"

    const-string v4, "status"

    const-string v5, "control"

    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v10, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_3

    const-string p1, "resumeDownloadWithUuid return 0!"

    invoke-static {v2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    :try_start_1
    sget-boolean p1, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeDownloadWithUuid cursor.getCount() = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v13, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v6}, Lcom/android/providers/downloads/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v8, 0xc7

    if-ne v6, v8, :cond_5

    goto :goto_1

    :cond_5
    move v8, v0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_7

    if-nez v7, :cond_8

    :cond_7
    const/16 v7, 0xc1

    if-eq v6, v7, :cond_8

    const/16 v7, 0xc2

    if-eq v6, v7, :cond_8

    const/16 v7, 0xc3

    if-eq v6, v7, :cond_8

    const/16 v7, 0xc4

    if-eq v6, v7, :cond_8

    const/16 v7, 0xc6

    if-eq v6, v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumeDownloadWithUuid Cannot resume a completed task. id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", stauts = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_9
    if-eqz v13, :cond_a

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in getUriForDownloadedFile: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_a

    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_b

    const-string p1, "resumeDownloadWithUuid resumeIdList size <= 0, return."

    invoke-static {v2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownloadWithUuid resumeIdList = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "numfailed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :goto_5
    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d
    throw p1

    :cond_e
    :goto_6
    const-string p1, "resumeDownloadWithUuid input param \'uuids\' can\'t be null"

    invoke-static {v2, p1}, Lcom/oppo/providers/downloads/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setAccessAllDownloads(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/providers/downloads/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/providers/downloads/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    :goto_0
    return-void
.end method

.method public setAccessFilename(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mAccessFilename:Z

    return-void
.end method

.method public setAllowedNetworkTypes(ILjava/lang/String;)I
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "allowed_network_types"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const-string v2, "notificationpackage = ?"

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setAllowedNetworkTypes input param \'packageName\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setAllowedNetworkTypes(I[J)I
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "allowed_network_types"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length p1, p2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-wide v2, p2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setAllowedNetworkTypes input param \'ids\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setAllowedNetworkTypesWithUuid(I[Ljava/lang/String;)I
    .locals 3

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "allowed_network_types"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/oppo/providers/downloads/DownloadManager;->getWhereClauseForUuids([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setAllowedNetworkTypesWithUuid input param \'uuids\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterDownloadDBCallback()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadDBCallback:Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;

    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterDownloadDBCallback  mDownloadDBCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadDBCallback:Lcom/oppo/providers/downloads/DownloadManager$DownloadDBCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManager"

    invoke-static {v1, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/providers/downloads/DownloadManager;->unregisterContentObserver()V

    :cond_1
    return-void
.end method

.method public unregisterDownloadStatesCallback()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

    invoke-direct {p0}, Lcom/oppo/providers/downloads/DownloadManager;->unregisterContentObserver()V

    sget-boolean v0, Lcom/oppo/providers/downloads/utils/LogUtils;->QE_ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterDownloadStatesCallback  mDownloadStatesCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/providers/downloads/DownloadManager;->mDownloadStatesCallback:Lcom/oppo/providers/downloads/DownloadStatesCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManager"

    invoke-static {v1, v0}, Lcom/oppo/providers/downloads/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
