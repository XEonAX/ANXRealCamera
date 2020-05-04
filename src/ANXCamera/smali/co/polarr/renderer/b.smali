.class public Lco/polarr/renderer/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/FilterPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lco/polarr/renderer/b;->a:Ljava/util/List;

    new-instance v0, Lco/polarr/renderer/entities/FilterPackage;

    invoke-direct {v0}, Lco/polarr/renderer/entities/FilterPackage;-><init>()V

    const-string v1, "Johnny_Filter_Common"

    iput-object v1, v0, Lco/polarr/renderer/entities/FilterPackage;->pack_id:Ljava/lang/String;

    const-string v1, "Common"

    iput-object v1, v0, Lco/polarr/renderer/entities/FilterPackage;->pack_name:Ljava/lang/Object;

    new-instance v1, Lco/polarr/renderer/entities/FilterItem;

    invoke-direct {v1}, Lco/polarr/renderer/entities/FilterItem;-><init>()V

    const-string v2, "\u4eba\u50cf\u98ce\u683c2019\u65b0\u6ee4\u955c\u4e00"

    iput-object v2, v1, Lco/polarr/renderer/entities/FilterItem;->name:Ljava/lang/Object;

    const-string v2, "p4_1.cube.rgb.bin"

    iput-object v2, v1, Lco/polarr/renderer/entities/FilterItem;->id:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, -0x4119999a    # -0.45f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "vignette_amount"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "vignette_feather"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "vignette_highlights"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "vignette_roundness"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "vignette_exposure"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "vignette_size"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "grain_size"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "grain_amount"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x3f47ae14    # 0.78f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "grain_highlights"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "grain_roughness"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    new-instance v2, Lco/polarr/renderer/entities/FilterItem;

    invoke-direct {v2}, Lco/polarr/renderer/entities/FilterItem;-><init>()V

    const-string v4, "\u4eba\u50cf\u98ce\u683c2019\u65b0\u6ee4\u955c\u4e09"

    iput-object v4, v2, Lco/polarr/renderer/entities/FilterItem;->name:Ljava/lang/Object;

    const-string v4, "p4_3.cube.rgb.bin"

    iput-object v4, v2, Lco/polarr/renderer/entities/FilterItem;->id:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "overlay_amount"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v2, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lco/polarr/renderer/entities/FilterPackage;->filters:Ljava/util/List;

    iget-object v3, v0, Lco/polarr/renderer/entities/FilterPackage;->filters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lco/polarr/renderer/entities/FilterPackage;->filters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lco/polarr/renderer/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
