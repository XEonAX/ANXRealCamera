.class public Lcom/oppo/camera/ui/CameraScreenHintView;
.super Landroid/widget/RelativeLayout;
.source "CameraScreenHintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/CameraScreenHintView$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/oppo/camera/ui/h$a;

.field private c:I

.field private d:I

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

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/oppo/camera/ui/RotateImageView;

.field private u:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

.field private x:Lcom/oppo/camera/ui/h;

.field private y:Lcom/oppo/camera/ui/a;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->e:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->i:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->m:I

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->p:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->q:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->r:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->s:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    new-instance v2, Lcom/oppo/camera/ui/CameraScreenHintView$a;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/CameraScreenHintView$a;-><init>(Lcom/oppo/camera/ui/CameraScreenHintView;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    iput-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    iput-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->y:Lcom/oppo/camera/ui/a;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->z:Z

    new-instance v0, Lcom/oppo/camera/ui/CameraScreenHintView$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/CameraScreenHintView$1;-><init>(Lcom/oppo/camera/ui/CameraScreenHintView;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/ui/CameraScreenHintView$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/CameraScreenHintView$2;-><init>(Lcom/oppo/camera/ui/CameraScreenHintView;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->B:Lcom/oppo/camera/ui/h$a;

    sget-object v0, Lcom/oppo/camera/R$styleable;->CameraScreenHintView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x2a

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    const/4 p2, 0x2

    const/16 p3, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    sput p1, Lcom/oppo/camera/ui/CameraScreenHintView;->b:I

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p1, v0

    double-to-int p1, p1

    sput p1, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/CameraScreenHintView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    return-object p0
.end method

.method private a(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/CameraScreenHintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setHintTextViewVisible(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/CameraScreenHintView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(II)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TEXT_BG_COLOR"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "TEXT_COLOR"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/CameraScreenHintView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/CameraScreenHintView;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/menu/OppoTextView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    return-object p0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/CameraScreenHintView$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/CameraScreenHintView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/CameraScreenHintView;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method private f()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/h;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/h;-><init>(FF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/h;->setDuration(J)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->B:Lcom/oppo/camera/ui/h$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/h;->a(Lcom/oppo/camera/ui/h$a;)V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/CameraScreenHintView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->h()V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/CameraScreenHintView;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    return p0
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getChildMeasureHeight()I
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewHeight()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewHeight()I

    move-result v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    if-le v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewHeight()I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr v2, v0

    :cond_5
    :goto_1
    return v2
.end method

.method private getChildMeasureWidth()I
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewWidth()I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewWidth()I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewWidth()I

    move-result v2

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    if-le v2, v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :cond_5
    :goto_1
    return v2
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    sget v2, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->measure(II)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    sget v2, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/RotateImageView;->measure(II)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/ui/CameraScreenHintView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->p:Z

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/CameraScreenHintView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->q:Z

    return p0
.end method

.method private setHintTextViewVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->y:Lcom/oppo/camera/ui/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/a;->b(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/a;->b(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->p:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->clearAnimation()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->i:I

    iput p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->h:I

    iput p3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    iput-boolean p4, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->r:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->d()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IZZ)V

    return-void
.end method

.method public a(IZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->m:I

    if-eq v0, p1, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->m:I

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->e:I

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->o:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "CameraScreenHintView"

    const-string p2, "showCameraScreenHintImage, lowPriority, so wait text hint hide."

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p2, :cond_4

    const/16 p2, 0x8

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->setHintTextViewVisible(I)V

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p2, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(I)V

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->h()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->d()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 6

    const v4, 0x7f0703ac

    const v5, 0x7f0501d1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCameraScreenHintText, hintText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showAlways: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideAuto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bgDrawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenHintView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p4, p5}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p4, p5}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_3

    iget p4, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->e:I

    goto :goto_0

    :cond_3
    move p4, p5

    :goto_0
    invoke-virtual {p0, p4}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    iget-object p4, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p4}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    xor-int/2addr p4, v1

    invoke-direct {p0, p5}, Lcom/oppo/camera/ui/CameraScreenHintView;->setHintTextViewVisible(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    invoke-virtual {p1, p5}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(I)V

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    if-nez p4, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->o:Z

    if-eqz p1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->h()V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->A:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->o:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->m:I

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "TEXT_BG_COLOR"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "TEXT_COLOR"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(II)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setHintTextViewVisible(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->d()V

    :cond_2
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->o:Z

    iget-object v2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->w:Lcom/oppo/camera/ui/CameraScreenHintView$a;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView$a;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->clearAnimation()V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->p:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setHintTextViewVisible(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->g()V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->q:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->d()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(ZZ)V

    return-void
.end method

.method public c()Z
    .locals 8

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRecentCameraScreenHintText, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TEXT"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraScreenHintView"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "TEXT_BG_COLOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v1, "TEXT_COLOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public d()V
    .locals 8

    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getChildMeasureWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getChildMeasureHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshLayout, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraScreenHintView"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->e()V

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    const/16 v4, 0x5a

    const/16 v5, 0x9

    const/16 v6, 0xb

    const/16 v7, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->r:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->h:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/oppo/camera/ui/CameraScreenHintView;->b:I

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->i:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->r:Z

    if-eqz v0, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/oppo/camera/ui/CameraScreenHintView;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v0, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/oppo/camera/ui/CameraScreenHintView;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->r:Z

    if-eqz v0, :cond_4

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v0, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/oppo/camera/ui/CameraScreenHintView;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v3, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/oppo/camera/ui/CameraScreenHintView;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/oppo/camera/ui/CameraScreenHintView;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->y:Lcom/oppo/camera/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->n:I

    :cond_0
    return-void
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->e:I

    return v0
.end method

.method public getHintIconView()Lcom/oppo/camera/ui/RotateImageView;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarginLeft()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMarginTop()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSupportRotaeScreen()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->c:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getViewGap()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->f:I

    return v0
.end method

.method public isShown()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setHintTextViewVisible(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    const/16 p2, 0x5a

    const/4 p3, 0x0

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    sub-int p1, p5, p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    sub-int p2, p4, p2

    div-int/lit8 p3, p2, 0x2

    :goto_0
    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    add-int/2addr v1, p1

    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->layout(IIII)V

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr p3, p1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p3

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p4}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p3, p5, p2, p4}, Lcom/oppo/camera/ui/menu/OppoTextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    sub-int p1, p4, p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p5, 0x0

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    :goto_1
    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr v1, p3

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->layout(IIII)V

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr p3, p1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object p5, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p5}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p1, p4, p3, p2, p5}, Lcom/oppo/camera/ui/menu/OppoTextView;->layout(IIII)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    :goto_2
    iget-object p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->layout(IIII)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->u:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object p5, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p5}, Lcom/oppo/camera/ui/RotateImageView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p1, p4, p3, p2, p5}, Lcom/oppo/camera/ui/RotateImageView;->layout(IIII)V

    iget-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->t:Lcom/oppo/camera/ui/RotateImageView;

    iget p2, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->k:I

    add-int/2addr p2, p4

    iget p5, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->l:I

    add-int/2addr p5, p3

    invoke-virtual {p1, p4, p3, p2, p5}, Lcom/oppo/camera/ui/RotateImageView;->layout(IIII)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setCameraScreenHintListener(Lcom/oppo/camera/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->y:Lcom/oppo/camera/ui/a;

    return-void
.end method

.method public setChangeHintColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->s:Z

    return-void
.end method

.method public setMoreMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->z:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->e:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->d:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    move p1, v2

    :cond_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->f()V

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    move p1, v2

    :cond_2
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_3

    move p1, v2

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->B:Lcom/oppo/camera/ui/h$a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/oppo/camera/ui/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/h;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/h;->a()I

    move-result v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->x:Lcom/oppo/camera/ui/h;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/h;->a(IZ)V

    :cond_5
    return-void
.end method

.method public setSupportRotateScreen(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/oppo/camera/ui/CameraScreenHintView;->c:I

    return-void
.end method
