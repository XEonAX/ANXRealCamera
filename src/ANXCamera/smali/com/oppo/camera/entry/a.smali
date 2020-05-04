.class public interface abstract Lcom/oppo/camera/entry/a;
.super Ljava/lang/Object;
.source "CameraCallConstant.java"

# interfaces
.implements Lcom/oppo/camera/c;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "common"

    const-string v1, "night"

    const-string v2, "portrait"

    const-string v3, "panorama"

    const-string v4, "professional"

    const-string v5, "sticker"

    const-string v6, "commonVideo"

    const-string v7, "fastVideo"

    const-string v8, "slowVideo"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/entry/a;->a:[Ljava/lang/String;

    const-string v1, "support"

    const-string v2, "mode"

    const-string v3, "rear"

    const-string v4, "front"

    const-string v5, "beauty"

    const-string v6, "filter"

    const-string v7, "blur"

    const-string v8, "capture"

    const-string v9, "record"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/entry/a;->b:[Ljava/lang/String;

    return-void
.end method
