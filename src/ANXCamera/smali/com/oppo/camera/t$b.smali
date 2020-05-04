.class Lcom/oppo/camera/t$b;
.super Ljava/lang/Object;
.source "SensorManagerClient.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/t;

.field private b:Z

.field private c:I


# direct methods
.method private constructor <init>(Lcom/oppo/camera/t;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/t$b;->a:Lcom/oppo/camera/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/t$b;->b:Z

    iput p1, p0, Lcom/oppo/camera/t$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/t;Lcom/oppo/camera/t$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/t$b;-><init>(Lcom/oppo/camera/t;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/t$b;->c:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oppo/camera/t$b;->c:I

    iget-boolean p1, p0, Lcom/oppo/camera/t$b;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/t$b;->b:Z

    iget p1, p0, Lcom/oppo/camera/t$b;->c:I

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo.camera.lightIntensity"

    invoke-static {v0, p1}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
