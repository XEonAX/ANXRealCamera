.class public Lcom/color/compat/net/ConnectivityManagerNative;
.super Ljava/lang/Object;
.source "ConnectivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readArpFile(Landroid/net/ConnectivityManager;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/ConnectivityManagerWrapper;->readArpFile(Landroid/net/ConnectivityManager;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConnManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/net/ConnectivityManagerWrapper;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;Landroid/os/Handler;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v1, Lcom/color/compat/net/ConnectivityManagerNative$1;

    invoke-direct {v1, p3}, Lcom/color/compat/net/ConnectivityManagerNative$1;-><init>(Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    :cond_0
    invoke-static {p0, p1, p2, v1, p4}, Lcom/color/inner/net/ConnectivityManagerWrapper;->startTethering(Landroid/net/ConnectivityManager;IZLcom/color/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    new-instance v1, Lcom/color/compat/net/ConnectivityManagerNative$2;

    invoke-direct {v1, p3}, Lcom/color/compat/net/ConnectivityManagerNative$2;-><init>(Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    :cond_2
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/color/inner/net/ConnectivityManagerWrapper;->stopTethering(Landroid/net/ConnectivityManager;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
