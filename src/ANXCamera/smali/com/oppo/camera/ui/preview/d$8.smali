.class Lcom/oppo/camera/ui/preview/d$8;
.super Lcom/oppo/camera/gl/GLView;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/oppo/camera/ui/preview/d;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-direct {p0}, Lcom/oppo/camera/gl/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->d(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/e;->b(II)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/camera/gl/GLView;->a(IIII)V

    return-void
.end method

.method protected a(Lcom/oppo/camera/gl/h;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->e(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/d;->e(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/d;->e(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/d;->e(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/ui/preview/d;IIZ)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-interface {p1, v0}, Lcom/oppo/camera/gl/h;->a([F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->d(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->f(Lcom/oppo/camera/ui/preview/d;)I

    move-result v4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->g(Lcom/oppo/camera/ui/preview/d;)I

    move-result v5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->h(Lcom/oppo/camera/ui/preview/d;)I

    move-result v6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->i(Lcom/oppo/camera/ui/preview/d;)I

    move-result v7

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected b(Lcom/oppo/camera/gl/h;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->d(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->d(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->j(Lcom/oppo/camera/ui/preview/d;)I

    move-result v5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->k(Lcom/oppo/camera/ui/preview/d;)I

    move-result v6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->l(Lcom/oppo/camera/ui/preview/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->m(Lcom/oppo/camera/ui/preview/d;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->n(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/d$b;->aj()I

    move-result v0

    :goto_0
    move v7, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;IIIII)V

    :cond_1
    return-void
.end method

.method protected c(Lcom/oppo/camera/gl/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/gl/GLView;->c(Lcom/oppo/camera/gl/h;)V

    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/d$8;->j:Lcom/oppo/camera/ui/preview/d;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/d;->d(Lcom/oppo/camera/ui/preview/d;)Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/e;->j()V

    return-void
.end method
