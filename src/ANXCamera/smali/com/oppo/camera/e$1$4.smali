.class Lcom/oppo/camera/e$1$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$1;->b(Lcom/oppo/camera/v$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/v$a;

.field final synthetic b:Lcom/oppo/camera/e$1;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$1;Lcom/oppo/camera/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$1$4;->b:Lcom/oppo/camera/e$1;

    iput-object p2, p0, Lcom/oppo/camera/e$1$4;->a:Lcom/oppo/camera/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/e$1$4;->b:Lcom/oppo/camera/e$1;

    iget-object v1, v1, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$1$4;->b:Lcom/oppo/camera/e$1;

    iget-object v2, v2, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const v3, 0x7a1200

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e$1$4;->b:Lcom/oppo/camera/e$1;

    iget-object v2, v2, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->n(Lcom/oppo/camera/e;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/e$1$4;->a:Lcom/oppo/camera/v$a;

    iget-object v1, v1, Lcom/oppo/camera/v$a;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/camera/e$1$4;->a:Lcom/oppo/camera/v$a;

    iget-object v3, v3, Lcom/oppo/camera/v$a;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$1$4;->b:Lcom/oppo/camera/e$1;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/e$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
