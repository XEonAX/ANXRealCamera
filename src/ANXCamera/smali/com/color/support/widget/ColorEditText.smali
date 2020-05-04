.class public Lcom/color/support/widget/ColorEditText;
.super Landroidx/appcompat/widget/j;
.source "ColorEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorEditText$a;,
        Lcom/color/support/widget/ColorEditText$e;,
        Lcom/color/support/widget/ColorEditText$b;,
        Lcom/color/support/widget/ColorEditText$c;,
        Lcom/color/support/widget/ColorEditText$d;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/graphics/RectF;

.field private G:Landroid/content/res/ColorStateList;

.field private H:Landroid/content/res/ColorStateList;

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Landroid/animation/ValueAnimator;

.field private O:Landroid/animation/ValueAnimator;

.field private P:Landroid/animation/ValueAnimator;

.field private Q:Z

.field private R:Z

.field private S:Landroid/graphics/Paint;

.field private T:Landroid/graphics/Paint;

.field private U:Landroid/graphics/Paint;

.field private V:I

.field private W:F

.field private final a:Lcom/color/support/widget/b$a;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Lcom/color/support/widget/h;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/color/support/widget/ColorEditText$d;

.field private j:Lcom/color/support/widget/ColorEditText$c;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:I

.field private n:Z

.field private o:Lcom/color/support/widget/ColorEditText$a;

.field private p:Ljava/lang/String;

.field private q:Lcom/color/support/widget/ColorEditText$e;

.field private r:Ljava/lang/CharSequence;

.field private s:Z

.field private t:Ljava/lang/CharSequence;

.field private u:Z

.field private v:Landroid/graphics/drawable/GradientDrawable;

