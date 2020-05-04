.class Lcom/oppo/camera/e$d$2$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$d$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$d$2;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$d$2;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$d$2$1;->a:Lcom/oppo/camera/e$d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e$d$2$1;->a:Lcom/oppo/camera/e$d$2;

    iget-object v0, v0, Lcom/oppo/camera/e$d$2;->a:Lcom/oppo/camera/e$d;

    iget-object v0, v0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(Z)V

    return-void
.end method
