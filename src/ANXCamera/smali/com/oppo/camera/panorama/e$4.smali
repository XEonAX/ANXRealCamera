.class Lcom/oppo/camera/panorama/e$4;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/panorama/e;
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

    iput-object p1, p0, Lcom/oppo/camera/panorama/e$4;->a:Lcom/oppo/camera/panorama/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$4;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->ae(Lcom/oppo/camera/panorama/e;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$4;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$4;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->ae(Lcom/oppo/camera/panorama/e;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$4;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->getCurrentGuideTips()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
