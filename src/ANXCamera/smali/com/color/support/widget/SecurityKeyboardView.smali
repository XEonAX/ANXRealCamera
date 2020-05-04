.class public Lcom/color/support/widget/SecurityKeyboardView;
.super Landroid/view/View;
.source "SecurityKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/SecurityKeyboardView$a;,
        Lcom/color/support/widget/SecurityKeyboardView$d;,
        Lcom/color/support/widget/SecurityKeyboardView$c;,
        Lcom/color/support/widget/SecurityKeyboardView$b;
    }
.end annotation


# static fields
.field private static final aI:[I

.field private static aJ:[[[I

.field private static aK:[[I

.field private static aL:I

.field private static final at:I

.field private static au:I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private A:[Lcom/color/support/widget/j$a;

.field private B:Lcom/color/support/widget/SecurityKeyboardView$b;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/graphics/Rect;

.field private Q:J

.field private R:J

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field a:Landroid/os/Handler;

.field private aA:Ljava/lang/StringBuilder;

.field private aB:Z

.field private aC:Landroid/graphics/Rect;

.field private aD:Landroid/graphics/Bitmap;

.field private aE:Z

.field private aF:Landroid/graphics/Canvas;

.field private aG:Landroid/view/accessibility/AccessibilityManager;

.field private aH:Landroid/media/AudioManager;

.field private aM:I

.field private aN:I

.field private aO:Landroid/content/res/ColorStateList;

.field private aP:Landroid/content/res/ColorStateList;

.field private aQ:Landroid/graphics/drawable/Drawable;

.field private aR:Landroid/graphics/drawable/Drawable;

.field private aS:Landroid/graphics/Typeface;

.field private aT:Lcom/color/support/widget/SecurityKeyboardView$c;

.field private aU:I

.field private aV:I

.field private aW:I

.field private aX:I

.field private aY:Z

.field private aZ:I

.field private aa:J

.field private ab:J

.field private ac:[I

.field private ad:Landroid/view/GestureDetector;

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:Lcom/color/support/widget/j$a;

.field private ak:Landroid/graphics/Rect;

.field private al:Z

.field private am:Lcom/color/support/widget/SecurityKeyboardView$d;

.field private an:I

.field private ao:Z

.field private ap:I

.field private aq:F

.field private ar:F

.field private as:Landroid/graphics/drawable/Drawable;

.field private av:[I

.field private aw:I

.field private ax:I

.field private ay:J

.field private az:Z

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Z

.field private bb:F

.field private bc:I

.field private bd:I

.field private be:[Ljava/lang/String;

.field private bf:I

.field private bg:Landroid/content/res/ColorStateList;

.field private bh:I

.field private bi:I

.field private bj:I

.field private bk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/SecurityKeyboardView$a;",
            ">;"
        }
    .end annotation
.end field

.field private bl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private bm:Landroid/graphics/drawable/Drawable;

.field private bn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private e:Lcom/color/support/widget/j;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:F

.field private m:Landroid/widget/TextView;

.field private n:Lcolor/support/v7/widget/e;

.field private o:I

.field private p:I

.field private q:I

.field private final r:[I

.field private s:Landroid/widget/PopupWindow;

.field private t:Landroid/view/View;

.field private u:Lcom/color/support/widget/SecurityKeyboardView;

.field private v:Z

.field private w:Landroid/view/View;

.field private x:I

.field private y:I

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/color/support/widget/j$a;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x5

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->c:[I

    new-array v1, v0, [I

    const v3, 0x101023c

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->d:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->at:I

    const/16 v1, 0xc

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->au:I

    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->aI:[I

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    sget-object v1, Lcom/color/support/widget/SecurityKeyboardView;->aI:[I

    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    if-ne v3, v4, :cond_6

    array-length v1, v1

    new-array v1, v1, [I

    move v4, v2

    :goto_0
    sget v5, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    if-ge v4, v5, :cond_2

    sget-object v5, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v5, v5, v4

    move v6, v2

    :goto_1
    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->aI:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    aget v8, v7, v6

    if-ne v8, v5, :cond_0

    mul-int/lit8 v8, v4, 0x2

    aput v5, v1, v8

    add-int/2addr v8, v0

    add-int/lit8 v9, v6, 0x1

    aget v7, v7, v9

    aput v7, v1, v8

    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    shl-int/2addr v0, v3

    new-array v3, v0, [[[I

    sput-object v3, Lcom/color/support/widget/SecurityKeyboardView;->aJ:[[[I

    new-array v0, v0, [[I

    sput-object v0, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    move v0, v2

    :goto_2
    sget-object v3, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    sget-object v4, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    new-array v3, v3, [I

    aput-object v3, v4, v0

    move v3, v2

    move v4, v3

    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    sget-object v5, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    aget-object v5, v5, v0

    add-int/lit8 v6, v4, 0x1

    aget v7, v1, v3

    aput v7, v5, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$style;->SecurityKeyboardView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, -0x1

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->E:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->G:Z

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->W:I

    const/16 v3, 0xc

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ac:[I

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ak:Landroid/graphics/Rect;

    new-instance v3, Lcom/color/support/widget/SecurityKeyboardView$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/color/support/widget/SecurityKeyboardView$d;-><init>(Lcom/color/support/widget/SecurityKeyboardView$1;)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ap:I

    sget v3, Lcom/color/support/widget/SecurityKeyboardView;->au:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aN:I

    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aU:I

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aV:I

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aW:I

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aX:I

    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aY:Z

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bh:I

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bi:I

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bl:Ljava/util/ArrayList;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView:[I

    sget v0, Lcolor/support/v7/appcompat/R$style;->SecurityKeyboardView:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyBackground:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorVerticalCorrection:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->C:I

    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewLayout:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewOffset:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->p:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewHeight:I

    const/16 v3, 0x50

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->q:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aM:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyTextSize:I

    const/16 v3, 0x12

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->h:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->i:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorLabelTextSize:I

    const/16 v3, 0xe

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->g:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorPopupLayout:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ah:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorShadowColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->k:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorShadowRadius:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->j:F

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyBoardType:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aN:I

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aO:Landroid/content/res/ColorStateList;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorGoTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aP:Landroid/content/res/ColorStateList;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorSpecialKeyBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorEndKeyBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorItemSymbolsColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorSpecialItemBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bm:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->l:F

    new-instance v0, Lcolor/support/v7/widget/e;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    if-eqz p4, :cond_0

    invoke-virtual {p3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->o:I

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    iget-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Lcolor/support/v7/widget/e;->setContentView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p3, v4}, Lcolor/support/v7/widget/e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    :goto_0
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p3, v1}, Lcolor/support/v7/widget/e;->setTouchable(Z)V

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    new-instance p4, Lcom/color/support/widget/SecurityKeyboardView$1;

    invoke-direct {p4, p0}, Lcom/color/support/widget/SecurityKeyboardView$1;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-virtual {p3, p4}, Lcolor/support/v7/widget/e;->a(Lcolor/support/v7/widget/e$b;)V

    new-instance p3, Landroid/widget/PopupWindow;

    invoke-direct {p3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->w:Landroid/view/View;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    int-to-float p4, v1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    const/16 p4, 0xff

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->P:Landroid/graphics/Rect;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->P:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    const/high16 p3, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p3

    float-to-int p3, p4

    iput p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->an:I

    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ao:Z

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "accessibility"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aH:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    invoke-virtual {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboardType(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(II[I)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget v5, v0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iget-object v7, v0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    const v8, 0x7fffffff

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    iget-object v7, v0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v7, v1, v2}, Lcom/color/support/widget/j;->a(II)[I

    move-result-object v7

    array-length v8, v7

    move v13, v5

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    if-ge v5, v8, :cond_a

    aget v14, v7, v5

    aget-object v14, v4, v14

    invoke-virtual {v14, v1, v2}, Lcom/color/support/widget/j$a;->a(II)Z

    move-result v15

    if-eqz v15, :cond_0

    aget v11, v7, v5

    :cond_0
    iget-boolean v6, v0, Lcom/color/support/widget/SecurityKeyboardView;->N:Z

    if-eqz v6, :cond_1

    invoke-virtual {v14, v1, v2}, Lcom/color/support/widget/j$a;->b(II)I

    move-result v6

    iget v10, v0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    if-lt v6, v10, :cond_2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v15, :cond_3

    :cond_2
    move v10, v6

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v10, v6

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_7

    iget-object v6, v14, Lcom/color/support/widget/j$a;->a:[I

    array-length v6, v6

    if-ge v10, v13, :cond_4

    aget v12, v7, v5

    move v13, v10

    :cond_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_3
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    move-object/from16 v16, v4

    array-length v4, v9

    if-ge v15, v4, :cond_8

    aget v4, v9, v15

    if-le v4, v10, :cond_6

    add-int v4, v15, v6

    move-object/from16 v17, v7

    array-length v7, v9

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    invoke-static {v9, v15, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v3

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    invoke-static {v3, v15, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_9

    add-int v7, v15, v4

    iget-object v9, v14, Lcom/color/support/widget/j$a;->a:[I

    aget v9, v9, v4

    aput v9, v3, v7

    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    aput v10, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    goto :goto_3

    :cond_7
    :goto_5
    move-object/from16 v16, v4

    :cond_8
    move-object/from16 v17, v7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    const/4 v6, 0x1

    goto :goto_0

    :cond_a
    const/4 v4, -0x1

    if-ne v11, v4, :cond_b

    move v9, v12

    goto :goto_6

    :cond_b
    move v9, v11

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    if-gt v1, v3, :cond_c

    int-to-float v1, v2

    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->C:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    goto :goto_7

    :cond_c
    move v4, v9

    :goto_7
    return v4
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v0}, Lcom/color/support/widget/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(IIIJ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    aget-object v1, v1, p1

    iget-object v2, v1, Lcom/color/support/widget/j$a;->m:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    iget-object p3, v1, Lcom/color/support/widget/j$a;->m:Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {p2, v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->b(I)V

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/color/support/widget/j$a;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->au:I

    new-array v4, v4, [I

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p2, p3, v4}, Lcom/color/support/widget/SecurityKeyboardView;->a(II[I)I

    iget-boolean p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    const/4 p3, -0x5

    sget-object v0, Lcom/color/support/widget/SecurityKeyboardView;->c:[I

    invoke-interface {p2, p3, v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I[I)V

    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILcom/color/support/widget/j$a;)V

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    :goto_0
    iget-object p2, v1, Lcom/color/support/widget/j$a;->a:[I

    iget p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    aget v2, p2, p3

    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILcom/color/support/widget/j$a;)V

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {p2, v2, v4}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I[I)V

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {p2, v2}, Lcom/color/support/widget/SecurityKeyboardView$b;->b(I)V

    :goto_1
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    iput-wide p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    :cond_3
    return-void
.end method

.method private a(IILcom/color/support/widget/j$a;)V
    .locals 7

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p3, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p3, v1

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p3}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v0, "ABC"

    const/16 v2, 0xa

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, -0x5

    const/4 v6, -0x6

    if-eq p2, v6, :cond_7

    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    int-to-char p3, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->a()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_shift:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboard_view_keycode_low_shift:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_letters:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_9

    const-string v0, "?#+="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_symbol:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_letters:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    const-string v0, "123"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_number:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_1
    if-eq p2, v5, :cond_b

    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_b

    if-ne p2, v6, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_3
    return-void
.end method

.method private a(ILcom/color/support/widget/j$a;)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    const/4 v1, -0x2

    if-eq p1, v1, :cond_6

    const/4 v1, -0x6

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    const-string v2, ""

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    invoke-interface {v0, v2, p1}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    const-string p1, " "

    invoke-interface {v0, p1, v3}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    invoke-interface {v0, v2, p1}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p2, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    iget-object p1, p2, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    invoke-interface {p2, p1, v3}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/lit16 p2, v0, 0x4000

    goto :goto_0

    :cond_0
    and-int/lit16 p2, v0, -0x4001

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(JI)V
    .locals 8

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v1, v1, p3

    iget-object v2, v1, Lcom/color/support/widget/j$a;->a:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    iput-boolean v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    iget-wide v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    add-long/2addr v6, v3

    cmp-long p1, p1, v6

    if-gez p1, :cond_1

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    if-ne p3, p1, :cond_1

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    add-int/2addr p1, v5

    iget-object p2, v1, Lcom/color/support/widget/j$a;->a:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    return-void

    :cond_1
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    add-long/2addr v0, v3

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    if-eq p3, p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    :cond_4
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 11

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p2

    iget v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    mul-float v8, v0, v7

    add-float/2addr v6, v8

    iget v9, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    mul-float/2addr v9, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v9, v6

    add-float/2addr v9, v0

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    mul-float/2addr v7, v8

    add-float/2addr v10, v7

    add-float v7, v10, v0

    invoke-virtual {v3, v4, v6, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3, v7}, Lcom/color/support/widget/SecurityKeyboardView$a;->b(F)V

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3, v10}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v2}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->bi:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v6, v1

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    add-float/2addr v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    add-float/2addr v4, v6

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/color/support/widget/SecurityKeyboardView;->a(IIIJ)V

    return-void
.end method

.method private a(Lcom/color/support/widget/j;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    if-nez p1, :cond_1

    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    iget v4, v3, Lcom/color/support/widget/j$a;->e:I

    iget v5, v3, Lcom/color/support/widget/j$a;->f:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Lcom/color/support/widget/j$a;->g:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ah:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->C:I

    neg-int v4, v3

    if-lt v2, v4, :cond_0

    add-int/2addr v2, v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v7, 0x0

    invoke-direct {v6, v1, v2, v7}, Lcom/color/support/widget/SecurityKeyboardView;->a(II[I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->h()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-nez v9, :cond_4

    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v13, v9

    sub-int/2addr v13, v11

    if-eq v8, v13, :cond_4

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    if-eqz v0, :cond_3

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    if-eq v0, v12, :cond_3

    array-length v1, v9

    sub-int/2addr v1, v11

    if-ne v0, v1, :cond_3

    aget-object v0, v9, v0

    iget-boolean v0, v0, Lcom/color/support/widget/j$a;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    aget-object v0, v0, v1

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    if-ne v1, v12, :cond_1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    invoke-virtual {v0, v11}, Lcom/color/support/widget/j$a;->a(Z)V

    iput v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    iput-boolean v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    :cond_2
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    invoke-virtual {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    :cond_3
    return v10

    :cond_4
    move/from16 v9, p2

    iput-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->al:Z

    if-nez v3, :cond_5

    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    invoke-virtual {v9}, Lcom/color/support/widget/SecurityKeyboardView$d;->a()V

    :cond_5
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    invoke-virtual {v9, v0}, Lcom/color/support/widget/SecurityKeyboardView$d;->a(Landroid/view/MotionEvent;)V

    iget-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    const/4 v13, 0x3

    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    if-eq v3, v13, :cond_6

    return v11

    :cond_6
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    invoke-virtual {v9, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    const/4 v14, 0x4

    if-eqz v9, :cond_7

    invoke-direct {v6, v12}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    return v11

    :cond_7
    iget-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    if-eqz v9, :cond_8

    if-eq v3, v13, :cond_8

    return v11

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v6, v9, v15}, Lcom/color/support/widget/SecurityKeyboardView;->d(II)I

    move-result v7

    move/from16 v16, v15

    const-wide/16 v14, 0x0

    if-eqz v3, :cond_1a

    if-eq v3, v11, :cond_13

    const/4 v10, 0x2

    if-eq v3, v10, :cond_a

    if-eq v3, v13, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    iput-boolean v11, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    invoke-direct {v6, v12}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    invoke-virtual {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    move/from16 v7, v16

    invoke-direct {v6, v9, v7}, Lcom/color/support/widget/SecurityKeyboardView;->d(II)I

    move-result v0

    if-eq v12, v0, :cond_20

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_20

    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    goto/16 :goto_7

    :cond_a
    if-eq v8, v12, :cond_d

    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ne v3, v12, :cond_b

    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->Q:J

    sub-long v9, v4, v9

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    goto :goto_1

    :cond_b
    if-ne v8, v3, :cond_c

    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    iget-wide v13, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long v13, v4, v13

    add-long/2addr v9, v13

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    move/from16 v17, v11

    goto :goto_2

    :cond_c
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    if-ne v3, v12, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->J:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->T:I

    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->K:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->U:I

    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    add-long/2addr v9, v4

    iget-wide v11, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long/2addr v9, v11

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    :cond_d
    :goto_1
    const/16 v17, 0x0

    :goto_2
    if-nez v17, :cond_e

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, -0x1

    if-eq v8, v3, :cond_f

    iget-object v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    sget v9, Lcom/color/support/widget/SecurityKeyboardView;->at:I

    int-to-long v9, v9

    invoke-virtual {v8, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_e
    const/4 v3, -0x1

    :cond_f
    :goto_3
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-eq v0, v3, :cond_10

    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    :cond_10
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    iput-wide v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    if-eq v7, v0, :cond_11

    if-eq v3, v7, :cond_11

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_11

    const/4 v0, 0x1

    invoke-direct {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(IZ)V

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    if-eqz v3, :cond_11

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    invoke-virtual {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    :cond_11
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    const/4 v3, -0x1

    if-eq v3, v0, :cond_12

    if-eq v7, v0, :cond_12

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    :cond_12
    iput v7, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    goto/16 :goto_7

    :cond_13
    move/from16 v7, v16

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ne v8, v0, :cond_14

    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long v12, v4, v12

    add-long/2addr v10, v12

    iput-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    goto :goto_4

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    add-long/2addr v10, v4

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long/2addr v10, v12

    iput-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    :goto_4
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_15

    const-wide/16 v12, 0x46

    cmp-long v0, v10, v12

    if-gez v0, :cond_15

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_16

    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->T:I

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->U:I

    move v10, v0

    move v11, v1

    goto :goto_5

    :cond_15
    const/4 v3, -0x1

    :cond_16
    move v10, v1

    move v11, v2

    :goto_5
    invoke-direct {v6, v3}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ac:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    if-ne v0, v3, :cond_17

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    if-nez v0, :cond_17

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    if-nez v0, :cond_17

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    move-object/from16 v0, p0

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/SecurityKeyboardView;->a(IIIJ)V

    :cond_17
    invoke-virtual {v6, v8}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    const/4 v0, -0x1

    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {v6, v9, v7}, Lcom/color/support/widget/SecurityKeyboardView;->d(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_19

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I[I)V

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/color/support/widget/SecurityKeyboardView$b;->b(I)V

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    if-eqz v1, :cond_19

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-interface {v1, v0, v3}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    :cond_19
    move v1, v10

    move v2, v11

    goto/16 :goto_7

    :cond_1a
    move v3, v10

    iput-boolean v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->L:I

    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->M:I

    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->T:I

    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->U:I

    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    const/4 v3, -0x1

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->W:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->Q:J

    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->Q:J

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    invoke-direct {v6, v4, v5, v8}, Lcom/color/support/widget/SecurityKeyboardView;->a(JI)V

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    if-eq v8, v3, :cond_1b

    iget-object v5, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/color/support/widget/j$a;->a:[I

    const/4 v9, 0x0

    aget v10, v5, v9

    move v9, v10

    goto :goto_6

    :cond_1b
    const/4 v9, 0x0

    :goto_6
    invoke-interface {v4, v9}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I)V

    iget v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-eq v4, v3, :cond_1c

    iput v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    :cond_1c
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1d

    iput-boolean v5, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    :cond_1d
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ltz v3, :cond_1e

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v3, v4, v3

    iget-boolean v3, v3, Lcom/color/support/widget/j$a;->r:Z

    if-eqz v3, :cond_1e

    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v3, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const-wide/16 v9, 0x190

    invoke-virtual {v4, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->l()Z

    iget-boolean v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    if-eqz v3, :cond_1e

    const/4 v3, -0x1

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    goto :goto_7

    :cond_1e
    const/4 v3, -0x1

    iget v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-eq v4, v3, :cond_1f

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->at:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1f
    invoke-direct {v6, v8}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    if-eq v0, v7, :cond_20

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_20

    iput v7, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    const/4 v0, 0x1

    invoke-direct {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(IZ)V

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    if-eqz v3, :cond_20

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_20

    invoke-virtual {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    :cond_20
    :goto_7
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->J:I

    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->K:I

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/color/support/widget/j$a;)Ljava/lang/CharSequence;
    .locals 3

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/color/support/widget/j$a;->a:[I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->l()Z

    move-result p0

    return p0
.end method

.method private c(I)V
    .locals 9

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_1

    array-length v7, v2

    if-le v7, v0, :cond_1

    aget-object v7, v2, v0

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v7, v3}, Lcom/color/support/widget/j$a;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    iget-object v3, v7, Lcom/color/support/widget/j$a;->a:[I

    aget v3, v3, v5

    const/16 v7, 0x100

    invoke-direct {p0, v7, v3}, Lcom/color/support/widget/SecurityKeyboardView;->c(II)V

    const/high16 v7, 0x10000

    invoke-direct {p0, v7, v3}, Lcom/color/support/widget/SecurityKeyboardView;->c(II)V

    :cond_1
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    if-eq v3, v6, :cond_2

    array-length v7, v2

    if-le v7, v3, :cond_2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/color/support/widget/j$a;->a()V

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    invoke-virtual {p0, v3}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    iget-object v3, v2, Lcom/color/support/widget/j$a;->a:[I

    aget v3, v3, v5

    const/16 v7, 0x80

    invoke-direct {p0, v7, v3, v2}, Lcom/color/support/widget/SecurityKeyboardView;->a(IILcom/color/support/widget/j$a;)V

    const v7, 0x8000

    invoke-direct {p0, v7, v3, v2}, Lcom/color/support/widget/SecurityKeyboardView;->a(IILcom/color/support/widget/j$a;)V

    :cond_2
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    invoke-direct {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->e(I)Z

    move-result v2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v6, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v7, 0x4b

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eq p1, v6, :cond_5

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->d(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private c(II)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_shift:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_mode_change:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_cancel:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_done:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_alt:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->al:Z

    return p0
.end method

.method private d(II)I
    .locals 5

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    int-to-float v3, p2

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v4}, Lcom/color/support/widget/SecurityKeyboardView$a;->a()F

    move-result v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v4}, Lcom/color/support/widget/SecurityKeyboardView$a;->b()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic d(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$d;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    return-object p0
.end method

.method private d(I)V
    .locals 11

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    if-ltz p1, :cond_a

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object p1, v1, p1

    iget-object v1, p1, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/color/support/widget/j$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/color/support/widget/j$a;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v6, p1, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v4, v4, v4, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(Lcom/color/support/widget/j$a;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, p1, Lcom/color/support/widget/j$a;->a:[I

    array-length v1, v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->h:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->o:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->measure(II)V

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aM:I

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->q:I

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    iget-boolean v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->E:Z

    if-nez v6, :cond_5

    iget v6, p1, Lcom/color/support/widget/j$a;->i:I

    iget v7, p1, Lcom/color/support/widget/j$a;->e:I

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->aM:I

    div-int/2addr v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget v6, p1, Lcom/color/support/widget/j$a;->j:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->p:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v3

    rsub-int v6, v6, 0xa0

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    :goto_2
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    invoke-virtual {p0, v6}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationInWindow([I)V

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v7, v6, v5

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->x:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    aget v7, v6, v2

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->y:I

    add-int/2addr v7, v8

    aput v7, v6, v2

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p1, Lcom/color/support/widget/j$a;->q:I

    if-eqz v7, :cond_6

    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->d:[I

    goto :goto_3

    :cond_6
    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->EMPTY_STATE_SET:[I

    :goto_3
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget-object v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v8, v7, v5

    add-int/2addr v6, v8

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    aget v8, v7, v2

    add-int/2addr v6, v8

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    invoke-virtual {p0, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationOnScreen([I)V

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    iget-object v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v2, v7, v2

    add-int/2addr v6, v2

    if-gez v6, :cond_8

    iget v2, p1, Lcom/color/support/widget/j$a;->i:I

    iget v6, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v6

    div-int/2addr v6, v3

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v2, v6, :cond_7

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget p1, p1, Lcom/color/support/widget/j$a;->e:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget p1, p1, Lcom/color/support/widget/j$a;->e:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    :goto_4
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->w:Landroid/view/View;

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_5
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_6
    return-void
.end method

.method static synthetic e(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->an:I

    return p0
.end method

.method private e(I)Z
    .locals 7

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x4b

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/color/support/widget/j$a;->a:[I

    aget v0, v0, v1

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object p1, v6, p1

    iget-object p1, p1, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    if-eq v0, v5, :cond_2

    const/4 p1, -0x5

    if-eq v0, p1, :cond_2

    const/4 p1, -0x2

    if-eq v0, p1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/16 p1, 0x20

    if-eq v0, p1, :cond_2

    const/4 p1, -0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1
.end method

.method static synthetic f(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ao:Z

    return p0
.end method

.method static synthetic g(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->W:I

    return p0
.end method

.method static synthetic h(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->L:I

    return p0
.end method

.method static synthetic i(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->M:I

    return p0
.end method

.method static synthetic j(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    return-object p0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/color/support/widget/SecurityKeyboardView$3;

    invoke-direct {v2, p0}, Lcom/color/support/widget/SecurityKeyboardView$3;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    iput-boolean v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    :cond_3
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->ak:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/color/support/widget/SecurityKeyboardView;->P:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v7

    iget-object v8, v0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget-object v10, v0, Lcom/color/support/widget/SecurityKeyboardView;->aj:Lcom/color/support/widget/j$a;

    iget v11, v0, Lcom/color/support/widget/SecurityKeyboardView;->i:I

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v10, :cond_5

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->i:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->left:I

    if-gt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->j:I

    add-int/2addr v11, v7

    sub-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-gt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->i:I

    iget v12, v10, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v11, v12

    add-int/2addr v11, v6

    add-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->right:I

    if-lt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->j:I

    iget v12, v10, Lcom/color/support/widget/j$a;->f:I

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    add-int/2addr v11, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v11, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    array-length v1, v8

    move v11, v3

    :goto_1
    if-ge v11, v1, :cond_1d

    aget-object v13, v8, v11

    if-eqz v2, :cond_6

    if-eq v10, v13, :cond_6

    move/from16 v17, v1

    move/from16 v16, v2

    goto/16 :goto_b

    :cond_6
    invoke-virtual {v13}, Lcom/color/support/widget/j$a;->b()[I

    move-result-object v14

    iget-object v15, v0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_8

    iget-object v15, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v15, v15, v3

    const/4 v12, -0x1

    if-eq v15, v12, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v15, -0x5

    if-eq v12, v15, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v15, 0x20

    if-eq v12, v15, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v15, -0x2

    if-eq v12, v15, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v15, -0x6

    if-eq v12, v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v12

    if-eqz v12, :cond_8

    add-int/lit8 v12, v1, -0x2

    if-eq v11, v12, :cond_7

    add-int/lit8 v12, v1, -0x6

    if-eq v11, v12, :cond_7

    add-int/lit8 v12, v1, -0xa

    if-ne v11, v12, :cond_8

    :cond_7
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    move/from16 v17, v1

    const/16 v15, 0xa

    goto :goto_3

    :cond_8
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_9

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v15, 0xa

    if-ne v12, v15, :cond_a

    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_9
    const/16 v15, 0xa

    :cond_a
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    :goto_2
    move/from16 v17, v1

    :goto_3
    iget-object v1, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v1, v1, v3

    if-ne v1, v15, :cond_b

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aP:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v14, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aO:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v14, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    :goto_4
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v12, :cond_c

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_c
    iget-object v1, v13, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    iget-object v1, v13, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v15, v13, Lcom/color/support/widget/j$a;->e:I

    iget v3, v14, Landroid/graphics/Rect;->right:I

    if-ne v15, v3, :cond_e

    iget v3, v13, Lcom/color/support/widget/j$a;->f:I

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v14, :cond_f

    :cond_e
    iget v3, v13, Lcom/color/support/widget/j$a;->e:I

    iget v14, v13, Lcom/color/support/widget/j$a;->f:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v15, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_f
    iget v3, v13, Lcom/color/support/widget/j$a;->i:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v14, v13, Lcom/color/support/widget/j$a;->j:I

    add-int/2addr v14, v7

    int-to-float v14, v14

    invoke-virtual {v4, v3, v14}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v12, :cond_10

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    if-eqz v1, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v14, 0x20

    if-eq v12, v14, :cond_12

    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aU:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_8

    :cond_11
    const/16 v14, 0x20

    :cond_12
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    if-ne v12, v14, :cond_13

    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aW:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    :cond_13
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x2

    if-eq v12, v14, :cond_16

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v14, 0xa

    if-eq v12, v14, :cond_16

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x1

    if-eq v12, v14, :cond_16

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x6

    if-ne v12, v14, :cond_14

    goto :goto_6

    :cond_14
    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aV:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    :cond_15
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    :cond_16
    :goto_6
    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aX:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v14, 0xa

    if-eq v12, v14, :cond_18

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x2

    if-eq v12, v14, :cond_18

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x6

    if-ne v12, v14, :cond_17

    goto :goto_7

    :cond_17
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    :cond_18
    :goto_7
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :goto_8
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    if-eqz v12, :cond_19

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_19
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v3, 0xa

    if-ne v12, v3, :cond_1a

    iget-object v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1a
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v12, v13, Lcom/color/support/widget/j$a;->f:I

    iget v14, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v12, v14

    div-int/lit8 v12, v12, 0x2

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v12, v3

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    int-to-float v3, v12

    iget v12, v13, Lcom/color/support/widget/j$a;->e:I

    iget v14, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iget v14, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v14

    div-int/lit8 v12, v12, 0x2

    iget v14, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v14

    int-to-float v12, v12

    invoke-virtual {v4, v1, v12, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_1b
    iget-object v1, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    iget v1, v13, Lcom/color/support/widget/j$a;->e:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v13, Lcom/color/support/widget/j$a;->f:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v12

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v12

    iget-object v12, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    iget v12, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v12

    int-to-float v12, v1

    int-to-float v14, v3

    invoke-virtual {v4, v12, v14}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    iget-object v14, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    iget-object v15, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    :cond_1c
    :goto_9
    move/from16 v16, v2

    :goto_a
    iget v1, v13, Lcom/color/support/widget/j$a;->i:I

    neg-int v1, v1

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, v13, Lcom/color/support/widget/j$a;->j:I

    neg-int v2, v2

    sub-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move/from16 v1, v17

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1d
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aj:Lcom/color/support/widget/j$a;

    iget-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    if-eqz v1, :cond_1e

    iget v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->l:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1e
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aB:Z

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method static synthetic k(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    return-void
.end method

.method static synthetic l(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bh:I

    return p0
.end method

.method private l()Z
    .locals 7

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    aget-object v0, v0, v1

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget v3, v0, Lcom/color/support/widget/j$a;->i:I

    iget v4, v0, Lcom/color/support/widget/j$a;->j:I

    iget-wide v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/color/support/widget/SecurityKeyboardView;->a(IIIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic m(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    return-void
.end method

.method private p()V
    .locals 7

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v0, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bm:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    new-instance v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    iget-object v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->bl:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v4, p0, v5, v6}, Lcom/color/support/widget/SecurityKeyboardView$a;-><init>(Lcom/color/support/widget/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    sget-object v3, Lcom/color/support/widget/SecurityKeyboardView;->aJ:[[[I

    sget-object v4, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    array-length v5, v4

    new-array v5, v5, [[I

    aput-object v5, v3, v2

    aget-object v3, v3, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v4}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setItemRestore(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(IZ)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v1}, Lcom/color/support/widget/SecurityKeyboardView$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aj:Lcom/color/support/widget/j$a;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    iget v1, p1, Lcom/color/support/widget/j$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/color/support/widget/j$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/color/support/widget/j$a;->i:I

    iget v4, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/color/support/widget/j$a;->j:I

    iget v5, p1, Lcom/color/support/widget/j$a;->f:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->k()V

    iget v0, p1, Lcom/color/support/widget/j$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/color/support/widget/j$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/color/support/widget/j$a;->i:I

    iget v3, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/color/support/widget/j$a;->j:I

    iget p1, p1, Lcom/color/support/widget/j$a;->f:I

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->x:I

    iput p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->y:I

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p1}, Lcolor/support/v7/widget/e;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p1}, Lcolor/support/v7/widget/e;->dismiss()V

    :cond_0
    return-void
.end method

.method protected a(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->b(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/widget/j;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/color/support/widget/j$a;)Z
    .locals 8

    iget v2, p1, Lcom/color/support/widget/j$a;->q:I

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ah:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    new-instance v1, Lcom/color/support/widget/SecurityKeyboardView$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/SecurityKeyboardView$4;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$b;)V

    iget-object v0, p1, Lcom/color/support/widget/j$a;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    new-instance v7, Lcom/color/support/widget/j;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/color/support/widget/j$a;->n:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/j;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/color/support/widget/j;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0, v2}, Lcom/color/support/widget/j;-><init>(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, v7}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/j;)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setPopupParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationInWindow([I)V

    iget v0, p1, Lcom/color/support/widget/j$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    iget v0, p1, Lcom/color/support/widget/j$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    iget p1, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    if-gez p1, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    invoke-virtual {v1, v3, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(II)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->a()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/color/support/widget/SecurityKeyboardView;->a(Z)Z

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    return v2

    :cond_4
    return v6
.end method

.method public a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/j;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aB:Z

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    return-void
.end method

.method protected b(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected b(I)[I
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/color/support/widget/SecurityKeyboardView;->b(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x401

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method protected b(II)[I
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    or-int/lit8 v1, v1, 0x8

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x1

    :cond_2
    sget-object v0, Lcom/color/support/widget/SecurityKeyboardView;->aJ:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    array-length v0, p1

    add-int/2addr v0, p2

    new-array p2, v0, [I

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-array p2, p2, [I

    :goto_1
    return-object p2
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->b()V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->a()V

    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->c()V

    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->d()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {v0}, Lcolor/support/v7/widget/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {v0}, Lcolor/support/v7/widget/e;->dismiss()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getKeyboard()Lcom/color/support/widget/j;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/color/support/widget/SecurityKeyboardView$b;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aY:Z

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v0}, Lcom/color/support/widget/j;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->j()V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/color/support/widget/SecurityKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView$2;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->g()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->k()V

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bf:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/graphics/Canvas;I)V

    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {p2}, Lcom/color/support/widget/j;->b()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ap:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v11, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2, v10}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    if-ne v1, v11, :cond_0

    invoke-direct {p0, p1, v11}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_0

    :cond_0
    move v11, v3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->aq:F

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->ar:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1, v11}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    invoke-direct {p0, p1, v10}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aq:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ar:F

    :cond_3
    :goto_0
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ap:I

    return v11
.end method

.method public setKeyboard(Lcom/color/support/widget/j;)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v0}, Lcom/color/support/widget/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/color/support/widget/j$a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/support/widget/j$a;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/j;)V

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 1

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_lower_letter_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aU:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_space_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aW:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_lower_letter_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aV:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_end_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aX:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_numeric_keyboard_special_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bh:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_password_numeric_keyboard_line_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$array;->color_security_numeric_keyboard_special_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_numeric_keyboard_special_symbol_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bf:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_password_numeric_delete_dimen_keyWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_password_numeric_special_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/j;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->p()V

    return-void
.end method

.method public setKeyboardViewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aY:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    return-void
.end method

.method public setOnKeyboardCharListener(Lcom/color/support/widget/SecurityKeyboardView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->w:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->N:Z

    return-void
.end method

.method public setVerticalCorrection(I)V
    .locals 0

    return-void
.end method
