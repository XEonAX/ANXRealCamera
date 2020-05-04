.class public final Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Position.java"

# interfaces
.implements Lcom/oppo/camera/statistics/Position$LocInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/statistics/Position$LocInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/oppo/camera/statistics/Position$LocInfo$Builder;",
        ">;",
        "Lcom/oppo/camera/statistics/Position$LocInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bid_:Ljava/lang/Object;

.field private bitField0_:I

.field private bssid_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private imei_:Ljava/lang/Object;

.field private lac_:Ljava/lang/Object;

.field private lat_:F

.field private long_:F

.field private mcc_:Ljava/lang/Object;

.field private mnc_:Ljava/lang/Object;

.field private nid_:Ljava/lang/Object;

.field private pcba_:Ljava/lang/Object;

.field private sid_:Ljava/lang/Object;

.field private ssid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oppo/camera/statistics/Position$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/statistics/Position$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$1800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->build()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->build()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 5

    new-instance v0, Lcom/oppo/camera/statistics/Position$LocInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/statistics/Position$LocInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oppo/camera/statistics/Position$1;)V

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2002(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2102(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2202(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2302(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2402(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lat_:F

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2502(Lcom/oppo/camera/statistics/Position$LocInfo;F)F

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->long_:F

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2602(Lcom/oppo/camera/statistics/Position$LocInfo;F)F

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2702(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    :cond_8
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2802(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    :cond_9
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2902(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    :cond_a
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3002(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    :cond_b
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3102(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    or-int/lit16 v3, v3, 0x1000

    :cond_c
    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3202(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3302(Lcom/oppo/camera/statistics/Position$LocInfo;I)I

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lat_:F

    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->long_:F

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBid()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBssid()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method

.method public clearImei()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLac()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLat()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lat_:F

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLong()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->long_:F

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMcc()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMnc()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNid()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method

.method public clearPcba()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSid()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSsid()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBssidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImeiBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLacBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLat()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lat_:F

    return v0
.end method

.method public getLong()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->long_:F

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMccBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMncBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPcba()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPcbaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasBid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBssid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImei()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLac()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLat()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLong()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMcc()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMnc()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPcba()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSsid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/camera/statistics/Position$LocInfo;

    const-class v2, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasMcc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasMnc()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasLac()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasCid()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasImei()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasLat()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->hasLong()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/statistics/Position$LocInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/oppo/camera/statistics/Position$LocInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2000(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2100(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2200(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2300(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasImei()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2400(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setLat(F)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLong()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setLong(F)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2700(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2800(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$2900(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_a
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3000(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_b
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3100(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3200(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    :cond_d
    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->access$3400(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method

.method public setBid(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBidBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBssid(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBssidBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method

.method public setImei(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setImeiBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setLac(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setLacBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setLat(F)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->lat_:F

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLong(F)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->long_:F

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setMcc(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMccBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMnc(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMncBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNid(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNidBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPcba(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPcbaBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method

.method public setSid(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSidBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSsid(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSsidBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    return-object p1
.end method
