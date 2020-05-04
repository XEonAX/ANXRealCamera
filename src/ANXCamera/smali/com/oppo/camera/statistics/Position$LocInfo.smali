.class public final Lcom/oppo/camera/statistics/Position$LocInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Position.java"

# interfaces
.implements Lcom/oppo/camera/statistics/Position$LocInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/statistics/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    }
.end annotation


# static fields
.field public static final BID_FIELD_NUMBER:I = 0xd

.field public static final BSSID_FIELD_NUMBER:I = 0xa

.field public static final CID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

.field public static final IMEI_FIELD_NUMBER:I = 0x5

.field public static final LAC_FIELD_NUMBER:I = 0x3

.field public static final LAT_FIELD_NUMBER:I = 0x6

.field public static final LONG_FIELD_NUMBER:I = 0x7

.field public static final MCC_FIELD_NUMBER:I = 0x1

.field public static final MNC_FIELD_NUMBER:I = 0x2

.field public static final NID_FIELD_NUMBER:I = 0xc

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/camera/statistics/Position$LocInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PCBA_FIELD_NUMBER:I = 0x8

.field public static final SID_FIELD_NUMBER:I = 0xb

.field public static final SSID_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private volatile bid_:Ljava/lang/Object;

.field private bitField0_:I

.field private volatile bssid_:Ljava/lang/Object;

.field private volatile cid_:Ljava/lang/Object;

.field private volatile imei_:Ljava/lang/Object;

.field private volatile lac_:Ljava/lang/Object;

.field private lat_:F

.field private long_:F

.field private volatile mcc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile mnc_:Ljava/lang/Object;

.field private volatile nid_:Ljava/lang/Object;

.field private volatile pcba_:Ljava/lang/Object;

.field private volatile sid_:Ljava/lang/Object;

.field private volatile ssid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/statistics/Position$LocInfo;

    invoke-direct {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;-><init>()V

    sput-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

    new-instance v0, Lcom/oppo/camera/statistics/Position$LocInfo$1;

    invoke-direct {v0}, Lcom/oppo/camera/statistics/Position$LocInfo$1;-><init>()V

    sput-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lat_:F

    iput v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->long_:F

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/oppo/camera/statistics/Position$LocInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->long_:F

    goto :goto_0

    :sswitch_7
    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lat_:F

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v4, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    iput-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->makeExtensionsImmutable()V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x35 -> :sswitch_7
        0x3d -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/oppo/camera/statistics/Position$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/statistics/Position$LocInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oppo/camera/statistics/Position$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/camera/statistics/Position$LocInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/oppo/camera/statistics/Position$LocInfo;F)F
    .locals 0

    iput p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lat_:F

    return p1
.end method

.method static synthetic access$2602(Lcom/oppo/camera/statistics/Position$LocInfo;F)F
    .locals 0

    iput p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->long_:F

    return p1
.end method

.method static synthetic access$2700(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/oppo/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/oppo/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/oppo/camera/statistics/Position$LocInfo;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$3400(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/camera/statistics/Position$LocInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oppo/camera/statistics/Position$LocInfo;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/oppo/camera/statistics/Position$LocInfo;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_b
    move v1, v3

    :goto_6
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasImei()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasImei()Z

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v3

    :goto_8
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasImei()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_9

    :cond_f
    move v1, v3

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v2

    if-ne v1, v2, :cond_11

    move v1, v0

    goto :goto_a

    :cond_11
    move v1, v3

    :goto_a
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_12

    move v1, v0

    goto :goto_b

    :cond_12
    move v1, v3

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v2

    if-ne v1, v2, :cond_14

    move v1, v0

    goto :goto_c

    :cond_14
    move v1, v3

    :goto_c
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLong()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLong()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_15

    move v1, v0

    goto :goto_d

    :cond_15
    move v1, v3

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v2

    if-ne v1, v2, :cond_17

    move v1, v0

    goto :goto_e

    :cond_17
    move v1, v3

    :goto_e
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v0

    goto :goto_f

    :cond_18
    move v1, v3

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    move v1, v0

    goto :goto_10

    :cond_1a
    move v1, v3

    :goto_10
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_11

    :cond_1b
    move v1, v3

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v2

    if-ne v1, v2, :cond_1d

    move v1, v0

    goto :goto_12

    :cond_1d
    move v1, v3

    :goto_12
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_13

    :cond_1e
    move v1, v3

    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v2

    if-ne v1, v2, :cond_20

    move v1, v0

    goto :goto_14

    :cond_20
    move v1, v3

    :goto_14
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v0

    goto :goto_15

    :cond_21
    move v1, v3

    :cond_22
    :goto_15
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v2

    if-ne v1, v2, :cond_23

    move v1, v0

    goto :goto_16

    :cond_23
    move v1, v3

    :goto_16
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v0

    goto :goto_17

    :cond_24
    move v1, v3

    :cond_25
    :goto_17
    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v2

    if-ne v1, v2, :cond_26

    move v1, v0

    goto :goto_18

    :cond_26
    move v1, v3

    :goto_18
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v0

    goto :goto_19

    :cond_27
    move v1, v3

    :cond_28
    :goto_19
    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_1a

    :cond_29
    move v0, v3

    :goto_1a
    return v0
.end method

.method public getBid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getBidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getBssidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$LocInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/camera/statistics/Position$LocInfo;
    .locals 1

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getImeiBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLacBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLat()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lat_:F

    return v0
.end method

.method public getLong()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->long_:F

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMccBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMncBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/camera/statistics/Position$LocInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPcba()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPcbaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lat_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->long_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedSize:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasImei()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getLong()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedHashCode:I

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
    .locals 3

    iget-byte v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasImei()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v0

    if-nez v0, :cond_7

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    :cond_8
    iput-byte v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->newBuilderForType()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/statistics/Position$LocInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->newBuilderForType()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/oppo/camera/statistics/Position$LocInfo;->newBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 2

    new-instance v0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oppo/camera/statistics/Position$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/camera/statistics/Position$LocInfo$Builder;
    .locals 2

    sget-object v0, Lcom/oppo/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oppo/camera/statistics/Position$LocInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/oppo/camera/statistics/Position$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/oppo/camera/statistics/Position$1;)V

    invoke-virtual {v0, p0}, Lcom/oppo/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oppo/camera/statistics/Position$LocInfo;)Lcom/oppo/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->imei_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->lat_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_5
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->long_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_6
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_7
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_9
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
