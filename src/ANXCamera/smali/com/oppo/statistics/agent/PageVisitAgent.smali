.class public Lcom/oppo/statistics/agent/PageVisitAgent;
.super Ljava/lang/Object;
.source "PageVisitAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;
    }
.end annotation


# static fields
.field private static final PAUSE:I = 0x1

.field private static final RESUME:I


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/statistics/agent/PageVisitAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oppo/statistics/agent/PageVisitAgent;->recordPause(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oppo/statistics/agent/PageVisitAgent;->recordResume(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private static getClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static recordPageVisit(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    new-instance p4, Lcom/oppo/statistics/data/PageVisitBean;

    invoke-direct {p4}, Lcom/oppo/statistics/data/PageVisitBean;-><init>()V

    invoke-virtual {p4, p1}, Lcom/oppo/statistics/data/PageVisitBean;->setActivities(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Lcom/oppo/statistics/data/PageVisitBean;->setDuration(J)V

    invoke-static {}, Lcom/oppo/statistics/util/TimeInfoUtil;->getFormatTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/oppo/statistics/data/PageVisitBean;->setTime(Ljava/lang/String;)V

    invoke-static {p0, p4}, Lcom/oppo/statistics/record/RecordHandler;->addTask(Landroid/content/Context;Lcom/oppo/statistics/data/StatisticBean;)V

    return-void
.end method

.method private static recordPause(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8

    const-string v0, "NearMeStatistics"

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getActivityStartTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getCurrentActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sub-long v4, p2, v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v4, :cond_1

    const-wide/16 v5, -0x1

    cmp-long v1, v5, v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getPageVisitRoutes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getPageVisitDuration(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/2addr v2, v4

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {p0, v2}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitDuration(Landroid/content/Context;I)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitRoutes(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitRoutes(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitDuration(Landroid/content/Context;I)V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-static {p0, p2, p3}, Lcom/oppo/statistics/storage/PreferenceHandler;->setActivityEndTime(Landroid/content/Context;J)V

    return-void
.end method

.method private static recordResume(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getActivityEndTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getActivityStartTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getSessionTimeout(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v2, p2, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    sub-long v0, p2, v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/oppo/statistics/agent/AppStartAgent;->recordAppStart(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitStartTime(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getPageVisitRoutes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/oppo/statistics/storage/PreferenceHandler;->getPageVisitDuration(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-long v1, v1

    const-string v3, "page"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oppo/statistics/agent/PageVisitAgent;->recordPageVisit(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitDuration(Landroid/content/Context;I)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/oppo/statistics/storage/PreferenceHandler;->setPageVisitRoutes(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p2, p3}, Lcom/oppo/statistics/storage/PreferenceHandler;->setActivityStartTime(Landroid/content/Context;J)V

    invoke-static {p0, p1}, Lcom/oppo/statistics/storage/PreferenceHandler;->setCurrentActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPause(Landroid/content/Context;)V
    .locals 8

    const-string v0, "NearMeStatistics"

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1}, Lcom/oppo/statistics/agent/PageVisitAgent;->getClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/oppo/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;-><init>(Lcom/oppo/statistics/agent/PageVisitAgent;Landroid/content/Context;Ljava/lang/String;JI)V

    iget-object p1, p0, Lcom/oppo/statistics/agent/PageVisitAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "onPause() called without context."

    invoke-static {v0, p1}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 8

    const-string v0, "NearMeStatistics"

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1}, Lcom/oppo/statistics/agent/PageVisitAgent;->getClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/oppo/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;-><init>(Lcom/oppo/statistics/agent/PageVisitAgent;Landroid/content/Context;Ljava/lang/String;JI)V

    iget-object p1, p0, Lcom/oppo/statistics/agent/PageVisitAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "onPause() called without context."

    invoke-static {v0, p1}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
