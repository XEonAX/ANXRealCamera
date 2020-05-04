.class public Lcom/oppo/camera/i/a;
.super Ljava/lang/Object;
.source "CameraHypnusManager.java"


# static fields
.field private static a:Lcom/oppo/camera/i/a;


# instance fields
.field private b:Lcom/oppo/hypnus/HypnusManager;

.field private c:Lcom/oppo/camera/jni/YuvProcessUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    new-instance v0, Lcom/oppo/camera/jni/YuvProcessUtil;

    invoke-direct {v0}, Lcom/oppo/camera/jni/YuvProcessUtil;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/i/a;->c:Lcom/oppo/camera/jni/YuvProcessUtil;

    return-void
.end method

.method public static a()Lcom/oppo/camera/i/a;
    .locals 2

    const-class v0, Lcom/oppo/camera/i/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/i/a;->a:Lcom/oppo/camera/i/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/i/a;

    invoke-direct {v1}, Lcom/oppo/camera/i/a;-><init>()V

    sput-object v1, Lcom/oppo/camera/i/a;->a:Lcom/oppo/camera/i/a;

    :cond_0
    sget-object v1, Lcom/oppo/camera/i/a;->a:Lcom/oppo/camera/i/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindBigCore, cpuBitMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHypnusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/i/a;->c:Lcom/oppo/camera/jni/YuvProcessUtil;

    invoke-static {p1, p2}, Lcom/oppo/camera/jni/YuvProcessUtil;->bindCpuCores(J)V

    return-void
.end method

.method public b()V
    .locals 5

    const-string v0, "oppo.camera.app.hypnus.enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hypnusSetActionOn, action: 25, hypnusEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraHypnusManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/hypnus/HypnusManager;

    invoke-direct {v0}, Lcom/oppo/hypnus/HypnusManager;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    const/16 v1, 0x19

    const/16 v3, 0x7530

    invoke-virtual {v0, v1, v3}, Lcom/oppo/hypnus/HypnusManager;->hypnusSetAction(II)V

    const-string v0, "oppo.bind.bigCore.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "oppo.bind.bigCore.cpuBitMask"

    const-string v3, "C0"

    invoke-static {v1, v3}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/i/a;->a(J)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hypnusSetActionOn, X, bindBigCore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreCpuCores, cpuBitMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHypnusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/i/a;->c:Lcom/oppo/camera/jni/YuvProcessUtil;

    invoke-static {p1, p2}, Lcom/oppo/camera/jni/YuvProcessUtil;->bindCpuCores(J)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "oppo.camera.app.hypnus.enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hypnusSetActionOff, hypnusEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraHypnusManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/hypnus/HypnusManager;

    invoke-direct {v0}, Lcom/oppo/hypnus/HypnusManager;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    :cond_1
    const-string v0, "oppo.bind.bigCore.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "oppo.bind.bigCore.cpuBitMask"

    const-string v1, "C0"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/i/a;->b(J)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/i/a;->b:Lcom/oppo/hypnus/HypnusManager;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/hypnus/HypnusManager;->hypnusSetAction(II)V

    return-void
.end method
