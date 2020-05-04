.class Lcom/oppo/camera/ui/preview/k$1;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/k;->a(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/k;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/k;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/k$1;->a:Lcom/oppo/camera/ui/preview/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/k$1;->a:Lcom/oppo/camera/ui/preview/k;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/k;->a(Lcom/oppo/camera/ui/preview/k;)Lcom/oppo/camera/ui/preview/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/k$1;->a:Lcom/oppo/camera/ui/preview/k;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/k;->a(Lcom/oppo/camera/ui/preview/k;)Lcom/oppo/camera/ui/preview/e$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$b;->b()V

    :cond_0
    return-void
.end method
