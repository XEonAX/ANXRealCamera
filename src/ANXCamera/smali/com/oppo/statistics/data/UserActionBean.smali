.class public Lcom/oppo/statistics/data/UserActionBean;
.super Ljava/lang/Object;
.source "UserActionBean.java"

# interfaces
.implements Lcom/oppo/statistics/data/StatisticBean;


# instance fields
.field private mAmount:I

.field private mCode:I

.field private mDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/statistics/data/UserActionBean;->mCode:I

    const-string v1, "0"

    iput-object v1, p0, Lcom/oppo/statistics/data/UserActionBean;->mDate:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/statistics/data/UserActionBean;->mAmount:I

    iput p1, p0, Lcom/oppo/statistics/data/UserActionBean;->mCode:I

    iput-object p2, p0, Lcom/oppo/statistics/data/UserActionBean;->mDate:Ljava/lang/String;

    iput p3, p0, Lcom/oppo/statistics/data/UserActionBean;->mAmount:I

    return-void
.end method


# virtual methods
.method public getActionAmount()I
    .locals 1

    iget v0, p0, Lcom/oppo/statistics/data/UserActionBean;->mAmount:I

    return v0
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/oppo/statistics/data/UserActionBean;->mCode:I

    return v0
.end method

.method public getActionDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/data/UserActionBean;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setActionAmount(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/data/UserActionBean;->mAmount:I

    return-void
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/data/UserActionBean;->mCode:I

    return-void
.end method

.method public setActionDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/data/UserActionBean;->mDate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action code is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/UserActionBean;->getActionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "action amount is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/UserActionBean;->getActionAmount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "action date is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/statistics/data/UserActionBean;->getActionDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
