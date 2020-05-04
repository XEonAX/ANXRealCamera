.class public Lcom/oppo/camera/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static a:Z = false

.field private static b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/oppo/camera/h;


# instance fields
.field private c:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/oppo/camera/MyApplication;->b:Ljava/util/Stack;

    new-instance v0, Lcom/oppo/camera/h;

    invoke-direct {v0}, Lcom/oppo/camera/h;-><init>()V

    sput-object v0, Lcom/oppo/camera/MyApplication;->d:Lcom/oppo/camera/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/MyApplication;->c:Landroid/os/ConditionVariable;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/MyApplication;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/MyApplication;->c:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static a()Lcom/oppo/camera/h;
    .locals 1

    sget-object v0, Lcom/oppo/camera/MyApplication;->d:Lcom/oppo/camera/h;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/camera/MyApplication;->a:Z

    return v0
.end method

.method public static c()V
    .locals 4

    const-string v0, "MyApplication"

    const-string v1, "finishActivities E"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/oppo/camera/MyApplication;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/oppo/camera/MyApplication;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishActivities: activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v1, "finishActivities X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e()Ljava/util/Stack;
    .locals 1

    sget-object v0, Lcom/oppo/camera/MyApplication;->b:Ljava/util/Stack;

    return-object v0
.end method

.method private f()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/MyApplication$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/MyApplication$2;-><init>(Lcom/oppo/camera/MyApplication;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/MyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oppo/camera/MyApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/o/d;->g(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/MyApplication;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const-string v0, "MyApplication"

    const-string v1, "checkPreInitStatus X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/oppo/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oppo/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->g(Landroid/content/Context;)Landroid/content/Context;

    sget-object v0, Lcom/oppo/camera/MyApplication;->d:Lcom/oppo/camera/h;

    new-instance v1, Lcom/oppo/camera/MyApplication$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/MyApplication$1;-><init>(Lcom/oppo/camera/MyApplication;)V

    const-string v2, "Camera Initialize"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/MyApplication;->g()V

    invoke-direct {p0}, Lcom/oppo/camera/MyApplication;->f()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->d()V

    sget-object v0, Lcom/oppo/camera/MyApplication;->d:Lcom/oppo/camera/h;

    invoke-virtual {v0}, Lcom/oppo/camera/h;->a()V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
