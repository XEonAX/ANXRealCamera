.class public Lcom/sensetime/stmobile/model/STStickerInputParams;
.super Ljava/lang/Object;
.source "STStickerInputParams.java"


# instance fields
.field cameraQuaternion:[F

.field customEvent:I

.field isFrontCamera:Z

.field quaternionLength:I


# direct methods
.method public constructor <init>([FZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sensetime/stmobile/model/STStickerInputParams;->cameraQuaternion:[F

    array-length p1, p1

    iput p1, p0, Lcom/sensetime/stmobile/model/STStickerInputParams;->quaternionLength:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sensetime/stmobile/model/STStickerInputParams;->cameraQuaternion:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/sensetime/stmobile/model/STStickerInputParams;->quaternionLength:I

    :goto_0
    iput-boolean p2, p0, Lcom/sensetime/stmobile/model/STStickerInputParams;->isFrontCamera:Z

    iput p3, p0, Lcom/sensetime/stmobile/model/STStickerInputParams;->customEvent:I

    return-void
.end method
