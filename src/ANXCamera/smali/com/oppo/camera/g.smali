.class public Lcom/oppo/camera/g;
.super Ljava/lang/Object;
.source "CameraMotorManager.java"


# static fields
.field private static a:Lcom/oppo/camera/g;


# instance fields
.field private b:Landroid/os/MotorManager;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/g;

    invoke-direct {v0}, Lcom/oppo/camera/g;-><init>()V

    sput-object v0, Lcom/oppo/camera/g;->a:Lcom/oppo/camera/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/g;->c:Z

    return-void
.end method

.method public static a()Lcom/oppo/camera/g;
    .locals 1

    sget-object v0, Lcom/oppo/camera/g;->a:Lcom/oppo/camera/g;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    if-nez v0, :cond_0

    const-string v0, "oppo.hardware.motor.support"

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraMotorManager"

    const-string v1, "initMotorManager, support hardware motor."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Landroid/os/MotorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/MotorManager;

    iput-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/g;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/camera/g;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_MOTOR_DOWN_DELAY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    if-gez p1, :cond_0

    const/16 p1, 0x3e8

    :cond_0
    const-string v0, "CameraMotorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotorByPrivacyApp, motorDelay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    const-string v1, "motor_force_by_camera"

    invoke-virtual {v0, v1, p1}, Landroid/os/MotorManager;->downMotorByPrivacyApp(Ljava/lang/String;I)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/g;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/g;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    if-eqz p1, :cond_0

    const-string p1, "CameraMotorManager"

    const-string v0, "downMotorBySystemApp"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    const-string v0, "motor_force_by_camera"

    invoke-virtual {p1, v0}, Landroid/os/MotorManager;->downMotorBySystemApp(Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/g;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/g;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    invoke-virtual {p1}, Landroid/os/MotorManager;->getMotorStateBySystemApp()I

    move-result p1

    const-string v0, "CameraMotorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upMotorBySystemApp, motorState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/g;->b:Landroid/os/MotorManager;

    const-string v0, "motor_force_by_camera"

    invoke-virtual {p1, v0}, Landroid/os/MotorManager;->upMotorBySystemApp(Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
