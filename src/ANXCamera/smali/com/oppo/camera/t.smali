.class public Lcom/oppo/camera/t;
.super Ljava/lang/Object;
.source "SensorManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/t$a;,
        Lcom/oppo/camera/t$b;,
        Lcom/oppo/camera/t$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Lcom/oppo/camera/t$b;

.field private e:Landroid/hardware/SensorEventListener;

.field private f:Lcom/oppo/camera/t$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/t;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oppo/camera/t;->c:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    iput-object v0, p0, Lcom/oppo/camera/t;->e:Landroid/hardware/SensorEventListener;

    iput-object v0, p0, Lcom/oppo/camera/t;->f:Lcom/oppo/camera/t$c;

    iput-object p1, p0, Lcom/oppo/camera/t;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/t;)Lcom/oppo/camera/t$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/t;->f:Lcom/oppo/camera/t$c;

    return-object p0
.end method

.method private c(I)Z
    .locals 1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const-string p1, "persist.camera.light_ae.enable"

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .locals 5

    const-string v0, "SensorManagerClient"

    const-string v1, "registerGyroSensor"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/t;->e:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/t;->a:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/t;->c:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/t;->c:Landroid/hardware/Sensor;

    :cond_1
    new-instance v1, Lcom/oppo/camera/t$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/t$a;-><init>(Lcom/oppo/camera/t;Lcom/oppo/camera/t$1;)V

    iput-object v1, p0, Lcom/oppo/camera/t;->e:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oppo/camera/t;->e:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/oppo/camera/t;->c:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerGproSensor, Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "SensorManagerClient"

    const-string v1, "unregisterGyroSensor"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/t;->e:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v1, p0, Lcom/oppo/camera/t;->e:Landroid/hardware/SensorEventListener;

    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/t;->c:Landroid/hardware/Sensor;

    return-void
.end method

.method private f()V
    .locals 5

    const-string v0, "SensorManagerClient"

    iget-object v1, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "registerLightSensor"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/t;->a:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    :cond_0
    new-instance v1, Lcom/oppo/camera/t$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/t$b;-><init>(Lcom/oppo/camera/t;Lcom/oppo/camera/t$1;)V

    iput-object v1, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    iget-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    iget-object v3, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v1, "registerLightSensor X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterLightSensor, mLightSensorListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorManagerClient"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    invoke-virtual {v0}, Lcom/oppo/camera/t$b;->a()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo.camera.lightIntensity"

    invoke-static {v1, v0}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/t;->d()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/t;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/t;->f()V

    :cond_1
    return-void
.end method

.method public a(Lcom/oppo/camera/t$c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/t;->f:Lcom/oppo/camera/t$c;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/t;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/t;->d:Lcom/oppo/camera/t$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/t$b;->a()I

    move-result v0

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo.camera.lightIntensity"

    invoke-static {v1, v0}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/t;->e()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/t;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/t;->g()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/t;->b:Landroid/hardware/SensorManager;

    return-void
.end method
