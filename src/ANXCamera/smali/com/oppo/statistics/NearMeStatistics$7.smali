.class final Lcom/oppo/statistics/NearMeStatistics$7;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventCount:I

.field final synthetic val$eventID:Ljava/lang/String;

.field final synthetic val$eventTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$eventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$eventTag:Ljava/lang/String;

    iput p4, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$eventCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$eventID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$eventTag:Ljava/lang/String;

    iget v3, p0, Lcom/oppo/statistics/NearMeStatistics$7;->val$eventCount:I

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/agent/OnEventAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method
