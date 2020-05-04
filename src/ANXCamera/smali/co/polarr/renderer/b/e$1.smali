.class Lco/polarr/renderer/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lco/polarr/renderer/b/e;


# direct methods
.method constructor <init>(Lco/polarr/renderer/b/e;)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/b/e$1;->a:Lco/polarr/renderer/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/b/e$1;->a:Lco/polarr/renderer/b/e;

    iget-object v0, v0, Lco/polarr/renderer/b/e;->b:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/b/e$1;->a:Lco/polarr/renderer/b/e;

    sget-object v1, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    iget-object v2, p0, Lco/polarr/renderer/b/e$1;->a:Lco/polarr/renderer/b/e;

    iget-object v2, v2, Lco/polarr/renderer/b/e;->b:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lco/polarr/renderer/b/e;->a(Lco/polarr/renderer/entities/Context;[FZ)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/b/e$1;->a:Lco/polarr/renderer/b/e;

    iget-boolean v0, v0, Lco/polarr/renderer/b/e;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/b/e$1;->a:Lco/polarr/renderer/b/e;

    invoke-static {v0}, Lco/polarr/renderer/b/e;->a(Lco/polarr/renderer/b/e;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-virtual {v0}, Lco/polarr/renderer/render/d;->c()V

    :goto_0
    return-void
.end method
