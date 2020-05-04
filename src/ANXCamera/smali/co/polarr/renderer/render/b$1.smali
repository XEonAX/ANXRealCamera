.class Lco/polarr/renderer/render/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/render/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lco/polarr/renderer/render/b;


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/render/b$1;->b:Lco/polarr/renderer/render/b;

    invoke-static {v0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/render/b$1;->b:Lco/polarr/renderer/render/b;

    invoke-static {v1}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/render/b;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lco/polarr/renderer/render/b$1;->b:Lco/polarr/renderer/render/b;

    invoke-static {v2}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v3, p0, Lco/polarr/renderer/render/b$1;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lco/polarr/renderer/render/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lco/polarr/renderer/render/b$1;->b:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->f()V

    iget-object v0, p0, Lco/polarr/renderer/render/b$1;->b:Lco/polarr/renderer/render/b;

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->j()V

    return-void
.end method
