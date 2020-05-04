.class public Lcom/color/support/widget/ColorSwitch;
.super Landroid/widget/CompoundButton;
.source "ColorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSwitch$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Landroid/graphics/drawable/Drawable;

.field private P:Landroid/graphics/drawable/Drawable;

.field private Q:Landroid/graphics/drawable/Drawable;

.field private R:Landroid/animation/AnimatorSet;

.field private S:Landroid/animation/AnimatorSet;

.field private T:Landroid/animation/AnimatorSet;

.field private U:Landroid/animation/AnimatorSet;

.field private V:Lcom/color/support/d/i;

.field private W:I

.field private a:I

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Lcom/color/support/widget/ColorSwitch$a;

.field private b:I

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

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/RectF;

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->s:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    iput v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->ac:Z

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setSoundEffectsEnabled(Z)V

    invoke-static {p0, v0}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorSwitchStyle:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barUncheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barCheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->g:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->h:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->i:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_circlePadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_loadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->j:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->k:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->l:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->m:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->n:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->o:I

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedCheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->M:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedUncheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->N:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingCheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->O:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->P:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->Q:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_switch_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$bool;->color_switch_theme_enable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->e()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->f()V

    invoke-static {}, Lcom/color/support/d/i;->a()Lcom/color/support/d/i;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    iget-object p2, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    sget p3, Lcolor/support/v7/appcompat/R$raw;->color_switch_sound_on:I

    invoke-virtual {p2, p1, p3}, Lcom/color/support/d/i;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->W:I

    iget-object p2, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    sget p3, Lcolor/support/v7/appcompat/R$raw;->color_switch_sound_off:I

    invoke-virtual {p2, p1, p3}, Lcom/color/support/d/i;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->aa:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Z)V
    .locals 8

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->W:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->aa:I

    :goto_0
    move v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/color/support/d/i;->a(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->k:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->j:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v10, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Z)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v2, v1, v3, v0}, Landroidx/core/g/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "circleScaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x85

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getCircleTranslation()I

    move-result v5

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :goto_0
    new-array v8, v2, [I

    aput v5, v8, v7

    const/4 v5, 0x1

    aput v6, v8, v5

    const-string v6, "circleTranslation"

    invoke-static {p0, v6, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x17f

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getInnerCircleAlpha()F

    move-result v8

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    new-array v1, v2, [F

    aput v8, v1, v7

    aput v0, v1, v5

    const-string v0, "innerCircleAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getBarColor()I

    move-result v1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    :goto_1
    new-array v2, v2, [I

    aput v1, v2, v7

    aput p1, v2, v5

    const-string p1, "barColor"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->o:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->n:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->m:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->l:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->s:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->z:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->A:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f()V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->g()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->h()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->i()V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private g()V
    .locals 8

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/g/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->S:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "circleScale"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1b1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "loadingScale"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x226

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "loadingAlpha"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->S:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private h()V
    .locals 4

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/g/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->T:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "loadingAlpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->T:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->U:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSwitch;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method private k()I
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->O:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->P:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->M:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->N:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-object v0
.end method

.method private m()V
    .locals 6

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    :goto_1
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->s:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private o()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->G:Z

    return v0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->S:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->ad:Lcom/color/support/widget/ColorSwitch$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/color/support/widget/ColorSwitch$a;->a()V

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBarColor()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    return v0
.end method

.method public getCircleScaleX()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    return v0
.end method

.method public getCircleTranslation()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    return v0
.end method

.method public getInnerCircleAlpha()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    return v0
.end method

.method public getLoadingAlpha()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->A:F

    return v0
.end method

.method public getLoadingRotation()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    return v0
.end method

.method public getLoadingScale()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->z:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->F:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->F:Z

    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->m()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->n()V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->e(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->d(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSwitch;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->ac:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->ac:Z

    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :goto_0
    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :cond_2
    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    :goto_3
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->G:Z

    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->b()V

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->F:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->b(Z)V

    goto :goto_5

    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleTranslation(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleTranslation(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setBarColor(I)V

    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->a(Z)V

    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    :cond_9
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->j()V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleScale(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->A:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingRotation(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->z:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/color/support/widget/ColorSwitch$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorSwitch;->ad:Lcom/color/support/widget/ColorSwitch$a;

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->G:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    return-void
.end method
