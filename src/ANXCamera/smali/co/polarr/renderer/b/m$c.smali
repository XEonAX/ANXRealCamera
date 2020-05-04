.class Lco/polarr/renderer/b/m$c;
.super Lco/polarr/renderer/render/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field g:[F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/polarr/renderer/render/f;-><init>()V

    return-void
.end method

.method static a(Lco/polarr/renderer/render/f;)Lco/polarr/renderer/b/m$c;
    .locals 2

    new-instance v0, Lco/polarr/renderer/b/m$c;

    invoke-direct {v0}, Lco/polarr/renderer/b/m$c;-><init>()V

    iget v1, p0, Lco/polarr/renderer/render/f;->c:I

    iput v1, v0, Lco/polarr/renderer/b/m$c;->c:I

    iget v1, p0, Lco/polarr/renderer/render/f;->d:I

    iput v1, v0, Lco/polarr/renderer/b/m$c;->d:I

    iget v1, p0, Lco/polarr/renderer/render/f;->e:I

    iput v1, v0, Lco/polarr/renderer/b/m$c;->e:I

    iget p0, p0, Lco/polarr/renderer/render/f;->f:I

    iput p0, v0, Lco/polarr/renderer/b/m$c;->f:I

    return-object v0
.end method
