.class public Lcom/oppo/statistics/data/CommonBean;
.super Ljava/lang/Object;
.source "CommonBean.java"

# interfaces
.implements Lcom/oppo/statistics/data/StatisticBean;


# instance fields
.field private eventID:Ljava/lang/String;

.field private logMap:Ljava/lang/String;

.field private logTag:Ljava/lang/String;

.field private uploadNow:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getEventID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    return v0
.end method

.method public setEventID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    return-void
.end method

.method public setLogMap(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    return-void
.end method

.method public setUploadNow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getDataType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uploadNow is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getUploadNow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventID is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " map is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogMap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
