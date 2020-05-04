.class Lcom/oppo/camera/ui/preview/a/c$1;
.super Ljava/lang/Object;
.source "FaceSlenderTexturePreview.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/a/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/a/c;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/c$1;->a:Lcom/oppo/camera/ui/preview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c$1;->a:Lcom/oppo/camera/ui/preview/a/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/c;->a(Lcom/oppo/camera/ui/preview/a/c;)Lcom/oppo/camera/facebeauty/FaceSlender2D;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FaceSlenderTexturePreview"

    const-string v2, "destroyEngine"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/c$1;->a:Lcom/oppo/camera/ui/preview/a/c;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/c;->a(Lcom/oppo/camera/ui/preview/a/c;)Lcom/oppo/camera/facebeauty/FaceSlender2D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/facebeauty/FaceSlender2D;->destroySlender()I

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const-string v2, "destroyEngine X"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c$1;->a:Lcom/oppo/camera/ui/preview/a/c;

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/c;->a(Lcom/oppo/camera/ui/preview/a/c;Lcom/oppo/camera/facebeauty/FaceSlender2D;)Lcom/oppo/camera/facebeauty/FaceSlender2D;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/c$1;->a:Lcom/oppo/camera/ui/preview/a/c;

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/c;->a(Lcom/oppo/camera/ui/preview/a/c;Lcom/oppo/camera/ui/preview/a/p;)Lcom/oppo/camera/ui/preview/a/p;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/c$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