.field private w:I

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/color/support/widget/b$a;

    invoke-direct {v0, p0}, Lcom/color/support/widget/b$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->i:Lcom/color/support/widget/ColorEditText$d;

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->j:Lcom/color/support/widget/ColorEditText$c;

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->n:Z

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    const/4 v1, 0x3

    iput v1, p0, Lcom/color/support/widget/ColorEditText;->C:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->F:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->l:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_quickDelete:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$color;->color_error_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    new-instance v0, Lcom/color/support/widget/ColorEditText$a;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/ColorEditText$a;-><init>(Lcom/color/support/widget/ColorEditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    invoke-static {p0, v0}, Landroidx/core/g/u;->a(Landroid/view/View;Landroidx/core/g/a;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/g/u;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->l:Landroid/content/Context;

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_slide_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText$a;->a()V

    new-instance v0, Lcom/color/support/widget/h;

    invoke-direct {v0, p0}, Lcom/color/support/widget/h;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v5, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget v7, p0, Lcom/color/support/widget/ColorEditText;->C:I

    iget v8, p0, Lcom/color/support/widget/ColorEditText;->x:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v9

    iget-object v10, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual/range {v5 .. v10}, Lcom/color/support/widget/h;->a(III[FLcom/color/support/widget/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->W:F

    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;I)I
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->V:I

    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;)Lcom/color/support/widget/b$a;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    return-object p0
.end method

.method private a(F)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->j()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$3;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v3}, Lcom/color/support/widget/b$a;->j()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->b(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->b(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    :goto_0
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->Widget_ColorSupport_EditText_HintAnim_Line:I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge p3, v2, :cond_1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/color/support/widget/ColorEditText;->setPadding(IIII)V

    return-void

    :cond_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz p3, :cond_2

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintAnimationEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    :cond_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->aa:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_cornerRadius:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->y:F

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->z:F

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->A:F

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->B:F

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorPrimaryColor:I

    invoke-static {p1, v1, v0}, Lcom/color/support/d/c;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->J:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->C:I

    iget p3, p0, Lcom/color/support/widget/ColorEditText;->C:I

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->D:I

    iget-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_label_cutout_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->w:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_top:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->ab:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_middle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->ac:I

    :cond_3
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorBackgroundMode:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setBoxBackgroundMode(I)V

    iget p3, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    :cond_5
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorDefaultStrokeColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->I:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorDisabledStrokeColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->K:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_collapsedTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/color/support/widget/ColorEditText;->a(ILandroid/content/res/ColorStateList;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_6

    const-string p1, "sans-serif-medium"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p3, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p3, p1}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Typeface;)V

    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->I:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->C:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->K:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->C:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->J:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->C:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->g()V

    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->b(Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v3, v2}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/b$a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->K:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->K:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/b$a;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-nez p2, :cond_7

    :cond_4
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->d(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-eqz p2, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->c(Z)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/h;->a(Lcom/color/support/widget/b$a;)V

    :cond_8
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->p:Ljava/lang/String;

    return-object p0
.end method

.method private b(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v2, p1, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->c()V

    return-void
.end method

.method private c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->b(F)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->m()V

    :cond_2
    return-void
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->f()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBoxBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorEditText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->b(F)V

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/color/support/widget/b;

    invoke-virtual {p1}, Lcom/color/support/widget/b;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->n()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    return-void
.end method

.method private e()V
    .locals 4

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getModePaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/g/u;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/color/support/widget/b;

    invoke-direct {v0}, Lcom/color/support/widget/b;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->d()V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a(F)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getGravity()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/color/support/widget/b$a;->b(I)V

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/b$a;->a(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->r:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->r:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->u:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/color/support/widget/ColorEditText;->a(ZZ)V

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->e()V

    :cond_2
    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->ab:I

    return v0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->z:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->y:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->B:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->A:F

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 3

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->aa:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1}, Lcom/color/support/widget/b$a;->d()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->ab:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1}, Lcom/color/support/widget/b$a;->e()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->ac:I

    goto :goto_0
.end method

.method private h()V
    .locals 5

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoundsTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()I
    .locals 2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private j()V
    .locals 3

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->C:I

    :cond_2
    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->j()V

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->C:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->E:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    return-void
.end method

.method private l()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private m()V
    .locals 2

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->F:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/RectF;)V

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/color/support/widget/b;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/b;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method private n()V
    .locals 1

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/color/support/widget/b;

    invoke-virtual {v0}, Lcom/color/support/widget/b;->c()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->q()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->r()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->W:F

    :cond_3
    :goto_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->K:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->E:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->E:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->I:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->E:I

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->k()V

    :cond_3
    :goto_1
    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$1;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->V:I

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$2;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private s()Z
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/b$a;->a(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->m()V

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/h;->b(Lcom/color/support/widget/b$a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->n:Z

    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/b$a;->a(ILandroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->p()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/h;->a(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;->a(ZZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/j;->dispatchStartTemporaryDetach()V

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->onStartTemporaryDetach()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v1}, Lcom/color/support/widget/h;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, p1, v2}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;Lcom/color/support/widget/b$a;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v1}, Lcom/color/support/widget/h;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/color/support/widget/ColorEditText;->E:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    :cond_5
    :goto_1
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->D:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v2

    sub-int v5, v2, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->V:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x0

    int-to-float v10, v5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v1}, Lcom/color/support/widget/h;->a()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v7, 0x0

    int-to-float v12, v5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v12

    move v10, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->W:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v11, v1, v2

    iget-object v13, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v6

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->W:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    iget-object v8, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_8
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/j;->drawableStateChanged()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->Q:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->Q:Z

    invoke-super {p0}, Landroidx/appcompat/widget/j;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    iget-boolean v2, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {p0}, Landroidx/core/g/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->o()V

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->p()V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a([I)Z

    move-result v0

    or-int/2addr v0, v3

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/h;->a([I)V

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    :cond_5
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->Q:Z

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 2

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    return v0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLabelMarginTop()I
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->b(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->j:Lcom/color/support/widget/ColorEditText$c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/color/support/widget/ColorEditText$c;->a()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/j;->onLayout(ZIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    :cond_0
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->e()V

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->i()I

    move-result p3

    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/color/support/widget/b$a;->a(IIII)V

    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/color/support/widget/b$a;->b(IIII)V

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->m()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->m()V

    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget-object p2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/h;->c(Lcom/color/support/widget/b$a;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->k:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->k:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->s()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_1

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    if-le v1, v0, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_b

    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->i:Lcom/color/support/widget/ColorEditText$d;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/color/support/widget/ColorEditText$d;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->c()V

    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    return v5

    :cond_9
    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-eqz v0, :cond_b

    iput-boolean v5, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    invoke-virtual {p0, v4, v4, p1, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return v5

    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->x:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->d()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->J:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->k:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->k:I

    :goto_0
    return-void
.end method

.method public setErrorState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/h;->a(Z)V

    return-void
.end method

.method public setFastDeletable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    if-nez p1, :cond_0

    new-instance p1, Lcom/color/support/widget/ColorEditText$e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/color/support/widget/ColorEditText$e;-><init>(Lcom/color/support/widget/ColorEditText;Lcom/color/support/widget/ColorEditText$1;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_edit_text_drawable_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->m:I

    iget p1, p0, Lcom/color/support/widget/ColorEditText;->m:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablePadding(I)V

    :cond_1
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->u:Z

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->u:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/color/support/widget/ColorEditText$d;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->i:Lcom/color/support/widget/ColorEditText$d;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->length()I

    move-result p2

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/color/support/widget/ColorEditText$c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->j:Lcom/color/support/widget/ColorEditText$c;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    return-void
.end method
