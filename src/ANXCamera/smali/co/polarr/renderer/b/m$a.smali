.class Lco/polarr/renderer/b/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lco/polarr/renderer/render/f;

.field b:Lco/polarr/renderer/render/f;

.field c:Lco/polarr/renderer/b/m$b;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/b/m$c;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Landroid/graphics/RectF;

.field g:Lco/polarr/renderer/render/f;

.field h:Lco/polarr/renderer/render/f;

.field final synthetic i:Lco/polarr/renderer/b/m;


# direct methods
.method private constructor <init>(Lco/polarr/renderer/b/m;)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/b/m$a;->i:Lco/polarr/renderer/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lco/polarr/renderer/b/m$a;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lco/polarr/renderer/b/m;Lco/polarr/renderer/b/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/polarr/renderer/b/m$a;-><init>(Lco/polarr/renderer/b/m;)V

    return-void
.end method
