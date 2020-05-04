.class public Lcom/oppo/camera/ui/menu/levelcontrol/e;
.super Ljava/lang/Object;
.source "GLModelParam.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m:F

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    return v0
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m:F

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m:F

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a:Ljava/lang/String;

    const-string v2, "mModelName"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    const-string v2, "mBitmaps"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    const-string v2, "mHighlightBmp"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mElementNum"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTexW"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTexH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mCurrItemIndex"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mCenterAng"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mElementH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mElementGap"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mHighlightH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mbFrontCamera"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mbFromSurfaceTexture"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
