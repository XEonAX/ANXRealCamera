.class public Lcom/color/compat/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;,
        Lcom/color/compat/app/ActivityManagerNative$PackageDataObserver;,
        Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManagerNative"

.field private static mIProcessObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;",
            "Lcom/color/inner/app/ActivityManagerWrapper$IProcessObserverWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/color/compat/app/ActivityManagerNative;->mIProcessObserverMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearAfterQ(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)Z
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/color/compat/app/ActivityManagerNative$1;

    invoke-direct {v0, p2}, Lcom/color/compat/app/ActivityManagerNative$1;-><init>(Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/app/ActivityManagerWrapper;->clearApplicationUserData(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/color/inner/app/ActivityManagerWrapper$IPackageDataObserverWrapper;)Z

    move-result p0

    return p0
.end method

.method private static clearAfterQ(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/color/compat/app/ActivityManagerNative$2;

    invoke-direct {v0, p2}, Lcom/color/compat/app/ActivityManagerNative$2;-><init>(Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0, p3}, Lcom/color/inner/app/ActivityManagerWrapper;->clearApplicationUserData(Ljava/lang/String;ZLcom/color/inner/app/ActivityManagerWrapper$IPackageDataObserverWrapper;I)Z

    move-result p0

    return p0
.end method

.method public static clearApplicationUserData(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/color/compat/app/ActivityManagerNative;->clearAfterQ(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/color/compat/app/ActivityManagerNative;->clearBeforeQ(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static clearApplicationUserData(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/color/compat/app/ActivityManagerNative;->clearAfterQ(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/color/compat/app/ActivityManagerNative;->clearBeforeQ(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z

    move-result p0

    return p0

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

    const-string p1, "ActivityManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static clearBeforeQ(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/color/compat/app/ActivityManagerNative$PackageDataObserver;

    invoke-direct {v0, p2}, Lcom/color/compat/app/ActivityManagerNative$PackageDataObserver;-><init>(Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p0

    return p0
.end method

.method private static clearBeforeQ(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/color/compat/app/ActivityManagerNative$PackageDataObserver;

    invoke-direct {v1, p2}, Lcom/color/compat/app/ActivityManagerNative$PackageDataObserver;-><init>(Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)V

    invoke-interface {v0, p0, p1, v1, p3}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result p0

    return p0
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/app/ActivityManagerWrapper;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/color/inner/app/ActivityManagerWrapper;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentUser()I
    .locals 1

    invoke-static {}, Lcom/color/inner/app/ActivityManagerWrapper;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public static getProcessPss([I)[J
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/ActivityManagerWrapper;->getProcessPss([I)[J

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static registerProcessObserver(Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;)V
    .locals 2

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Lcom/color/compat/app/ActivityManagerNative;->mIProcessObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/color/compat/app/ActivityManagerNative;->unregisterProcessObserver(Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;)V

    :cond_0
    new-instance v0, Lcom/color/compat/app/ActivityManagerNative$3;

    invoke-direct {v0, p0}, Lcom/color/compat/app/ActivityManagerNative$3;-><init>(Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;)V

    invoke-static {v0}, Lcom/color/inner/app/ActivityManagerWrapper;->registerProcessObserver(Lcom/color/inner/app/ActivityManagerWrapper$IProcessObserverWrapper;)V

    sget-object v1, Lcom/color/compat/app/ActivityManagerNative;->mIProcessObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeTask(I)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/ActivityManagerWrapper;->removeTask(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static resumeAppSwitches()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/color/inner/app/ActivityManagerWrapper;->resumeAppSwitches()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setProcessLimit(I)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/ActivityManagerWrapper;->setProcessLimit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static unregisterProcessObserver(Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/color/compat/app/ActivityManagerNative;->mIProcessObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/color/compat/app/ActivityManagerNative;->mIProcessObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/inner/app/ActivityManagerWrapper$IProcessObserverWrapper;

    invoke-static {v0}, Lcom/color/inner/app/ActivityManagerWrapper;->unregisterProcessObserver(Lcom/color/inner/app/ActivityManagerWrapper$IProcessObserverWrapper;)V

    sget-object v0, Lcom/color/compat/app/ActivityManagerNative;->mIProcessObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/ActivityManagerWrapper;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
