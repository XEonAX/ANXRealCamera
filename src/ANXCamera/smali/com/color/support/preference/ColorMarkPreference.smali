.class public Lcom/color/support/preference/ColorMarkPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "ColorMarkPreference.java"


# instance fields
.field b:I

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorMarkPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/color/support/preference/ColorMarkPreference;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/preference/ColorMarkPreference;->c:Z

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorMarkPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorMarkPreference_colorMarkStyle:I

    invoke-virtual {v1, v2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/preference/ColorMarkPreference;->b:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorShowDivider:I

    iget-boolean v1, p0, Lcom/color/support/preference/ColorMarkPreference;->c:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorMarkPreference;->c:Z

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorDividerDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/preference/ColorMarkPreference;->d:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_hasBorder:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorMarkPreference;->e:Z

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_preference_icon_radius:I

    const/16 v1, 0xe

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/preference/ColorMarkPreference;->g:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorEnalbeClickSpan:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorMarkPreference;->f:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorMarkPreference;->e(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/color/support/preference/ColorMarkPreference;->j:F

    iget p1, p0, Lcom/color/support/preference/ColorMarkPreference;->j:F

    const/high16 p2, 0x41600000    # 14.0f

    mul-float/2addr p2, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/color/support/preference/ColorMarkPreference;->h:I

    const/high16 p2, 0x42100000    # 36.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/preference/ColorMarkPreference;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->a(Landroidx/preference/l;)V

    sget v0, Lcolor/support/v7/appcompat/R$id;->color_tail_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/color/support/preference/ColorMarkPreference;->b:I

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/color/support/preference/ColorMarkPreference;->b()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_head_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/color/support/preference/ColorMarkPreference;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/color/support/preference/ColorMarkPreference;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/color/support/widget/ColorRoundImageView;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/color/support/widget/ColorRoundImageView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/color/support/preference/ColorMarkPreference;->g:I

    iget v1, p0, Lcom/color/support/preference/ColorMarkPreference;->g:I

    iget v2, p0, Lcom/color/support/preference/ColorMarkPreference;->h:I

    if-ge v1, v2, :cond_4

    iput v2, p0, Lcom/color/support/preference/ColorMarkPreference;->g:I

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/color/support/preference/ColorMarkPreference;->i:I

    if-le v1, v2, :cond_5

    iput v2, p0, Lcom/color/support/preference/ColorMarkPreference;->g:I

    :cond_5
    :goto_2
    check-cast v0, Lcom/color/support/widget/ColorRoundImageView;

    iget-boolean v1, p0, Lcom/color/support/preference/ColorMarkPreference;->e:Z

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorRoundImageView;->setHasBorder(Z)V

    iget v1, p0, Lcom/color/support/preference/ColorMarkPreference;->g:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorRoundImageView;->setBorderRectRadius(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/color/support/preference/ColorMarkPreference;->f:Z

    if-eqz v0, :cond_7

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/color/support/preference/ColorMarkPreference;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lcom/color/support/preference/ColorMarkPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/color/support/preference/ColorMarkPreference$1;-><init>(Lcom/color/support/preference/ColorMarkPreference;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    return-void
.end method
