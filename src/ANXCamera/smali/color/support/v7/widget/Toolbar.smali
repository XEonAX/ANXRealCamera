.class public Lcolor/support/v7/widget/Toolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/Toolbar$a;,
        Lcolor/support/v7/widget/Toolbar$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Ljava/lang/CharSequence;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final H:[I

.field private I:Landroidx/appcompat/widget/Toolbar$c;

.field private final J:Landroidx/appcompat/widget/ActionMenuView$e;

.field private K:Landroidx/appcompat/widget/av;

.field private L:Lcolor/support/v7/widget/Toolbar$a;

.field private M:Landroidx/appcompat/view/menu/m$a;

.field private N:Landroidx/appcompat/view/menu/g$a;

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:I

.field private S:[I

.field private T:F

.field private U:I

.field private V:I

.field private final W:[I

.field private final aa:Ljava/lang/Runnable;

.field private final ab:Lcolor/support/v7/internal/widget/f;

.field private ac:I

.field private ad:F

.field private ae:F

.field private af:Z

.field private ag:Lcolor/support/design/widget/a;

.field e:Landroid/view/View;

.field f:Z

.field private g:Landroidx/appcompat/widget/ActionMenuView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/content/Context;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private final y:Lcolor/support/v7/internal/widget/d;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcolor/support/v7/internal/widget/d;

    invoke-direct {v0}, Lcolor/support/v7/internal/widget/d;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    const v0, 0x800013

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->z:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->H:[I

    new-instance v1, Lcolor/support/v7/widget/Toolbar$1;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/Toolbar$1;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->J:Landroidx/appcompat/widget/ActionMenuView$e;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    new-array v2, v0, [I

    iput-object v2, p0, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v2, 0x0

    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->T:F

    new-array v2, v0, [I

    iput-object v2, p0, Lcolor/support/v7/widget/Toolbar;->W:[I

    new-instance v2, Lcolor/support/v7/widget/Toolbar$2;

    invoke-direct {v2, p0}, Lcolor/support/v7/widget/Toolbar$2;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    iput-object v2, p0, Lcolor/support/v7/widget/Toolbar;->aa:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->f:Z

    const/4 v2, -0x1

    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->ac:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->Toolbar:[I

    invoke-static {v3, p2, v4, p3, v1}, Landroidx/appcompat/widget/au;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/au;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->g(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleType:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->a(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->R:I

    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->g(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->q:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportSubtitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->g(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->r:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget v3, p0, Lcolor/support/v7/widget/Toolbar;->z:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/au;->c(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->z:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportButtonGravity:I

    const/16 v3, 0x30

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/au;->c(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->s:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMargins:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->d(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->x:I

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->w:I

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->v:I

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->u:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginStart:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->d(II)I

    move-result p3

    if-ltz p3, :cond_1

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->u:I

    :cond_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginEnd:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->d(II)I

    move-result p3

    if-ltz p3, :cond_2

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->v:I

    :cond_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginTop:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->d(II)I

    move-result p3

    if-ltz p3, :cond_3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->w:I

    :cond_3
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitleMarginBottom:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->d(II)I

    move-result p3

    if-ltz p3, :cond_4

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->x:I

    :cond_4
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportMaxButtonHeight:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->e(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->t:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetStart:I

    const/high16 v2, -0x80000000

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->d(II)I

    move-result p3

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetEnd:I

    invoke-virtual {p2, v3, v2}, Landroidx/appcompat/widget/au;->d(II)I

    move-result v3

    sget v4, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetLeft:I

    invoke-virtual {p2, v4, v1}, Landroidx/appcompat/widget/au;->e(II)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportContentInsetRight:I

    invoke-virtual {p2, v5, v1}, Landroidx/appcompat/widget/au;->e(II)I

    move-result v5

    iget-object v6, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v6, v4, v5}, Lcolor/support/v7/internal/widget/d;->b(II)V

    if-ne p3, v2, :cond_5

    if-eq v3, v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v2, p3, v3}, Lcolor/support/v7/internal/widget/d;->a(II)V

    :cond_6
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportCollapseIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->l:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportCollapseContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->m:Ljava/lang/CharSequence;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportTitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportSubtitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->o:Landroid/content/Context;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportPopupTheme:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->g(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setPopupTheme(I)V

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportNavigationIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_supportNavigationContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_android_minHeight:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->e(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->P:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_showBottomDivider:I

    invoke-virtual {p2, v2, v1}, Landroidx/appcompat/widget/au;->a(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_minTitleTextSize:I

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/au;->g(I)Z

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v2, :cond_b

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_minTitleTextSize:I

    iget v4, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/widget/au;->e(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->ae:F

    goto :goto_0

    :cond_b
    iget v2, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcolor/support/v7/widget/Toolbar;->ae:F

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x1010095

    aput v4, v3, v1

    iget v4, p0, Lcolor/support/v7/widget/Toolbar;->q:I

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_c

    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr p3, v4

    float-to-int p3, p3

    invoke-virtual {v3, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->ad:F

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    iget p3, p0, Lcolor/support/v7/widget/Toolbar;->R:I

    if-ne p3, v2, :cond_d

    iget p3, p0, Lcolor/support/v7/widget/Toolbar;->ad:F

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, v2, v0}, Lcom/color/support/d/b;->a(FFI)F

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->ad:F

    iget p3, p0, Lcolor/support/v7/widget/Toolbar;->ae:F

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, v2, v0}, Lcom/color/support/d/b;->a(FFI)F

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->ae:F

    :cond_d
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->toolbar_normal_menu_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->U:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->toolbar_overflow_menu_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/Toolbar;->V:I

    new-instance p3, Lcolor/support/design/widget/a;

    invoke-direct {p3, p0}, Lcolor/support/design/widget/a;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->g(I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerBackgroundColor:I

    sget v2, Lcolor/support/design/widget/a;->b:I

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/au;->b(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lcolor/support/design/widget/a;->b(I)V

    :cond_e
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->g(I)Z

    move-result p3

    if-eqz p3, :cond_f

    iget-object p3, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    sget v0, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_dividerColor:I

    sget v2, Lcolor/support/design/widget/a;->a:I

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/au;->b(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lcolor/support/design/widget/a;->a(I)V

    :cond_f
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleCenter:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->g(I)Z

    move-result p3

    if-eqz p3, :cond_10

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->Toolbar_titleCenter:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/au;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    :cond_10
    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/Toolbar;->setWillNotDraw(Z)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/au;->b()V

    invoke-static {p1}, Lcolor/support/v7/internal/widget/f;->a(Landroid/content/Context;)Lcolor/support/v7/internal/widget/f;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->ab:Lcolor/support/v7/internal/widget/f;

    return-void
.end method

.method private a(Landroid/view/View;I)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Lcolor/support/v7/widget/Toolbar$b;->a:I

    invoke-direct {p0, v2}, Lcolor/support/v7/widget/Toolbar;->b(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6

    const/16 v3, 0x50

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v4}, Lcolor/support/design/widget/a;->b()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    sub-int/2addr v3, v4

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    if-ge v4, v5, :cond_2

    iget v4, v0, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    goto :goto_2

    :cond_2
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iget p1, v0, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    if-ge v3, p1, :cond_3

    iget p1, v0, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    :goto_2
    add-int/2addr p2, v4

    return p2

    :cond_4
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v1}, Lcolor/support/design/widget/a;->b()I

    move-result v1

    :cond_5
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    iget p1, v0, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    return v2

    :cond_6
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    instance-of p6, v0, Lcolor/support/v7/widget/Toolbar$b;

    if-eqz p6, :cond_0

    move-object p6, v0

    check-cast p6, Lcolor/support/v7/widget/Toolbar$b;

    iget-boolean p6, p6, Lcolor/support/v7/widget/Toolbar$b;->d:Z

    if-eqz p6, :cond_0

    iget-boolean p6, p0, Lcolor/support/v7/widget/Toolbar;->f:Z

    if-eqz p6, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result p3

    add-int/2addr p3, v5

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p3, p6}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    if-eqz v2, :cond_2

    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    iget v1, v0, Lcolor/support/v7/widget/Toolbar$b;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-direct {p0, p1, p4}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Lcolor/support/v7/widget/Toolbar$b;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    return p2
.end method

.method private a(Ljava/util/List;[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, p2

    move p2, v0

    move v3, v1

    move v1, p2

    :goto_0
    if-ge p2, v2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcolor/support/v7/widget/Toolbar$b;

    iget v7, v6, Lcolor/support/v7/widget/Toolbar$b;->leftMargin:I

    sub-int/2addr v7, v3

    iget v3, v6, Lcolor/support/v7/widget/Toolbar$b;->rightMargin:I

    sub-int/2addr v3, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic a(Lcolor/support/v7/widget/Toolbar;)Landroidx/appcompat/widget/Toolbar$c;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->I:Landroidx/appcompat/widget/Toolbar$c;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->c:I

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Lcolor/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->V:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->V:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->U:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->U:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->U:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->U:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/Toolbar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    invoke-static {p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v4

    invoke-static {p2, v4}, Landroidx/core/g/c;->a(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$b;

    iget v2, v1, Lcolor/support/v7/widget/Toolbar$b;->c:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcolor/support/v7/widget/Toolbar$b;->a:I

    invoke-direct {p0, v1}, Lcolor/support/v7/widget/Toolbar;->c(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$b;

    iget v4, v2, Lcolor/support/v7/widget/Toolbar$b;->c:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$b;->a:I

    invoke-direct {p0, v2}, Lcolor/support/v7/widget/Toolbar;->c(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private a([I)V
    .locals 8

    invoke-static {p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v4}, Lcolor/support/v7/internal/widget/d;->a()I

    move-result v4

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p1, v1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v5}, Lcolor/support/v7/internal/widget/d;->b()I

    move-result v5

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p1, v2

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v4}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    move v6, v4

    move v4, v1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    move v6, v1

    move v5, v2

    :goto_1
    iget-object v7, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_3

    iget-object v7, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    aget v0, p1, v1

    add-int/2addr v0, v6

    aput v0, p1, v1

    aget v0, p1, v2

    sub-int/2addr v0, v4

    aput v0, p1, v2

    goto :goto_3

    :cond_4
    aget v0, p1, v1

    add-int/2addr v0, v4

    aput v0, p1, v1

    aget v0, p1, v2

    sub-int/2addr v0, v6

    aput v0, p1, v2

    :cond_5
    :goto_3
    return-void
.end method

.method private b(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->z:I

    and-int/lit8 p1, p1, 0x70

    :cond_0
    return p1
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    iget v1, v0, Lcolor/support/v7/widget/Toolbar$b;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-direct {p0, p1, p4}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Lcolor/support/v7/widget/Toolbar$b;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method static synthetic b(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->r()V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(I)I
    .locals 4

    invoke-static {p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/g/c;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method private c(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/g/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {p1}, Landroidx/core/g/f;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic c(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private d(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic d(Lcolor/support/v7/widget/Toolbar;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/Toolbar;->s:I

    return p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    iget v0, v0, Lcolor/support/v7/widget/Toolbar$b;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/g/u;->j(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->P:I

    return v0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->p()V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->L:Lcolor/support/v7/widget/Toolbar$a;

    if-nez v1, :cond_0

    new-instance v1, Lcolor/support/v7/widget/Toolbar$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/widget/Toolbar$a;-><init>(Lcolor/support/v7/widget/Toolbar;Lcolor/support/v7/widget/Toolbar$1;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->L:Lcolor/support/v7/widget/Toolbar$a;

    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->L:Lcolor/support/v7/widget/Toolbar$a;

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->o:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_1

    new-instance v0, Lcolor/support/v7/widget/a;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcolor/support/v7/widget/Toolbar;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->J:Landroidx/appcompat/widget/ActionMenuView$e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->M:Landroidx/appcompat/view/menu/m$a;

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->N:Landroidx/appcompat/view/menu/g$a;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    iget-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->width:I

    :goto_0
    const v1, 0x800005

    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->s:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->a:I

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcolor/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->s:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->a:I

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_toolbar_menu_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcolor/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->s:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->a:I

    const/4 v1, 0x2

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$b;->c:I

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcolor/support/v7/widget/Toolbar$3;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/Toolbar$3;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private s()Z
    .locals 5

    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcolor/support/v7/widget/Toolbar$b;

    iget v4, v4, Lcolor/support/v7/widget/Toolbar$b;->c:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/util/AttributeSet;)Lcolor/support/v7/widget/Toolbar$b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$b;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/internal/widget/d;->a(II)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Lcolor/support/v7/widget/Toolbar;->q:I

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget p1, p0, Lcolor/support/v7/widget/Toolbar;->R:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/color/support/d/b;->a(FFI)F

    move-result p1

    iget-object p2, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->ad:F

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->T:F

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Lcolor/support/v7/widget/Toolbar$b;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->f:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcolor/support/v7/widget/Toolbar;->f:Z

    new-instance v2, Lcolor/support/v7/widget/Toolbar$b;

    invoke-direct {v2, p2}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Lcolor/support/v7/widget/Toolbar$b;)V

    iput-boolean v1, v2, Lcolor/support/v7/widget/Toolbar$b;->d:Z

    iput v0, v2, Lcolor/support/v7/widget/Toolbar$b;->c:I

    invoke-virtual {p0, p1, v0, v2}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->M:Landroidx/appcompat/view/menu/m$a;

    iput-object p2, p0, Lcolor/support/v7/widget/Toolbar;->N:Landroidx/appcompat/view/menu/g$a;

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/util/AttributeSet;)Lcolor/support/v7/widget/Toolbar$b;
    .locals 2

    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$b;
    .locals 1

    instance-of v0, p1, Lcolor/support/v7/widget/Toolbar$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    check-cast p1, Lcolor/support/v7/widget/Toolbar$b;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Lcolor/support/v7/widget/Toolbar$b;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/a$a;

    if-eqz v0, :cond_1

    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    check-cast p1, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Landroidx/appcompat/app/a$a;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Lcolor/support/v7/widget/Toolbar;->r:I

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcolor/support/v7/widget/Toolbar$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->i()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->L:Lcolor/support/v7/widget/Toolbar$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/util/AttributeSet;)Lcolor/support/v7/widget/Toolbar$b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/v7/widget/Toolbar$b;

    move-result-object p1

    return-object p1
.end method

.method public getBottomDividerHeight()I
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0}, Lcolor/support/design/widget/a;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/d;->d()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/d;->a()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/d;->b()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/d;->c()I

    move-result v0

    return v0
.end method

.method public getIsTitleCenterStyle()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->o()V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->p:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->B:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->A:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTotalScaleRange()I
    .locals 2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->ac:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0}, Landroidx/core/g/u;->j(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->ac:I

    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->ac:I

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v1}, Lcolor/support/design/widget/a;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->ac:I

    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->ac:I

    return v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/ab;
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->K:Landroidx/appcompat/widget/av;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/av;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/av;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->K:Landroidx/appcompat/widget/av;

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->K:Landroidx/appcompat/widget/av;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->L:Lcolor/support/v7/widget/Toolbar$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected synthetic j()Landroidx/appcompat/widget/Toolbar$b;
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcolor/support/v7/widget/Toolbar$b;
    .locals 2

    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(II)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->t()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->aa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-static {p1}, Landroidx/core/g/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->F:Z

    :cond_0
    iget-boolean v3, p0, Lcolor/support/v7/widget/Toolbar;->F:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Lcolor/support/v7/widget/Toolbar;->F:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->F:Z

    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v5

    iget-boolean v6, v0, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v6}, Lcolor/support/design/widget/a;->b()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    iget-object v11, v0, Lcolor/support/v7/widget/Toolbar;->H:[I

    aput v3, v11, v2

    aput v3, v11, v3

    invoke-direct/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getMinimumHeightCompat()I

    move-result v12

    iget-object v13, v0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    iget-object v13, v0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    :cond_2
    iget-object v13, v0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    :goto_3
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    :cond_4
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    :cond_5
    :goto_4
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    :cond_6
    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v3

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v15

    sub-int v16, v10, v14

    sub-int v15, v15, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v2

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v15

    sub-int/2addr v10, v15

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v0, v14}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v1, :cond_8

    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v0, v14, v10, v11, v12}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    :cond_8
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v0, v14, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    :cond_9
    :goto_6
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {v0, v14}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v1, :cond_a

    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v10, v11, v12}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_7

    :cond_a
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v13, v11, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    :cond_b
    :goto_7
    iget-object v14, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v14

    iget-object v15, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {v0, v15}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v15

    if-eqz v14, :cond_c

    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$b;

    iget v3, v2, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    move/from16 p3, v7

    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v3, v2

    const/4 v2, 0x0

    add-int/2addr v3, v2

    goto :goto_8

    :cond_c
    move/from16 p3, v7

    const/4 v3, 0x0

    :goto_8
    if-eqz v15, :cond_d

    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$b;

    iget v7, v2, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    move/from16 p4, v6

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v7, v6

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v7, v2

    add-int/2addr v3, v7

    goto :goto_9

    :cond_d
    move/from16 p4, v6

    :goto_9
    if-nez v14, :cond_f

    if-eqz v15, :cond_e

    goto :goto_a

    :cond_e
    move/from16 p5, v4

    move/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_14

    :cond_f
    :goto_a
    if-eqz v14, :cond_10

    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    goto :goto_b

    :cond_10
    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    :goto_b
    if-eqz v15, :cond_11

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    goto :goto_c

    :cond_11
    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    :goto_c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar$b;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcolor/support/v7/widget/Toolbar$b;

    if-eqz v14, :cond_12

    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_13

    :cond_12
    if-eqz v15, :cond_14

    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_14

    :cond_13
    move/from16 p5, v4

    const/4 v7, 0x1

    goto :goto_d

    :cond_14
    move/from16 p5, v4

    const/4 v7, 0x0

    :goto_d
    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->z:I

    and-int/lit8 v4, v4, 0x70

    move/from16 v16, v12

    const/16 v12, 0x30

    if-eq v4, v12, :cond_18

    const/16 v12, 0x50

    if-eq v4, v12, :cond_17

    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget v12, v2, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    move/from16 v17, v13

    iget v13, v0, Lcolor/support/v7/widget/Toolbar;->w:I

    add-int/2addr v12, v13

    if-ge v4, v12, :cond_15

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->w:I

    add-int v4, v2, v3

    goto :goto_e

    :cond_15
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->x:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_16

    iget v2, v6, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->x:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_16
    :goto_e
    add-int/2addr v8, v4

    goto :goto_f

    :cond_17
    move/from16 v17, v13

    sub-int/2addr v5, v9

    iget v2, v6, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Lcolor/support/v7/widget/Toolbar;->x:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_f

    :cond_18
    move/from16 v17, v13

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    iget v2, v2, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Lcolor/support/v7/widget/Toolbar;->w:I

    add-int v8, v3, v2

    :goto_f
    iget-boolean v2, v0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    if-eqz v2, :cond_21

    if-eqz v14, :cond_19

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    if-eqz v15, :cond_1a

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :goto_11
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    aget v5, v3, v7

    aget v3, v3, v4

    sub-int/2addr v5, v3

    if-eqz v14, :cond_1d

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcolor/support/v7/widget/Toolbar$b;

    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v6, v4

    iget-object v9, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    if-ge v2, v1, :cond_1c

    if-lt v4, v5, :cond_1b

    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v12, 0x1

    aget v4, v4, v12

    move v6, v7

    move v7, v4

    goto :goto_12

    :cond_1b
    const/4 v6, 0x0

    sub-int v7, v5, v4

    div-int/lit8 v7, v7, 0x2

    iget-object v12, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    aget v12, v12, v6

    add-int v6, v12, v7

    add-int v7, v6, v4

    :cond_1c
    :goto_12
    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v8, v7, v9}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v3, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int v8, v9, v3

    :cond_1d
    if-eqz v15, :cond_20

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcolor/support/v7/widget/Toolbar$b;

    iget v3, v3, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v8, v3

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v6, v4, v3

    iget-object v7, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v8

    if-ge v2, v1, :cond_1f

    if-lt v3, v5, :cond_1e

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v3, 0x1

    aget v6, v1, v3

    goto :goto_13

    :cond_1e
    const/4 v2, 0x0

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->S:[I

    aget v1, v1, v2

    add-int v4, v1, v5

    add-int v6, v4, v3

    :cond_1f
    :goto_13
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    :cond_20
    :goto_14
    move/from16 v13, v17

    goto/16 :goto_1b

    :cond_21
    if-eqz v1, :cond_25

    if-eqz v7, :cond_22

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->u:I

    const/4 v1, 0x1

    goto :goto_15

    :cond_22
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_15
    aget v2, v11, v1

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v14, :cond_23

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$b;

    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->v:I

    sub-int/2addr v2, v4

    iget v1, v1, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_16

    :cond_23
    move v2, v10

    :goto_16
    if-eqz v15, :cond_24

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$b;

    iget v3, v1, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v8, v3

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    iget-object v5, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->v:I

    sub-int v3, v10, v3

    iget v1, v1, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    goto :goto_17

    :cond_24
    move v3, v10

    :goto_17
    if-eqz v7, :cond_20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    goto :goto_14

    :cond_25
    if-eqz v7, :cond_26

    iget v3, v0, Lcolor/support/v7/widget/Toolbar;->u:I

    const/4 v1, 0x0

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_18
    aget v2, v11, v1

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v13, v17, v2

    neg-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v1

    if-eqz v14, :cond_27

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$b;

    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v13

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v13, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->v:I

    add-int/2addr v2, v4

    iget v1, v1, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_19

    :cond_27
    move v2, v13

    :goto_19
    if-eqz v15, :cond_28

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar$b;

    iget v3, v1, Lcolor/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v8, v3

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v13

    iget-object v4, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    iget-object v5, v0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v13, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Lcolor/support/v7/widget/Toolbar;->v:I

    add-int/2addr v3, v4

    iget v1, v1, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    goto :goto_1a

    :cond_28
    move v3, v13

    :goto_1a
    if-eqz v7, :cond_29

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_29
    :goto_1b
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, v0, Lcolor/support/v7/widget/Toolbar;->f:Z

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2b

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2a

    instance-of v4, v3, Lcolor/support/v7/widget/Toolbar$b;

    if-eqz v4, :cond_2a

    check-cast v3, Lcolor/support/v7/widget/Toolbar$b;

    iget-boolean v3, v3, Lcolor/support/v7/widget/Toolbar$b;->d:Z

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v4

    iget-object v5, v0, Lcolor/support/v7/widget/Toolbar;->W:[I

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    move v13, v3

    move/from16 v4, v16

    goto :goto_1d

    :cond_2a
    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v4, v16

    invoke-direct {v0, v3, v13, v11, v4}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    move v13, v3

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v4

    goto :goto_1c

    :cond_2b
    move/from16 v4, v16

    goto :goto_1f

    :cond_2c
    move/from16 v4, v16

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2d

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v13, v11, v4}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2d
    :goto_1f
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, v0, Lcolor/support/v7/widget/Toolbar;->f:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2f

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2e

    instance-of v5, v3, Lcolor/support/v7/widget/Toolbar$b;

    if-eqz v5, :cond_2e

    check-cast v3, Lcolor/support/v7/widget/Toolbar$b;

    iget-boolean v3, v3, Lcolor/support/v7/widget/Toolbar$b;->d:Z

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v5

    sub-int v5, p5, v5

    iget-object v6, v0, Lcolor/support/v7/widget/Toolbar;->W:[I

    const/4 v7, 0x0

    invoke-direct {v0, v3, v5, v6, v7}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_21

    :cond_2e
    const/4 v7, 0x0

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v11, v4}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    :goto_21
    move v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2f
    const/4 v7, 0x0

    goto :goto_23

    :cond_30
    const/4 v7, 0x0

    move v2, v7

    :goto_22
    if-ge v2, v1, :cond_31

    iget-object v3, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v11, v4}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_31
    :goto_23
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v11}, Lcolor/support/v7/widget/Toolbar;->a(Ljava/util/List;[I)I

    move-result v1

    sub-int v2, p5, p4

    sub-int v2, v2, p3

    div-int/lit8 v2, v2, 0x2

    add-int v6, p4, v2

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v6, v2

    add-int/2addr v1, v2

    if-ge v2, v13, :cond_32

    goto :goto_24

    :cond_32
    if-le v1, v10, :cond_33

    sub-int/2addr v1, v10

    sub-int v13, v2, v1

    goto :goto_24

    :cond_33
    move v13, v2

    :goto_24
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_25
    if-ge v7, v1, :cond_34

    iget-object v2, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v13, v11, v4}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_34
    iget-object v1, v0, Lcolor/support/v7/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p0 .. p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    iget-boolean v0, v7, Lcolor/support/v7/widget/Toolbar;->Q:Z

    if-eqz v0, :cond_d

    iget-object v14, v7, Lcolor/support/v7/widget/Toolbar;->H:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v10

    move v0, v11

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v16, v2, 0x0

    sub-int/2addr v1, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v0

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    invoke-direct {v7, v0, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroidx/appcompat/view/menu/g;Z)V

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->t:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v2}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v2

    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v6, v2

    goto :goto_2

    :cond_2
    move v0, v11

    move v6, v0

    move v12, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v16, v16, v2

    sub-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v14, v15

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move v15, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    :cond_3
    move v15, v6

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v6

    move v5, v12

    move v12, v11

    :goto_3
    if-ge v12, v6, :cond_6

    invoke-virtual {v7, v12}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    iget v0, v0, Lcolor/support/v7/widget/Toolbar$b;->c:I

    if-nez v0, :cond_5

    invoke-direct {v7, v4}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v18, v4

    move/from16 v4, p2

    move v10, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v18

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v5, v0

    move v15, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v5

    move/from16 v17, v6

    move v5, v10

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v17

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move v10, v5

    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->w:I

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->x:I

    add-int v12, v0, v1

    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->u:I

    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->v:I

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x2

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->T:F

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v12

    move v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v2

    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move v6, v1

    move v5, v15

    move v15, v0

    goto :goto_6

    :cond_7
    move v11, v6

    move v5, v15

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_6
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    add-int v11, v6, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v13, v5

    move v5, v11

    move v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v13, v5

    goto :goto_7

    :cond_8
    move v13, v5

    move v11, v6

    :goto_7
    add-int v16, v16, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v16, v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v13

    invoke-static {v1, v8, v2}, Landroidx/core/g/u;->a(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v13, 0x10

    invoke-static {v0, v9, v2}, Landroidx/core/g/u;->a(III)I

    move-result v0

    iget-boolean v2, v7, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v2, :cond_9

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v2}, Lcolor/support/design/widget/a;->b()I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->s()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v7, v1, v0}, Lcolor/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->S:[I

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->a([I)V

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int v8, v2, v0

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    const/high16 v10, -0x80000000

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->S:[I

    aget v4, v2, v1

    aget v1, v2, v3

    sub-int/2addr v4, v1

    if-le v0, v4, :cond_b

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p2

    move v5, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    :cond_b
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->S:[I

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_c

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    :cond_c
    return-void

    :cond_d
    move v2, v10

    iget-object v10, v7, Lcolor/support/v7/widget/Toolbar;->H:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v11, v2

    const/4 v13, 0x0

    goto :goto_8

    :cond_e
    move v13, v2

    const/4 v11, 0x0

    :goto_8
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->t:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, v7, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v14, v1

    move v15, v3

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_9
    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->t:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->n:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v16, v3, v2

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v11

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    invoke-direct {v7, v0, v12}, Lcolor/support/v7/widget/Toolbar;->a(Landroidx/appcompat/view/menu/g;Z)V

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcolor/support/v7/widget/Toolbar;->t:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int v11, v0, v1

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v0}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v12, v16, v1

    sub-int/2addr v0, v11

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v13

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_12
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v11

    move v13, v12

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_16

    invoke-virtual {v7, v12}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar$b;

    iget v0, v0, Lcolor/support/v7/widget/Toolbar$b;->c:I

    if-nez v0, :cond_15

    invoke-direct {v7, v6}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v14, v0

    move v15, v1

    :cond_15
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_16
    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->w:I

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->x:I

    add-int v11, v0, v1

    iget v0, v7, Lcolor/support/v7/widget/Toolbar;->u:I

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->v:I

    add-int v12, v0, v1

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_17

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    iget v1, v7, Lcolor/support/v7/widget/Toolbar;->T:F

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    add-int v3, v13, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v16, v5

    move v5, v11

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v2

    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move/from16 v17, v1

    move v6, v15

    move v15, v0

    goto :goto_d

    :cond_17
    move v9, v6

    const/16 v16, 0x0

    move v6, v15

    move/from16 v15, v16

    move/from16 v17, v15

    :goto_d
    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcolor/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    add-int v3, v13, v12

    add-int v5, v17, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcolor/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v17, v17, v0

    iget-object v0, v7, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/g/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_e

    :cond_18
    move v9, v6

    :goto_e
    move/from16 v0, v17

    add-int/2addr v13, v15

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    invoke-static {v1, v8, v2}, Landroidx/core/g/u;->a(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v0, v3, v2}, Landroidx/core/g/u;->a(III)I

    move-result v0

    iget-boolean v2, v7, Lcolor/support/v7/widget/Toolbar;->af:Z

    if-eqz v2, :cond_19

    iget-object v2, v7, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v2}, Lcolor/support/design/widget/a;->b()I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    move v11, v0

    invoke-direct/range {p0 .. p0}, Lcolor/support/v7/widget/Toolbar;->s()Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v11, v16

    :cond_1a
    invoke-virtual {v7, v1, v11}, Lcolor/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRtlPropertiesChanged(I)V

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->y:Lcolor/support/v7/internal/widget/d;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/d;->a(Z)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {p1}, Landroidx/core/g/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->E:Z

    :cond_0
    iget-boolean v2, p0, Lcolor/support/v7/widget/Toolbar;->E:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lcolor/support/v7/widget/Toolbar;->E:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcolor/support/v7/widget/Toolbar;->E:Z

    :cond_3
    return v3
.end method

.method public setBottomDividerBackground(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->b(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setBottomDividerHeight(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->f(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar;->O:Z

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->a(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setDividerMargin(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->e(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setDividerMaxHeight(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->c(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setDividerMinHeight(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ag:Lcolor/support/design/widget/a;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/a;->d(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->postInvalidate()V

    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->p()V

    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar$b;

    iget-boolean v0, p0, Lcolor/support/v7/widget/Toolbar;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lcolor/support/v7/widget/Toolbar$b;->width:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Lcolor/support/v7/widget/Toolbar$b;->width:I

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ab:Lcolor/support/v7/internal/widget/f;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->n()V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->n()V

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMinTitleTextSize(F)V
    .locals 2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->ad:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->ae:F

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->P:I

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setMinimumHeight(I)V

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->q()V

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->ab:Lcolor/support/v7/internal/widget/f;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->q()V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/widget/Toolbar;->q()V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->I:Landroidx/appcompat/widget/Toolbar$c;

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->p:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->p:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->o:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar;->o:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSearchView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcolor/support/v7/widget/Toolbar$b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;Lcolor/support/v7/widget/Toolbar$b;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Lcolor/support/v7/widget/Toolbar;->r:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->D:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_4
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->B:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->D:I

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object v1

    iget v2, p0, Lcolor/support/v7/widget/Toolbar;->x:I

    iput v2, v1, Lcolor/support/v7/widget/Toolbar$b;->bottomMargin:I

    const v2, 0x800005

    iget v3, p0, Lcolor/support/v7/widget/Toolbar;->s:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcolor/support/v7/widget/Toolbar$b;->a:I

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Lcolor/support/v7/widget/Toolbar;->q:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->C:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/Toolbar;->R:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/color/support/d/b;->a(FFI)F

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_5
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcolor/support/v7/widget/Toolbar;->T:F

    :cond_6
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar;->A:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    iput p1, p0, Lcolor/support/v7/widget/Toolbar;->C:I

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
