.class Lcom/oppo/camera/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/MyApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/MyApplication;


# direct methods
.method constructor <init>(Lcom/oppo/camera/MyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/MyApplication$1;->a:Lcom/oppo/camera/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/MyApplication$1;->a:Lcom/oppo/camera/MyApplication;

    invoke-virtual {v0}, Lcom/oppo/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oppo/camera/MyApplication$1;->a:Lcom/oppo/camera/MyApplication;

    invoke-virtual {v0}, Lcom/oppo/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->initialize(Lcom/oppo/camera/e/h;)V

    iget-object v0, p0, Lcom/oppo/camera/MyApplication$1;->a:Lcom/oppo/camera/MyApplication;

    invoke-static {v0}, Lcom/oppo/camera/MyApplication;->a(Lcom/oppo/camera/MyApplication;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/oppo/camera/MyApplication$1;->a:Lcom/oppo/camera/MyApplication;

    invoke-virtual {v0}, Lcom/oppo/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/content/Context;)V

    return-void
.end method
