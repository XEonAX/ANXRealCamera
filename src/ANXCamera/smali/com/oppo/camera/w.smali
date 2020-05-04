.class public Lcom/oppo/camera/w;
.super Ljava/lang/Object;
.source "VibrateManager.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/oppo/os/LinearmotorVibrator;

.field private c:Z

.field private d:Z

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private g:Lcom/oppo/os/WaveformEffect$Builder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/w;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/w;->b:Lcom/oppo/os/LinearmotorVibrator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/w;->c:Z

    iput-boolean v1, p0, Lcom/oppo/camera/w;->d:Z

    iput-object v0, p0, Lcom/oppo/camera/w;->e:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/oppo/camera/w;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oppo/camera/w;->a:Landroid/app/Activity;

    iget-object p1, p0, Lcom/oppo/camera/w;->a:Landroid/app/Activity;

    const-string v0, "linearmotor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/LinearmotorVibrator;

    iput-object p1, p0, Lcom/oppo/camera/w;->b:Lcom/oppo/os/LinearmotorVibrator;

    iput-boolean v1, p0, Lcom/oppo/camera/w;->c:Z

    const-string p1, "oppo.feature.vibrator.waveform.support"

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/w;->d:Z

    new-instance p1, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {p1}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/w;->g:Lcom/oppo/os/WaveformEffect$Builder;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraVibrateManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/w;->e:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/oppo/camera/w;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/oppo/camera/w$1;

    iget-object v0, p0, Lcom/oppo/camera/w;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oppo/camera/w$1;-><init>(Lcom/oppo/camera/w;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/w;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/w;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/w;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/w;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/w;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrateWithEffect, effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrateManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/oppo/camera/w;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/w;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/w;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/w;->b:Lcom/oppo/os/LinearmotorVibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/w;->g:Lcom/oppo/os/WaveformEffect$Builder;

    invoke-virtual {v0, p1}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    iget-object p1, p0, Lcom/oppo/camera/w;->b:Lcom/oppo/os/LinearmotorVibrator;

    iget-object v0, p0, Lcom/oppo/camera/w;->g:Lcom/oppo/os/WaveformEffect$Builder;

    invoke-virtual {v0}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/os/LinearmotorVibrator;->vibrate(Lcom/oppo/os/WaveformEffect;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/w;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/w;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume, mbVibrateFeedbackEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/w;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrateManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/w;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/w;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oppo/camera/w;->f:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lcom/oppo/camera/w;->a(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/w;->a(I)V

    return-void
.end method
