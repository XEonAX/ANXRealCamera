.class Lcom/oppo/camera/ui/preview/a/j$1;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/a/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/a/j;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i$a;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$1;->a:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->a(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i$a;->a()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
