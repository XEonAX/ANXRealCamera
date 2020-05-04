.class Lcom/oppo/camera/ui/e$8;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/e;->at()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    iput-object p2, p0, Lcom/oppo/camera/ui/e$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->a:Ljava/lang/String;

    const-string v1, "square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->s(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->s(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->X()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v3}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/OppoTextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v4}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->s(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->s(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v2}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v3}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->getMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v3}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/OppoTextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/ui/e$8;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v4}, Lcom/oppo/camera/ui/e;->f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    :cond_1
    :goto_0
    return-void
.end method
