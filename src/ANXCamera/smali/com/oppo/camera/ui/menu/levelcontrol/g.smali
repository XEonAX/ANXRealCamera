.class public Lcom/oppo/camera/ui/menu/levelcontrol/g;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static a:F = 0.0f

.field private static b:F = 0.0f

.field private static c:F = 0.0f

.field private static d:F = 140.33f

.field private static e:F

.field private static f:F

.field private static g:F

.field private static h:F

.field private static i:F

.field private static j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f06027a

    invoke-static {v0}, Lcom/oppo/camera/o/d;->f(I)F

    move-result v0

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e:F

    const v0, 0x7f06027b

    invoke-static {v0}, Lcom/oppo/camera/o/d;->f(I)F

    move-result v0

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f:F

    const v0, 0x7f060279

    invoke-static {v0}, Lcom/oppo/camera/o/d;->f(I)F

    move-result v0

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g:F

    const v0, 0x7f060280

    invoke-static {v0}, Lcom/oppo/camera/o/d;->f(I)F

    move-result v0

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->h:F

    const v0, 0x7f060278

    invoke-static {v0}, Lcom/oppo/camera/o/d;->f(I)F

    move-result v0

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i:F

    const v0, 0x7f06027f

    invoke-static {v0}, Lcom/oppo/camera/o/d;->f(I)F

    move-result v0

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->j:F

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e:F

    sget v1, Lcom/oppo/camera/ui/menu/levelcontrol/g;->h:F

    div-float/2addr v0, v1

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a:F

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g:F

    div-float/2addr v0, v1

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b:F

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->j:F

    div-float/2addr v0, v1

    sput v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c:F

    return-void
.end method

.method public static a()D
    .locals 2

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->d:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public static a(FD)D
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static a(F)F
    .locals 1

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->h:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(I)F
    .locals 3

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->h()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->g()F

    move-result v2

    int-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    return v0
.end method

.method public static b(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v2

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    return-wide p0
.end method

.method public static b()F
    .locals 3

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i:F

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result v0

    sget v1, Lcom/oppo/camera/ui/menu/levelcontrol/g;->d:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(FD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static b(F)V
    .locals 0

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result p0

    sput p0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a:F

    return-void
.end method

.method public static c(FD)D
    .locals 2

    float-to-double v0, p0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public static c()F
    .locals 1

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a:F

    return v0
.end method

.method public static c(F)V
    .locals 0

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result p0

    sput p0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b:F

    return-void
.end method

.method public static d()F
    .locals 3

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c()F

    move-result v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b(FD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static d(F)V
    .locals 0

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result p0

    sput p0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c:F

    return-void
.end method

.method public static e()F
    .locals 3

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->d()F

    move-result v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c(FD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static e(F)V
    .locals 0

    sput p0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->d:F

    return-void
.end method

.method public static f()F
    .locals 3

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b:F

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c(FD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static f(F)F
    .locals 4

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result p0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float v0, p0, v0

    float-to-int v0, v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v2

    mul-float/2addr v2, v1

    rem-float/2addr p0, v2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b()F

    move-result v2

    float-to-double v2, v2

    invoke-static {p0, v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->b(FD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static g()F
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v0

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->f()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static h()F
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static i()F
    .locals 1

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c:F

    return v0
.end method

.method public static j()I
    .locals 1

    const/16 v0, 0xe10

    return v0
.end method

.method public static k()F
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->o()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static l()F
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->o()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static m()F
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->p()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static n()F
    .locals 2

    invoke-static {}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->p()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static o()F
    .locals 1

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->i:F

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/g;->a(F)F

    move-result v0

    return v0
.end method

.method public static p()F
    .locals 1

    sget v0, Lcom/oppo/camera/ui/menu/levelcontrol/g;->c:F

    return v0
.end method
