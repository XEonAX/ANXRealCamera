.class public Lcom/oppo/camera/ui/control/MainShutterButton;
.super Lcom/oppo/camera/ui/control/ShutterButton;
.source "MainShutterButton.java"


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Landroid/animation/ObjectAnimator;

.field private O:Landroid/animation/ObjectAnimator;

.field private P:Landroid/graphics/RectF;

.field private Q:Landroid/graphics/RectF;

.field private R:Landroid/graphics/RectF;

.field private S:Landroid/graphics/RectF;

.field private T:Landroid/graphics/RectF;

.field private U:Landroid/graphics/Paint;

.field private V:Landroid/graphics/Paint;

.field private W:Landroid/graphics/Paint;

.field private aa:Landroid/graphics/Paint;

.field private ab:Landroid/graphics/Paint;

.field private ac:Landroid/graphics/Paint;

.field private ad:Landroid/graphics/Paint;

.field private ae:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oppo/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private af:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oppo/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oppo/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Landroid/animation/ObjectAnimator;

.field private ai:Landroid/animation/ObjectAnimator;

.field private aj:Landroid/animation/ObjectAnimator;

.field private ak:Landroid/animation/ValueAnimator;

.field private al:Landroid/animation/ValueAnimator;

.field private am:Landroid/animation/ValueAnimator;

.field private an:Landroid/animation/ValueAnimator;

.field private ao:Landroid/animation/ValueAnimator;

.field private ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/control/MainShutterButton;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/control/MainShutterButton;->c:Landroid/view/animation/Interpolator;

    const-string v0, "#FFEA3447"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oppo/camera/ui/control/MainShutterButton;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    const/16 v3, 0x9

    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    const/16 v1, 0x18

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const/16 v3, 0xc

    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    const/16 v4, 0x9

    iput v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    const/16 v2, 0x18

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p1, p2, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const/16 v3, 0xc

    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    const/16 v4, 0x9

    iput v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    const/16 v2, 0x18

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;F)F
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    return-object p1
.end method

.method private a(II)V
    .locals 0

    iput p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v1, "button_shape_ring_none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x0

    const-string v2, "button_shape_dial_rotate"

    const-string v3, "button_shape_dial_still"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iput-boolean v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Z)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    const-string v1, "button_color_inside_red"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x33

    const/16 v2, 0xff

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    const-string v3, "button_color_inside_grey"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    const-string v0, "button_color_inside_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v0, "button_shape_ring_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    :goto_3
    int-to-float p2, p2

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->k()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/MainShutterButton;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    return p1
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lcom/oppo/camera/R$styleable;->MainShutterButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p3, 0x12

    const v0, 0x7f060370

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    const/16 p3, 0xe

    const v0, 0x7f060382

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    const/16 p3, 0x10

    const v0, 0x7f06037b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    const/16 p3, 0xf

    const v0, 0x7f06037a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    const p3, 0x7f090009

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    const/16 p3, 0x16

    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    const/16 p3, 0x11

    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    iget p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    mul-int/lit8 p3, p3, 0x2

    rsub-int p3, p3, 0x168

    int-to-float p3, p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 p3, 0x4

    const v0, 0x7f060371

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    iget p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    sget v0, Lcom/oppo/camera/ui/control/MainShutterButton;->d:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->l()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private b(Landroid/graphics/Canvas;Z)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_a

    if-nez p2, :cond_0

    const/4 v3, 0x0

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    add-int v4, v1, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_0
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_1

    const/4 v4, 0x0

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    add-int v3, v1, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    add-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_1
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-le v2, v1, :cond_6

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x3c

    if-ne v0, v2, :cond_3

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    :goto_1
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_4

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    :goto_2
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    add-int/lit8 v4, v3, -0x3c

    if-le v0, v4, :cond_5

    if-nez v3, :cond_9

    :cond_5
    const/4 v6, 0x0

    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int v4, v3, v2

    int-to-float v7, v4

    const/4 v8, 0x0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    int-to-float v9, v3

    iget-object v10, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    :goto_3
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-ne v0, v1, :cond_7

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    :goto_4
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-ne v0, v2, :cond_8

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    goto :goto_5

    :cond_8
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    :goto_5
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-lt v0, v3, :cond_9

    const/4 v5, 0x0

    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int v4, v3, v1

    int-to-float v6, v4

    const/4 v7, 0x0

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/MainShutterButton;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/control/MainShutterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->u()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/control/MainShutterButton;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/control/MainShutterButton;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    return p0
.end method

.method private h()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    return-object p0
.end method

.method private i()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    return-object p0
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    return v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    :cond_0
    return-void
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->m()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->s()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->t()V

    return-void
.end method

