.class public Lcom/oppo/camera/a/c;
.super Ljava/lang/Object;
.source "ApsUtils.java"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/oppo/camera/c;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    sget-object v3, Lcom/oppo/camera/c;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    const-string v2, "common"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "portrait"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    const-string v2, "professional"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "night"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static a(Landroid/hardware/camera2/CaptureResult;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/color/compat/hardware/camera2/impl/CameraMetadataNativeNative;->getVendorTagId(Landroid/hardware/camera2/CaptureResult;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILandroid/media/Image;)[I
    .locals 3

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Lcom/oppo/camera/jni/APSClient;)[I
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/oppo/camera/a/c;->a(Ljava/lang/Object;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "ApsUtils"

    const-string p1, "getCharacteristicsFieldValue, error"

    invoke-static {p0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/hardware/camera2/CaptureResult;Lcom/oppo/camera/jni/APSClient;)[I
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "ApsUtils"

    const-string p1, "getCaptureResultMetaData, CaptureResult is null, return"

    invoke-static {p0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/camera/a/c;->a(Ljava/lang/Object;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Lcom/oppo/camera/jni/APSClient;)[I
    .locals 4

    invoke-static {p0}, Lcom/color/compat/hardware/camera2/impl/CameraMetadataNativeNative;->getBufSize(Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v1, v0, 0x1000

    rem-int/lit16 v0, v0, 0x1000

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/jni/APSClient;->getIonBuf(II)[I

    move-result-object p1

    aget v2, p1, v0

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/color/compat/hardware/camera2/impl/CameraMetadataNativeNative;->copyBuf(Ljava/lang/Object;J)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFieldReflectValue, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", addr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", copy ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", mMetaBufferFd: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    aget v3, p1, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApsUtils"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    aget v3, p1, v0

    aput v3, v2, v0

    aget p1, p1, p0

    aput p1, v2, p0

    const/4 p0, 0x2

    aput v1, v2, p0

    return-object v2
.end method

.method public static a(Ljava/lang/String;Lcom/oppo/camera/jni/APSClient;)[I
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->E()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    const-string v0, "mProperties"

    invoke-static {p0, v0, p1}, Lcom/oppo/camera/a/c;->a(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "ApsUtils"

    const-string p1, "getCameraCharacteristicsData, camera id is null or empty, return"

    invoke-static {p0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([I[I)[I
    .locals 1

    array-length p0, p0

    new-array p1, p0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static a([Ljava/nio/ByteBuffer;)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(ILandroid/media/Image;I)[Ljava/nio/ByteBuffer;
    .locals 2

    new-array p0, p0, [Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-eq v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, p0, v0

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object p1, p0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object p1, p0, v0

    :goto_0
    return-object p0
.end method
