.class Lcom/oppo/camera/d/n$a;
.super Ljava/lang/Object;
.source "VideoRecorder.java"

# interfaces
.implements Lcom/oppo/camera/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/n;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/d/n;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/n$a;->a:Lcom/oppo/camera/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/n$a;-><init>(Lcom/oppo/camera/d/n;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oppo/camera/d/c;II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/n$a;->a:Lcom/oppo/camera/d/n;

    invoke-static {v0}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n$a;->a:Lcom/oppo/camera/d/n;

    invoke-static {v0}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/camera/d/n$e;->b(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oppo/camera/d/c;II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/n$a;->a:Lcom/oppo/camera/d/n;

    invoke-static {v0}, Lcom/oppo/camera/d/n;->b(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/n$a;->a:Lcom/oppo/camera/d/n;

    invoke-static {v0}, Lcom/oppo/camera/d/n;->b(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/camera/d/n$d;->a(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
