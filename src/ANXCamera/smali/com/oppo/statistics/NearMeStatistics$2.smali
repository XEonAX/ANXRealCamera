.class final Lcom/oppo/statistics/NearMeStatistics$2;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventID:Ljava/lang/String;

.field final synthetic val$logMap:Ljava/util/Map;

.field final synthetic val$logTag:Ljava/lang/String;

.field final synthetic val$uploadNow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$logTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$eventID:Ljava/lang/String;

    iput-object p4, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$logMap:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$uploadNow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$logTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$eventID:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$logMap:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/oppo/statistics/NearMeStatistics$2;->val$uploadNow:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oppo/statistics/agent/CommonAgent;->recordCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
