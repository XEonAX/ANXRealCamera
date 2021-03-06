.class public Lcom/color/compat/bluetooth/BluetoothMapNative;
.super Ljava/lang/Object;
.source "BluetoothMapNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothMapNative"


# instance fields
.field private mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    new-instance v0, Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;-><init>(Landroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDefaultProfile()Landroid/bluetooth/BluetoothProfile;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->getDefaultProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothMapNative;->mBluetoothMapWrapper:Lcom/color/inner/bluetooth/BluetoothMapWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/bluetooth/BluetoothMapWrapper;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
