.class public Lcom/color/support/widget/ColorRoundImageView;
.super Landroid/widget/ImageView;
.source "ColorRoundImageView.java"


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/Bitmap;

.field private C:F

.field private D:I

.field private E:Landroid/graphics/Paint;

.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/Bitmap;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/BitmapShader;

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Matrix;

.field private x:Landroid/graphics/BitmapShader;

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->d:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorRoundImageView;->c()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_roundimageview_outcircle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_roundimageview_default_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->y:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/color/support/widget/ColorRoundImageView;->c()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->d:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_round_image_view_shadow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->m:I

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_roundimageView_src_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->o:I

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->o:I

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->p:I

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$color;->color_roundimageview_outcircle_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorBorderRadius:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorHasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorRoundImageView;->e:Z

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorRoundImageView_colorHasDefaultPic:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorRoundImageView;->f:Z

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->a()V

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->a:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->a()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->E:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->E:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->E:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->E:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->o:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->r:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->p:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->s:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    move v0, v2

    :cond_0
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->r:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->p:I

    int-to-float v3, v3

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->s:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->t:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->j:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/color/support/widget/ColorRoundImageView;->f:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_ic_contact_picture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_ic_contact_picture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->j:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->r:I

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->s:I

    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->A:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->l:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->l:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->q:Landroid/graphics/BitmapShader;

    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->x:Landroid/graphics/BitmapShader;

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->n:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->m:I

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->t:I

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->t:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 6

    invoke-direct {p0}, Lcom/color/support/widget/ColorRoundImageView;->d()V

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->q:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->q:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->q:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->m:I

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->n:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->o:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    invoke-static {}, Lcom/color/support/d/h;->a()Lcom/color/support/d/h;

    move-result-object v2

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->a:Landroid/graphics/RectF;

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/color/support/d/h;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->m:I

    iget v4, p0, Lcom/color/support/widget/ColorRoundImageView;->n:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->C:F

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->m:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->n:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorRoundImageView;->C:F

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->C:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->q:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->q:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorRoundImageView;->C:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorRoundImageView;->D:I

    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->D:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/color/support/widget/ColorRoundImageView;->C:F

    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->C:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->x:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->w:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/color/support/widget/ColorRoundImageView;->x:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    iget v1, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/color/support/widget/ColorRoundImageView;->e:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->z:F

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->z:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->z:F

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    if-nez v1, :cond_6

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->i:Landroid/graphics/RectF;

    if-nez v1, :cond_7

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->i:Landroid/graphics/RectF;

    :cond_7
    iget-boolean v1, p0, Lcom/color/support/widget/ColorRoundImageView;->e:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/color/support/d/h;->a()Lcom/color/support/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/color/support/d/h;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/color/support/d/h;->a()Lcom/color/support/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/color/support/d/h;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/color/support/d/h;->a()Lcom/color/support/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorRoundImageView;->i:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/color/support/d/h;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/color/support/d/h;->a()Lcom/color/support/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/color/support/d/h;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->y:I

    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->y:I

    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->y:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/color/support/widget/ColorRoundImageView;->z:F

    invoke-virtual {p0, p1, p1}, Lcom/color/support/widget/ColorRoundImageView;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->h:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p3

    invoke-direct {p1, p3, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/color/support/widget/ColorRoundImageView;->i:Landroid/graphics/RectF;

    :cond_1
    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->g:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->invalidate()V

    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorRoundImageView;->e:Z

    return-void
.end method

.method public setHasDefaultPic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorRoundImageView;->f:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorRoundImageView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/color/support/widget/ColorRoundImageView;->c:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorRoundImageView;->invalidate()V

    :cond_0
    return-void
.end method
