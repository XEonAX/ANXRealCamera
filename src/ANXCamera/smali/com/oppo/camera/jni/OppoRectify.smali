.class public Lcom/oppo/camera/jni/OppoRectify;
.super Ljava/lang/Object;
.source "OppoRectify.java"


# static fields
.field public static TAG:Ljava/lang/String; = "OppoRectify"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/oppo/camera/jni/OppoRectify;->TAG:Ljava/lang/String;

    const-string v1, "static, prop_projectCode: SDM710_Q"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ArcsoftRectifyJni710"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native init()I
.end method

.method public native process(Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;IIIII[I)[B
.end method

.method public native unInit()I
.end method
