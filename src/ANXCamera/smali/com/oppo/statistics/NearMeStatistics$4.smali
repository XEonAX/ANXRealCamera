.class final Lcom/oppo/statistics/NearMeStatistics$4;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/statistics/NearMeStatistics;->onUserAction(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionCode:I

.field final synthetic val$actionMount:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(IILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/NearMeStatistics$4;->val$actionCode:I

    iput p2, p0, Lcom/oppo/statistics/NearMeStatistics$4;->val$actionMount:I

    iput-object p3, p0, Lcom/oppo/statistics/NearMeStatistics$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget v0, p0, Lcom/oppo/statistics/NearMeStatistics$4;->val$actionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/oppo/statistics/NearMeStatistics$4;->val$actionMount:I

    const-string v3, ""

    invoke-static {v2, v3, v4}, Lcom/oppo/statistics/NearMeStatistics;->access$000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/statistics/NearMeStatistics$4;->val$context:Landroid/content/Context;

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oppo/statistics/agent/OnEventAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method
