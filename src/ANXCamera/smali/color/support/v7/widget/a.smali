.class public Lcolor/support/v7/widget/a;
.super Landroidx/appcompat/widget/ActionMenuView;
.source "ColorActionMenuViewV6.java"


# instance fields
.field public c:Lcom/color/support/widget/popupwindow/a;

.field private d:Landroidx/appcompat/view/menu/g;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;

.field private i:Landroidx/appcompat/view/menu/i;

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcolor/support/v7/widget/a;->e:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/widget/a;->k:Z

    const/4 p1, 0x0

    iput p1, p0, Lcolor/support/v7/widget/a;->l:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuview_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/a;->l:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_action_menu_item_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/a;->j:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_action_menu_text_extra_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/a;->g:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuitemview_item_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/a;->f:I

    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/a;Landroidx/appcompat/view/menu/i;)Landroidx/appcompat/view/menu/i;
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    return-object p1
.end method

.method static synthetic a(Lcolor/support/v7/widget/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/a;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcolor/support/v7/widget/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/a;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Landroid/view/View;IIII)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, p3}, Lcolor/support/v7/widget/a;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingBottom()I

    move-result v2

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v2

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Lcolor/support/v7/widget/a;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method static synthetic b(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/g;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    new-instance v0, Lcolor/support/v7/widget/a$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/a$1;-><init>(Lcolor/support/v7/widget/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_toolbar_menu_bg_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_toolbar_menu_bg:I

    invoke-static {v1, v2, v0}, Lcom/color/support/a;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcolor/support/v7/widget/a;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcolor/support/v7/widget/a$2;

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/widget/a$2;-><init>(Lcolor/support/v7/widget/a;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    iput-object v0, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-le v3, v2, :cond_2

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/ActionMenuView;->onLayout(ZIIII)V

    return-void

    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result p1

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iget-boolean p2, p0, Lcolor/support/v7/widget/a;->k:Z

    if-eqz p2, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    :goto_2
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-ne p4, v4, :cond_3

    goto :goto_3

    :cond_3
    iget p4, p3, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr p1, p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    sub-int v3, p5, v3

    sub-int v5, p1, p4

    add-int/2addr v2, v3

    invoke-virtual {p2, v5, v3, p1, v2}, Landroid/view/View;->layout(IIII)V

    iget p2, p3, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr p4, p2

    iget p2, p0, Lcolor/support/v7/widget/a;->f:I

    add-int/2addr p4, p2

    sub-int/2addr p1, p4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingLeft()I

    move-result p1

    :goto_4
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-ne p4, v4, :cond_5

    goto :goto_5

    :cond_5
    iget p4, p3, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr p1, p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    sub-int v3, p5, v3

    add-int v5, p1, p4

    add-int/2addr v2, v3

    invoke-virtual {p2, p1, v3, v5, v2}, Landroid/view/View;->layout(IIII)V

    iget p2, p3, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr p4, p2

    iget p2, p0, Lcolor/support/v7/widget/a;->f:I

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p2

    move p3, p2

    :goto_6
    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_7

    goto :goto_8

    :cond_7
    iget v5, v2, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr p1, v5

    if-eqz p3, :cond_9

    instance-of p3, p4, Landroid/widget/TextView;

    if-eqz p3, :cond_8

    move-object p3, p4

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    iget p3, p0, Lcolor/support/v7/widget/a;->g:I

    add-int/2addr p1, p3

    :cond_8
    move p3, v1

    :cond_9
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez v0, :cond_c

    if-le v3, p2, :cond_c

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    instance-of v2, p4, Landroid/widget/TextView;

    if-eqz v2, :cond_b

    move-object v2, p4

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    iget v2, p0, Lcolor/support/v7/widget/a;->l:I

    sub-int/2addr v8, v2

    :cond_b
    :goto_7
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {p4, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    :cond_c
    add-int v8, p1, v5

    add-int/2addr v6, v7

    invoke-virtual {p4, p1, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    iget p4, v2, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v5, p4

    iget p4, p0, Lcolor/support/v7/widget/a;->f:I

    add-int/2addr v5, p4

    add-int/2addr p1, v5

    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int/2addr v0, p2

    move p3, p2

    :goto_9
    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_e

    goto :goto_b

    :cond_e
    iget v5, v2, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr p1, v5

    if-eqz p3, :cond_10

    instance-of p3, p4, Landroid/widget/TextView;

    if-eqz p3, :cond_f

    move-object p3, p4

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_f

    iget p3, p0, Lcolor/support/v7/widget/a;->g:I

    sub-int/2addr p1, p3

    :cond_f
    move p3, v1

    :cond_10
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez v0, :cond_13

    if-le v3, p2, :cond_13

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingLeft()I

    move-result v8

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v8, v2

    instance-of v2, p4, Landroid/widget/TextView;

    if-eqz v2, :cond_12

    move-object v2, p4

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_11
    iget v2, p0, Lcolor/support/v7/widget/a;->l:I

    add-int/2addr v8, v2

    :cond_12
    :goto_a
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {p4, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    :cond_13
    sub-int v8, p1, v5

    add-int/2addr v6, v7

    invoke-virtual {p4, v8, v7, p1, v6}, Landroid/view/View;->layout(IIII)V

    iget p4, v2, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v5, p4

    iget p4, p0, Lcolor/support/v7/widget/a;->f:I

    add-int/2addr v5, p4

    sub-int/2addr p1, v5

    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    iget-object v0, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/a;->k:Z

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcolor/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Lcolor/support/v7/widget/Toolbar;->getIsTitleCenterStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcolor/support/v7/widget/a;->k:Z

    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lcolor/support/v7/widget/a;->setPadding(IIII)V

    invoke-static {p0}, Landroidx/core/g/u;->f(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    move v5, v2

    move v12, v5

    :goto_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v9, v12

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcolor/support/v7/widget/a;->b(Landroid/view/View;IIII)I

    move-result v6

    add-int/2addr v12, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcolor/support/v7/widget/a;->k:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getChildCount()I

    move-result p1

    if-lez p1, :cond_7

    const/4 p2, -0x1

    move v6, p2

    move v3, v2

    move v5, v3

    :goto_2
    if-ge v3, p1, :cond_5

    invoke-virtual {p0, v3}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sub-int/2addr v5, v0

    iget p1, p0, Lcolor/support/v7/widget/a;->f:I

    mul-int/2addr v5, p1

    add-int p1, v12, v5

    if-eq v6, p2, :cond_6

    invoke-virtual {p0, v6}, Lcolor/support/v7/widget/a;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lcolor/support/v7/widget/a;->g:I

    add-int/2addr p1, p2

    :cond_6
    move v3, p1

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcolor/support/v7/widget/a;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, p2, v2, v0}, Lcolor/support/v7/widget/a;->setPadding(IIII)V

    :cond_8
    invoke-virtual {p0, v3, v4}, Lcolor/support/v7/widget/a;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    iget-object p1, p0, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/a;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcolor/support/v7/widget/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/a;->dismiss()V

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/a;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iput-object v0, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    iget-object v0, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/a;->h:Ljava/util/ArrayList;

    new-instance v2, Lcom/color/support/widget/popupwindow/c;

    iget-object v3, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/color/support/widget/popupwindow/c;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/a;->h:Ljava/util/ArrayList;

    new-instance v2, Lcom/color/support/widget/popupwindow/c;

    iget-object v3, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcolor/support/v7/widget/a;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/color/support/widget/popupwindow/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/a;->b()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/a;->a()V

    iget-object p1, p0, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/a;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {v1}, Lcom/color/support/widget/popupwindow/a;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/color/support/widget/popupwindow/a;->update(II)V

    :cond_5
    :goto_2
    return-void
.end method
