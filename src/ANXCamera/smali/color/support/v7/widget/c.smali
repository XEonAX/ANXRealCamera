.class public Lcolor/support/v7/widget/c;
.super Landroid/widget/PopupWindow;
.source "ColorBasePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/c$b;,
        Lcolor/support/v7/widget/c$a;
    }
.end annotation


# static fields
.field private static final R:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:[I

.field private F:[I

.field private G:Landroid/graphics/Rect;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:I

.field private L:I

.field private M:Z

.field private N:I

.field private O:Lcolor/support/v7/widget/c$a;

.field private P:Z

.field private Q:I

.field private S:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Z

.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/view/View$OnTouchListener;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcolor/support/v7/widget/c;->R:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcolor/support/v7/widget/c;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcolor/support/v7/widget/c;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcolor/support/v7/widget/c;->i:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->j:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->k:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->l:Z

    const/4 v2, -0x1

    iput v2, p0, Lcolor/support/v7/widget/c;->m:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->p:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->q:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->s:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->t:Z

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcolor/support/v7/widget/c;->E:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcolor/support/v7/widget/c;->F:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/c;->G:Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    iput v1, p0, Lcolor/support/v7/widget/c;->N:I

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->P:Z

    iput v2, p0, Lcolor/support/v7/widget/c;->Q:I

    new-instance v1, Lcolor/support/v7/widget/c$1;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/c$1;-><init>(Lcolor/support/v7/widget/c;)V

    iput-object v1, p0, Lcolor/support/v7/widget/c;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p1, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v3, Lcolor/support/v7/appcompat/R$styleable;->PopupWindowCompat:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->PopupWindowCompat_supportPopupElevation:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/c;->D:F

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcolor/support/v7/widget/c;->X:Z

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->PopupWindowCompat_android_popupAnimationStyle:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget p4, Lcolor/support/v7/appcompat/R$style;->Animation_ColorSupport_PopupWindow:I

    if-ne p3, p4, :cond_0

    move p3, v2

    :cond_0
    iput p3, p0, Lcolor/support/v7/widget/c;->Q:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/c;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcolor/support/v7/widget/c;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcolor/support/v7/widget/c;->i:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->j:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->k:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->l:Z

    const/4 v2, -0x1

    iput v2, p0, Lcolor/support/v7/widget/c;->m:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->p:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->q:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/c;->s:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->t:Z

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcolor/support/v7/widget/c;->E:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcolor/support/v7/widget/c;->F:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/c;->G:Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    iput v1, p0, Lcolor/support/v7/widget/c;->N:I

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->P:Z

    iput v2, p0, Lcolor/support/v7/widget/c;->Q:I

    new-instance v0, Lcolor/support/v7/widget/c$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/c$1;-><init>(Lcolor/support/v7/widget/c;)V

    iput-object v0, p0, Lcolor/support/v7/widget/c;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/c;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/c;->setWidth(I)V

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/c;->setHeight(I)V

    invoke-virtual {p0, p4}, Lcolor/support/v7/widget/c;->setFocusable(Z)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->P:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->g:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Lcolor/support/v7/widget/c;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/c;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :goto_0
    or-int/2addr p1, v1

    :cond_2
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->j:Z

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x10

    :cond_3
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->k:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_4
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->l:Z

    if-nez v0, :cond_5

    or-int/lit16 p1, p1, 0x200

    :cond_5
    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_6
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->n:Z

    if-eqz v0, :cond_7

    or-int/lit16 p1, p1, 0x100

    :cond_7
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->q:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_8
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->r:Z

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x20

    :cond_9
    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->s:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    :cond_a
    return p1
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcolor/support/v7/widget/c;->w:I

    iput v1, p0, Lcolor/support/v7/widget/c;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcolor/support/v7/widget/c;->z:I

    iput v1, p0, Lcolor/support/v7/widget/c;->A:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcolor/support/v7/widget/c;->a(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcolor/support/v7/widget/c;->N:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget p1, p0, Lcolor/support/v7/widget/c;->i:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcolor/support/v7/widget/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/c;->S:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/view/View;III)V
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->d()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/v7/widget/c;->S:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/c;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput p2, p0, Lcolor/support/v7/widget/c;->U:I

    iput p3, p0, Lcolor/support/v7/widget/c;->V:I

    iput p4, p0, Lcolor/support/v7/widget/c;->W:I

    return-void
.end method

.method private a(Landroid/view/View;ZIIZIII)V
    .locals 14

    move-object v6, p0

    move-object v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v0, p6

    move/from16 v2, p7

    move/from16 v5, p8

    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v6, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-nez v7, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v7, v6, Lcolor/support/v7/widget/c;->S:Ljava/lang/ref/WeakReference;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p2, :cond_2

    iget v10, v6, Lcolor/support/v7/widget/c;->U:I

    if-ne v10, v3, :cond_1

    iget v10, v6, Lcolor/support/v7/widget/c;->V:I

    if-eq v10, v4, :cond_2

    :cond_1
    move v10, v8

    goto :goto_0

    :cond_2
    move v10, v9

    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_4

    if-eqz v10, :cond_3

    iget-boolean v7, v6, Lcolor/support/v7/widget/c;->d:Z

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_5

    iput v3, v6, Lcolor/support/v7/widget/c;->U:I

    iput v4, v6, Lcolor/support/v7/widget/c;->V:I

    iput v5, v6, Lcolor/support/v7/widget/c;->W:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, p1, v3, v4, v5}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;III)V

    :cond_5
    :goto_2
    iget-object v7, v6, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    if-eqz p5, :cond_8

    const/4 v10, -0x1

    if-ne v0, v10, :cond_6

    iget v0, v6, Lcolor/support/v7/widget/c;->B:I

    goto :goto_3

    :cond_6
    iput v0, v6, Lcolor/support/v7/widget/c;->B:I

    :goto_3
    if-ne v2, v10, :cond_7

    iget v2, v6, Lcolor/support/v7/widget/c;->C:I

    goto :goto_4

    :cond_7
    iput v2, v6, Lcolor/support/v7/widget/c;->C:I

    :cond_8
    :goto_4
    move v10, v0

    move v11, v2

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p2, :cond_9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/c;->b(Z)V

    goto :goto_5

    :cond_9
    iget v0, v6, Lcolor/support/v7/widget/c;->U:I

    iget v2, v6, Lcolor/support/v7/widget/c;->V:I

    iget v3, v6, Lcolor/support/v7/widget/c;->W:I

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v7

    move/from16 p5, v0

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-direct/range {p2 .. p7}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/c;->b(Z)V

    :goto_5
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v12, v2, :cond_b

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v13, v2, :cond_a

    goto :goto_6

    :cond_a
    move v8, v9

    :cond_b
    :goto_6
    move-object p1, p0

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v8

    invoke-virtual/range {p1 .. p6}, Lcolor/support/v7/widget/c;->update(IIIIZ)V

    :cond_c
    :goto_7
    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/c;->b(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-boolean v5, v0, Lcolor/support/v7/widget/c;->X:Z

    if-eqz v5, :cond_0

    sub-int v5, p4, v3

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    :goto_0
    iget-object v6, v0, Lcolor/support/v7/widget/c;->E:[I

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v6, v0, Lcolor/support/v7/widget/c;->E:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    add-int v8, v8, p3

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v8, 0x1

    aget v6, v6, v8

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    move/from16 v9, p5

    invoke-static {v9, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    const/4 v9, 0x5

    if-ne v6, v9, :cond_1

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v0, Lcolor/support/v7/widget/c;->B:I

    sub-int/2addr v11, v4

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    const/16 v10, 0x33

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v10, v0, Lcolor/support/v7/widget/c;->F:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v11, v0, Lcolor/support/v7/widget/c;->F:[I

    aget v11, v11, v8

    add-int/2addr v11, v3

    add-int/2addr v11, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    iget v13, v0, Lcolor/support/v7/widget/c;->C:I

    add-int/2addr v11, v13

    iget v13, v10, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v13, :cond_3

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v0, Lcolor/support/v7/widget/c;->B:I

    add-int/2addr v11, v13

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v11, v13

    if-lez v11, :cond_2

    goto :goto_1

    :cond_2
    move v1, v7

    goto :goto_3

    :cond_3
    :goto_1
    iget-boolean v11, v0, Lcolor/support/v7/widget/c;->p:Z

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    new-instance v14, Landroid/graphics/Rect;

    iget v15, v0, Lcolor/support/v7/widget/c;->B:I

    add-int/2addr v15, v11

    add-int v15, v15, p3

    iget v9, v0, Lcolor/support/v7/widget/c;->C:I

    add-int/2addr v9, v13

    add-int/2addr v9, v3

    add-int/2addr v9, v5

    invoke-direct {v14, v11, v13, v15, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v14, v8}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_4
    iget-object v9, v0, Lcolor/support/v7/widget/c;->E:[I

    invoke-virtual {v1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v9, v0, Lcolor/support/v7/widget/c;->E:[I

    aget v11, v9, v7

    add-int v11, v11, p3

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v9, v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v5

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v9, 0x5

    if-ne v6, v9, :cond_5

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v0, Lcolor/support/v7/widget/c;->B:I

    sub-int/2addr v9, v4

    sub-int/2addr v6, v9

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_5
    iget-object v6, v0, Lcolor/support/v7/widget/c;->F:[I

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcolor/support/v7/widget/c;->F:[I

    aget v9, v6, v8

    sub-int/2addr v1, v9

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    aget v6, v6, v8

    sub-int/2addr v6, v5

    iget v9, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    if-ge v1, v6, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v7

    :goto_2
    if-eqz v1, :cond_7

    const/16 v6, 0x53

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v9, v0, Lcolor/support/v7/widget/c;->E:[I

    aget v9, v9, v8

    sub-int/2addr v6, v9

    add-int/2addr v6, v5

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_7
    iget-object v6, v0, Lcolor/support/v7/widget/c;->E:[I

    aget v6, v6, v8

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    iget-boolean v6, v0, Lcolor/support/v7/widget/c;->o:Z

    if-eqz v6, :cond_b

    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v9, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v9

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v9, v11

    if-le v9, v6, :cond_8

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v9, v6

    sub-int/2addr v11, v9

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_8
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v10, Landroid/graphics/Rect;->left:I

    if-ge v9, v11, :cond_9

    iget v9, v10, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_9
    if-eqz v1, :cond_a

    iget-object v6, v0, Lcolor/support/v7/widget/c;->F:[I

    aget v6, v6, v8

    add-int/2addr v6, v5

    iget v5, v0, Lcolor/support/v7/widget/c;->C:I

    sub-int/2addr v6, v5

    if-gez v6, :cond_b

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_a
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_b
    :goto_4
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v5, v0, Lcolor/support/v7/widget/c;->E:[I

    aget v5, v5, v7

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    iput v5, v0, Lcolor/support/v7/widget/c;->K:I

    iget-object v3, v0, Lcolor/support/v7/widget/c;->E:[I

    aget v3, v3, v8

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Lcolor/support/v7/widget/c;->L:I

    return v1
.end method

.method static synthetic a(Lcolor/support/v7/widget/c;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result p0

    return p0
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcolor/support/v7/widget/c;->R:[I

    return-object v0
.end method

.method static synthetic b(Lcolor/support/v7/widget/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcolor/support/v7/widget/c;->S:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcolor/support/v7/widget/c;->Y:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v0, Lcolor/support/v7/widget/c$b;

    iget-object v3, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcolor/support/v7/widget/c$b;-><init>(Lcolor/support/v7/widget/c;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/c$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/widget/c$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget v1, p0, Lcolor/support/v7/widget/c;->D:F

    invoke-static {v0, v1}, Landroidx/core/g/u;->a(Landroid/view/View;F)V

    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-static {v0}, Lcolor/support/a/a/a;->b(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->Y:Z

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcolor/support/v7/widget/c;->B:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, p0, Lcolor/support/v7/widget/c;->C:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->M:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->M:Z

    iget-object p1, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/c;->I:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/widget/c;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()I
    .locals 2

    iget v0, p0, Lcolor/support/v7/widget/c;->Q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->M:Z

    if-eqz v0, :cond_0

    sget v0, Lcolor/support/v7/appcompat/R$style;->Animation_ColorSupport_DropDownUp:I

    goto :goto_0

    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$style;->Animation_ColorSupport_DropDownDown:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method static synthetic c(Lcolor/support/v7/widget/c;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/c;->U:I

    return p0
.end method

.method static synthetic d(Lcolor/support/v7/widget/c;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/c;->V:I

    return p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/widget/c;->S:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcolor/support/v7/widget/c;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    iput-object v1, p0, Lcolor/support/v7/widget/c;->S:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic e(Lcolor/support/v7/widget/c;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/c;->W:I

    return p0
.end method

.method static synthetic f(Lcolor/support/v7/widget/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/c;->M:Z

    return p0
.end method

.method static synthetic g(Lcolor/support/v7/widget/c;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/c;->u:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic h(Lcolor/support/v7/widget/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/IBinder;III)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/widget/c;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->d:Z

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/c;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->c()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/c;->b(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p2, :cond_1

    const p2, 0x800033

    :cond_1
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p0, Lcolor/support/v7/widget/c;->y:I

    if-gez p2, :cond_2

    iput p2, p0, Lcolor/support/v7/widget/c;->A:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget p2, p0, Lcolor/support/v7/widget/c;->v:I

    if-gez p2, :cond_3

    iput p2, p0, Lcolor/support/v7/widget/c;->x:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_3
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/c;->a(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget-boolean v1, p0, Lcolor/support/v7/widget/c;->q:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->b()V

    iget-object v0, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Lcolor/support/v7/widget/c$a;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/c;->O:Lcolor/support/v7/widget/c$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->o:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/c;->setClippingEnabled(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 5

    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->c:Z

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->d()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget-object v2, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-eq v1, v2, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/widget/c;->O:Lcolor/support/v7/widget/c$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcolor/support/v7/widget/c$a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget-object v3, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-eq v2, v3, :cond_1

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/widget/c;->O:Lcolor/support/v7/widget/c$a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcolor/support/v7/widget/c$a;->a()V

    :cond_2
    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->Q:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->D:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->z:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->h:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/c;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcolor/support/v7/widget/c;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcolor/support/v7/widget/c;->E:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/4 p3, 0x1

    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcolor/support/v7/widget/c;->G:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Lcolor/support/v7/widget/c;->G:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcolor/support/v7/widget/c;->G:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public getSoftInputMode()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->i:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->w:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/c;->N:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->M:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->s:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->l:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->g:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->k:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->c:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    iget v0, p0, Lcolor/support/v7/widget/c;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/c;->m:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->j:Z

    return v0
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->Q:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->s:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->t:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcolor/support/v7/widget/c;->H:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcolor/support/v7/widget/c;->J:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcolor/support/v7/widget/c;->I:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->l:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    iget-object p1, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/c;->a:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcolor/support/v7/widget/c;->t:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/c;->setAttachedInDecor(Z)V

    :cond_4
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->D:F

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->g:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->z:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->P:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->h:I

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->k:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->i:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->m:I

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/c;->u:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->r:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/c;->j:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->w:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->v:I

    iput p2, p0, Lcolor/support/v7/widget/c;->y:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/c;->N:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcolor/support/v7/widget/c;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/c;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7

    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->c:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/c;->d:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/c;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/c;->b(Landroid/view/WindowManager$LayoutParams;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/c;->b(Z)V

    iget p1, p0, Lcolor/support/v7/widget/c;->y:I

    if-gez p1, :cond_1

    iput p1, p0, Lcolor/support/v7/widget/c;->A:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    iget p1, p0, Lcolor/support/v7/widget/c;->v:I

    if-gez p1, :cond_2

    iput p1, p0, Lcolor/support/v7/widget/c;->x:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/widget/c;->c()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/c;->a(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/c;->a(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 5

    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->c()I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v4

    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcolor/support/v7/widget/c;->a(I)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v1, v4

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->b()V

    iget-object v1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public update(II)V
    .locals 7

    iget-object v0, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/widget/c;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcolor/support/v7/widget/c;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iput p3, p0, Lcolor/support/v7/widget/c;->x:I

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/c;->setWidth(I)V

    :cond_0
    if-eq p4, v0, :cond_1

    iput p4, p0, Lcolor/support/v7/widget/c;->A:I

    invoke-virtual {p0, p4}, Lcolor/support/v7/widget/c;->setHeight(I)V

    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcolor/support/v7/widget/c;->e:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcolor/support/v7/widget/c;->v:I

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcolor/support/v7/widget/c;->x:I

    :goto_0
    const/4 v3, 0x1

    if-eq p3, v0, :cond_4

    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq p3, v2, :cond_4

    iput v2, p0, Lcolor/support/v7/widget/c;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v3

    :cond_4
    iget p3, p0, Lcolor/support/v7/widget/c;->y:I

    if-gez p3, :cond_5

    goto :goto_1

    :cond_5
    iget p3, p0, Lcolor/support/v7/widget/c;->A:I

    :goto_1
    if-eq p4, v0, :cond_6

    iget p4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p4, p3, :cond_6

    iput p3, p0, Lcolor/support/v7/widget/c;->A:I

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v3

    :cond_6
    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_7

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v3

    :cond_7
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_8

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v3

    :cond_8
    invoke-direct {p0}, Lcolor/support/v7/widget/c;->c()I

    move-result p1

    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_9

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v3

    :cond_9
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/c;->a(I)I

    move-result p1

    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_a

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    move p5, v3

    :cond_a
    if-eqz p5, :cond_b

    invoke-direct {p0}, Lcolor/support/v7/widget/c;->b()V

    iget-object p1, p0, Lcolor/support/v7/widget/c;->b:Landroid/view/WindowManager;

    iget-object p2, p0, Lcolor/support/v7/widget/c;->f:Landroid/view/View;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 9

    iget v8, p0, Lcolor/support/v7/widget/c;->W:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;ZIIZIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9

    iget v8, p0, Lcolor/support/v7/widget/c;->W:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcolor/support/v7/widget/c;->a(Landroid/view/View;ZIIZIII)V

    return-void
.end method
