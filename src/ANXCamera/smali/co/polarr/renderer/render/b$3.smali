.class Lco/polarr/renderer/render/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/polarr/renderer/render/b;->f()V
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

    iput-object p1, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->g()V

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->e()V

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->cropMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v1}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/b/c;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v0, v1

    float-to-int v1, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    float-to-int v0, v0

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_0
    iget-object v2, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    iget-object v2, v2, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    iget-object v3, v3, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v2}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    invoke-static {v2, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v2, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v2}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->cropMode:Z

    xor-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FFZZ[F)V

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, v2}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/b;ZLco/polarr/renderer/render/f;ZZ)V

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->e()V

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->c()V

    iget-object v0, p0, Lco/polarr/renderer/render/b$3;->a:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->j()V

    return-void
.end method
