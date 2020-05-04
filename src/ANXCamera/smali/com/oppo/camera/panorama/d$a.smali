.class public Lcom/oppo/camera/panorama/d$a;
.super Ljava/lang/Object;
.source "FNPanoramaProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/panorama/d;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/panorama/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/d$a;->a:Lcom/oppo/camera/panorama/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/panorama/d$a;->b:I

    iput p1, p0, Lcom/oppo/camera/panorama/d$a;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/panorama/d$a;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/panorama/d$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d$a;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/panorama/d$a;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/panorama/d$a;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/panorama/d$a;->c:I

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/panorama/d$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method
