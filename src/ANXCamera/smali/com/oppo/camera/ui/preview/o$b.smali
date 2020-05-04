.class Lcom/oppo/camera/ui/preview/o$b;
.super Lcom/a/a/e;
.source "ZoomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/o;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/preview/o;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/o$b;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/preview/o;Lcom/oppo/camera/ui/preview/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/o$b;-><init>(Lcom/oppo/camera/ui/preview/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o$b;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;F)F

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$b;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/o;->invalidate()V

    return-void
.end method

.method public b(Lcom/a/a/f;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$b;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->o(Lcom/oppo/camera/ui/preview/o;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/o;->a(Lcom/oppo/camera/ui/preview/o;I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/o$b;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/o;->p(Lcom/oppo/camera/ui/preview/o;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/o;->b(F)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSpringAtRest, mSlideToValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/o$b;->a:Lcom/oppo/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/o;->p(Lcom/oppo/camera/ui/preview/o;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomSeekBar"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
