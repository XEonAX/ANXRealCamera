.class final Lcom/oppo/statistics/NearMeStatistics$3;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/statistics/NearMeStatistics;->onUserAction(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionCode:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/NearMeStatistics$3;->val$actionCode:I

    iput-object p2, p0, Lcom/oppo/statistics/NearMeStatistics$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget v0, p0, Lcom/oppo/statistics/NearMeStatistics$3;->val$actionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/oppo/statistics/NearMeStatistics;->access$000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/statistics/NearMeStatistics$3;->val$context:Landroid/content/Context;

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/oppo/statistics/agent/OnEventAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method
