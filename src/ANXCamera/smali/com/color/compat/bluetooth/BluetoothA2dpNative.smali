.class public Lcom/color/compat/bluetooth/BluetoothA2dpNative;
.super Ljava/lang/Object;
.source "BluetoothA2dpNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothA2dpNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->getPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static tempowGetActiveDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothA2dp;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->tempowGetActiveDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothA2dpNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static tempowRemoveActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->tempowRemoveActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
