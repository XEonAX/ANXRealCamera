.class public Lcom/oppo/statistics/record/RecordHandler;
.super Ljava/lang/Object;
.source "RecordHandler.java"


# static fields
.field private static final ACTION_AMOUNT:Ljava/lang/String; = "actionAmount"

.field private static final ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final ACTION_TIME:Ljava/lang/String; = "actionTime"

.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_NAME:Ljava/lang/String; = "appName"

.field private static final APP_PACKAGE:Ljava/lang/String; = "appPackage"

.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final DATA_TYPE:Ljava/lang/String; = "dataType"

.field private static final DEBUG:Ljava/lang/String; = "debug"

.field private static final EVENT_BODY:Ljava/lang/String; = "eventBody"

.field private static final EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final EVENT_TYPE:Ljava/lang/String; = "eventType"

.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final EXCEPTION_COUNT:Ljava/lang/String; = "count"

.field private static final EXCEPTION_TIME:Ljava/lang/String; = "time"

.field private static final LOGIN_TIME:Ljava/lang/String; = "loginTime"

.field private static final LOG_MAP:Ljava/lang/String; = "logMap"

.field private static final LOG_TAG:Ljava/lang/String; = "logTag"

.field private static final PAGE_VISIT_ACTIVIES:Ljava/lang/String; = "activities"

.field private static final PAGE_VISIT_DURATION:Ljava/lang/String; = "duration"

.field private static final PAGE_VISIT_TIME:Ljava/lang/String; = "time"

.field private static final SSOID:Ljava/lang/String; = "ssoid"

.field private static final TAG:Ljava/lang/String; = "RecordHandler"

.field private static final UPLOAD_MODE:Ljava/lang/String; = "uploadMode"

.field private static final UPLOAD_NOW:Ljava/lang/String; = "uploadNow"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTask(Landroid/content/Context;Lcom/oppo/statistics/data/StatisticBean;)V
    .locals 6

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/oppo/statistics/data/StatisticBean;->getDataType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3e8

    const-string v1, "uploadMode"

    const-string v2, "time"

    const-string v3, "loginTime"

    const-string v4, "eventBody"

    const-string v5, "dataType"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    :try_start_1
    check-cast p1, Lcom/oppo/statistics/data/DebugBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x3f1

    invoke-virtual {p0, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "debug"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/DebugBean;->getFlag()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_2
    check-cast p1, Lcom/oppo/statistics/data/StaticEventBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oppo/statistics/data/StaticEventBean;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oppo/statistics/data/StaticEventBean;->getUploadMode()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3f0

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_3
    check-cast p1, Lcom/oppo/statistics/data/DynamicEventBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oppo/statistics/data/DynamicEventBean;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oppo/statistics/data/DynamicEventBean;->getUploadMode()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3ef

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_4
    move-object p0, p1

    check-cast p0, Lcom/oppo/statistics/data/CommonBean;

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getCommonStartServiceIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uploadNow"

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getUploadNow()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "logTag"

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eventID"

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "logMap"

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogMap()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x3ee

    invoke-virtual {p1, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p0, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_5
    check-cast p1, Lcom/oppo/statistics/data/SpecialAppStartBean;

    invoke-virtual {p1}, Lcom/oppo/statistics/data/SpecialAppStartBean;->getAppId()I

    move-result p0

    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getSpecialStartServiceIntent(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oppo/statistics/data/SpecialAppStartBean;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_6
    check-cast p1, Lcom/oppo/statistics/data/ExceptionBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "exception"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/ExceptionBean;->getException()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "count"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/ExceptionBean;->getCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oppo/statistics/data/ExceptionBean;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x3ec

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_7
    check-cast p1, Lcom/oppo/statistics/data/AppLogBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oppo/statistics/data/AppLogBean;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eventType"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/AppLogBean;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3ea

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_8
    check-cast p1, Lcom/oppo/statistics/data/PageVisitBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oppo/statistics/data/PageVisitBean;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "duration"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/PageVisitBean;->getDuration()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "activities"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/PageVisitBean;->getActivities()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3eb

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_9
    check-cast p1, Lcom/oppo/statistics/data/UserActionBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "actionAmount"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/UserActionBean;->getActionAmount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "actionCode"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/UserActionBean;->getActionCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "actionTime"

    invoke-virtual {p1}, Lcom/oppo/statistics/data/UserActionBean;->getActionDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e9

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_a
    check-cast p1, Lcom/oppo/statistics/data/AppStartBean;

    invoke-static {}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oppo/statistics/data/AppStartBean;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordHandler add Task error -- bean or context is null--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getCommonStartServiceIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)I

    move-result v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssoid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getSpecialStartServiceIntent(I)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p0, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oppo/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oppo/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appPackage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oppo/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssoid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getStartServiceIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)I

    move-result v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oppo/statistics/record/RecordHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssoid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
