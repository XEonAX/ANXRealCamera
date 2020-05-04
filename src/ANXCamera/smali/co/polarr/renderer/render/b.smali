.class public Lco/polarr/renderer/render/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/render/b$a;
    }
.end annotation


# static fields
.field private static final ENABLE_SKIP_FRAME:Z = true

.field private static final G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lco/polarr/renderer/render/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_FPS:I = 0x3c

.field private static final MIN_FPS:I = 0x28

.field public static final PREV_TEXT_KEY:Ljava/lang/String; = "zPrevText"

.field private static final RENDER_REAL_DELAY:J = 0xc8L

.field public static a:I

.field private static final g:[F

.field private static h:F


# instance fields
.field private A:Lco/polarr/renderer/b/o;

.field private B:Z

.field private C:J

.field private D:J

.field private E:I

.field private volatile F:Z

.field public b:Lco/polarr/renderer/filters/ax;

.field public c:Lco/polarr/renderer/filters/ax;

.field public d:Landroid/graphics/Point;

.field public e:Landroid/graphics/Point;

.field public f:Lco/polarr/renderer/b/b;

.field private final i:Landroid/content/Context;

.field private j:Lco/polarr/renderer/textureview/c;

.field private k:Landroid/opengl/GLSurfaceView;

.field private l:[F

.field private m:I

.field private final n:Landroid/content/res/Resources;

.field private o:Lco/polarr/renderer/filters/a/c;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/filters/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lco/polarr/renderer/filters/a/b;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/graphics/Bitmap;

.field private t:Z

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private y:Z

.field private z:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lco/polarr/renderer/render/b;->g:[F

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lco/polarr/renderer/render/b;->h:F

    const/16 v0, 0x3c

    sput v0, Lco/polarr/renderer/render/b;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/polarr/renderer/render/b;->G:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/opengl/GLSurfaceView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Lco/polarr/renderer/render/b;->l:[F

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/render/b;->m:I

    iput-boolean v0, p0, Lco/polarr/renderer/render/b;->t:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/polarr/renderer/render/b;->C:J

    iput-wide v1, p0, Lco/polarr/renderer/render/b;->D:J

    iput v0, p0, Lco/polarr/renderer/render/b;->E:I

    iput-boolean v0, p0, Lco/polarr/renderer/render/b;->F:Z

    iput-object p3, p0, Lco/polarr/renderer/render/b;->k:Landroid/opengl/GLSurfaceView;

    iput-object p2, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    iput-object p1, p0, Lco/polarr/renderer/render/b;->i:Landroid/content/Context;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lco/polarr/renderer/textureview/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Lco/polarr/renderer/render/b;->l:[F

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/render/b;->m:I

    iput-boolean v0, p0, Lco/polarr/renderer/render/b;->t:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/polarr/renderer/render/b;->C:J

    iput-wide v1, p0, Lco/polarr/renderer/render/b;->D:J

    iput v0, p0, Lco/polarr/renderer/render/b;->E:I

    iput-boolean v0, p0, Lco/polarr/renderer/render/b;->F:Z

    iput-object p3, p0, Lco/polarr/renderer/render/b;->j:Lco/polarr/renderer/textureview/c;

    iput-object p2, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    iput-object p1, p0, Lco/polarr/renderer/render/b;->i:Landroid/content/Context;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->m()V

    return-void
.end method

.method static synthetic a(Lco/polarr/renderer/render/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/render/b;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/c;Ljava/util/List;)Lco/polarr/renderer/filters/a/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lco/polarr/renderer/entities/Context;",
            "Lco/polarr/renderer/filters/a/c;",
            "Ljava/util/List<",
            "Lco/polarr/renderer/filters/a/b;",
            ">;)",
            "Lco/polarr/renderer/filters/a/a;"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "local_adjustments"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    iget-object v3, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v3}, Lco/polarr/renderer/c;->a(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/polarr/renderer/entities/Adjustment;

    iget-boolean v6, v4, Lco/polarr/renderer/entities/Adjustment;->disabled:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "radial"

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/ap;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ap;

    move-result-object v6

    iget v10, v4, Lco/polarr/renderer/entities/Adjustment;->feather:F

    iput v10, v6, Lco/polarr/renderer/filters/ap;->a:F

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->size:[F

    iput-object v10, v6, Lco/polarr/renderer/filters/ap;->e:[F

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->position:[F

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v6, Lco/polarr/renderer/filters/ap;->d:[F

    iget-object v7, v6, Lco/polarr/renderer/filters/ap;->d:[F

    iget-object v10, v6, Lco/polarr/renderer/filters/ap;->d:[F

    aget v10, v10, v8

    neg-float v10, v10

    aput v10, v7, v8

    iget v7, v4, Lco/polarr/renderer/entities/Adjustment;->angle:F

    neg-float v7, v7

    iput v7, v6, Lco/polarr/renderer/filters/ap;->c:F

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    iput v7, v6, Lco/polarr/renderer/filters/ap;->b:F

    iput v9, v6, Lco/polarr/renderer/filters/ap;->f:F

    iput v5, v6, Lco/polarr/renderer/filters/ap;->g:F

    goto/16 :goto_b

    :cond_3
    const-string v6, "gradient"

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/an;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/an;

    move-result-object v6

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->startPoint:[F

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    iput-object v10, v6, Lco/polarr/renderer/filters/an;->a:[F

    iget-object v10, v6, Lco/polarr/renderer/filters/an;->a:[F

    iget-object v11, v6, Lco/polarr/renderer/filters/an;->a:[F

    aget v11, v11, v8

    neg-float v11, v11

    aput v11, v10, v8

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->endPoint:[F

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v6, Lco/polarr/renderer/filters/an;->b:[F

    iget-object v7, v6, Lco/polarr/renderer/filters/an;->b:[F

    iget-object v10, v6, Lco/polarr/renderer/filters/an;->b:[F

    aget v10, v10, v8

    neg-float v10, v10

    aput v10, v7, v8

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_4

    move v7, v9

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    iput v7, v6, Lco/polarr/renderer/filters/an;->c:F

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->reflect:Z

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    iput v7, v6, Lco/polarr/renderer/filters/an;->d:F

    iput v9, v6, Lco/polarr/renderer/filters/an;->e:F

    iput v5, v6, Lco/polarr/renderer/filters/an;->f:F

    goto/16 :goto_b

    :cond_6
    const-string v6, "luminance"

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/ao;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ao;

    move-result-object v6

    iget v7, v4, Lco/polarr/renderer/entities/Adjustment;->target:F

    iput v7, v6, Lco/polarr/renderer/filters/ao;->a:F

    iget v7, v4, Lco/polarr/renderer/entities/Adjustment;->range:F

    iput v7, v6, Lco/polarr/renderer/filters/ao;->b:F

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_7

    move v7, v9

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    iput v7, v6, Lco/polarr/renderer/filters/ao;->d:F

    iget v7, v4, Lco/polarr/renderer/entities/Adjustment;->smoothness:F

    iput v7, v6, Lco/polarr/renderer/filters/ao;->c:F

    iput v9, v6, Lco/polarr/renderer/filters/ao;->e:F

    iput v5, v6, Lco/polarr/renderer/filters/ao;->f:F

    goto/16 :goto_b

    :cond_8
    const-string v6, "color"

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/am;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/am;

    move-result-object v6

    iget v10, v4, Lco/polarr/renderer/entities/Adjustment;->feather:F

    iput v10, v6, Lco/polarr/renderer/filters/am;->a:F

    iget v10, v4, Lco/polarr/renderer/entities/Adjustment;->threshold:F

    iput v10, v6, Lco/polarr/renderer/filters/am;->d:F

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->size:[F

    iput-object v10, v6, Lco/polarr/renderer/filters/am;->f:[F

    iget-object v10, v4, Lco/polarr/renderer/entities/Adjustment;->position:[F

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v6, Lco/polarr/renderer/filters/am;->e:[F

    iget-object v7, v6, Lco/polarr/renderer/filters/am;->e:[F

    iget-object v10, v6, Lco/polarr/renderer/filters/am;->e:[F

    aget v10, v10, v8

    neg-float v10, v10

    aput v10, v7, v8

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_9

    move v7, v9

    goto :goto_5

    :cond_9
    move v7, v5

    :goto_5
    iput v7, v6, Lco/polarr/renderer/filters/am;->b:F

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->useRadius:Z

    if-eqz v7, :cond_a

    move v7, v9

    goto :goto_6

    :cond_a
    move v7, v5

    :goto_6
    iput v7, v6, Lco/polarr/renderer/filters/am;->c:F

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    if-eqz v7, :cond_b

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    goto :goto_7

    :cond_b
    sget-object v7, Lco/polarr/renderer/render/b;->g:[F

    :goto_7
    iput-object v7, v6, Lco/polarr/renderer/filters/am;->i:[F

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    if-eqz v7, :cond_c

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    array-length v7, v7

    if-lez v7, :cond_c

    move v7, v9

    goto :goto_8

    :cond_c
    move v7, v5

    :goto_8
    iput v7, v6, Lco/polarr/renderer/filters/am;->j:F

    iput v9, v6, Lco/polarr/renderer/filters/am;->g:F

    iput v5, v6, Lco/polarr/renderer/filters/am;->h:F

    goto :goto_b

    :cond_d
    const-string v6, "brush"

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "paint"

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->brush_mode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v5

    invoke-virtual {p2, v5}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    const v6, 0x8006

    invoke-static {v6}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 v6, 0x303

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/b;

    move-result-object v6

    iget v7, v4, Lco/polarr/renderer/entities/Adjustment;->paintTextureId:I

    invoke-virtual {v6, v7}, Lco/polarr/renderer/filters/b;->a(I)V

    invoke-virtual {v6}, Lco/polarr/renderer/filters/b;->draw()V

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_a

    :cond_e
    invoke-static {p0, p1}, Lco/polarr/renderer/filters/al;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/al;

    move-result-object v6

    iget-object v7, v4, Lco/polarr/renderer/entities/Adjustment;->channel:[F

    iput-object v7, v6, Lco/polarr/renderer/filters/al;->b:[F

    iget-boolean v7, v4, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_f

    move v7, v9

    goto :goto_9

    :cond_f
    move v7, v5

    :goto_9
    iput v7, v6, Lco/polarr/renderer/filters/al;->a:F

    iput v9, v6, Lco/polarr/renderer/filters/al;->c:F

    iput v5, v6, Lco/polarr/renderer/filters/al;->d:F

    goto :goto_b

    :cond_10
    :goto_a
    move-object v6, v1

    :goto_b
    if-nez v6, :cond_11

    goto/16 :goto_0

    :cond_11
    iget-boolean v5, v4, Lco/polarr/renderer/entities/Adjustment;->showOverlay:Z

    if-eqz v5, :cond_12

    move-object v3, v6

    :cond_12
    invoke-virtual {p2, v6}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    iget-object v5, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    iget-object v4, v4, Lco/polarr/renderer/entities/Adjustment;->adjustments:Lco/polarr/renderer/entities/Context$LocalState;

    invoke-static {v4}, Lco/polarr/renderer/entities/Adjustment;->getAdjustmentHashMap(Lco/polarr/renderer/entities/Context$LocalState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/filters/a/b;

    invoke-virtual {v5}, Lco/polarr/renderer/filters/a/b;->c()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {p2, v5}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    goto :goto_c

    :cond_14
    iput-object v2, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    iget-object p3, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v0, "blur_opacity"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, p3, v5

    if-nez p3, :cond_15

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/c;->o()V

    invoke-static {p0, p1}, Lco/polarr/renderer/render/b;->d(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iget-object p3, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->tempTexture:Lco/polarr/renderer/render/f;

    iput-object v0, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, p1, v0}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)V

    iput-object p3, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/c;->p()V

    :cond_15
    move-object v1, v3

    :cond_16
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;
    .locals 9

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    :cond_1
    iget v0, p3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget v2, p3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    div-float v2, v1, v2

    iget v3, p3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/4 v5, 0x4

    new-array v6, v5, [F

    mul-float/2addr v0, p4

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x0

    const/4 v8, 0x1

    aput v0, v6, v8

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v6, v4

    const/4 v3, 0x3

    aput v0, v6, v3

    iput-object v6, p1, Lco/polarr/renderer/filters/f;->a:[F

    sget-object v6, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v6, p1, Lco/polarr/renderer/filters/f;->b:Lco/polarr/renderer/entities/Mesh;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iget-object v6, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, p2, v6, p1, v8}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    new-array p2, v5, [F

    aput v0, p2, v7

    mul-float/2addr v2, p4

    aput v2, p2, v8

    aput v0, p2, v4

    mul-float/2addr v1, p5

    aput v1, p2, v3

    iput-object p2, p1, Lco/polarr/renderer/filters/f;->a:[F

    sget-object p2, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p2, p1, Lco/polarr/renderer/filters/f;->b:Lco/polarr/renderer/entities/Mesh;

    iget-object p2, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-static {p0, p2, p3, p1, v8}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    return-object p3
.end method

.method private static a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/r;Lco/polarr/renderer/filters/s;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;
    .locals 7

    if-nez p4, :cond_0

    move-object p4, p3

    :cond_0
    iget v0, p4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget v2, p4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v0, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    const/4 v0, 0x0

    const/4 v6, 0x1

    aput v0, v3, v6

    iput-object v3, p1, Lco/polarr/renderer/filters/r;->a:[F

    sget-object v3, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v3, p1, Lco/polarr/renderer/filters/r;->b:Lco/polarr/renderer/entities/Mesh;

    iget p3, p3, Lco/polarr/renderer/render/f;->c:I

    iget-object v3, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, p3, v3, p1, v6}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    new-array p1, v2, [F

    aput v0, p1, v5

    mul-float/2addr v1, v4

    aput v1, p1, v6

    iput-object p1, p2, Lco/polarr/renderer/filters/s;->a:[F

    sget-object p1, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p1, p2, Lco/polarr/renderer/filters/s;->b:Lco/polarr/renderer/entities/Mesh;

    iget-object p1, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-static {p0, p1, p4, p2, v6}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    return-object p4
.end method

.method public static a(I)V
    .locals 2

    invoke-static {}, Lco/polarr/renderer/render/b;->u()Lco/polarr/renderer/render/b$a;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->a(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->a(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Lco/polarr/renderer/entities/Context;",
            "Ljava/util/ArrayList<",
            "Lco/polarr/renderer/entities/TextItem;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "zPrevText"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/polarr/renderer/entities/TextItem;

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v2, :cond_2

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/render/f;

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Lco/polarr/renderer/b/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {p0, v6, v4, p2, v5}, Lco/polarr/renderer/b/s;->a(Landroid/content/Context;Landroid/content/res/AssetManager;Lco/polarr/renderer/entities/TextItem;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {p0, v5, v4, p2, v6}, Lco/polarr/renderer/b/s;->a(Landroid/content/Context;Landroid/content/res/AssetManager;Lco/polarr/renderer/entities/TextItem;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;

    move-result-object v4

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lco/polarr/renderer/b/i;->a(ZZ)V

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/bq;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bq;

    move-result-object p0

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-static {p1}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;)V

    invoke-static {v2, v2}, Lco/polarr/renderer/b/i;->a(ZZ)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;I)V
    .locals 8

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int p2, v2

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    shr-int v3, v0, p2

    shr-int p2, v1, p2

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v4, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v4, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    invoke-static {v4, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    invoke-static {v4, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    const/high16 p2, 0x44800000    # 1024.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    int-to-float v0, v0

    mul-float v3, v0, p2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p2, v4

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    invoke-static {v4, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-static {v7, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    invoke-static {v4, v3, p2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    const/16 p2, 0xbe2

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz p2, :cond_2

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length p2, p2

    if-lez p2, :cond_2

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/au;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/au;

    move-result-object v3

    invoke-static {p1, v2, p2, v3, v2}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    :goto_1
    const/16 v3, 0xf

    new-array v4, v3, [F

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    div-float v0, v5, v0

    div-float/2addr v5, v1

    :goto_2
    const/4 v1, 0x7

    if-gt v2, v1, :cond_3

    mul-int v6, v2, v2

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-int/2addr v1, v2

    aput v6, v4, v1

    add-int/lit8 v1, v2, 0x7

    aput v6, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Lco/polarr/renderer/filters/v;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/v;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "delta"

    invoke-virtual {v1, v2, v0}, Lco/polarr/renderer/filters/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v1, Lco/polarr/renderer/filters/v;->a:[F

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/w;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/w;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lco/polarr/renderer/filters/w;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v0, Lco/polarr/renderer/filters/w;->a:[F

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iget-object v2, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    const/4 v3, 0x1

    invoke-static {p1, p2, v2, v1, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, p2, v1, v0, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-static {p1, p0}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Landroid/graphics/Point;)V
    .locals 9

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    array-length v0, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v0, v0, [I

    array-length v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x1908

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    const/4 v2, 0x0

    aget v3, v0, v2

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    const/16 v6, 0x1908

    invoke-static {v3, v6, v4, v5}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    const/4 v3, 0x1

    aget v4, v0, v3

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    const/4 v4, 0x2

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    const/4 v4, 0x3

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    const/4 v4, 0x4

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    const/4 v4, 0x5

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    const/4 v4, 0x6

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    const/4 v4, 0x7

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->retouchTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0x8

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0x9

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0xa

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->tempTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0xb

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->screenTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0xc

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0xd

    aget v4, v0, v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->exportTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0xe

    aget v4, v0, v4

    const/16 v5, 0x400

    invoke-static {v4, v6, v5, v5}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    const/16 v4, 0xf

    aget v4, v0, v4

    const/16 v5, 0x3e8

    invoke-static {v4, v6, v5, v5}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iput-object v4, p1, Lco/polarr/renderer/entities/Context;->overlayTexture:Lco/polarr/renderer/render/f;

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    if-eqz v4, :cond_1

    :goto_1
    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    aget v5, v0, v1

    iget v7, p2, Landroid/graphics/Point;->x:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6, v7, v8}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lco/polarr/renderer/render/b;->e(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-static {p0, p1}, Lco/polarr/renderer/render/b;->f(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)V
    .locals 6

    if-nez p2, :cond_0

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    :cond_0
    iget v0, p2, Lco/polarr/renderer/render/f;->d:I

    int-to-float v0, v0

    iget v1, p2, Lco/polarr/renderer/render/f;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, p1}, Lco/polarr/renderer/filters/c;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/c;->a(Lco/polarr/renderer/entities/Context;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const v5, 0x3d1374bc    # 0.036f

    mul-float/2addr v0, v5

    aput v0, v2, v3

    iput-object v2, p0, Lco/polarr/renderer/filters/c;->a:[F

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iget-object v2, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v0, v2, p0, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lco/polarr/renderer/filters/c;->a:[F

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {p1, v0, p2, p0, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    return-void

    :array_0
    .array-data 4
        0x3d1374bc    # 0.036f
        0x0
    .end array-data
.end method

.method public static a(Lco/polarr/renderer/entities/Context;)V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iput-object v1, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iput-object v0, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    return-void
.end method

.method private static a(Lco/polarr/renderer/entities/Context;FF)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->translationMatrix:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->translationMatrix:[F

    aget v1, v0, v2

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    aget v0, v0, v3

    div-float/2addr p2, v0

    mul-float/2addr p2, v1

    const/4 v0, 0x0

    invoke-static {p0, v2, p1, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method private static a(Lco/polarr/renderer/entities/Context;FFFF)V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->cropMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->cropMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p3, p4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->cropMatrix:[F

    const/4 p3, 0x0

    invoke-static {p0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/Context;FFZZ[F)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    invoke-static {p0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v4

    goto :goto_0

    :cond_0
    new-array v4, v1, [F

    iget-object v5, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->d:I

    int-to-float v5, v5

    aput v5, v4, v3

    iget-object v5, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->e:I

    int-to-float v5, v5

    aput v5, v4, v2

    :goto_0
    aget v5, v4, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v7, v4, v2

    div-float/2addr v7, v6

    invoke-static {p0}, Lco/polarr/renderer/b/c;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz p5, :cond_1

    new-array v11, v9, [F

    aget v12, v8, v3

    aget v13, p5, v3

    add-float/2addr v12, v13

    aput v12, v11, v3

    aget v12, v8, v2

    aget v13, p5, v2

    add-float/2addr v12, v13

    aput v12, v11, v2

    aget v12, v8, v1

    aget v13, p5, v1

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v11, v1

    aget v8, v8, v10

    aget v12, p5, v10

    mul-float/2addr v8, v12

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v8, v12

    aput v8, v11, v10

    goto :goto_1

    :cond_1
    move-object v11, v8

    :goto_1
    if-eqz p4, :cond_2

    new-array v8, v9, [F

    aget v9, v11, v3

    sub-float/2addr v9, v5

    iget v12, v0, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v5

    aput v9, v8, v3

    aget v5, v11, v2

    sub-float/2addr v5, v7

    iget v9, v0, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    aput v5, v8, v2

    aget v5, v11, v1

    iget v7, v0, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v5, v7

    aput v5, v8, v1

    aget v5, v11, v10

    iget v7, v0, Lco/polarr/renderer/entities/Context;->cropScale:F

    mul-float/2addr v5, v7

    aput v5, v8, v10

    goto :goto_2

    :cond_2
    new-array v8, v9, [F

    const/4 v5, 0x0

    aput v5, v8, v3

    aput v5, v8, v2

    aget v5, v4, v3

    aput v5, v8, v1

    aget v5, v4, v2

    aput v5, v8, v10

    :goto_2
    aget v5, v4, v3

    aget v7, v8, v1

    sub-float/2addr v5, v7

    neg-float v5, v5

    div-float/2addr v5, v6

    aget v7, v8, v3

    add-float/2addr v5, v7

    aget v7, v4, v2

    aget v9, v8, v10

    sub-float/2addr v7, v9

    neg-float v7, v7

    div-float/2addr v7, v6

    aget v9, v8, v2

    add-float/2addr v7, v9

    aget v9, v8, v1

    aget v3, v4, v3

    div-float/2addr v9, v3

    aget v3, v8, v10

    aget v2, v4, v2

    div-float/2addr v3, v2

    aget v1, v8, v1

    div-float v1, v5, v1

    aget v2, v8, v10

    div-float v2, v7, v2

    if-eqz p3, :cond_3

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_3

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-static {p0}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/entities/Context;)V

    neg-float v5, v5

    neg-float v7, v7

    invoke-static {p0, v5, v7}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FF)V

    mul-float/2addr v4, v3

    invoke-static {p0, v9, v4}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/entities/Context;FF)V

    invoke-static {p0}, Lco/polarr/renderer/render/b;->e(Lco/polarr/renderer/entities/Context;)V

    mul-float/2addr v1, v6

    mul-float/2addr v2, v6

    invoke-static {p0, v1, v2, v9, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FFFF)V

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    move v2, p1

    float-to-int v2, v2

    move/from16 v3, p2

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V
    .locals 0

    iget p4, p2, Lco/polarr/renderer/render/f;->c:I

    if-ne p1, p4, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object p0

    invoke-virtual {p0, p3}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    iget p3, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p0, p3}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object p3

    invoke-virtual {p0, p3}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget p3, p2, Lco/polarr/renderer/render/f;->d:I

    iget p2, p2, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {p0, p3, p2}, Lco/polarr/renderer/filters/a/d;->b(II)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lco/polarr/renderer/filters/a/d;->a(I)V

    :cond_1
    invoke-virtual {p0}, Lco/polarr/renderer/filters/a/d;->draw()V

    return-void
.end method

.method private static a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/f;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/f;

    move-result-object v7

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/r;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/r;

    move-result-object v1

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/s;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/s;

    move-result-object v2

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/k;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/k;

    move-result-object v8

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/m;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/m;

    move-result-object v9

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/n;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/n;

    move-result-object v10

    invoke-static {v0, v6}, Lco/polarr/renderer/filters/at;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/at;

    move-result-object v0

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    iget-object v4, v6, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v11, 0x44000000    # 512.0f

    div-float/2addr v11, v5

    mul-float/2addr v3, v11

    float-to-int v3, v3

    mul-float/2addr v4, v11

    float-to-int v4, v4

    iget-object v5, v6, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, v4}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, v6, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, v4}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    array-length v12, v5

    const/4 v14, 0x0

    const/16 v15, 0x1908

    move-object v13, v5

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v12 .. v17}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    const/4 v11, 0x0

    aget v12, v5, v11

    const/16 v13, 0x1908

    invoke-static {v12, v13, v3, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v12

    const/4 v14, 0x1

    aget v15, v5, v14

    invoke-static {v15, v13, v3, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v15

    const/16 v16, 0x2

    aget v5, v5, v16

    invoke-static {v5, v13, v3, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v13

    iget-object v5, v6, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    invoke-static {v6, v1, v2, v5, v13}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/r;Lco/polarr/renderer/filters/s;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;

    sget-object v1, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v1, v0, Lco/polarr/renderer/filters/at;->a:Lco/polarr/renderer/entities/Mesh;

    iget v1, v5, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v6, v1, v15, v0, v14}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    const/high16 v4, 0x41000000    # 8.0f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    move-object v3, v12

    move-object v12, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object v5

    move-object v2, v15

    move-object v3, v15

    move-object v15, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object v5

    const/high16 v4, 0x42400000    # 48.0f

    move-object v2, v13

    move-object v3, v13

    move-object v13, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object v5

    iget v0, v15, Lco/polarr/renderer/render/f;->c:I

    iput v0, v9, Lco/polarr/renderer/filters/m;->a:I

    iget v0, v13, Lco/polarr/renderer/render/f;->c:I

    iput v0, v9, Lco/polarr/renderer/filters/m;->b:I

    iget v0, v5, Lco/polarr/renderer/render/f;->c:I

    iput v0, v9, Lco/polarr/renderer/filters/m;->c:I

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v0, v9, Lco/polarr/renderer/filters/m;->d:Lco/polarr/renderer/entities/Mesh;

    iget-object v0, v6, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v6, v11, v0, v9, v14}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v0, v15, Lco/polarr/renderer/render/f;->c:I

    iput v0, v10, Lco/polarr/renderer/filters/n;->a:I

    iget v0, v5, Lco/polarr/renderer/render/f;->c:I

    iput v0, v10, Lco/polarr/renderer/filters/n;->b:I

    iget v0, v3, Lco/polarr/renderer/render/f;->c:I

    iput v0, v10, Lco/polarr/renderer/filters/n;->c:I

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v0, v10, Lco/polarr/renderer/filters/n;->d:Lco/polarr/renderer/entities/Mesh;

    invoke-static {v6, v11, v13, v10, v14}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v10, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object v5

    move-object v2, v13

    move-object v3, v13

    move-object v7, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object v0

    iget v1, v7, Lco/polarr/renderer/render/f;->c:I

    iput v1, v8, Lco/polarr/renderer/filters/k;->a:I

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    iput v0, v8, Lco/polarr/renderer/filters/k;->b:I

    iget v0, v12, Lco/polarr/renderer/render/f;->c:I

    iput v0, v8, Lco/polarr/renderer/filters/k;->c:I

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v0, v8, Lco/polarr/renderer/filters/k;->d:Lco/polarr/renderer/entities/Mesh;

    iget-object v0, v6, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    invoke-static {v6, v11, v0, v8, v14}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-static {v15}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    invoke-static {v13}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    invoke-static {v10}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/render/f;)V

    return-void
.end method

.method private a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/filters/a/c;)V
    .locals 2

    invoke-virtual {p3, p2}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    const/16 p2, 0xbe2

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnable(I)V

    const v0, 0x8006

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p1, Lco/polarr/renderer/entities/Context;->overlayMask:[F

    iget-object p1, p0, Lco/polarr/renderer/render/b;->c:Lco/polarr/renderer/filters/ax;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lco/polarr/renderer/filters/ax;->b:F

    invoke-virtual {p3, p1}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lco/polarr/renderer/render/b;ZLco/polarr/renderer/render/f;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lco/polarr/renderer/render/b;->a(ZLco/polarr/renderer/render/f;ZZ)V

    return-void
.end method

.method public static a(Lco/polarr/renderer/render/f;)V
    .locals 0

    iget p0, p0, Lco/polarr/renderer/render/f;->c:I

    invoke-static {p0}, Lco/polarr/renderer/b/i;->a(I)V

    return-void
.end method

.method private a(ZLco/polarr/renderer/render/f;Z)V
    .locals 1

    new-instance v0, Lco/polarr/renderer/render/b$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lco/polarr/renderer/render/b$2;-><init>(Lco/polarr/renderer/render/b;ZLco/polarr/renderer/render/f;Z)V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->j:Lco/polarr/renderer/textureview/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lco/polarr/renderer/textureview/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/render/b;->k:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private a(ZLco/polarr/renderer/render/f;ZZ)V
    .locals 11

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lco/polarr/renderer/render/b;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->e:I

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->photoLoaded:Z

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/polarr/renderer/render/b;->F:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->b()V

    :cond_2
    iget-boolean v3, p0, Lco/polarr/renderer/render/b;->y:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p0, Lco/polarr/renderer/render/b;->f:Lco/polarr/renderer/b/b;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Z)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v5, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-static {v3, v5}, Lco/polarr/renderer/b/q;->a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    :cond_3
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v3, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lco/polarr/renderer/filters/z;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/z;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lco/polarr/renderer/filters/y;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/y;

    move-result-object v3

    :goto_0
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    iget-object v5, v5, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-virtual {v3, v5}, Lco/polarr/renderer/filters/a/b;->a([F)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    invoke-static {v5}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v5

    invoke-virtual {v5, v3}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v5, v3}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->d:I

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v6

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v6, v6, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v5, v3, v6}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v5, v3}, Lco/polarr/renderer/filters/a/d;->a(I)V

    iget-boolean v3, p0, Lco/polarr/renderer/render/b;->y:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v6

    sget-object v7, Lco/polarr/renderer/entities/Context;->DefaultMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v7, v6, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v5}, Lco/polarr/renderer/filters/a/d;->draw()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    iput-object v3, v5, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lco/polarr/renderer/filters/a/d;->draw()V

    :goto_1
    iget-boolean v3, p0, Lco/polarr/renderer/render/b;->y:Z

    if-nez v3, :cond_15

    invoke-static {v4, v4}, Lco/polarr/renderer/b/i;->a(ZZ)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v5, "faces"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v6, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lco/polarr/renderer/b/f;->a(Ljava/util/List;Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    if-nez v3, :cond_6

    return-void

    :cond_6
    iget-object v3, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v6

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v6, v6, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v3, v6}, Lco/polarr/renderer/filters/a/c;->a(I)V

    iget-object v3, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/c;->i()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v6, "spots"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v6

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v6

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v6, v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lco/polarr/renderer/filters/bl;->b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bl;

    move-result-object v6

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lco/polarr/renderer/filters/bj;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bj;

    move-result-object v6

    :goto_2
    move v7, v4

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/polarr/renderer/entities/SpotItem;

    iget v9, v8, Lco/polarr/renderer/entities/SpotItem;->feather:F

    iput v9, v6, Lco/polarr/renderer/filters/bj;->a:F

    iget-object v9, v8, Lco/polarr/renderer/entities/SpotItem;->size:[F

    iput-object v9, v6, Lco/polarr/renderer/filters/bj;->b:[F

    iget-object v9, v8, Lco/polarr/renderer/entities/SpotItem;->position:[F

    invoke-static {v9}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v9

    iput-object v9, v6, Lco/polarr/renderer/filters/bj;->c:[F

    iget-object v9, v8, Lco/polarr/renderer/entities/SpotItem;->sourcePosition:[F

    invoke-static {v9}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v9

    iput-object v9, v6, Lco/polarr/renderer/filters/bj;->d:[F

    iget v9, v8, Lco/polarr/renderer/entities/SpotItem;->angle:F

    iput v9, v6, Lco/polarr/renderer/filters/bj;->e:F

    iget v9, v8, Lco/polarr/renderer/entities/SpotItem;->opacity:F

    iput v9, v6, Lco/polarr/renderer/filters/bj;->f:F

    iget v8, v8, Lco/polarr/renderer/entities/SpotItem;->mode:F

    iput v8, v6, Lco/polarr/renderer/filters/bj;->g:F

    iget-object v8, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v8, v6}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/c;->j()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v5, v4

    :goto_4
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/polarr/renderer/entities/FaceItem;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v7

    iget-object v7, v7, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    aget-object v7, v7, v5

    iget-object v8, v6, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    iget-object v8, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lco/polarr/renderer/filters/ab;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ab;

    move-result-object v8

    iput-object v7, v8, Lco/polarr/renderer/filters/ab;->a:Lco/polarr/renderer/render/c;

    iget-object v6, v6, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iput-object v6, v8, Lco/polarr/renderer/filters/ab;->b:Lco/polarr/renderer/entities/Context$FaceState;

    iget-object v6, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v6, v8}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    iget-object v3, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    iget-object v6, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    iget-object v7, p0, Lco/polarr/renderer/render/b;->p:Ljava/util/List;

    invoke-static {v3, v5, v6, v7}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/c;Ljava/util/List;)Lco/polarr/renderer/filters/a/a;

    move-result-object v3

    if-eqz p4, :cond_b

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    iget-object p2, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/c;->m()I

    move-result p2

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p3

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget-object p4, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object p4

    invoke-static {p1, p2, p3, p4, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/c;->q()V

    return-void

    :cond_b
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v5, "blur_opacity"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    instance-of v5, p4, Ljava/lang/Integer;

    if-eqz v5, :cond_c

    move-object v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    instance-of v5, p4, Ljava/lang/Float;

    if-eqz v5, :cond_d

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/4 v5, 0x0

    cmpl-float p4, p4, v5

    if-eqz p4, :cond_d

    :goto_6
    move p4, v2

    goto :goto_7

    :cond_d
    move p4, v4

    :goto_7
    if-eqz p4, :cond_e

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    iget p4, p4, Lco/polarr/renderer/render/f;->d:I

    if-eq p4, v2, :cond_e

    iget-object p4, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    iget-object v2, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lco/polarr/renderer/filters/d;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/d;

    move-result-object v2

    invoke-virtual {p4, v2}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    :cond_e
    if-eqz v3, :cond_f

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object v2, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-direct {p0, p4, v3, v2}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/a;Lco/polarr/renderer/filters/a/c;)V

    :cond_f
    iget-object p4, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p4}, Lco/polarr/renderer/filters/a/c;->q()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object v2, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/c;->m()I

    move-result v2

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget-object v5, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v5

    invoke-static {p4, v2, v3, v5, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object p4, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-static {p4, v2}, Lco/polarr/renderer/render/b;->b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-boolean p4, p4, Lco/polarr/renderer/entities/Context;->cropMode:Z

    if-nez p4, :cond_12

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    if-eqz p4, :cond_12

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-boolean p4, p4, Lco/polarr/renderer/entities/Context$WatermarkOptions;->enabled:Z

    if-nez p4, :cond_10

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-boolean p4, p4, Lco/polarr/renderer/entities/Context$WatermarkOptions;->preview:Z

    if-eqz p4, :cond_12

    :cond_10
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz p4, :cond_11

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length p4, p4

    if-lez p4, :cond_11

    iget-object p4, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-static {p4, v2}, Lco/polarr/renderer/filters/aw;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/aw;

    move-result-object p4

    goto :goto_8

    :cond_11
    iget-object p4, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-static {p4, v2}, Lco/polarr/renderer/filters/av;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/av;

    move-result-object p4

    :goto_8
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-virtual {p4, v2}, Lco/polarr/renderer/filters/a/b;->a([F)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-static {v2}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v2

    invoke-virtual {v2, p4}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget p4, p4, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v2, p4}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p4, p4, Lco/polarr/renderer/render/f;->d:I

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v2, p4, v3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p4, p4, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v2, p4}, Lco/polarr/renderer/filters/a/d;->a(I)V

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/d;->draw()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    invoke-static {p4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;)V

    iget-object p4, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-static {p4, v2}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    :cond_12
    if-eqz p2, :cond_15

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    if-ne p2, p4, :cond_14

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-boolean p4, p4, Lco/polarr/renderer/entities/Context;->cropMode:Z

    if-eqz p4, :cond_13

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget p4, p4, Lco/polarr/renderer/render/f;->d:I

    int-to-float p4, p4

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    goto :goto_9

    :cond_13
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    invoke-static {p4}, Lco/polarr/renderer/b/c;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object p4

    const/4 v2, 0x2

    aget v2, p4, v2

    const/4 v3, 0x3

    aget p4, p4, v3

    move v10, v2

    move v2, p4

    move p4, v10

    :goto_9
    iget-object v3, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v5, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v3, p4

    div-float/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr p4, v3

    float-to-int p4, p4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p2, p4, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    :cond_14
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    iget-object v3, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v3

    invoke-static {p4, v2, p2, v3, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    :cond_15
    if-eqz p1, :cond_16

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p2

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p4

    iget-object p4, p4, Lco/polarr/renderer/entities/Context;->screenTexture:Lco/polarr/renderer/render/f;

    iget-object v2, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v2

    invoke-static {p1, p2, p4, v2, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->q:Lco/polarr/renderer/filters/a/b;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p2

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->screenTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/b;->a(I)V

    if-eqz p3, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lco/polarr/renderer/render/b;->D:J

    :cond_16
    iput-boolean v4, p0, Lco/polarr/renderer/render/b;->F:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lco/polarr/renderer/render/b;->l:[F

    iget p4, p0, Lco/polarr/renderer/render/b;->m:I

    add-int/lit8 v2, p4, 0x1

    iput v2, p0, Lco/polarr/renderer/render/b;->m:I

    const/high16 v2, 0x447a0000    # 1000.0f

    sub-long/2addr p1, v0

    long-to-float p1, p1

    div-float/2addr v2, p1

    aput v2, p3, p4

    iget p1, p0, Lco/polarr/renderer/render/b;->m:I

    array-length p2, p3

    rem-int/2addr p1, p2

    iput p1, p0, Lco/polarr/renderer/render/b;->m:I

    :cond_17
    :goto_a
    return-void
.end method

.method static synthetic b(Lco/polarr/renderer/render/b;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static b(I)V
    .locals 4

    invoke-static {}, Lco/polarr/renderer/render/b;->u()Lco/polarr/renderer/render/b$a;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/ac;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ac;

    move-result-object v2

    iget-object v3, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v4, "textInverted"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    iget-object v3, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v6, "textInvertedColor"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v2, Lco/polarr/renderer/filters/ac;->a:[F

    const/high16 v3, 0x41b00000    # 22.0f

    move v6, v3

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, v2, Lco/polarr/renderer/filters/ac;->a:[F

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    iget-object v7, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v7, v7, Lco/polarr/renderer/render/f;->c:I

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v2, v9}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    move v2, v9

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    iget-object v7, v0, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_7

    iget-object v7, v0, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/polarr/renderer/render/f;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/polarr/renderer/entities/TextItem;

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    iget-boolean v10, v8, Lco/polarr/renderer/entities/TextItem;->disabled:Z

    if-nez v10, :cond_7

    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/ah;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ah;

    move-result-object v10

    invoke-static {v8, v0, v7}, Lco/polarr/renderer/b/s;->a(Lco/polarr/renderer/entities/TextItem;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)[F

    move-result-object v15

    invoke-virtual {v10}, Lco/polarr/renderer/filters/ah;->getMatrix()[F

    move-result-object v14

    iget-object v11, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v12, "flip_x"

    invoke-static {v12, v11}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move/from16 v17, v11

    goto :goto_2

    :cond_1
    move/from16 v17, v9

    :goto_2
    iget-object v11, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v12, "flip_y"

    invoke-static {v12, v11}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_2

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move/from16 v18, v11

    goto :goto_3

    :cond_2
    move/from16 v18, v9

    :goto_3
    const/4 v12, 0x0

    iget-object v13, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v11, v14

    move-object v5, v14

    move/from16 v14, v16

    move/from16 v16, v19

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    if-eqz v17, :cond_3

    const/high16 v11, -0x40800000    # -1.0f

    goto :goto_4

    :cond_3
    move v11, v4

    :goto_4
    if-eqz v18, :cond_4

    const/high16 v12, -0x40800000    # -1.0f

    goto :goto_5

    :cond_4
    move v12, v4

    :goto_5
    invoke-static {v5, v9, v11, v12, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {v10, v5}, Lco/polarr/renderer/filters/ah;->a([F)V

    iput-object v5, v10, Lco/polarr/renderer/filters/ah;->f:[F

    iput-object v7, v10, Lco/polarr/renderer/filters/ah;->a:Lco/polarr/renderer/render/f;

    iget-object v5, v8, Lco/polarr/renderer/entities/TextItem;->color:[F

    iput-object v5, v10, Lco/polarr/renderer/filters/ah;->b:[F

    const/4 v5, 0x0

    cmpl-float v7, v3, v5

    if-lez v7, :cond_5

    move v7, v3

    goto :goto_6

    :cond_5
    iget v7, v8, Lco/polarr/renderer/entities/TextItem;->opacity:F

    :goto_6
    iput v7, v10, Lco/polarr/renderer/filters/ah;->c:F

    cmpl-float v5, v6, v5

    if-lez v5, :cond_6

    move v5, v6

    goto :goto_7

    :cond_6
    iget v5, v8, Lco/polarr/renderer/entities/TextItem;->blendMode:F

    :goto_7
    iput v5, v10, Lco/polarr/renderer/filters/ah;->d:F

    iget v5, v8, Lco/polarr/renderer/entities/TextItem;->blendMix:F

    iput v5, v10, Lco/polarr/renderer/filters/ah;->e:F

    const/4 v5, 0x1

    invoke-static {v5, v9}, Lco/polarr/renderer/b/i;->a(ZZ)V

    iget-object v5, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->c:I

    iget-object v7, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0, v5, v7, v10, v9}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-static {v9, v9}, Lco/polarr/renderer/b/i;->a(ZZ)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-static/range {p1 .. p1}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;)V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static b(Lco/polarr/renderer/entities/Context;)V
    .locals 14

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "rotation"

    invoke-static {v1, v0}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lco/polarr/renderer/entities/Context;->rotation:F

    invoke-static {p0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    div-float/2addr v1, v4

    float-to-double v6, v0

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    float-to-double v3, v3

    float-to-double v0, v1

    mul-double v10, v3, v8

    mul-double v12, v0, v6

    add-double/2addr v10, v12

    div-double v10, v3, v10

    mul-double/2addr v3, v6

    mul-double/2addr v8, v0

    add-double/2addr v3, v8

    div-double/2addr v0, v3

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lco/polarr/renderer/entities/Context;->cropScale:F

    iget v0, p0, Lco/polarr/renderer/entities/Context;->cropScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lco/polarr/renderer/entities/Context;->cropScale:F

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "flip_x"

    invoke-static {v1, v0}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v3, "flip_y"

    invoke-static {v3, v1}, Lco/polarr/renderer/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v4, "rotate90"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    iget-object v6, p0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    int-to-float v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    rem-int/lit8 v4, v3, 0x2

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move v0, v2

    move v1, v5

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    move v1, v2

    move v0, v5

    :cond_3
    :goto_2
    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->rotationMatrix:[F

    invoke-static {v4, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, p0, Lco/polarr/renderer/entities/Context;->rotationMatrix:[F

    const/4 v6, 0x0

    iget v7, p0, Lco/polarr/renderer/entities/Context;->rotation:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->rotationMatrix:[F

    invoke-static {v4, v0, v1}, Lco/polarr/renderer/b/h;->a([FZZ)[F

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->rotation90Matrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->rotation90Matrix:[F

    const/4 v5, 0x0

    mul-int/lit8 v3, v3, 0x5a

    int-to-float v6, v3

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->rotation90MatrixInv:[F

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->rotation90Matrix:[F

    invoke-static {v0, v2, p0, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method private static b(Lco/polarr/renderer/entities/Context;FF)V
    .locals 5

    invoke-static {p0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    div-float/2addr v0, v3

    iget-object v3, p0, Lco/polarr/renderer/entities/Context;->scaleMatrix:[F

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    div-float/2addr v2, p1

    div-float/2addr v0, p2

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->scaleMatrix:[F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v0, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lco/polarr/renderer/b/b;->b()V

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    if-nez v2, :cond_0

    iget-object v2, v0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v4, v0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    invoke-static {v2, v3, v4}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->s()V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    new-array v5, v4, [I

    iput-object v5, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x1908

    const/4 v6, 0x1

    const/16 v7, 0xde1

    if-ne v2, v6, :cond_2

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lco/polarr/renderer/b/i;->a()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v7, v4, v5, v1, v4}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    goto/16 :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    new-array v8, v3, [I

    iput-object v8, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v8, v2

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    iget-object v9, v2, Lco/polarr/renderer/entities/Context;->textures:[I

    const/4 v10, 0x0

    const/16 v11, 0x1908

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static/range {v8 .. v13}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    move v2, v4

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v8

    iget-object v8, v8, Lco/polarr/renderer/entities/Context;->textures:[I

    aget v8, v8, v2

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lco/polarr/renderer/b/i;->a()V

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1908

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    const/16 v15, 0x1908

    const/16 v16, 0x1401

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-static {v7, v4, v5, v8, v4}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Lco/polarr/renderer/render/f;->d:I

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Lco/polarr/renderer/render/f;->e:I

    :goto_2
    iget-object v1, v0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lco/polarr/renderer/render/b;->c(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->screenTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iput-boolean v6, v0, Lco/polarr/renderer/render/b;->t:Z

    return-void
.end method

.method static synthetic c(Lco/polarr/renderer/render/b;)Lco/polarr/renderer/entities/Context;
    .locals 0

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)V
    .locals 2

    invoke-static {}, Lco/polarr/renderer/render/b;->u()Lco/polarr/renderer/render/b$a;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;I)V

    return-void
.end method

.method public static c(Lco/polarr/renderer/entities/Context;)V
    .locals 11

    invoke-static {p0}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lco/polarr/renderer/entities/Context;->projectionMatrix:[F

    const/high16 v4, -0x40000000    # -2.0f

    div-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    div-float v7, v0, v4

    div-float v8, v0, v6

    const/4 v4, 0x0

    const v9, -0x39e3c400    # -9999.0f

    const v10, 0x461c3c00    # 9999.0f

    move v6, v2

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->projectionMatrixInv:[F

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->projectionMatrix:[F

    invoke-static {v0, v1, p0, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method public static d(I)V
    .locals 3

    invoke-static {}, Lco/polarr/renderer/render/b;->u()Lco/polarr/renderer/render/b$a;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "local_adjustments"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/Adjustment;

    iget-object v6, v5, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    const-string v7, "brush"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "paint"

    if-eqz v6, :cond_1

    iget-object v6, v5, Lco/polarr/renderer/entities/Adjustment;->brush_mode:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lco/polarr/renderer/entities/Adjustment;->adjustments:Lco/polarr/renderer/entities/Context$LocalState;

    iget v6, v6, Lco/polarr/renderer/entities/Context$LocalState;->blur:F

    const/high16 v9, 0x3fc00000    # 1.5f

    div-float/2addr v6, v9

    const/4 v9, 0x1

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v5, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    const-string v12, "radial"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v11, :cond_3

    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/ap;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ap;

    move-result-object v4

    iget v7, v5, Lco/polarr/renderer/entities/Adjustment;->feather:F

    iput v7, v4, Lco/polarr/renderer/filters/ap;->a:F

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->size:[F

    iput-object v7, v4, Lco/polarr/renderer/filters/ap;->e:[F

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->position:[F

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v4, Lco/polarr/renderer/filters/ap;->d:[F

    iget-object v7, v4, Lco/polarr/renderer/filters/ap;->d:[F

    iget-object v8, v4, Lco/polarr/renderer/filters/ap;->d:[F

    aget v8, v8, v9

    neg-float v8, v8

    aput v8, v7, v9

    iget v7, v5, Lco/polarr/renderer/entities/Adjustment;->angle:F

    neg-float v7, v7

    iput v7, v4, Lco/polarr/renderer/filters/ap;->c:F

    iget-boolean v5, v5, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v5, :cond_2

    move v14, v13

    :cond_2
    iput v14, v4, Lco/polarr/renderer/filters/ap;->b:F

    iput v6, v4, Lco/polarr/renderer/filters/ap;->f:F

    iput v10, v4, Lco/polarr/renderer/filters/ap;->g:F

    goto/16 :goto_5

    :cond_3
    iget-object v11, v5, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    const-string v15, "gradient"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/an;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/an;

    move-result-object v4

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->startPoint:[F

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v4, Lco/polarr/renderer/filters/an;->a:[F

    iget-object v7, v4, Lco/polarr/renderer/filters/an;->a:[F

    iget-object v8, v4, Lco/polarr/renderer/filters/an;->a:[F

    aget v8, v8, v9

    neg-float v8, v8

    aput v8, v7, v9

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->endPoint:[F

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v4, Lco/polarr/renderer/filters/an;->b:[F

    iget-object v7, v4, Lco/polarr/renderer/filters/an;->b:[F

    iget-object v8, v4, Lco/polarr/renderer/filters/an;->b:[F

    aget v8, v8, v9

    neg-float v8, v8

    aput v8, v7, v9

    iget-boolean v7, v5, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_4

    move v7, v13

    goto :goto_1

    :cond_4
    move v7, v14

    :goto_1
    iput v7, v4, Lco/polarr/renderer/filters/an;->c:F

    iget-boolean v5, v5, Lco/polarr/renderer/entities/Adjustment;->reflect:Z

    if-eqz v5, :cond_5

    move v14, v13

    :cond_5
    iput v14, v4, Lco/polarr/renderer/filters/an;->d:F

    iput v6, v4, Lco/polarr/renderer/filters/an;->e:F

    iput v10, v4, Lco/polarr/renderer/filters/an;->f:F

    goto/16 :goto_5

    :cond_6
    iget-object v11, v5, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    const-string v15, "luminance"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/ao;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ao;

    move-result-object v4

    iget v7, v5, Lco/polarr/renderer/entities/Adjustment;->target:F

    iput v7, v4, Lco/polarr/renderer/filters/ao;->a:F

    iget v7, v5, Lco/polarr/renderer/entities/Adjustment;->range:F

    iput v7, v4, Lco/polarr/renderer/filters/ao;->b:F

    iget-boolean v7, v5, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_7

    move v14, v13

    :cond_7
    iput v14, v4, Lco/polarr/renderer/filters/ao;->d:F

    iget v5, v5, Lco/polarr/renderer/entities/Adjustment;->smoothness:F

    iput v5, v4, Lco/polarr/renderer/filters/ao;->c:F

    iput v6, v4, Lco/polarr/renderer/filters/ao;->e:F

    iput v10, v4, Lco/polarr/renderer/filters/ao;->f:F

    goto/16 :goto_5

    :cond_8
    iget-object v11, v5, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    const-string v15, "color"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/am;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/am;

    move-result-object v4

    iget v7, v5, Lco/polarr/renderer/entities/Adjustment;->feather:F

    iput v7, v4, Lco/polarr/renderer/filters/am;->a:F

    iget v7, v5, Lco/polarr/renderer/entities/Adjustment;->threshold:F

    iput v7, v4, Lco/polarr/renderer/filters/am;->d:F

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->size:[F

    iput-object v7, v4, Lco/polarr/renderer/filters/am;->f:[F

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->position:[F

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v4, Lco/polarr/renderer/filters/am;->e:[F

    iget-object v7, v4, Lco/polarr/renderer/filters/am;->e:[F

    iget-object v8, v4, Lco/polarr/renderer/filters/am;->e:[F

    aget v8, v8, v9

    neg-float v8, v8

    aput v8, v7, v9

    iget-boolean v7, v5, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v7, :cond_9

    move v7, v13

    goto :goto_2

    :cond_9
    move v7, v14

    :goto_2
    iput v7, v4, Lco/polarr/renderer/filters/am;->b:F

    iget-boolean v7, v5, Lco/polarr/renderer/entities/Adjustment;->useRadius:Z

    if-eqz v7, :cond_a

    move v7, v13

    goto :goto_3

    :cond_a
    move v7, v14

    :goto_3
    iput v7, v4, Lco/polarr/renderer/filters/am;->c:F

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    if-eqz v7, :cond_b

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    goto :goto_4

    :cond_b
    sget-object v7, Lco/polarr/renderer/render/b;->g:[F

    :goto_4
    iput-object v7, v4, Lco/polarr/renderer/filters/am;->i:[F

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    if-eqz v7, :cond_c

    iget-object v5, v5, Lco/polarr/renderer/entities/Adjustment;->selectedColor:[F

    array-length v5, v5

    if-lez v5, :cond_c

    move v14, v13

    :cond_c
    iput v14, v4, Lco/polarr/renderer/filters/am;->j:F

    iput v6, v4, Lco/polarr/renderer/filters/am;->g:F

    iput v10, v4, Lco/polarr/renderer/filters/am;->h:F

    goto :goto_5

    :cond_d
    iget-object v9, v5, Lco/polarr/renderer/entities/Adjustment;->type:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->brush_mode:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_5

    :cond_e
    invoke-static/range {p0 .. p1}, Lco/polarr/renderer/filters/al;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/al;

    move-result-object v4

    iget-object v7, v5, Lco/polarr/renderer/entities/Adjustment;->channel:[F

    iput-object v7, v4, Lco/polarr/renderer/filters/al;->b:[F

    iget-boolean v5, v5, Lco/polarr/renderer/entities/Adjustment;->invert:Z

    if-eqz v5, :cond_f

    move v14, v13

    :cond_f
    iput v14, v4, Lco/polarr/renderer/filters/al;->a:F

    iput v6, v4, Lco/polarr/renderer/filters/al;->c:F

    iput v10, v4, Lco/polarr/renderer/filters/al;->d:F

    :cond_10
    :goto_5
    if-eqz v4, :cond_11

    iget-object v5, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->c:I

    iget-object v6, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0, v5, v6, v4, v3}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;ILco/polarr/renderer/render/f;Lco/polarr/renderer/filters/a/a;Z)V

    invoke-static/range {p1 .. p1}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_6
    return-void
.end method

.method public static d(Lco/polarr/renderer/entities/Context;)V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->compositeResolution:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lco/polarr/renderer/entities/Context;->compositeResolution:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v2, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p0, v0, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    return-void
.end method

.method public static e(I)V
    .locals 3

    invoke-static {}, Lco/polarr/renderer/render/b;->u()Lco/polarr/renderer/render/b$a;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static e(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 13

    const-string v0, "mosaic_pattern_00.png"

    const-string v1, "mosaic_pattern_01.png"

    const-string v2, "mosaic_pattern_02.png"

    const-string v3, "mosaic_pattern_03.png"

    const-string v4, "mosaic_pattern_04.png"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paint/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [I

    array-length v7, v4

    const/4 v9, 0x0

    const/16 v10, 0x1908

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object v8, v4

    invoke-static/range {v7 .. v12}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    aget v4, v4, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0x1908

    invoke-static {v4, v8, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iget v5, v4, Lco/polarr/renderer/render/f;->c:I

    const/16 v7, 0xde1

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v7, v2, v8, v6, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const-string v5, "square"

    const-string v6, "hexagon"

    const-string v7, "dot"

    const-string v8, "triangle"

    const-string v9, "diamond"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p1, Lco/polarr/renderer/entities/Context;->patterns:Ljava/util/Map;

    return-void
.end method

.method private static e(Lco/polarr/renderer/entities/Context;)V
    .locals 14

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v6, p0, Lco/polarr/renderer/entities/Context;->projectionMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v10, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v12, p0, Lco/polarr/renderer/entities/Context;->scaleMatrix:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v6, p0, Lco/polarr/renderer/entities/Context;->translationMatrix:[F

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/entities/Context;->viewMatrix:[F

    iget-boolean v0, p0, Lco/polarr/renderer/entities/Context;->cropMode:Z

    if-nez v0, :cond_0

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lco/polarr/renderer/entities/Context;->projectionMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/4 v11, 0x0

    iget-object v12, p0, Lco/polarr/renderer/entities/Context;->rotationMatrix:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v4, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v6, p0, Lco/polarr/renderer/entities/Context;->projectionMatrixInv:[F

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v10, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    iget-object v12, p0, Lco/polarr/renderer/entities/Context;->rotation90Matrix:[F

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/entities/Context;->matrixInv:[F

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-static {v0, v1, p0, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method private static f(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 16

    const-string v0, "brush_08_8.png"

    const-string v1, "brush_09_8.png"

    const-string v2, "brush_07.png"

    const-string v3, "brush_05.png"

    const-string v4, "brush_04.png"

    const-string v5, "brush_03.png"

    const-string v6, "brush_02.png"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paint/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [I

    array-length v7, v4

    const/4 v9, 0x0

    const/16 v10, 0x1908

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object v8, v4

    invoke-static/range {v7 .. v12}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    aget v4, v4, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0x1908

    invoke-static {v4, v8, v5, v7}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v4

    iget v5, v4, Lco/polarr/renderer/render/f;->c:I

    const/16 v7, 0xde1

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v7, v2, v8, v6, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const-string v9, "stroke_5"

    const-string v10, "stroke_6"

    const-string v11, "stroke_3"

    const-string v12, "stroke_4"

    const-string v13, "dot"

    const-string v14, "speckles"

    const-string v15, "chalk"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    iput-object v1, v3, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    return-void
.end method

.method public static l()V
    .locals 7

    invoke-static {}, Lco/polarr/renderer/render/b;->u()Lco/polarr/renderer/render/b$a;

    move-result-object v0

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->a(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->a(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->a(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    array-length v3, v1

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->c(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    array-length v3, v2

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {v0}, Lco/polarr/renderer/render/b$a;->b(Lco/polarr/renderer/render/b$a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private m()V
    .locals 3

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-static {v1}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;)Lco/polarr/renderer/b/p;

    move-result-object v1

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    new-instance v0, Lco/polarr/renderer/filters/a/c;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v2, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lco/polarr/renderer/filters/a/c;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    new-instance v0, Lco/polarr/renderer/filters/bf;

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/polarr/renderer/filters/bf;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->q:Lco/polarr/renderer/filters/a/b;

    new-instance v0, Lco/polarr/renderer/filters/ax;

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/polarr/renderer/filters/ax;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->b:Lco/polarr/renderer/filters/ax;

    new-instance v0, Lco/polarr/renderer/filters/ax;

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/polarr/renderer/filters/ax;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->c:Lco/polarr/renderer/filters/ax;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lco/polarr/renderer/b/p;->b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/polarr/renderer/render/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/render/b;->p:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/render/b;->z:Ljava/util/Queue;

    return-void
.end method

.method private n()Lco/polarr/renderer/entities/Context;
    .locals 1

    sget-object v0, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    return-object v0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sget v1, Lco/polarr/renderer/render/b;->h:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sget v2, Lco/polarr/renderer/render/b;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v2, v0, v1}, Lco/polarr/renderer/filters/a/c;->b(II)V

    iget-object v2, p0, Lco/polarr/renderer/render/b;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/polarr/renderer/filters/a/a;

    invoke-virtual {v3, v0, v1}, Lco/polarr/renderer/filters/a/a;->b(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p()F
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lco/polarr/renderer/render/b;->l:[F

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v0, v4, :cond_1

    aget v4, v3, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    int-to-float v2, v2

    aget v3, v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    if-ge v1, v0, :cond_2

    return v5

    :cond_2
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private q()Z
    .locals 7

    sget v0, Lco/polarr/renderer/render/b;->a:I

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/polarr/renderer/render/b;->C:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/polarr/renderer/render/b;->D:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lco/polarr/renderer/render/b;->F:Z

    if-nez v1, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lco/polarr/renderer/render/b;->D:J

    iget-object v1, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v5, v1, v4}, Lco/polarr/renderer/filters/a/c;->b(II)V

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, v2, v2}, Lco/polarr/renderer/render/b;->a(ZLco/polarr/renderer/render/f;ZZ)V

    iget-object v1, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v4, Lco/polarr/renderer/render/b;->h:F

    div-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sget v5, Lco/polarr/renderer/render/b;->h:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v5, v1, v4}, Lco/polarr/renderer/filters/a/c;->b(II)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lco/polarr/renderer/render/b;->C:J

    iget v1, p0, Lco/polarr/renderer/render/b;->E:I

    if-lez v1, :cond_3

    sub-int/2addr v1, v3

    iput v1, p0, Lco/polarr/renderer/render/b;->E:I

    iget v0, p0, Lco/polarr/renderer/render/b;->E:I

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->p()F

    move-result v1

    iput v2, p0, Lco/polarr/renderer/render/b;->E:I

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    const/high16 v4, 0x42200000    # 40.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v2, v1

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iput v2, p0, Lco/polarr/renderer/render/b;->E:I

    move v2, v3

    :cond_4
    iget-object v4, p0, Lco/polarr/renderer/render/b;->A:Lco/polarr/renderer/b/o;

    if-eqz v4, :cond_5

    iget v5, p0, Lco/polarr/renderer/render/b;->E:I

    sub-int/2addr v5, v3

    invoke-interface {v4, v0, v1, v5}, Lco/polarr/renderer/b/o;->a(FFI)V

    :cond_5
    return v2
.end method

.method private r()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    iget-object v1, p0, Lco/polarr/renderer/render/b;->z:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private s()V
    .locals 4

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget-object v2, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3}, Lco/polarr/renderer/b/i;->b(Lco/polarr/renderer/render/f;II)V

    const/4 v1, 0x0

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    return-void
.end method

.method private t()V
    .locals 0

    invoke-static {}, Lco/polarr/renderer/filters/Basic;->a_()V

    invoke-static {}, Lco/polarr/renderer/filters/c;->d_()V

    invoke-static {}, Lco/polarr/renderer/filters/d;->e_()V

    invoke-static {}, Lco/polarr/renderer/filters/y;->u_()V

    invoke-static {}, Lco/polarr/renderer/filters/z;->v_()V

    invoke-static {}, Lco/polarr/renderer/filters/ab;->w_()V

    invoke-static {}, Lco/polarr/renderer/filters/ac;->x_()V

    invoke-static {}, Lco/polarr/renderer/filters/ap;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/am;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/an;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/ao;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/al;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bj;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bk;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bl;->j()V

    invoke-static {}, Lco/polarr/renderer/filters/ah;->B_()V

    invoke-static {}, Lco/polarr/renderer/filters/p;->o_()V

    invoke-static {}, Lco/polarr/renderer/filters/g;->h_()V

    invoke-static {}, Lco/polarr/renderer/filters/bq;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/av;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/aw;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/au;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/f;->g_()V

    invoke-static {}, Lco/polarr/renderer/filters/r;->q_()V

    invoke-static {}, Lco/polarr/renderer/filters/s;->r_()V

    invoke-static {}, Lco/polarr/renderer/filters/k;->k_()V

    invoke-static {}, Lco/polarr/renderer/filters/m;->m_()V

    invoke-static {}, Lco/polarr/renderer/filters/n;->n_()V

    invoke-static {}, Lco/polarr/renderer/filters/at;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/v;->s_()V

    invoke-static {}, Lco/polarr/renderer/filters/w;->t_()V

    invoke-static {}, Lco/polarr/renderer/filters/e;->f_()V

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->i()V

    invoke-static {}, Lco/polarr/renderer/filters/b;->c_()V

    invoke-static {}, Lco/polarr/renderer/filters/as;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/az;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/ay;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bb;->h()V

    return-void
.end method

.method private static u()Lco/polarr/renderer/render/b$a;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lco/polarr/renderer/render/b;->G:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lco/polarr/renderer/render/b;->G:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lco/polarr/renderer/render/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lco/polarr/renderer/render/b$a;-><init>(Lco/polarr/renderer/render/b$1;)V

    sget-object v3, Lco/polarr/renderer/render/b;->G:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lco/polarr/renderer/render/b;->G:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lco/polarr/renderer/render/b$a;

    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/render/b;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/render/b;->z:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/filters/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/a/a;

    iget-object v1, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v1, v0}, Lco/polarr/renderer/filters/a/c;->a(Lco/polarr/renderer/filters/a/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lco/polarr/renderer/render/b;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->screenMatrix:[F

    const/4 v3, 0x2

    iget-object v0, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-static/range {v2 .. v7}, Lco/polarr/renderer/b/h;->a([FIIIII)V

    iget-object v0, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lco/polarr/renderer/render/b;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->screenMatrix:[F

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/h;->a([FZZ)[F

    :cond_0
    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->e()V

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->c()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/render/b;->q:Lco/polarr/renderer/filters/a/b;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->screenMatrix:[F

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/b;->a([F)V

    return-void
.end method

.method public d()Z
    .locals 11

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/render/b;->j:Lco/polarr/renderer/textureview/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->r()V

    return v1

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/render/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lco/polarr/renderer/render/b;->r:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lco/polarr/renderer/render/b;->r:Ljava/util/List;

    invoke-direct {p0, v0}, Lco/polarr/renderer/render/b;->b(Ljava/util/List;)V

    iget-boolean v0, p0, Lco/polarr/renderer/render/b;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/render/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v0, v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v4

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->textures:[I

    invoke-virtual {v0, v4}, Lco/polarr/renderer/render/d;->a([I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v4

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v4}, Lco/polarr/renderer/render/d;->a(I)V

    :goto_1
    iput-object v3, p0, Lco/polarr/renderer/render/b;->r:Ljava/util/List;

    :cond_3
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v3, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-static {v0, v3, v4}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;FF)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->h()F

    move-result v3

    iput v3, v0, Lco/polarr/renderer/entities/Context$Screen;->zoom:F

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->a()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->o()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iput-boolean v1, v0, Lco/polarr/renderer/entities/Context;->photoLoaded:Z

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->j()V

    iget-object v0, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object v0

    const-class v1, Lco/polarr/renderer/filters/q;

    invoke-static {v0, v1}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/Class;)Lco/polarr/renderer/filters/a/a;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/q;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lco/polarr/renderer/filters/q;->h()V

    :cond_4
    iget-object v0, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object v0

    const-class v1, Lco/polarr/renderer/filters/ae;

    invoke-static {v0, v1}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/Class;)Lco/polarr/renderer/filters/a/a;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/ae;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lco/polarr/renderer/filters/ae;->h()V

    :cond_5
    return v2

    :cond_6
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lco/polarr/renderer/render/b;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lco/polarr/renderer/render/b;->c(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    :cond_7
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lco/polarr/renderer/render/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    iget-object v4, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v0, v4, v5}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    const v0, 0x812f

    const/16 v4, 0x2601

    invoke-static {v4, v4, v0, v0}, Lco/polarr/renderer/b/i;->a(IIII)V

    const/16 v0, 0xde1

    const/16 v4, 0x1908

    iget-object v5, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    invoke-static {v0, v2, v4, v5, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-object v4, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v0, Lco/polarr/renderer/entities/Context$WatermarkOptions;->width:I

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-object v4, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v0, Lco/polarr/renderer/entities/Context$WatermarkOptions;->height:I

    iget-object v0, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lco/polarr/renderer/render/b;->s:Landroid/graphics/Bitmap;

    :cond_8
    iget-boolean v0, p0, Lco/polarr/renderer/render/b;->t:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->photoLoaded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lco/polarr/renderer/render/b;->q:Lco/polarr/renderer/filters/a/b;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->screenTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v3}, Lco/polarr/renderer/filters/a/b;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/render/b;->q:Lco/polarr/renderer/filters/a/b;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/b;->draw()V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const v3, 0x8006

    invoke-static {v3}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v4

    iget-object v9, v4, Lco/polarr/renderer/entities/Context;->overlayMatrix:[F

    const/4 v10, 0x0

    move-object v5, v3

    move-object v7, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v3, v2, v1}, Lco/polarr/renderer/b/h;->a([FZZ)[F

    iget-object v1, p0, Lco/polarr/renderer/render/b;->b:Lco/polarr/renderer/filters/ax;

    iget-boolean v1, v1, Lco/polarr/renderer/filters/ax;->a:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lco/polarr/renderer/render/b;->b:Lco/polarr/renderer/filters/ax;

    invoke-virtual {v1, v3}, Lco/polarr/renderer/filters/ax;->a([F)V

    iget-object v1, p0, Lco/polarr/renderer/render/b;->b:Lco/polarr/renderer/filters/ax;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ax;->draw()V

    :cond_9
    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lco/polarr/renderer/filters/p;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/p;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lco/polarr/renderer/filters/p;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/p;

    move-result-object v1

    iget-boolean v1, v1, Lco/polarr/renderer/filters/p;->d:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lco/polarr/renderer/filters/p;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/p;

    move-result-object v1

    invoke-virtual {v1}, Lco/polarr/renderer/filters/p;->draw()V

    :cond_a
    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lco/polarr/renderer/filters/g;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lco/polarr/renderer/filters/g;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;

    move-result-object v1

    iget-boolean v1, v1, Lco/polarr/renderer/filters/g;->g:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lco/polarr/renderer/filters/g;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;

    move-result-object v1

    invoke-virtual {v1}, Lco/polarr/renderer/filters/g;->draw()V

    :cond_b
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    sget-object v0, Lco/polarr/renderer/entities/Context;->backgroundColor:[F

    aget v3, v0, v2

    aget v1, v0, v1

    const/4 v4, 0x2

    aget v0, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v0, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :goto_2
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->r()V

    return v2
.end method

.method public e()V
    .locals 34

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v1

    invoke-static {v1}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/entities/Context;)V

    invoke-static {v1}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, v0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v5, v0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-static {v1}, Lco/polarr/renderer/b/c;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v5

    iget v8, v1, Lco/polarr/renderer/entities/Context;->cropScale:F

    iget-boolean v9, v1, Lco/polarr/renderer/entities/Context;->cropMode:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v9, :cond_0

    new-array v5, v10, [F

    const/4 v8, 0x0

    aput v8, v5, v6

    aput v8, v5, v7

    aget v8, v2, v6

    aput v8, v5, v3

    aget v8, v2, v7

    aput v8, v5, v11

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_0
    aget v9, v2, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    float-to-int v9, v9

    aget v13, v2, v7

    div-float/2addr v13, v12

    float-to-int v13, v13

    new-array v10, v10, [F

    aget v14, v5, v6

    int-to-float v9, v9

    sub-float/2addr v14, v9

    mul-float/2addr v14, v8

    add-float/2addr v14, v9

    aput v14, v10, v6

    aget v9, v5, v7

    int-to-float v13, v13

    sub-float/2addr v9, v13

    mul-float/2addr v9, v8

    add-float/2addr v9, v13

    aput v9, v10, v7

    aget v9, v5, v3

    mul-float/2addr v9, v8

    aput v9, v10, v3

    aget v5, v5, v11

    mul-float/2addr v5, v8

    aput v5, v10, v11

    iget-object v5, v1, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    iget v5, v5, Lco/polarr/renderer/entities/Context$Screen;->zoom:F

    div-float/2addr v5, v8

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    iget-object v9, v1, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    iget-object v9, v9, Lco/polarr/renderer/entities/Context$Screen;->offset:[F

    aget v9, v9, v6

    aget v13, v8, v6

    sub-float/2addr v9, v13

    aget v8, v8, v7

    iget-object v13, v1, Lco/polarr/renderer/entities/Context;->screen:Lco/polarr/renderer/entities/Context$Screen;

    iget-object v13, v13, Lco/polarr/renderer/entities/Context$Screen;->offset:[F

    aget v13, v13, v7

    add-float/2addr v8, v13

    aget v13, v10, v3

    mul-float/2addr v13, v5

    float-to-int v13, v13

    aget v14, v10, v11

    mul-float/2addr v14, v5

    float-to-int v14, v14

    aget v15, v4, v6

    int-to-float v11, v13

    sub-float/2addr v15, v11

    float-to-int v15, v15

    shr-int/2addr v15, v7

    aget v17, v4, v7

    int-to-float v3, v14

    sub-float v12, v17, v3

    float-to-int v12, v12

    shr-int/2addr v12, v7

    int-to-float v7, v15

    sub-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v6, v12

    add-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v7, v7

    const/16 v20, 0x0

    aget v21, v4, v20

    const/high16 v19, 0x40000000    # 2.0f

    rem-float v21, v21, v19

    div-float v21, v21, v19

    add-float v7, v7, v21

    float-to-int v7, v7

    int-to-float v6, v6

    const/16 v17, 0x1

    aget v21, v4, v17

    rem-float v21, v21, v19

    div-float v21, v21, v19

    add-float v6, v6, v21

    float-to-int v6, v6

    add-int/2addr v13, v7

    int-to-float v13, v13

    const/4 v0, 0x0

    aget v20, v4, v0

    sub-float v13, v13, v20

    float-to-int v13, v13

    add-int/2addr v14, v6

    int-to-float v14, v14

    const/16 v17, 0x1

    aget v20, v4, v17

    sub-float v14, v14, v20

    float-to-int v14, v14

    aget v20, v4, v0

    cmpg-float v20, v11, v20

    if-gez v20, :cond_1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v13, v7

    :cond_1
    aget v7, v4, v17

    cmpg-float v7, v3, v7

    if-gez v7, :cond_2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v14, v6, v7

    :cond_2
    int-to-float v6, v13

    div-float/2addr v6, v5

    float-to-int v6, v6

    int-to-float v7, v14

    div-float/2addr v7, v5

    float-to-int v7, v7

    aget v13, v4, v0

    div-float/2addr v13, v5

    const/4 v0, 0x2

    aget v14, v10, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/4 v14, 0x1

    aget v18, v4, v14

    div-float v5, v18, v5

    move/from16 v21, v12

    const/4 v14, 0x3

    aget v12, v10, v14

    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aget v12, v10, v0

    sub-float/2addr v12, v13

    float-to-int v12, v12

    aget v16, v10, v14

    sub-float v14, v16, v5

    float-to-int v14, v14

    const/16 v16, 0x0

    aget v20, v2, v16

    aget v23, v10, v0

    sub-float v20, v20, v23

    const/high16 v0, 0x40000000    # 2.0f

    div-float v19, v20, v0

    aget v23, v10, v16

    sub-float v0, v19, v23

    const/16 v17, 0x1

    aget v19, v2, v17

    const/16 v16, 0x3

    aget v22, v10, v16

    sub-float v19, v19, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v23, v19, v22

    aget v22, v10, v17

    move/from16 v24, v8

    sub-float v8, v23, v22

    shr-int/lit8 v12, v12, 0x1

    move/from16 v22, v11

    int-to-double v11, v12

    move/from16 v31, v3

    move-object/from16 v23, v4

    int-to-double v3, v6

    const-wide/16 v27, 0x0

    const/4 v6, 0x2

    aget v25, v10, v6

    sub-float v6, v25, v13

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    float-to-double v1, v6

    move-wide/from16 v25, v3

    move-wide/from16 v29, v1

    invoke-static/range {v25 .. v30}, Lco/polarr/renderer/b/t;->a(DDD)D

    move-result-wide v1

    sub-double/2addr v11, v1

    float-to-double v1, v0

    sub-double/2addr v11, v1

    double-to-float v1, v11

    const/4 v2, 0x1

    shr-int/lit8 v3, v14, 0x1

    int-to-double v2, v3

    int-to-double v6, v7

    const/4 v4, 0x3

    aget v11, v10, v4

    sub-float/2addr v11, v5

    float-to-double v11, v11

    move-wide/from16 v25, v6

    move-wide/from16 v29, v11

    invoke-static/range {v25 .. v30}, Lco/polarr/renderer/b/t;->a(DDD)D

    move-result-wide v6

    sub-double/2addr v2, v6

    float-to-double v6, v8

    sub-double/2addr v2, v6

    double-to-float v2, v2

    const/4 v3, 0x0

    aget v4, v33, v3

    div-float/2addr v13, v4

    const/4 v4, 0x1

    aget v6, v33, v4

    div-float/2addr v5, v6

    move-object/from16 v6, v32

    iget-object v7, v6, Lco/polarr/renderer/entities/Context;->compositeResolution:[F

    aget v11, v23, v3

    move/from16 v12, v22

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    aput v11, v7, v3

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->compositeResolution:[F

    aget v7, v23, v4

    move/from16 v11, v31

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v3, v4

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->compositeCoords:[F

    float-to-double v11, v9

    move v4, v8

    int-to-double v7, v15

    neg-int v9, v15

    int-to-double v14, v9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v7

    move-wide/from16 v29, v14

    invoke-static/range {v25 .. v30}, Lco/polarr/renderer/b/t;->a(DDD)D

    move-result-wide v7

    sub-double/2addr v7, v11

    double-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v3, v8

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->compositeCoords:[F

    move/from16 v8, v24

    float-to-double v7, v8

    move/from16 v9, v21

    int-to-double v11, v9

    neg-int v9, v9

    int-to-double v14, v9

    move-wide/from16 v24, v7

    move-wide/from16 v26, v11

    move-wide/from16 v28, v14

    invoke-static/range {v24 .. v29}, Lco/polarr/renderer/b/t;->a(DDD)D

    move-result-wide v11

    sub-double/2addr v11, v7

    double-to-float v7, v11

    const/4 v8, 0x1

    aput v7, v3, v8

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->compositeCoords:[F

    iget-object v7, v6, Lco/polarr/renderer/entities/Context;->compositeCoords:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    iget-object v11, v6, Lco/polarr/renderer/entities/Context;->compositeResolution:[F

    aget v11, v11, v9

    add-float/2addr v7, v11

    const/4 v9, 0x2

    aput v7, v3, v9

    iget-object v3, v6, Lco/polarr/renderer/entities/Context;->compositeCoords:[F

    iget-object v7, v6, Lco/polarr/renderer/entities/Context;->compositeCoords:[F

    aget v7, v7, v8

    iget-object v9, v6, Lco/polarr/renderer/entities/Context;->compositeResolution:[F

    aget v9, v9, v8

    add-float/2addr v7, v9

    const/4 v8, 0x3

    aput v7, v3, v8

    invoke-static {v6}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/entities/Context;)V

    neg-float v1, v1

    neg-float v2, v2

    invoke-static {v6, v1, v2}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FF)V

    invoke-static {v6, v13, v5}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/entities/Context;FF)V

    invoke-static {v6}, Lco/polarr/renderer/render/b;->e(Lco/polarr/renderer/entities/Context;)V

    neg-float v0, v0

    const/4 v1, 0x2

    aget v2, v10, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    neg-float v3, v4

    const/4 v4, 0x3

    aget v5, v10, v4

    div-float/2addr v3, v5

    mul-float/2addr v3, v2

    aget v1, v10, v1

    const/4 v2, 0x0

    aget v5, v33, v2

    div-float/2addr v1, v5

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v7, v33, v5

    div-float/2addr v4, v7

    invoke-static {v6, v0, v3, v1, v4}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FFFF)V

    invoke-static {v6}, Lco/polarr/renderer/b/c;->c(Lco/polarr/renderer/entities/Context;)V

    invoke-static {v6}, Lco/polarr/renderer/render/b;->d(Lco/polarr/renderer/entities/Context;)V

    aget v0, v23, v2

    float-to-int v0, v0

    aget v1, v23, v5

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-static {v6, v0, v1, v2, v3}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;IIZ[F)F

    move-result v0

    iput v0, v6, Lco/polarr/renderer/entities/Context;->minZoom:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public f()V
    .locals 2

    new-instance v0, Lco/polarr/renderer/render/b$3;

    invoke-direct {v0, p0}, Lco/polarr/renderer/render/b$3;-><init>(Lco/polarr/renderer/render/b;)V

    iget-object v1, p0, Lco/polarr/renderer/render/b;->j:Lco/polarr/renderer/textureview/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lco/polarr/renderer/textureview/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lco/polarr/renderer/render/b;->k:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    new-instance v0, Lco/polarr/renderer/render/b$4;

    invoke-direct {v0, p0}, Lco/polarr/renderer/render/b$4;-><init>(Lco/polarr/renderer/render/b;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public h()F
    .locals 5

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lco/polarr/renderer/b/c;->a(Lco/polarr/renderer/entities/Context;IIZ[F)F

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    new-instance v0, Lco/polarr/renderer/entities/Context;

    invoke-direct {v0}, Lco/polarr/renderer/entities/Context;-><init>()V

    sput-object v0, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    sget-object v0, Lco/polarr/renderer/b/p;->c:Lco/polarr/renderer/entities/Context;

    iget-object v1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->resources:Landroid/content/res/Resources;

    iget-object v0, p0, Lco/polarr/renderer/render/b;->f:Lco/polarr/renderer/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/polarr/renderer/b/b;->a()V

    :cond_0
    invoke-direct {p0}, Lco/polarr/renderer/render/b;->t()V

    invoke-static {}, Lco/polarr/renderer/b/b;->b()V

    return-void
.end method

.method public j()V
    .locals 2

    iget-boolean v0, p0, Lco/polarr/renderer/render/b;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->k()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1}, Lco/polarr/renderer/render/b;->a(ZLco/polarr/renderer/render/f;Z)V

    return-void
.end method

.method public k()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/polarr/renderer/render/b;->D:J

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->d()Z

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iget-object p1, p0, Lco/polarr/renderer/render/b;->e:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->x:I

    iput p3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lco/polarr/renderer/render/b;->a()V

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->o()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->glRenderView:Lco/polarr/renderer/render/d;

    invoke-virtual {p1}, Lco/polarr/renderer/render/d;->a()V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p2

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x200

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1, p2, v0}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Landroid/graphics/Point;)V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->q:Lco/polarr/renderer/filters/a/b;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/b;->k()V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->o:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/c;->k()V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lco/polarr/renderer/filters/a/a;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/a;->k()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/render/b;->b:Lco/polarr/renderer/filters/ax;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ax;->k()V

    iget-object p1, p0, Lco/polarr/renderer/render/b;->c:Lco/polarr/renderer/filters/ax;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ax;->k()V

    new-instance p1, Lco/polarr/renderer/b/b;

    invoke-direct {p0}, Lco/polarr/renderer/render/b;->n()Lco/polarr/renderer/entities/Context;

    move-result-object p2

    iget-object v0, p0, Lco/polarr/renderer/render/b;->n:Landroid/content/res/Resources;

    invoke-direct {p1, p2, v0}, Lco/polarr/renderer/b/b;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lco/polarr/renderer/render/b;->f:Lco/polarr/renderer/b/b;

    return-void
.end method
