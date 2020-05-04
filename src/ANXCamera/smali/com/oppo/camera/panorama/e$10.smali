.class Lcom/oppo/camera/panorama/e$10;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$10;->a:Lcom/oppo/camera/panorama/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$10;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->ab(Lcom/oppo/camera/panorama/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$10;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->ac(Lcom/oppo/camera/panorama/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/panorama/e;->c(Lcom/oppo/camera/panorama/e;I)V

    :cond_0
    return-void
.end method
