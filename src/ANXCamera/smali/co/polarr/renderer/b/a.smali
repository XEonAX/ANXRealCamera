.class public Lco/polarr/renderer/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/b/a$a;
    }
.end annotation


# static fields
.field private static final Auto_Enhance_Filter:Ljava/lang/String; = "{\"local_adjustments\":[{\"type\":\"luminance\",\"target\":0,\"range\":1,\"smoothness\":1,\"adjustments\":{\"exposure\":0.1973684210526314,\"gamma\":0,\"temperature\":0,\"tint\":0,\"saturation\":0,\"vibrance\":0.24999999999999997,\"contrast\":0.24999999999999997,\"balance\":-1},\"showOverlay\":false}]}"

.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "{\"local_adjustments\":[{\"type\":\"luminance\",\"target\":0,\"range\":1,\"smoothness\":1,\"adjustments\":{\"exposure\":0.1973684210526314,\"gamma\":0,\"temperature\":0,\"tint\":0,\"saturation\":0,\"vibrance\":0.24999999999999997,\"contrast\":0.24999999999999997,\"balance\":-1},\"showOverlay\":false}]}"

    invoke-static {v0}, Lco/polarr/renderer/b/j;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sput-object v0, Lco/polarr/renderer/b/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const-string v1, "method"

    const-string v2, "rgb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "to_log"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "size"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "sample_step"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "histogram_grid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "num_trial"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "num_gen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "num_spec"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "tolerance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "change_max"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(FFF)F
    .locals 0

    sub-float/2addr p0, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method private static a([F)F
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private static a(IIIILjava/lang/String;)I
    .locals 1

    const-string v0, "load"

    if-nez p4, :cond_0

    move-object p4, v0

    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    mul-int/2addr p1, p2

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    sub-int/2addr p3, p1

    mul-int/2addr p3, p2

    add-int/2addr p3, p0

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method private static a(II[I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lco/polarr/renderer/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/polarr/renderer/b/a$a;-><init>(Lco/polarr/renderer/b/a$1;)V

    iput p0, v0, Lco/polarr/renderer/b/a$a;->a:I

    iput p1, v0, Lco/polarr/renderer/b/a$a;->b:I

    iput-object p2, v0, Lco/polarr/renderer/b/a$a;->c:[I

    invoke-static {v0}, Lco/polarr/renderer/b/a;->a(Lco/polarr/renderer/b/a$a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(II[ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lco/polarr/renderer/b/a;->a(II[I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static a(Lco/polarr/renderer/b/a$a;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/polarr/renderer/b/a$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "method"

    const-string v2, "lum_hist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "to_log"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "size"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "sample_step"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v10, "histogram_grid"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lco/polarr/renderer/b/a;->a(Lco/polarr/renderer/b/a$a;Ljava/util/Map;)[F

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v12, v12}, Lco/polarr/renderer/b/a;->a([FFFF)Ljava/util/Map;

    move-result-object v11

    const-string v13, "sat_hist"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lco/polarr/renderer/b/a;->a(Lco/polarr/renderer/b/a$a;Ljava/util/Map;)[F

    move-result-object p0

    invoke-static {p0}, Lco/polarr/renderer/b/a;->c([F)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    const-string v3, "highlights"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "clarity"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    const-string v6, "exposure"

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "dehaze"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, p0, v0, v1}, Lco/polarr/renderer/b/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_0

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "gamma"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static a([FFFF)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FFFF)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x3f19999a    # 0.6f

    move/from16 v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    move/from16 v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    move/from16 v4, p3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    array-length v4, v0

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move v8, v6

    :goto_0
    int-to-float v9, v7

    cmpg-float v9, v9, v4

    if-gez v9, :cond_0

    float-to-double v8, v8

    int-to-double v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    aget v12, v0, v7

    float-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_1
    int-to-float v12, v5

    cmpg-float v13, v12, v4

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v13, :cond_1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    sub-float v13, v4, v14

    div-float/2addr v12, v13

    sub-float v13, v12, v14

    float-to-double v13, v13

    const-wide/high16 v15, -0x3ff0000000000000L    # -4.0

    mul-double v17, v13, v15

    mul-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    double-to-float v13, v13

    aget v14, v0, v5

    mul-float/2addr v14, v13

    mul-float/2addr v14, v12

    add-float/2addr v10, v14

    aget v14, v0, v5

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    float-to-double v13, v12

    mul-double/2addr v15, v13

    mul-double/2addr v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    double-to-float v13, v13

    aget v14, v0, v5

    mul-float/2addr v14, v13

    mul-float/2addr v14, v12

    add-float/2addr v7, v14

    aget v12, v0, v5

    mul-float/2addr v13, v12

    add-float/2addr v9, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    div-float/2addr v7, v9

    div-float/2addr v10, v11

    cmpl-float v0, v8, v1

    if-lez v0, :cond_2

    sub-float/2addr v1, v8

    sub-float v0, v8, v6

    goto :goto_2

    :cond_2
    sub-float/2addr v1, v8

    sub-float v0, v14, v8

    :goto_2
    div-float/2addr v1, v0

    cmpl-float v0, v10, v2

    if-lez v0, :cond_3

    sub-float/2addr v2, v10

    sub-float v0, v10, v6

    goto :goto_3

    :cond_3
    sub-float/2addr v2, v10

    sub-float v0, v14, v10

    :goto_3
    div-float/2addr v2, v0

    cmpl-float v0, v7, v3

    if-lez v0, :cond_4

    sub-float/2addr v3, v7

    sub-float v0, v7, v6

    div-float/2addr v3, v0

    goto :goto_4

    :cond_4
    sub-float/2addr v3, v7

    sub-float/2addr v14, v7

    div-float/2addr v3, v14

    :goto_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "exposure"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "exposure_mean"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "highlights"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "highlights_mean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "shadows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "shadows_mean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(II[ILco/polarr/renderer/entities/FaceItem;Lco/polarr/renderer/entities/Context$FaceFeaturesState;FZ)V
    .locals 8

    const/4 p6, 0x0

    invoke-static {p6, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-static {p6, p5}, Ljava/lang/Math;->min(FF)F

    move-result p5

    const/high16 p6, 0x40000000    # 2.0f

    mul-float/2addr p5, p6

    invoke-static {p0, p1, p2}, Lco/polarr/renderer/b/a;->a(II[I)Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [F

    const-string p2, "exposure_mean"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 p6, 0x0

    aput p2, p1, p6

    const-string p2, "highlights_mean"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    const-string p2, "shadows_mean"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v1, 0x2

    aput p2, p1, v1

    const-string p2, "saturation_mean"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p2, 0x3

    aput p0, p1, p2

    invoke-static {p1}, Lco/polarr/renderer/b/a;->a([F)F

    move-result p0

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, v1

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v3, v4, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    const v5, 0x3f0ccccd    # 0.55f

    add-float/2addr v3, v5

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->skin_smoothness:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, p6

    invoke-static {v3, v4, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v5

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->skin_tone:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, v1

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v3, v6, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    add-float/2addr v3, v4

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->skin_highlights:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, v1

    invoke-static {v3, v6, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    sub-float/2addr v3, v6

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->skin_shadows:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, v1

    invoke-static {v3, v6, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->eyes_contrast:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, v1

    invoke-static {v3, v6, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    add-float/2addr v3, v5

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->eyes_brightness:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget v3, p1, p2

    invoke-static {v3, v4, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result v3

    add-float/2addr v3, v5

    iput v3, v2, Lco/polarr/renderer/entities/Context$FaceState;->lips_saturation:F

    iget-object v2, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    aget p1, p1, p2

    invoke-static {p1, v6, p0}, Lco/polarr/renderer/b/a;->a(FFF)F

    move-result p0

    add-float/2addr p0, v6

    iput p0, v2, Lco/polarr/renderer/entities/Context$FaceState;->lips_brightness:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_smoothness:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_smoothness:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_tone:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_tone:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_highlights:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_highlights:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_shadows:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->skin_shadows:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->eyes_contrast:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->eyes_contrast:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->eyes_brightness:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->eyes_brightness:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->lips_saturation:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->lips_saturation:F

    iget-object p0, p3, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iget p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->lips_brightness:F

    mul-float/2addr p1, p5

    iput p1, p0, Lco/polarr/renderer/entities/Context$FaceState;->lips_brightness:F

    if-eqz p4, :cond_0

    const p0, -0x41e66666    # -0.15f

    mul-float/2addr p0, p5

    iput p0, p4, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->face_width:F

    mul-float/2addr p5, v6

    new-array p0, v1, [F

    aput p5, p0, p6

    aput p5, p0, v0

    iput-object p0, p4, Lco/polarr/renderer/entities/Context$FaceFeaturesState;->eye_size:[F

    :cond_0
    return-void
.end method

.method private static a(Lco/polarr/renderer/b/a$a;Ljava/util/Map;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/polarr/renderer/b/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[F"
        }
    .end annotation

    const-string v0, "method"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_0
    const-string v0, "sample_step"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lco/polarr/renderer/b/a;->b:Ljava/util/Map;

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "sat_hist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    float-to-int v0, v2

    invoke-static {p0, v0}, Lco/polarr/renderer/b/a;->b(Lco/polarr/renderer/b/a$a;I)[Ljava/lang/Float;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string v0, "lum_hist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    float-to-int v0, v2

    invoke-static {p0, v0}, Lco/polarr/renderer/b/a;->a(Lco/polarr/renderer/b/a$a;I)[Ljava/lang/Float;

    move-result-object p0

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    float-to-int p1, p1

    invoke-static {p0, v0, p1}, Lco/polarr/renderer/b/a;->a([Ljava/lang/Float;FI)[F

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([Ljava/lang/Float;FI)[F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    div-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    aget v4, v1, v3

    array-length v5, p0

    int-to-float v5, v5

    div-float v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a(Lco/polarr/renderer/b/a$a;I)[Ljava/lang/Float;
    .locals 12

    iget v0, p0, Lco/polarr/renderer/b/a$a;->b:I

    iget v1, p0, Lco/polarr/renderer/b/a$a;->a:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int v5, v4, p1

    if-ge v5, v0, :cond_1

    move v6, v3

    :goto_1
    add-int v7, v6, p1

    if-ge v7, v1, :cond_0

    const/4 v8, 0x0

    invoke-static {v6, v4, v1, v0, v8}, Lco/polarr/renderer/b/a;->a(IIIILjava/lang/String;)I

    move-result v6

    iget-object v8, p0, Lco/polarr/renderer/b/a$a;->c:[I

    aget v8, v8, v6

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    iget-object v10, p0, Lco/polarr/renderer/b/a$a;->c:[I

    add-int/lit8 v11, v6, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    iget-object v11, p0, Lco/polarr/renderer/b/a$a;->c:[I

    add-int/lit8 v6, v6, 0x2

    aget v6, v11, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v9

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v7

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Float;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    return-object p0
.end method

.method private static b([F)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    int-to-float v4, v2

    cmpg-float v4, v4, v0

    if-gez v4, :cond_0

    float-to-double v3, v3

    int-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    float-to-double v7, v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    aget v7, p0, v2

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float v0, v3, p0

    if-lez v0, :cond_1

    sub-float/2addr p0, v3

    sub-float v0, v3, v1

    goto :goto_1

    :cond_1
    sub-float/2addr p0, v3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    :goto_1
    div-float/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "vibrance"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "saturation_mean"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Lco/polarr/renderer/b/a$a;I)[Ljava/lang/Float;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lco/polarr/renderer/b/a$a;->b:I

    iget v2, v0, Lco/polarr/renderer/b/a$a;->a:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    add-int v6, v5, p1

    if-ge v6, v1, :cond_3

    const/4 v7, 0x0

    :goto_1
    add-int v8, v7, p1

    if-ge v8, v2, :cond_2

    const/4 v9, 0x0

    invoke-static {v7, v5, v2, v1, v9}, Lco/polarr/renderer/b/a;->a(IIIILjava/lang/String;)I

    move-result v7

    iget-object v9, v0, Lco/polarr/renderer/b/a$a;->c:[I

    aget v9, v9, v7

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    iget-object v11, v0, Lco/polarr/renderer/b/a$a;->c:[I

    add-int/lit8 v12, v7, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v10

    iget-object v12, v0, Lco/polarr/renderer/b/a$a;->c:[I

    add-int/lit8 v7, v7, 0x2

    aget v7, v12, v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v9, v7, v10

    add-float v11, v7, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v11, v12

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v5

    float-to-double v4, v15

    const-wide v17, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v4, v17

    if-lez v4, :cond_1

    float-to-double v4, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v13

    const v5, 0x358637bd    # 1.0E-6f

    if-gez v4, :cond_0

    add-float/2addr v11, v5

    div-float v14, v9, v11

    goto :goto_2

    :cond_0
    sub-float/2addr v12, v7

    sub-float/2addr v12, v10

    add-float/2addr v12, v5

    div-float v14, v9, v12

    :cond_1
    :goto_2
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    move/from16 v5, v16

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Float;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method private static c([F)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    int-to-float v4, v2

    cmpg-float v4, v4, v0

    if-gez v4, :cond_0

    float-to-double v3, v3

    int-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    float-to-double v7, v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    aget v7, p0, v2

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float v0, v3, p0

    if-lez v0, :cond_1

    sub-float/2addr p0, v3

    sub-float v0, v3, v1

    goto :goto_1

    :cond_1
    sub-float/2addr p0, v3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    :goto_1
    div-float/2addr p0, v0

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    const v0, 0x3f333333    # 0.7f

    neg-float v1, p0

    mul-float/2addr v1, v0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v2, "vibrance"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "saturation_orange"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "vibrance_mean"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "saturation_mean"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
