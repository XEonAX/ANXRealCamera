.class public final Lcom/color/support/widget/b$a;
.super Ljava/lang/Object;
.source "ColorCutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:[I

.field private F:Z

.field private final G:Landroid/text/TextPaint;

.field private final H:Landroid/text/TextPaint;

.field private I:Landroid/view/animation/Interpolator;

.field private J:Landroid/view/animation/Interpolator;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:F

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/content/res/ColorStateList;

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:Z

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/color/support/widget/b$a;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/color/support/widget/b$a;->b:Landroid/graphics/Paint;

    sget-object v0, Lcom/color/support/widget/b$a;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/color/support/widget/b$a;->b:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/color/support/widget/b$a;->i:I

    iput v0, p0, Lcom/color/support/widget/b$a;->j:I

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/color/support/widget/b$a;->k:F

    iput v0, p0, Lcom/color/support/widget/b$a;->l:F

    iput-object p1, p0, Lcom/color/support/widget/b$a;->c:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/b$a;->h:Landroid/graphics/RectF;

    return-void
.end method

.method private a(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method private static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/color/support/widget/b$a;->b(FFF)F

    move-result p0

    return p0
.end method

.method private static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private a(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->l:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private static a(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->w()Z

    move-result p1

    return p1
.end method

.method private c(F)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/color/support/widget/b$a;->d(F)V

    iget v0, p0, Lcom/color/support/widget/b$a;->q:F

    iget v1, p0, Lcom/color/support/widget/b$a;->r:F

    iget-object v2, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/b$a;->s:F

    iget v0, p0, Lcom/color/support/widget/b$a;->o:F

    iget v1, p0, Lcom/color/support/widget/b$a;->p:F

    iget-object v2, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/b$a;->t:F

    iget v0, p0, Lcom/color/support/widget/b$a;->k:F

    iget v1, p0, Lcom/color/support/widget/b$a;->l:F

    iget-object v2, p0, Lcom/color/support/widget/b$a;->J:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->e(F)V

    iget-object v0, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->s()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->l()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/color/support/widget/b$a;->a(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/b$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private d(F)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/b$a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/color/support/widget/b$a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/support/widget/b$a;->o:F

    iget v2, p0, Lcom/color/support/widget/b$a;->p:F

    iget-object v3, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/color/support/widget/b$a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/color/support/widget/b$a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/color/support/widget/b$a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private e(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/color/support/widget/b$a;->f(F)V

    sget-boolean p1, Lcom/color/support/widget/b$a;->a:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/color/support/widget/b$a;->C:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/color/support/widget/b$a;->x:Z

    iget-boolean p1, p0, Lcom/color/support/widget/b$a;->x:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->u()V

    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/b$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private f(F)V
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/b$a;->l:F

    invoke-static {p1, v2}, Lcom/color/support/widget/b$a;->a(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget p1, p0, Lcom/color/support/widget/b$a;->l:F

    iput v3, p0, Lcom/color/support/widget/b$a;->C:F

    move v2, p1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/color/support/widget/b$a;->k:F

    invoke-static {p1, v2}, Lcom/color/support/widget/b$a;->a(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, Lcom/color/support/widget/b$a;->C:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/color/support/widget/b$a;->k:F

    div-float/2addr p1, v4

    iput p1, p0, Lcom/color/support/widget/b$a;->C:F

    :goto_0
    iget p1, p0, Lcom/color/support/widget/b$a;->l:F

    iget v4, p0, Lcom/color/support/widget/b$a;->k:F

    div-float/2addr p1, v4

    mul-float v4, v1, p1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez p1, :cond_5

    iget p1, p0, Lcom/color/support/widget/b$a;->D:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/color/support/widget/b$a;->F:Z

    if-nez p1, :cond_4

    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iput v2, p0, Lcom/color/support/widget/b$a;->D:F

    iput-boolean v4, p0, Lcom/color/support/widget/b$a;->F:Z

    goto :goto_3

    :cond_5
    move p1, v4

    :goto_3
    iget-object v2, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    iget v2, p0, Lcom/color/support/widget/b$a;->D:F

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    iget v2, p0, Lcom/color/support/widget/b$a;->C:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v1, v4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    :cond_8
    invoke-direct {p0}, Lcom/color/support/widget/b$a;->w()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/b$a;->w:Z

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/color/support/widget/b$a;->d:Z

    return-void
.end method

.method private r()V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->e:F

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->c(F)V

    return-void
.end method

.method private s()I
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/b$a;->E:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private t()V
    .locals 11

    iget v0, p0, Lcom/color/support/widget/b$a;->D:F

    iget v1, p0, Lcom/color/support/widget/b$a;->l:F

    invoke-direct {p0, v1}, Lcom/color/support/widget/b$a;->f(F)V

    iget-object v1, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/color/support/widget/b$a;->j:I

    iget-boolean v5, p0, Lcom/color/support/widget/b$a;->w:Z

    invoke-static {v4, v5}, Landroidx/core/g/c;->a(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    iget-object v9, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    iget-object v9, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lcom/color/support/widget/b$a;->p:F

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lcom/color/support/widget/b$a;->p:F

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v9, "my"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    const v10, 0x3fa66666    # 1.3f

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/color/support/widget/b$a;->p:F

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/color/support/widget/b$a;->p:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    iget-object v1, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/b$a;->r:F

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/color/support/widget/b$a;->r:F

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/color/support/widget/b$a;->r:F

    :goto_2
    iget v1, p0, Lcom/color/support/widget/b$a;->k:F

    invoke-direct {p0, v1}, Lcom/color/support/widget/b$a;->f(F)V

    iget-object v1, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :cond_6
    iget v1, p0, Lcom/color/support/widget/b$a;->i:I

    iget-boolean v2, p0, Lcom/color/support/widget/b$a;->w:Z

    invoke-static {v1, v2}, Landroidx/core/g/c;->a(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    iget-object v2, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    iget-object v4, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, Lcom/color/support/widget/b$a;->o:F

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Lcom/color/support/widget/b$a;->o:F

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/color/support/widget/b$a;->o:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_9

    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/b$a;->q:F

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/color/support/widget/b$a;->q:F

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/color/support/widget/b$a;->q:F

    :goto_4
    invoke-direct {p0}, Lcom/color/support/widget/b$a;->v()V

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->e(F)V

    return-void
.end method

.method private u()V
    .locals 9

    iget-object v0, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->c(F)V

    iget-object v0, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/b$a;->A:F

    iget-object v0, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/b$a;->B:F

    iget-object v0, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/b$a;->B:F

    iget v2, p0, Lcom/color/support/widget/b$a;->A:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/color/support/widget/b$a;->z:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/b$a;->z:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private w()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/color/support/widget/b$a;->k:F

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/color/support/widget/b$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/b$a;->F:Z

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->q()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExpandedBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/color/support/widget/b$a;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorCollapseTextHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p2, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/b$a;->l:F

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/color/support/widget/b$a;->d:Z

    if-eqz v1, :cond_5

    iget v6, p0, Lcom/color/support/widget/b$a;->s:F

    iget v1, p0, Lcom/color/support/widget/b$a;->t:F

    iget-boolean v2, p0, Lcom/color/support/widget/b$a;->x:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/color/support/widget/b$a;->A:F

    iget v4, p0, Lcom/color/support/widget/b$a;->C:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/color/support/widget/b$a;->B:F

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Lcom/color/support/widget/b$a;->C:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    iget v4, p0, Lcom/color/support/widget/b$a;->C:F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    iget v1, p0, Lcom/color/support/widget/b$a;->C:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/color/support/widget/b$a;->y:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/color/support/widget/b$a;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->c()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->c()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    :goto_1
    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->d()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/b$a;->G:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/d/b;->a(Landroid/graphics/Paint;Z)V

    iget-object p1, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Lcom/color/support/d/b;->a(Landroid/graphics/Paint;Z)V

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/b$a;->J:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/color/support/widget/b$a;->v:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->v()V

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    :cond_1
    return-void
.end method

.method public final a([I)Z
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/b$a;->E:[I

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/color/support/widget/b$a;->a(FFF)F

    move-result p1

    iget v0, p0, Lcom/color/support/widget/b$a;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/color/support/widget/b$a;->e:F

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->r()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/color/support/widget/b$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    :cond_0
    return-void
.end method

.method public b(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/b$a;->F:Z

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->q()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCollapsedBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/color/support/widget/b$a;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorCollapseTextHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/b$a;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    return-void
.end method

.method public c()F
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->a(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public d()F
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->a(Landroid/text/TextPaint;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    iget-object v1, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, v0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public e()F
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/color/support/widget/b$a;->a(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/b$a;->H:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->i:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->j:I

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->e:F

    return v0
.end method

.method final i()Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->e:F

    return v0
.end method

.method k()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/b$a;->k:F

    return v0
.end method

.method public l()I
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/b$a;->E:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/b$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->t()V

    invoke-direct {p0}, Lcom/color/support/widget/b$a;->r()V

    :cond_0
    return-void
.end method

.method n()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->u:Ljava/lang/CharSequence;

    return-object v0
.end method

.method o()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public p()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/b$a;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method
