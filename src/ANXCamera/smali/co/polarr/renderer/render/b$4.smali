.class Lco/polarr/renderer/render/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/polarr/renderer/render/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lco/polarr/renderer/render/b;


# direct methods
.method constructor <init>(Lco/polarr/renderer/render/b;)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/render/b$4;->a:Lco/polarr/renderer/render/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lco/polarr/renderer/render/b$4;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "local_adjustments"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/Adjustment;

    if-nez v4, :cond_1

    iget-object v4, v5, Lco/polarr/renderer/entities/Adjustment;->adjustments:Lco/polarr/renderer/entities/Context$LocalState;

    iget v4, v4, Lco/polarr/renderer/entities/Context$LocalState;->blur:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v5, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->e:I

    shr-int/lit8 v6, v1, 0x1

    shr-int/lit8 v7, v5, 0x1

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v8, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v8, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {v8, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v6, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v7

    iput-object v7, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v7, p0, Lco/polarr/renderer/render/b$4;->a:Lco/polarr/renderer/render/b;

    const/4 v8, 0x0

    invoke-static {v7, v2, v8, v2, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/b;ZLco/polarr/renderer/render/f;ZZ)V

    iget-object v2, p0, Lco/polarr/renderer/render/b$4;->a:Lco/polarr/renderer/render/b;

    invoke-static {v2}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/render/b;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lco/polarr/renderer/render/b;->d(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iget-object v2, p0, Lco/polarr/renderer/render/b$4;->a:Lco/polarr/renderer/render/b;

    invoke-static {v2}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/render/b;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v7, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {v2, v0, v7}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)V

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v2, v1, v5}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v2, v1, v5}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iput-object v6, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    :cond_3
    move v2, v4

    :cond_4
    if-nez v2, :cond_5

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0, v3, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    :cond_5
    return-void
.end method
