.class Lcom/oppo/camera/d/m$2;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/m;->a(Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/m;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/m$2;->a:Lcom/oppo/camera/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/m$2;->a:Lcom/oppo/camera/d/m;

    iget-object v0, v0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->d()V

    return-void
.end method