.method private m()V
    .locals 6

    new-instance v0, Lcom/oppo/camera/ui/control/MainShutterButton$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/ui/control/MainShutterButton$1;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    new-instance v0, Lcom/oppo/camera/ui/control/MainShutterButton$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/ui/control/MainShutterButton$2;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/oppo/camera/ui/control/MainShutterButton;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    new-array v4, v1, [F

    iget v5, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    aput v5, v4, v3

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/oppo/camera/ui/control/MainShutterButton;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oppo/camera/ui/control/MainShutterButton$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$3;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    return-void
.end method

.method private s()V
    .locals 6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06037d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const v1, 0x7f06037e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    const v1, 0x7f06037f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    sub-int v1, v2, v0

    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    div-int/2addr v2, v0

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    new-instance v1, Lcom/oppo/camera/ui/control/MainShutterButton$4;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "dial"

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/control/MainShutterButton$4;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oppo/camera/ui/control/MainShutterButton$5;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$5;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oppo/camera/ui/control/MainShutterButton$6;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$6;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oppo/camera/ui/control/MainShutterButton$7;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$7;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f1374bc    # 0.576f

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3ed78d50    # 0.421f

    const v5, 0x3f5a5e35    # 0.853f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oppo/camera/ui/control/MainShutterButton$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$8;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x78
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3c
    .end array-data
.end method

.method private setButtonTypeAndInvalidate(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonTypeAndInvalidate, buttonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->n()V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->o()V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonType(I)V

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->w()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->h()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v0, "button_shape_dial_rotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    :goto_0
    return-void
.end method

.method private t()V
    .locals 11

    new-instance v0, Lcom/oppo/camera/ui/control/MainShutterButton$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$9;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f28f5c3    # 0.66f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v1, v1

    aput v1, v0, v3

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v1, v1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x78

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    rsub-int/lit8 v1, v1, 0x78

    mul-int/lit16 v1, v1, 0x320

    div-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private v()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->q()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->r()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->v()V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonType, insideRectColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inSideColor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonType(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    const-string v3, "button_shape_ring_none"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;)V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getShutterButtonInfo()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "MainShutterButton"

    if-nez v0, :cond_0

    const-string p1, "switchToModeType, null == currentButtonInfo"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToModeType, before shutterButtonType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", before insideColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", before ringShape: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> after shutterButtonType: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", after insideColor: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", after ringShape: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "MainShutterButton"

    const-string v1, "pauseFastVideoDialAnimator"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "MainShutterButton"

    const-string v1, "resumeFastVideoDialAnimator"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public getButtonType()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    return v0
.end method

.method public getCurrentGlobalAngle()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    return v0
.end method

.method public getDialValue()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    return v0
.end method

.method public getInsideColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getRingShape()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getShutterButtonInfo()Lcom/oppo/camera/ui/control/c;
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow, mButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->h()V

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDetachedFromWindow, mButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->i()V

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    const/4 v8, 0x2

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    :cond_0
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    :cond_1
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v3, v8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v5, v8

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v6, v8

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    :cond_2
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v3, v8

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v4, v8

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v5, v8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    :cond_3
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    :cond_4
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    invoke-direct {v0, v7, v9}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_f

    :cond_5
    const/16 v10, 0xff

    if-ne v1, v8, :cond_8

    invoke-direct {v0, v7, v9}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_0

    :cond_6
    if-ne v9, v1, :cond_7

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_0
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_8
    const/4 v2, 0x3

    const/16 v3, 0x80

    const/4 v11, 0x0

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {v0, v7, v11}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_1

    :cond_9
    if-ne v9, v1, :cond_a

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_1

    :cond_a
    if-ne v8, v1, :cond_b

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_1

    :cond_b
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_1
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_c
    const/4 v4, 0x4

    if-ne v1, v4, :cond_f

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {v0, v7, v11}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    iget-boolean v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    if-eqz v3, :cond_d

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_e

    sub-float/2addr v3, v4

    goto :goto_2

    :cond_d
    add-float/2addr v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v2

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_e

    sub-float/2addr v1, v4

    add-float/2addr v3, v4

    :cond_e
    :goto_2
    move v4, v3

    move v3, v1

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_f
    const/4 v5, 0x5

    const-string v6, "button_shape_ring_none"

    const-string v12, "button_color_inside_red"

    const-string v13, "button_color_inside_grey"

    const-string v14, "button_color_inside_none"

    const/16 v15, 0x8

    const/high16 v16, 0x41000000    # 8.0f

    if-ne v1, v5, :cond_15

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    goto :goto_3

    :cond_11
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    :goto_3
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v2, v8

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    div-float v2, v2, v16

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v8

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v11, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    sub-float/2addr v6, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v11

    div-int/2addr v11, v8

    add-int/2addr v11, v1

    int-to-float v11, v11

    iget v8, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v9, v8

    mul-float/2addr v9, v2

    sub-float/2addr v11, v9

    int-to-float v1, v1

    int-to-float v2, v8

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_4

    :cond_12
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    const/4 v2, 0x1

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v2, 0x0

    :goto_5
    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_14

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_14
    const/4 v1, 0x0

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v14, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;I)V

    goto/16 :goto_f

    :cond_15
    const/4 v5, 0x6

    if-ne v1, v5, :cond_1a

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    goto :goto_6

    :cond_16
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    :goto_6
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float v4, v4, v16

    div-float v2, v2, v16

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v8, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float/2addr v5, v8

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v3

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v9

    div-int/2addr v9, v3

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v11, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    add-float/2addr v9, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v11

    div-int/2addr v11, v3

    add-int/2addr v11, v6

    int-to-float v3, v11

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v11, v6

    mul-float/2addr v11, v2

    add-float/2addr v3, v11

    int-to-float v1, v1

    int-to-float v2, v6

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    move-object v14, v13

    goto :goto_7

    :cond_17
    const/4 v3, 0x1

    if-ne v3, v2, :cond_18

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    move-object v14, v12

    goto :goto_7

    :cond_18
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_7
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-ge v1, v15, :cond_19

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_19
    const/4 v1, 0x0

    const/4 v5, 0x1

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    invoke-direct {v0, v5, v14}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;)V

    goto/16 :goto_f

    :cond_1a
    const/4 v5, 0x1

    const/4 v6, 0x7

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v1, :cond_1e

    invoke-direct {v0, v7, v5}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v1, v1

    div-float v1, v1, v16

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v4, v3

    mul-float/2addr v4, v1

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    const/4 v5, 0x2

    div-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v5, v9

    add-float/2addr v5, v4

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v6, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_8

    :cond_1b
    const/4 v4, 0x1

    if-ne v4, v1, :cond_1c

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_8

    :cond_1c
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_8
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_1d

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_1d
    const/4 v1, 0x0

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_f

    :cond_1e
    if-ne v15, v1, :cond_22

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v2, v1

    div-float v2, v2, v16

    int-to-float v1, v1

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v5, v2

    div-float v5, v5, v16

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    const/4 v5, 0x2

    div-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v1, v8

    sub-float/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v5, v9

    add-float/2addr v5, v1

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v6, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_9

    :cond_1f
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    const/4 v1, 0x1

    goto :goto_a

    :cond_20
    :goto_9
    const/4 v1, 0x0

    :goto_a
    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-ge v2, v15, :cond_21

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_21
    const/4 v2, 0x0

    iput v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    invoke-direct {v0, v4, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(II)V

    goto/16 :goto_f

    :cond_22
    const/4 v5, 0x1

    const/16 v4, 0x9

    if-ne v4, v1, :cond_25

    invoke-direct {v0, v7, v5}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_b

    :cond_23
    if-ne v5, v1, :cond_24

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_b

    :cond_24
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_b
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_25
    const/16 v4, 0xa

    if-ne v4, v1, :cond_29

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v1, v1

    div-float v1, v1, v16

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    const/4 v4, 0x2

    div-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    int-to-float v4, v8

    add-float/2addr v4, v3

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_c

    :cond_26
    const/4 v3, 0x1

    if-ne v3, v1, :cond_27

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_c

    :cond_27
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_c
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_28

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_28
    const/4 v1, 0x0

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_f

    :cond_29
    const/4 v4, 0x1

    const/16 v5, 0xb

    if-ne v5, v1, :cond_2d

    invoke-direct {v0, v7, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v2, v1

    div-float v2, v2, v16

    int-to-float v1, v1

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v4, v3

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v4, v2

    div-float v4, v4, v16

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v8

    sub-float/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    int-to-float v4, v8

    add-float/2addr v4, v1

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_2a

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_d

    :cond_2a
    const/4 v3, 0x1

    if-ne v3, v1, :cond_2b

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_d

    :cond_2b
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_d
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-ge v1, v15, :cond_2c

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x1

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_f

    :cond_2d
    const/16 v4, 0xc

    if-ne v1, v4, :cond_30

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_2e

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_e

    :cond_2e
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2f

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_e

    :cond_2f
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :goto_e
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/16 v2, 0x168

    if-lt v1, v2, :cond_32

    const/4 v4, 0x0

    iput v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto :goto_f

    :cond_30
    const/4 v4, 0x0

    const/16 v5, 0xd

    if-ne v5, v1, :cond_32

    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {v0, v7, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_31

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto :goto_f

    :cond_31
    iput v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    :cond_32
    :goto_f
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setButtonType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    :cond_1
    return-void
.end method

.method public setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonTypeAndInvalidate, mShutterButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInfoInsideColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRingShape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInfoInsideRectColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->n()V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->o()V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->d()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonType(I)V

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->w()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->h()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v0, "button_shape_dial_rotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    :goto_0
    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setDialValue(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setPressed(Z)V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->p()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iget v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p1, v4

    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v3, v2

    sub-float/2addr v3, p1

    mul-float/2addr v3, v0

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr v3, p1

    float-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iget v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    goto :goto_2

    :cond_4
    int-to-float p1, v4

    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    :cond_5
    return-void

    :cond_6
    :goto_4
    const-string p1, "MainShutterButton"

    const-string v0, "setPressed, return because Animator is null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShutterButtonProgress(F)V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const-string v1, "MainShutterButton"

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShutterButtonProgress, button type is error, mButtonType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterButtonProgress, progress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setShutterButtonTime(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    return-void
.end method
