.class Lcom/oppo/camera/e$20;
.super Lcom/oppo/camera/gl/t$a;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Lcom/oppo/camera/gl/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;J)V
    .locals 2

    const-string p2, "CaptureOnePreview"

    invoke-static {p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;

    move-result-object p2

    const-string p3, "CameraManager"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSwitchPreviewCb, onPreviewCaptured, mExeNow: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oppo/camera/e$f;->g:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-virtual {p2}, Lcom/oppo/camera/e;->K()I

    move-result p2

    iget-object p3, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;

    move-result-object p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v1, p2

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p3, Lcom/oppo/camera/e$f;->h:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/oppo/camera/e$f;->f:Z

    iget-object p1, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;

    move-result-object p1

    iget-boolean p1, p1, Lcom/oppo/camera/e$f;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    new-instance p2, Lcom/oppo/camera/e$20$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/e$20$1;-><init>(Lcom/oppo/camera/e$20;)V

    invoke-virtual {p1, p2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "setSwitchPreviewCb, onPreviewCaptured, mCameraSwitch is null"

    invoke-static {p3, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
