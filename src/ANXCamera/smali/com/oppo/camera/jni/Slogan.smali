.class public Lcom/oppo/camera/jni/Slogan;
.super Ljava/lang/Object;
.source "Slogan.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SloganJni_qualcomm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SloganJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native isSloganFileExist(Ljava/lang/String;)I
.end method

.method public native setSloganBuffer(Ljava/nio/ByteBuffer;ILjava/lang/String;)I
.end method

.method public native sloganFileDelete(Ljava/lang/String;)I
.end method
