.class Lcom/oppo/camera/ui/e$34;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$34;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/ui/e$34;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->h(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$34;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->g(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e$34;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->h(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a$b;

    move-result-object p1

    sub-int/2addr p4, p2

    invoke-interface {p1, p4}, Lcom/oppo/camera/ui/preview/a$b;->b(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$34;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->h(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a$b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/preview/a$b;->b(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e$34;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aN()V

    return-void
.end method
