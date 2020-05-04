.class public Lcom/oppo/camera/ui/OppoNumSeekBar;
.super Landroid/view/View;
.source "OppoNumSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/OppoNumSeekBar$a;,
        Lcom/oppo/camera/ui/OppoNumSeekBar$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:I

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:Z

.field private I:I

.field private J:I

.field private K:I

.field private L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

.field private M:F

.field private N:F

.field private O:F

.field private P:Landroid/view/GestureDetector;

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:F

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:F

.field protected m:I

.field protected n:Z

.field protected o:Z

.field protected p:Landroid/graphics/Rect;

.field protected q:Landroid/graphics/Paint;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->s:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->d:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->u:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->v:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->w:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->e:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->x:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->y:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->z:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->A:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->B:J

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->E:F

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->F:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->G:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->H:Z

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->I:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->J:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->K:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->f:F

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->O:F

    iput-object v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->P:Landroid/view/GestureDetector;

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->i:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->j:I

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->k:I

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->m:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->o:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    sget-object v1, Lcom/oppo/camera/R$styleable;->OppoNumSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    const/4 p3, 0x5

    const/16 v1, 0x64

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    iget p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    const/4 v1, 0x7

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602c1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0x22

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->s:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602ba

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0x11

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->F:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602b7

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0x9

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602be

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0x19

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->m:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602bd

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v1, 0x18

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->c:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602bf

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v1, 0x1b

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->d:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602b9

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0xc

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->u:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602b8

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0xa

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->v:I

    const p3, 0x7f050038

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->j:I

    const v1, 0x7f05019b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->w:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/16 v3, 0xb

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->i:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->w:I

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->e:I

    const v1, 0x7f05019c

    invoke-static {p1, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    const/16 v3, 0x1a

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->x:I

    invoke-static {p1, p3}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p3

    const/16 v1, 0x17

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->y:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602c0

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v1, 0x1f

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->z:I

    iget p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->j:I

    const/16 v1, 0x1d

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->A:I

    const/16 p3, 0xc8

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v3, p3

    iput-wide v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->B:J

    const/16 p3, 0xd

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->k:I

    const/16 p3, 0x20

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->G:I

    const/16 p3, 0x1c

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->H:Z

    const/16 p3, 0x1e

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->I:I

    const/16 p3, 0xf

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->J:I

    const/16 p3, 0xe

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->K:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0602bb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v0, 0x14

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->a:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602bc

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->b:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c()V

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/oppo/camera/ui/OppoNumSeekBar$a;

    invoke-direct {p3, p0, v2}, Lcom/oppo/camera/ui/OppoNumSeekBar$a;-><init>(Lcom/oppo/camera/ui/OppoNumSeekBar;Lcom/oppo/camera/ui/OppoNumSeekBar$1;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->P:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/OppoNumSeekBar;)Lcom/oppo/camera/ui/OppoNumSeekBar$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->z:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const-string v3, "0123456789"

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->G:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->G:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v4, v1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget-boolean v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->H:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->I:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    :cond_1
    move v5, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Paint;FLandroid/graphics/Rect;)F

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFII)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p5, p5

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p5, p4

    iget-object p4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/OppoNumSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/OppoNumSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->E:F

    return p0
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    if-ge v0, v1, :cond_2

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    if-le v0, v1, :cond_3

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    :cond_3
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->s:I

    const v2, 0x7f0602b6

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    :cond_4
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->c:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->c:I

    :cond_5
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/ui/OppoNumSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->v:I

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/OppoNumSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/OppoNumSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    return p0
.end method

.method private getMaxText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMinText()Ljava/lang/String;
    .locals 1

    const/16 v0, -0x32

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Paint;FLandroid/graphics/Rect;)F
    .locals 0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    return p2
.end method

.method public a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    return-object p0
.end method

.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->B:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/OppoNumSeekBar$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/OppoNumSeekBar$2;-><init>(Lcom/oppo/camera/ui/OppoNumSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar$b;->b(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FF)V
    .locals 8

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->b:I

    iget v7, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->m:I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Canvas;FFII)V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->a:I

    iget v5, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->c:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Canvas;FFII)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FFF)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->E:F

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    cmpg-float p4, p2, p4

    if-gtz p4, :cond_0

    iget p4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->w:I

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->i:I

    :goto_0
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget p4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->u:I

    int-to-float p4, p4

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    iget v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    iget v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v2

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    mul-float/2addr p1, p1

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    return v0
.end method

.method public c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar$b;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;IZ)V

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    :cond_1
    return-object p0
.end method

.method public d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->k:I

    return-object p0
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->h:I

    int-to-float v0, v0

    return v0
.end method

.method public getMin()F
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    int-to-float v0, v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    return v0
.end method

.method protected getYTop()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getYTop()I

    move-result v2

    iget v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->I:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->k:I

    iget v5, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v6, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    int-to-float v7, v6

    div-float/2addr v4, v7

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->E:F

    iget-boolean v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget v7, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    int-to-float v4, v6

    div-float/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iput v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->w:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->t:I

    int-to-float v4, v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v9

    add-float v4, v0, v3

    iget v6, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget-object v8, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->j:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->s:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v9

    sub-float v6, v1, v3

    iget-object v8, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Canvas;FFF)V

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    invoke-virtual {p0, p1, v0, v2}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Canvas;FF)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->o:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/graphics/Canvas;F)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->m:I

    mul-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->z:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const-string v3, "0123456789"

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->F:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->z:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getMinText()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->m:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->f:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    invoke-direct {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getMaxText()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v2, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->m:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->J:I

    if-eqz p1, :cond_0

    int-to-float p2, p1

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->K:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->K:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->K:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    :cond_1
    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    iget p2, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->r:I

    int-to-float v1, v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lcom/oppo/camera/ui/OppoNumSeekBar$1;

    invoke-direct {p1, p0}, Lcom/oppo/camera/ui/OppoNumSeekBar$1;-><init>(Lcom/oppo/camera/ui/OppoNumSeekBar;)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->O:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->N:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    :cond_3
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->M:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->C:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->D:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->invalidate()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->invalidate()V

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar$b;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V

    :cond_6
    iget v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->O:F

    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->P:Landroid/view/GestureDetector;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_8
    return v2

    :cond_9
    :goto_1
    return v1
.end method

.method public setOnProgressChangedListener(Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar;->L:Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    return-void
.end method
