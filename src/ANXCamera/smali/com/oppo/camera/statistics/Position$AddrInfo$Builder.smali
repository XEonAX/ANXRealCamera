.class public final Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Position.java"

# interfaces
.implements Lcom/oppo/camera/statistics/Position$AddrInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/statistics/Position$AddrInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;",
        ">;",
        "Lcom/oppo/camera/statistics/Position$AddrInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private area_:Ljava/lang/Object;

.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private province_:Ljava/lang/Object;

.field private street_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oppo/camera/statistics/Position$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/statistics/Position$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->build()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->build()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/camera/statistics/Position$AddrInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->buildPartial()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->buildPartial()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->buildPartial()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/camera/statistics/Position$AddrInfo;
    .locals 5

    new-instance v0, Lcom/oppo/camera/statistics/Position$AddrInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/statistics/Position$AddrInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oppo/camera/statistics/Position$1;)V

    iget v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$602(Lcom/oppo/camera/statistics/Position$AddrInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$702(Lcom/oppo/camera/statistics/Position$AddrInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$802(Lcom/oppo/camera/statistics/Position$AddrInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$902(Lcom/oppo/camera/statistics/Position$AddrInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$1002(Lcom/oppo/camera/statistics/Position$AddrInfo;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$1102(Lcom/oppo/camera/statistics/Position$AddrInfo;I)I

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clear()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearArea()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCity()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCountry()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method

.method public clearProvince()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStreet()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getStreet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->clone()Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAreaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$AddrInfo;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreetBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasArea()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

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

.method public hasCity()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

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

.method public hasCountry()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

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

.method public hasProvince()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

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

.method public hasStreet()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/camera/statistics/Position$AddrInfo;

    const-class v2, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->hasStreet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->hasArea()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->hasCity()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->hasProvince()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->hasCountry()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
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

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/statistics/Position$AddrInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$AddrInfo;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

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

    check-cast p2, Lcom/oppo/camera/statistics/Position$AddrInfo;
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

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$AddrInfo;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/oppo/camera/statistics/Position$AddrInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$AddrInfo;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/oppo/camera/statistics/Position$AddrInfo;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oppo/camera/statistics/Position$AddrInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->hasStreet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$600(Lcom/oppo/camera/statistics/Position$AddrInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->hasArea()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$700(Lcom/oppo/camera/statistics/Position$AddrInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$800(Lcom/oppo/camera/statistics/Position$AddrInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->hasProvince()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$900(Lcom/oppo/camera/statistics/Position$AddrInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$1000(Lcom/oppo/camera/statistics/Position$AddrInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    :cond_5
    invoke-static {p1}, Lcom/oppo/camera/statistics/Position$AddrInfo;->access$1200(Lcom/oppo/camera/statistics/Position$AddrInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method

.method public setArea(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setAreaBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->area_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCity(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCityBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->city_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCountry(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCountryBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->country_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method

.method public setProvince(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setProvinceBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->province_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method

.method public setStreet(Ljava/lang/String;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setStreetBytes(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->street_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/statistics/Position$AddrInfo$Builder;

    return-object p1
.end method
