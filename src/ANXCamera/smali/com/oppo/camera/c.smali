.class public interface abstract Lcom/oppo/camera/c;
.super Ljava/lang/Object;
.source "CameraConstant.java"


# static fields
.field public static final a_:Ljava/lang/String; = "off"

.field public static final d:[Ljava/lang/String;

.field public static final e:[I

.field public static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "common"

    const-string v1, "night"

    const-string v2, "macro"

    const-string v3, "portrait"

    const-string v4, "panorama"

    const-string v5, "professional"

    const-string v6, "commonVideo"

    const-string v7, "fastVideo"

    const-string v8, "slowVideo"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/c;->d:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oppo/camera/c;->e:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/camera/c;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x28
        0x1e
        0x1e
        0x1e
        0x0
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x1e
        0x1e
        0x1e
        0x0
        0x1e
        0x1e
        0x1e
    .end array-data
.end method
