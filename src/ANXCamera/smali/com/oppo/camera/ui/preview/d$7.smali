.class Lcom/oppo/camera/ui/preview/d$7;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/d;->a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/d$a;

.field final synthetic b:Lcom/oppo/camera/ui/preview/d;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/d;Lcom/oppo/camera/ui/preview/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d$7;->b:Lcom/oppo/camera/ui/preview/d;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/d$7;->a:Lcom/oppo/camera/ui/preview/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$7;->b:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->y(Lcom/oppo/camera/ui/preview/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$7;->a:Lcom/oppo/camera/ui/preview/d$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$a;->a()V

    :cond_1
    return-void
.end method
