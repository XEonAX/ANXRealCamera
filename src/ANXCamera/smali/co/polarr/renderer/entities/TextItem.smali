.class public Lco/polarr/renderer/entities/TextItem;
.super Ljava/lang/Object;


# instance fields
.field public align:Ljava/lang/String;

.field public angle:F

.field public blendMix:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blend_mix"
    .end annotation
.end field

.field public blendMode:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blend_mode"
    .end annotation
.end field

.field public color:[F

.field public disabled:Z

.field public fontFamily:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "font_family"
    .end annotation
.end field

.field public fontName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "font_name"
    .end annotation
.end field

.field public fontSize:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "font_size"
    .end annotation
.end field

.field public fontStyle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "font_style"
    .end annotation
.end field

.field public fontWeight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "font_weight"
    .end annotation
.end field

.field public letterSpacing:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "letter_spacing"
    .end annotation
.end field

.field public lineHeight:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line_height"
    .end annotation
.end field

.field public mode:Ljava/lang/String;

.field public opacity:F

.field public orientation:F

.field public position:[F

.field public scale:[F

.field public shadowBlur:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shadow_blur"
    .end annotation
.end field

.field public shadowColor:[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shadow_color"
    .end annotation
.end field

.field public shadowOffset:[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shadow_offset"
    .end annotation
.end field

.field public shadowOpacity:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shadow_opacity"
    .end annotation
.end field

.field public strokeSize:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stroke_size"
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public wrap:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromDecodedHashMap(Ljava/util/HashMap;)Lco/polarr/renderer/entities/TextItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lco/polarr/renderer/entities/TextItem;"
        }
    .end annotation

    invoke-static {p0}, Lco/polarr/renderer/b/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lco/polarr/renderer/entities/TextItem;->fromJSON(Ljava/lang/String;)Lco/polarr/renderer/entities/TextItem;

    move-result-object p0

    return-object p0
.end method

.method public static fromJSON(Ljava/lang/String;)Lco/polarr/renderer/entities/TextItem;
    .locals 1

    const-class v0, Lco/polarr/renderer/entities/TextItem;

    invoke-static {p0, v0}, Lco/polarr/renderer/b/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/polarr/renderer/entities/TextItem;

    return-object p0
.end method
