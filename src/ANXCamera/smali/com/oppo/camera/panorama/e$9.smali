.class Lcom/oppo/camera/panorama/e$9;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/control/c;

.field final synthetic b:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;Lcom/oppo/camera/ui/control/c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$9;->b:Lcom/oppo/camera/panorama/e;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e$9;->a:Lcom/oppo/camera/ui/control/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$9;->b:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->aa(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$9;->a:Lcom/oppo/camera/ui/control/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method
