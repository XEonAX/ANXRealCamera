.class public Lco/polarr/renderer/render/c;
.super Lco/polarr/renderer/render/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/render/c$a;
    }
.end annotation


# instance fields
.field public a:Lco/polarr/renderer/render/c$a;

.field public b:Lco/polarr/renderer/b/f$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/polarr/renderer/render/f;-><init>()V

    return-void
.end method

.method public static a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/c;
    .locals 2

    new-instance v0, Lco/polarr/renderer/render/c;

    invoke-direct {v0}, Lco/polarr/renderer/render/c;-><init>()V

    iget v1, p0, Lco/polarr/renderer/render/f;->c:I

    iput v1, v0, Lco/polarr/renderer/render/c;->c:I

    iget v1, p0, Lco/polarr/renderer/render/f;->d:I

    iput v1, v0, Lco/polarr/renderer/render/c;->d:I

    iget v1, p0, Lco/polarr/renderer/render/f;->e:I

    iput v1, v0, Lco/polarr/renderer/render/c;->e:I

    iget p0, p0, Lco/polarr/renderer/render/f;->f:I

    iput p0, v0, Lco/polarr/renderer/render/c;->f:I

    return-object v0
.end method
