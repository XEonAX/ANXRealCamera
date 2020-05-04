.class Lcom/oppo/camera/m/d$2;
.super Ljava/lang/Object;
.source "SLVFps960Mode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/m/d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m/d;


# direct methods
.method constructor <init>(Lcom/oppo/camera/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m/d$2;->a:Lcom/oppo/camera/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/m/d$2;->a:Lcom/oppo/camera/m/d;

    invoke-static {v0}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;)Lcom/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/d$2;->a:Lcom/oppo/camera/m/d;

    new-instance v1, Lcom/b/a;

    iget-object v2, v0, Lcom/oppo/camera/m/d;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/m/d$2;->a:Lcom/oppo/camera/m/d;

    invoke-static {v3}, Lcom/oppo/camera/m/d;->c(Lcom/oppo/camera/m/d;)Lcom/b/b;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/b/a;-><init>(Landroid/app/Activity;Lcom/b/b;)V

    invoke-static {v0, v1}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;Lcom/b/a;)Lcom/b/a;

    :cond_0
    return-void
.end method
