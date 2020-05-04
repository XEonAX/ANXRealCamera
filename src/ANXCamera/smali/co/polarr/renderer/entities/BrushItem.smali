.class public Lco/polarr/renderer/entities/BrushItem;
.super Ljava/lang/Object;


# instance fields
.field public blend:Z

.field public channel:[F

.field public erase:Z

.field public flow:F

.field public hardness:D

.field public interpolate:Z

.field public mode:Ljava/lang/String;

.field public pointId:Ljava/lang/String;

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public prevPoint:[F

.field public randomize:F

.field public size:F

.field public spacing:F

.field public texture:Ljava/lang/String;

.field public touchPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/entities/BrushItem;->touchPoints:Ljava/util/List;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lco/polarr/renderer/entities/BrushItem;->size:F

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lco/polarr/renderer/entities/BrushItem;->spacing:F

    const/4 v1, 0x0

    iput v1, p0, Lco/polarr/renderer/entities/BrushItem;->randomize:F

    iput v0, p0, Lco/polarr/renderer/entities/BrushItem;->flow:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/polarr/renderer/entities/BrushItem;->hardness:D

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lco/polarr/renderer/entities/BrushItem;->channel:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/polarr/renderer/entities/BrushItem;->erase:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/polarr/renderer/entities/BrushItem;->interpolate:Z

    const-string v1, "paint"

    iput-object v1, p0, Lco/polarr/renderer/entities/BrushItem;->mode:Ljava/lang/String;

    const-string v1, "stroke_1"

    iput-object v1, p0, Lco/polarr/renderer/entities/BrushItem;->texture:Ljava/lang/String;

    iput-boolean v0, p0, Lco/polarr/renderer/entities/BrushItem;->blend:Z

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
