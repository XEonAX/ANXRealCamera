.class public final enum Lvisidon/Lib/Panorama$FailureCode;
.super Ljava/lang/Enum;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvisidon/Lib/Panorama$FailureCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvisidon/Lib/Panorama$FailureCode;

.field public static final enum MAX_MOTION:Lvisidon/Lib/Panorama$FailureCode;

.field public static final enum PROCESSING_FAILED:Lvisidon/Lib/Panorama$FailureCode;

.field public static final enum REGISTRATION_FAILED:Lvisidon/Lib/Panorama$FailureCode;

.field public static final enum TIMEOUT:Lvisidon/Lib/Panorama$FailureCode;

.field public static final enum WRONG_MOTION:Lvisidon/Lib/Panorama$FailureCode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lvisidon/Lib/Panorama$FailureCode;

    const/4 v1, 0x0

    const-string v2, "REGISTRATION_FAILED"

    invoke-direct {v0, v2, v1}, Lvisidon/Lib/Panorama$FailureCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$FailureCode;->REGISTRATION_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    new-instance v0, Lvisidon/Lib/Panorama$FailureCode;

    const/4 v2, 0x1

    const-string v3, "TIMEOUT"

    invoke-direct {v0, v3, v2}, Lvisidon/Lib/Panorama$FailureCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$FailureCode;->TIMEOUT:Lvisidon/Lib/Panorama$FailureCode;

    new-instance v0, Lvisidon/Lib/Panorama$FailureCode;

    const/4 v3, 0x2

    const-string v4, "PROCESSING_FAILED"

    invoke-direct {v0, v4, v3}, Lvisidon/Lib/Panorama$FailureCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$FailureCode;->PROCESSING_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    new-instance v0, Lvisidon/Lib/Panorama$FailureCode;

    const/4 v4, 0x3

    const-string v5, "WRONG_MOTION"

    invoke-direct {v0, v5, v4}, Lvisidon/Lib/Panorama$FailureCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$FailureCode;->WRONG_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    new-instance v0, Lvisidon/Lib/Panorama$FailureCode;

    const/4 v5, 0x4

    const-string v6, "MAX_MOTION"

    invoke-direct {v0, v6, v5}, Lvisidon/Lib/Panorama$FailureCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$FailureCode;->MAX_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    const/4 v0, 0x5

    new-array v0, v0, [Lvisidon/Lib/Panorama$FailureCode;

    sget-object v6, Lvisidon/Lib/Panorama$FailureCode;->REGISTRATION_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    aput-object v6, v0, v1

    sget-object v1, Lvisidon/Lib/Panorama$FailureCode;->TIMEOUT:Lvisidon/Lib/Panorama$FailureCode;

    aput-object v1, v0, v2

    sget-object v1, Lvisidon/Lib/Panorama$FailureCode;->PROCESSING_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    aput-object v1, v0, v3

    sget-object v1, Lvisidon/Lib/Panorama$FailureCode;->WRONG_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    aput-object v1, v0, v4

    sget-object v1, Lvisidon/Lib/Panorama$FailureCode;->MAX_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    aput-object v1, v0, v5

    sput-object v0, Lvisidon/Lib/Panorama$FailureCode;->$VALUES:[Lvisidon/Lib/Panorama$FailureCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvisidon/Lib/Panorama$FailureCode;
    .locals 1

    const-class v0, Lvisidon/Lib/Panorama$FailureCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvisidon/Lib/Panorama$FailureCode;

    return-object p0
.end method

.method public static values()[Lvisidon/Lib/Panorama$FailureCode;
    .locals 1

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->$VALUES:[Lvisidon/Lib/Panorama$FailureCode;

    invoke-virtual {v0}, [Lvisidon/Lib/Panorama$FailureCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvisidon/Lib/Panorama$FailureCode;

    return-object v0
.end method
