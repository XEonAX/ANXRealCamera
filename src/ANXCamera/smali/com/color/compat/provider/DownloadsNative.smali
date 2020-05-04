.class public Lcom/color/compat/provider/DownloadsNative;
.super Ljava/lang/Object;
.source "DownloadsNative.java"


# static fields
.field public static ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

.field public static COLUMN_APP_DATA:Ljava/lang/String;

.field public static COLUMN_DESCRIPTION:Ljava/lang/String;

.field public static COLUMN_DESTINATION:Ljava/lang/String;

.field public static COLUMN_FILE_NAME_HINT:Ljava/lang/String;

.field public static COLUMN_MIME_TYPE:Ljava/lang/String;

.field public static COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;

.field public static COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;

.field public static COLUMN_REFERER:Ljava/lang/String;

.field public static COLUMN_STATUS:Ljava/lang/String;

.field public static COLUMN_TITLE:Ljava/lang/String;

.field public static COLUMN_URI:Ljava/lang/String;

.field public static COLUMN_VISIBILITY:Ljava/lang/String;

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static DESTINATION_FILE_URI:I

.field public static VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I

.field public static _DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/color/inner/provider/DownloadsWrapper$Impl;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETED"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    const-string v0, "uri"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_URI:Ljava/lang/String;

    const-string v0, "entity"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_APP_DATA:Ljava/lang/String;

    const-string v0, "hint"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_FILE_NAME_HINT:Ljava/lang/String;

    const-string v0, "_data"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->_DATA:Ljava/lang/String;

    const-string v0, "mimetype"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_MIME_TYPE:Ljava/lang/String;

    const-string v0, "destination"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_DESTINATION:Ljava/lang/String;

    const-string v0, "visibility"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_VISIBILITY:Ljava/lang/String;

    const-string v0, "status"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_STATUS:Ljava/lang/String;

    const-string v0, "notificationpackage"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;

    const-string v0, "notificationclass"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;

    const-string v0, "referer"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_REFERER:Ljava/lang/String;

    const-string v0, "title"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_TITLE:Ljava/lang/String;

    const-string v0, "description"

    sput-object v0, Lcom/color/compat/provider/DownloadsNative;->COLUMN_DESCRIPTION:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lcom/color/compat/provider/DownloadsNative;->DESTINATION_FILE_URI:I

    const/4 v0, 0x1

    sput v0, Lcom/color/compat/provider/DownloadsNative;->VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusCompleted(I)Z
    .locals 0

    invoke-static {p0}, Lcom/color/inner/provider/DownloadsWrapper;->isStatusCompleted(I)Z

    move-result p0

    return p0
.end method

.method public static isStatusSuccess(I)Z
    .locals 0

    invoke-static {p0}, Lcom/color/inner/provider/DownloadsWrapper;->isStatusSuccess(I)Z

    move-result p0

    return p0
.end method
