.class public Lcom/oppo/statistics/data/SpecialAppStartBean;
.super Ljava/lang/Object;
.source "SpecialAppStartBean.java"

# interfaces
.implements Lcom/oppo/statistics/data/StatisticBean;


# instance fields
.field private mAppId:I

.field private mSsoid:Ljava/lang/String;

.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mSsoid:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mTime:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mAppId:I

    iput-object p1, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mSsoid:Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mTime:Ljava/lang/String;

    iput p3, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mAppId:I

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mAppId:I

    return v0
.end method

.method public getDataType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getSsoid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mSsoid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mAppId:I

    return-void
.end method

.method public setSsoid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mSsoid:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/data/SpecialAppStartBean;->mTime:Ljava/lang/String;

    return-void
.end method
