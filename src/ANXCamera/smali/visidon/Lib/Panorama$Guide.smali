.class public final enum Lvisidon/Lib/Panorama$Guide;
.super Ljava/lang/Enum;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Guide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvisidon/Lib/Panorama$Guide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvisidon/Lib/Panorama$Guide;

.field public static final enum HOLD:Lvisidon/Lib/Panorama$Guide;

.field public static final enum MOVE:Lvisidon/Lib/Panorama$Guide;

.field public static final enum MOVE_DOWN:Lvisidon/Lib/Panorama$Guide;

.field public static final enum MOVE_FREE:Lvisidon/Lib/Panorama$Guide;

.field public static final enum MOVE_UP:Lvisidon/Lib/Panorama$Guide;

.field public static final enum NONE:Lvisidon/Lib/Panorama$Guide;

.field public static final enum SLOW_DOWN:Lvisidon/Lib/Panorama$Guide;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->NONE:Lvisidon/Lib/Panorama$Guide;

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v2, 0x1

    const-string v3, "MOVE"

    invoke-direct {v0, v3, v2}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->MOVE:Lvisidon/Lib/Panorama$Guide;

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v3, 0x2

    const-string v4, "MOVE_FREE"

    invoke-direct {v0, v4, v3}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->MOVE_FREE:Lvisidon/Lib/Panorama$Guide;

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v4, 0x3

    const-string v5, "HOLD"

    invoke-direct {v0, v5, v4}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->HOLD:Lvisidon/Lib/Panorama$Guide;

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v5, 0x4

    const-string v6, "SLOW_DOWN"

    invoke-direct {v0, v6, v5}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->SLOW_DOWN:Lvisidon/Lib/Panorama$Guide;

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v6, 0x5

    const-string v7, "MOVE_DOWN"

    invoke-direct {v0, v7, v6}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->MOVE_DOWN:Lvisidon/Lib/Panorama$Guide;

    new-instance v0, Lvisidon/Lib/Panorama$Guide;

    const/4 v7, 0x6

    const-string v8, "MOVE_UP"

    invoke-direct {v0, v8, v7}, Lvisidon/Lib/Panorama$Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->MOVE_UP:Lvisidon/Lib/Panorama$Guide;

    const/4 v0, 0x7

    new-array v0, v0, [Lvisidon/Lib/Panorama$Guide;

    sget-object v8, Lvisidon/Lib/Panorama$Guide;->NONE:Lvisidon/Lib/Panorama$Guide;

    aput-object v8, v0, v1

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->MOVE:Lvisidon/Lib/Panorama$Guide;

    aput-object v1, v0, v2

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->MOVE_FREE:Lvisidon/Lib/Panorama$Guide;

    aput-object v1, v0, v3

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->HOLD:Lvisidon/Lib/Panorama$Guide;

    aput-object v1, v0, v4

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->SLOW_DOWN:Lvisidon/Lib/Panorama$Guide;

    aput-object v1, v0, v5

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->MOVE_DOWN:Lvisidon/Lib/Panorama$Guide;

    aput-object v1, v0, v6

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->MOVE_UP:Lvisidon/Lib/Panorama$Guide;

    aput-object v1, v0, v7

    sput-object v0, Lvisidon/Lib/Panorama$Guide;->$VALUES:[Lvisidon/Lib/Panorama$Guide;

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

.method public static valueOf(Ljava/lang/String;)Lvisidon/Lib/Panorama$Guide;
    .locals 1

    const-class v0, Lvisidon/Lib/Panorama$Guide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvisidon/Lib/Panorama$Guide;

    return-object p0
.end method

.method public static values()[Lvisidon/Lib/Panorama$Guide;
    .locals 1

    sget-object v0, Lvisidon/Lib/Panorama$Guide;->$VALUES:[Lvisidon/Lib/Panorama$Guide;

    invoke-virtual {v0}, [Lvisidon/Lib/Panorama$Guide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvisidon/Lib/Panorama$Guide;

    return-object v0
.end method
