.class Lcom/oppo/camera/ui/e$4;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/e;->a(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$4;->b:Lcom/oppo/camera/ui/e;

    iput-object p2, p0, Lcom/oppo/camera/ui/e$4;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e$4;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->l(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e$4;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->l(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e$4;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
