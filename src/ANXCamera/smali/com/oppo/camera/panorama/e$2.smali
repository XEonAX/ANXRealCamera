.class Lcom/oppo/camera/panorama/e$2;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/panorama/e;->onGuide(Lvisidon/Lib/Panorama$Guide;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvisidon/Lib/Panorama$Guide;

.field final synthetic b:I

.field final synthetic c:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;Lvisidon/Lib/Panorama$Guide;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$2;->c:Lcom/oppo/camera/panorama/e;

    iput-object p2, p0, Lcom/oppo/camera/panorama/e$2;->a:Lvisidon/Lib/Panorama$Guide;

    iput p3, p0, Lcom/oppo/camera/panorama/e$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$2;->a:Lvisidon/Lib/Panorama$Guide;

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->NONE:Lvisidon/Lib/Panorama$Guide;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$2;->a:Lvisidon/Lib/Panorama$Guide;

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->MOVE:Lvisidon/Lib/Panorama$Guide;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$2;->a:Lvisidon/Lib/Panorama$Guide;

    sget-object v1, Lvisidon/Lib/Panorama$Guide;->MOVE_FREE:Lvisidon/Lib/Panorama$Guide;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$2;->a:Lvisidon/Lib/Panorama$Guide;

    sget-object v0, Lvisidon/Lib/Panorama$Guide;->HOLD:Lvisidon/Lib/Panorama$Guide;

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/oppo/camera/panorama/e$2;->b:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$2;->c:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setNextDirection(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$2;->c:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setNextDirection(I)V

    :goto_1
    return-void
.end method
