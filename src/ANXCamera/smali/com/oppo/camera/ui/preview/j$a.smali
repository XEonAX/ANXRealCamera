.class Lcom/oppo/camera/ui/preview/j$a;
.super Landroid/view/animation/Animation;
.source "GuideLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/j;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/preview/j;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j$a;->a:Lcom/oppo/camera/ui/preview/j;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/preview/j$a;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/j$a;->c:I

    const-wide/16 v0, 0x136

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/preview/j$a;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/j$a;->b:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/j$a;->c:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/j$a;->start()V

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget p2, p0, Lcom/oppo/camera/ui/preview/j$a;->b:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/j$a;->c:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/j$a;->a:Lcom/oppo/camera/ui/preview/j;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/j;->a(Lcom/oppo/camera/ui/preview/j;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/j$a;->a:Lcom/oppo/camera/ui/preview/j;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/j;->invalidate()V

    return-void
.end method
