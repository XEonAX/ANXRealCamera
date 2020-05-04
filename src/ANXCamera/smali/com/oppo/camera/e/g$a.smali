.class Lcom/oppo/camera/e/g$a;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e/g;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/oppo/camera/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppo/camera/e/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e/g;Ljava/lang/String;Lcom/oppo/camera/e/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/e/i<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oppo/camera/e/g$a;->a:Lcom/oppo/camera/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/e/g$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/camera/e/g$a;->c:Lcom/oppo/camera/e/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e/g;Ljava/lang/String;Lcom/oppo/camera/e/i;Lcom/oppo/camera/e/g$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g$a;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g$a;)Lcom/oppo/camera/e/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e/g$a;->c:Lcom/oppo/camera/e/i;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e/g$a;->a:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->h(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g$a;->a:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->h(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g$a;->a:Lcom/oppo/camera/e/g;

    invoke-static {v0}, Lcom/oppo/camera/e/g;->h(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/c;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addToBuilder, key is null, key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e/g$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e/g$a;->c:Lcom/oppo/camera/e/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/e/g$a;->c:Lcom/oppo/camera/e/i;

    invoke-interface {v1}, Lcom/oppo/camera/e/i;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "addToBuilder, mCameraMetadataKey is null or not loaded"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
